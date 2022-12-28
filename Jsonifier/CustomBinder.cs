using Newtonsoft.Json.Serialization;

namespace Jsonifier
{
    internal class CustomBinder : ISerializationBinder
    {
        public Type BindToType(string assemblyName, string typeName)
        {
            throw new NotImplementedException("This binder should be used only for Serialization");
        }

        public void BindToName(Type serializedType, out string assemblyName, out string typeName)
        {
            assemblyName = null;
            typeName = serializedType.Name;
        }

    }
}
