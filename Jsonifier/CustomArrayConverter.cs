using System.Reflection;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using Kaitai;
using System.Diagnostics;

namespace Jsonifier
{
    internal class CustomArrayConverter : JsonConverter
    {
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            PropertyInfo? prop = value.GetType().GetProperty("Data");
            object? arrayValue = prop.GetValue(value);
            JToken token = (arrayValue != null) ? JToken.FromObject(arrayValue, serializer) : JValue.CreateNull();
            token.WriteTo(writer);
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
            return objectType.Name.StartsWith("ArrayOf");
        }
    }
}
