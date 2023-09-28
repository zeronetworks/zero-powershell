using System.Net.Http;
using System.Threading.Tasks;


namespace ZeroNetworks.PowerShell.Cmdlets.Common
{
    /// <summary>
    /// The interface for sending an HTTP request across the wire.
    /// </summary>
    public interface ISendAsync
    {
        Task<HttpResponseMessage> SendAsync(HttpRequestMessage request, IEventListener callback);
    }

}