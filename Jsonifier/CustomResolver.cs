using System.Reflection;
using Newtonsoft.Json.Serialization;
using Newtonsoft.Json;
using Kaitai;

namespace Jsonifier
{
    class CustomResolver : DefaultContractResolver
    {
        readonly string[] ToIgnore = new string[] { "M_Root", "M_Parent", "M_Io", "m_root", "m_parent", "m_io" };
        protected override JsonProperty CreateProperty(MemberInfo member,
                                            MemberSerialization memberSerialization)
        {
            JsonProperty property = base.CreateProperty(member, memberSerialization);

            if (typeof(KaitaiStruct).IsAssignableFrom(property.PropertyType) &&
                ToIgnore.Contains(property.PropertyName))
            {
                property.ShouldSerialize = instanceOfProblematic => false;
            }
            if (typeof(KaitaiStream).IsAssignableFrom(property.PropertyType))
            {
                property.ShouldSerialize = instanceOfProblematic => false;
            }
            if (typeof(Stream).IsAssignableFrom(property.PropertyType))
            {
                property.Ignored = true;
            }
            if(member.Name.StartsWith("HasField") || member.Name == "BitField")
            {
                property.Ignored = true;
            }
            if (!property.Writable && !property.Ignored)
            {
                string name = member.Name;
                char[] privateNameCharArray = name.FirstCharToLowerCase().Prepend('_').ToArray();
                string privateName = new string(privateNameCharArray);
                var ClassType = member.DeclaringType; // the class that declared this property
                var fieldInfo = ClassType.GetField(privateName, BindingFlags.NonPublic | BindingFlags.Instance);
                if (fieldInfo != null)
                {
                    property.PropertyName = property.PropertyName.FirstCharToLowerCase();
                    property.ValueProvider = new ReflectionValueProvider(fieldInfo);
                    property.Writable = true;
                }
            }
            return property;
        }
    }
}
