using System.Reflection;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace Jsonifier
{
    internal class CustomByteToBoolConverter : JsonConverter
    {
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            byte asByte = (byte)value;
            bool isBool = asByte == 1 || asByte == 0;
            JToken token;
            if (isBool)
            {
                token = JToken.FromObject((bool)((asByte & 0B00000001) != 0), serializer);
            }
            else
                token = JToken.FromObject(asByte, serializer);
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
            return objectType.Equals(typeof(byte?));
        }
    }
}
