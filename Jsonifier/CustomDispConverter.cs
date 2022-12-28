using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using System.Reflection;

namespace Jsonifier
{
    internal class CustomDispConverter : JsonConverter
    {
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            PropertyInfo? prop = value.GetType().GetProperty("Data");
            object? clazz = prop.GetValue(value);
            JToken token = (clazz != null) ? JToken.FromObject(clazz, serializer) : JValue.CreateNull();
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
            return objectType.Name.StartsWith("Disp");
        }
    }
}
