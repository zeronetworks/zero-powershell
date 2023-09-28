using System;
using System.Collections.Generic;
using System.Linq;
using System.Management.Automation;
using System.Net;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using ZeroNetworks.PowerShell.Cmdlets.Common;

namespace ZeroNetworks.PowerShell.Cmdlets
{
    using GetEventData = Func<EventArgs>;
    using SignalDelegate = Func<string, CancellationToken, Func<EventArgs>, Task>;


    public class ZNModule
    {
       
       public async Task EventListener(string id, CancellationToken cancellationToken, GetEventData getEventData, SignalDelegate signal, InvocationInfo invocationInfo, string parameterSetName, string correlationId, string processRecordId, System.Exception exception)
        {
            switch (id)
            {
                case Events.BeforeCall:
                    await OnBeforeCall(id, cancellationToken, getEventData, signal, correlationId);
                    break;

            }
        }

        internal async Task OnBeforeCall(string id, CancellationToken cancellationToken, GetEventData getEventData, SignalDelegate signal, string processRecordId)
        {
            var data = EventDataConverter.ConvertFrom(getEventData()); // also, we manually use our TypeConverter to return an appropriate type
            var request = data?.RequestMessage as HttpRequestMessage;
            if (request != null)
            {
                // Print formatted request message
                await signal(Events.Debug, cancellationToken,
                    () => EventHelper.CreateLogEvent(GeneralUtilities.GetLog(request)));
            }
        }
    }
}