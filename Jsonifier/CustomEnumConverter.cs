using System.Reflection;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;

namespace Jsonifier
{
    internal class CustomEnumConverter : JsonConverter
    {
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            PropertyInfo? prop = value.GetType().GetProperty("Value");
            Type enumType = prop.PropertyType;
            object? enumValue = prop.GetValue(value);
            string? enumName = Enum.GetName(enumType, enumValue);
            JToken token = (enumName != null) ? JToken.FromObject(enumName, serializer) : JValue.CreateNull();
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
            return objectType.Name.StartsWith("Enum");
        }
    }
}
