using System;
using System.Collections.Generic;
using System.Management.Automation;
using System.Text;
using System.Threading.Tasks;
using System.Threading;
using ZeroNetworks.PowerShell.Cmdlets.Api.Runtime;
using System.Linq;
using System.Net.Http;
using Hyak.Common;
using System.Net;
using Newtonsoft.Json;


namespace ZeroNetworks.PowerShell.Cmdlets.Common
{
    using GetEventData = Func<EventArgs>;
    using SignalDelegate = Func<string, CancellationToken, Func<EventArgs>, Task>;

    public class Znmodule : System.IDisposable
    {

        public async Task EventListener(string id, CancellationToken cancellationToken, GetEventData getEventData, SignalDelegate signal, InvocationInfo invocationInfo, string parameterSetName, System.Exception exception)
        {
            switch (id)
            {
                case Events.CmdletBeginProcessing:
                    await OnCmdletBeginProcessing(id, cancellationToken, getEventData, signal);
                    break;
                case Events.BeforeCall:
                    await OnBeforeCall(id, cancellationToken, getEventData, signal);
                    break;
                case Events.ResponseCreated:
                    await OnResponseCreated(id, cancellationToken, getEventData, signal);
                    break;
                default:
                    break;
            }
        }

        internal async Task OnCmdletBeginProcessing(string id, CancellationToken cancellationToken, GetEventData getEventData, SignalDelegate signal)
{
    await signal(Events.Debug, cancellationToken,
        () => EventHelper.CreateLogEvent($"[{id}]: Starting command"));
}


        internal async Task OnBeforeCall(string id, CancellationToken cancellationToken, GetEventData getEventData, SignalDelegate signal)
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

        internal async Task OnCmdletException(string id, CancellationToken cancellationToken, GetEventData getEventData, SignalDelegate signal, Exception exception)
        {
            var data = EventDataConverter.ConvertFrom(getEventData());
            await signal(Events.Debug, cancellationToken,
                () => EventHelper.CreateLogEvent($"[{id}]: Received Exception with message '{data?.Message}'"));
        }

        internal async Task OnResponseCreated(string id, CancellationToken cancellationToken, GetEventData getEventData, SignalDelegate signal)
        {
            var data = EventDataConverter.ConvertFrom(getEventData());
            var response = data?.ResponseMessage as HttpResponseMessage;
            if (response != null)
            {
               
                // Print formatted response message
                await signal(Events.Debug, cancellationToken,
                    () => EventHelper.CreateLogEvent(GeneralUtilities.GetLog(response)));
            }
        }

 


        /// <summary>
        /// Free resources associated with this instance
        /// </summary>
        public void Dispose()
        {
            Dispose(true);
        }

        /// <summary>
        /// Free resources associated with this instance - allows customization in extending types
        /// </summary>
        /// <param name="disposing">True if the data should be disposed - differentiates from IDisposable call</param>
        public virtual void Dispose(bool disposing)
        {
            if (disposing)
            {

            }
        }
    }
}
