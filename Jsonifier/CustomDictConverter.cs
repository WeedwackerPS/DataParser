using System.Reflection;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using System.Collections;

namespace Jsonifier
{
    internal class CustomDictConverter : JsonConverter
    {
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            PropertyInfo? prop = value.GetType().GetProperty("Items");
            object dictObj = prop.GetValue(value);
            Type entryType = dictObj.GetType().GetGenericArguments()[0];
            PropertyInfo dictKey = entryType.GetProperty("Key");
            PropertyInfo dictValue = entryType.GetProperty("Value");
            JObject o = new();
            foreach (var kvp in (dictObj as IEnumerable))
            {
                JToken key = JToken.FromObject(dictKey.GetValue(kvp), serializer);
                JToken val = JToken.FromObject(dictValue.GetValue(kvp), serializer);
                string keyString = key.ToString();
                o.Add(new JProperty(keyString, val));
            }
            o.WriteTo(writer);
        }

        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer)
        {
            throw new NotImplementedException("Unnecessary because CanRead is false. The type will skip the converter.");
        }

        public override bool CanRead
        {
            get { return false; }
        }

        public override bool CanConvert(Type objectType)
        {
            return objectType.Name.StartsWith("DictOf");
        }
    }
}
