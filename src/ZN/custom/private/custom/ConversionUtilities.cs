using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Security;
using System.Text;

namespace ZeroNetworks.PowerShell.Cmdlets.Common
{
    public static class ConversionUtilities
    {
        public static Dictionary<string, object> ToDictionary(this Hashtable hashtable, bool addValueLayer)
        {
            if (hashtable == null)
            {
                return null;
            }

            Dictionary<string, object> dictionary = new Dictionary<string, object>();
            foreach (DictionaryEntry item in hashtable.Cast<DictionaryEntry>())
            {
                Hashtable hashtable2 = item.Value as Hashtable;
                if (hashtable2 != null)
                {
                    dictionary[(string)item.Key] = hashtable2.ToDictionary(addValueLayer);
                    continue;
                }

                object value = item.Value;
                if (item.Value is SecureString)
                {
                    value = SecureStringToString(item.Value as SecureString);
                }

                if (addValueLayer)
                {
                    dictionary[(string)item.Key] = new Hashtable { { "value", value } };
                }
                else
                {
                    dictionary[(string)item.Key] = value;
                }
            }

            return dictionary;
        }

        public static Hashtable ToHashtable<TV>(this IDictionary<string, TV> dictionary)
        {
            if (dictionary == null)
            {
                return null;
            }

            return new Hashtable((Dictionary<string, TV>)dictionary);
        }

        public static string ArrayToString<T>(this T[] array, string delimiter)
        {
            if (array != null)
            {
                if (array.Length != 0)
                {
                    return array.Skip(1).Aggregate(new StringBuilder(array[0].ToString()), (StringBuilder s, T i) => s.Append(delimiter).Append(i), (StringBuilder s) => s.ToString());
                }

                return string.Empty;
            }

            return null;
        }

        public static string SecureStringToString(SecureString secureString)
        {
            IntPtr intPtr = IntPtr.Zero;
            try
            {
                intPtr = Marshal.SecureStringToGlobalAllocUnicode(secureString);
                return Marshal.PtrToStringUni(intPtr);
            }
            finally
            {
                Marshal.ZeroFreeGlobalAllocUnicode(intPtr);
            }
        }
    }
}