using System.Reflection;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using Kaitai;

namespace Jsonifier
{
    internal class CustomStringConverter : JsonConverter
    {
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {            
            PropertyInfo? prop = value.GetType().GetProperty("Data");
            string? stringValue = (string?)prop.GetValue(value);
            JToken token = (stringValue != null) ? JToken.FromObject(stringValue, serializer) : JValue.CreateNull();
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
            return objectType.Equals(typeof(AuxTypes.String));
        }
    }
}
