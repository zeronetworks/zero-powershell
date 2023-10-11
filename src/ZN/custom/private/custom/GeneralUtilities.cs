using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Reflection;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Text.RegularExpressions;
using System.Xml.Linq;
using Hyak.Common;
using Newtonsoft.Json;


namespace ZeroNetworks.PowerShell.Cmdlets.Common
{
    public static class GeneralUtilities
    {
        private static List<string> AuthorizationHeaderNames = new List<string> { "Authorization" };
        private static IDictionary<string, IEnumerable<string>> ConvertHttpHeadersToWebHeaderCollection(HttpHeaders headers)
        {
            IDictionary<string, IEnumerable<string>> dictionary = new Dictionary<string, IEnumerable<string>>();
            foreach (KeyValuePair<string, IEnumerable<string>> pair in headers)
            {
                if (!AuthorizationHeaderNames.Any((string h) => h.Equals(pair.Key, StringComparison.OrdinalIgnoreCase)))
                {
                    dictionary.Add(pair.Key, pair.Value);
                }
            }

            return dictionary;
        }

        private static string MessageHeadersToString(IDictionary<string, IEnumerable<string>> headers)
        {
            string[] array = headers.Keys.ToArray();
            StringBuilder stringBuilder = new StringBuilder();
            string[] array2 = array;
            foreach (string text in array2)
            {
                stringBuilder.AppendLine(string.Format("{0,-30}: {1}", text, headers[text].ToArray().ArrayToString(",")));
            }

            return stringBuilder.ToString();
        }
        public static string GetHttpResponseLog(string statusCode, IDictionary<string, IEnumerable<string>> headers, string body, IList<Regex> matchers = null)
        {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.AppendLine("============================ HTTP RESPONSE ============================" + Environment.NewLine);
            stringBuilder.AppendLine("Status Code:" + Environment.NewLine + statusCode + Environment.NewLine);
            stringBuilder.AppendLine("Headers:" + Environment.NewLine + MessageHeadersToString(headers));
            stringBuilder.AppendLine("Body:" + Environment.NewLine + TransformBody(body, matchers) + Environment.NewLine);
            return stringBuilder.ToString();
        }

        public static string GetHttpRequestLog(string method, string requestUri, IDictionary<string, IEnumerable<string>> headers, string body, IList<Regex> matchers = null)
        {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.AppendLine($"============================ HTTP REQUEST ============================{Environment.NewLine}");
            stringBuilder.AppendLine(string.Format("HTTP Method:{0}{1}{0}", Environment.NewLine, method));
            stringBuilder.AppendLine(string.Format("Absolute Uri:{0}{1}{0}", Environment.NewLine, requestUri));
            stringBuilder.AppendLine($"Headers:{Environment.NewLine}{MessageHeadersToString(headers)}");
            stringBuilder.AppendLine(string.Format("Body:{0}{1}{0}", Environment.NewLine, TransformBody(body, matchers)));
            return stringBuilder.ToString();
        }

        public static string GetHttpRequestLog(string method, string requestUri, HttpHeaders headers, string body, IList<Regex> matchers = null)
        {
            return GetHttpRequestLog(method, requestUri, ConvertHttpHeadersToWebHeaderCollection(headers), body, matchers);
        }

        public static string TransformBody(string inBody)
        {
            IList<Regex> list = new List<Regex>();
            Regex item = new Regex("(\\s*\"access_token\"\\s*:\\s*)\"[^\"]+\"");
            list.Add(item);
            return TransformBody(inBody, list);
        }

        public static string TransformBody(string inBody, IList<Regex> matchers)
        {
            if (matchers != null)
            {
                foreach (Regex matcher in matchers)
                {
                    inBody = matcher.Replace(inBody, "$1\"<redacted>\"");
                }

                return inBody;
            }

            return inBody;
        }

        public static string GetHttpResponseLog(string statusCode, HttpHeaders headers, string body, IList<Regex> matchers = null)
        {
            return GetHttpResponseLog(statusCode, ConvertHttpHeadersToWebHeaderCollection(headers), body, matchers);
        }

        public static string GetLog(HttpResponseMessage response, IList<Regex> matchers = null)
        {
            if (response == null)
            {
                return string.Empty;
            }

            string body = ((response.Content == null) ? string.Empty : FormatString(response.Content.ReadAsStringAsync().Result));
            return GetHttpResponseLog(response.StatusCode.ToString(), response.Headers, body, matchers);
        }

        public static string GetLog(HttpResponseMessage response)
        {
            return GetLog(response, null);
        }

        public static string GetLog(HttpRequestMessage request, IList<Regex> matchers = null)
        {
            if (request == null)
            {
                return string.Empty;
            }

            string body = ((request.Content == null) ? string.Empty : FormatString(request.Content.ReadAsStringAsync().Result));
            return GetHttpRequestLog(request.Method.ToString(), request.RequestUri.ToString(), request.Headers, body, matchers);
        }

        public static string GetLog(HttpRequestMessage request)
        {
            return GetLog(request, null);
        }

        public static string FormatString(string content)
        {
            if (CloudException.IsXml(content))
            {
                return TryFormatXml(content);
            }

            if (CloudException.IsJson(content))
            {
                return TryFormatJson(content);
            }

            if (content.Length > 10240)
            {
                return content.Substring(0, 10240) + "\r\nDATA TRUNCATED DUE TO SIZE\r\n";
            }

            return content;
        }

        private static string TryFormatJson(string str)
        {
            try
            {
                return JsonConvert.SerializeObject(JsonConvert.DeserializeObject(str), Formatting.Indented);
            }
            catch
            {
                return str;
            }
        }

        private static string TryFormatXml(string content)
        {
            try
            {
                return XDocument.Parse(content).ToString();
            }
            catch (Exception)
            {
                return content;
            }
        }

    }
}
