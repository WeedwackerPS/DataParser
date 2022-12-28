using Jsonifier;
using Kaitai;
using Newtonsoft.Json;

internal class Program
{
    static async Task Main(string[] args)
    {
        JsonSerializerSettings mySettings = new();
        mySettings.Converters.Add(new CustomEnumConverter());
        mySettings.Converters.Add(new CustomStringConverter());
        mySettings.Converters.Add(new CustomArrayConverter());
        mySettings.Converters.Add(new CustomDictConverter());
        mySettings.Converters.Add(new CustomDynamicFloatConverter());
        mySettings.Converters.Add(new CustomVlqBase128LeConverter());
        mySettings.Converters.Add(new CustomByteToBoolConverter());
        mySettings.SerializationBinder = new CustomBinder();
        mySettings.ContractResolver = new CustomResolver();
        mySettings.NullValueHandling = NullValueHandling.Ignore;
        mySettings.DefaultValueHandling = DefaultValueHandling.Ignore;
        var test = new IamTest();
        //string asJson = JsonConvert.SerializeObject(test, Formatting.None, mySettings);
        ConfigAvatar file = ConfigAvatar.FromFile("./d7f73895.bin");
        string ahhhh = JsonConvert.SerializeObject(file, Formatting.Indented, mySettings);
        bool foo = false;
        await File.WriteAllTextAsync("ConfigAvatarKeqing.json", ahhhh);
    }

    public class IamTest
    {
        public EnumTest test1 = new();
    }
    public class EnumTest
    {
        public Test Value { get; } = Test.one;
        public enum Test
        {
            zero,
            one,
            two,
            three,
        }
    }
}
