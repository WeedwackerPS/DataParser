using System.Reflection;
using Kaitai;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace Jsonifier
{
    internal class CustomDynamicFloatConverter : JsonConverter
    {
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            PropertyInfo? prop = value.GetType().GetProperty("Data");
            object? val = prop.GetValue(value);
            JToken token = (val != null) ? JToken.FromObject(val, serializer) : JValue.CreateNull();
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
            return objectType.Equals(typeof(AuxTypes.DynamicFloat)) || objectType.Equals(typeof(AuxTypes.BaseDynamicFloat));
        }
    }
}
