using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using System.Reflection;

namespace Jsonifier
{
    internal class CustomDerivedTypeConverter : JsonConverter
    {
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            PropertyInfo? @base = value.GetType().GetProperty("Base");
            object? clazz = @base.GetValue(value);
            JObject @object = new JObject();
            if (clazz != null)
            {
                //JToken leBase = JToken.FromObject(clazz);
                @object = JObject.FromObject(clazz, serializer);
            }
            PropertyInfo[] derivedTypeProps = value.GetType().GetProperties();
            Type derived = value.GetType();
            Type lebase = clazz.GetType();
            PropertyInfo[] baseProps = clazz.GetType().GetProperties();
            foreach (PropertyInfo prop in derivedTypeProps)
            {
                if (prop.Name == "M_Root" || prop.Name == "M_Parent" || prop.Name == "M_Io" || prop.Name == "Base"
                    || prop.Name.StartsWith("HasField") || prop.Name == "BitField" || baseProps.Where(w => w.Name == prop.Name).Any())
                    continue;
                object? val = prop.GetValue(value);
                if (val == null || val == default)
                    continue;
                JToken token = (val != null) ? JToken.FromObject(val, serializer) : JValue.CreateNull();
                @object.Add(new JProperty(prop.Name.FirstCharToLowerCase(), token));
            }
            JProperty typeHandling = new JProperty("$type", value.GetType().Name);
            try
            {               
                @object.AddFirst(typeHandling);
            }
            catch // base : base : this
            {
                // change the type to this even more derived type
                @object.First.Replace(typeHandling);
            }
            string? asString = @object.ToString();
            @object.WriteTo(writer);
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
            return objectType.GetProperty("Base") != null;
        }
    }
}
