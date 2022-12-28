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
        mySettings.Converters.Add(new CustomDispConverter());
        mySettings.Converters.Add(new CustomDerivedTypeConverter());
        mySettings.SerializationBinder = new CustomBinder();
        mySettings.ContractResolver = new CustomResolver();
        mySettings.NullValueHandling = NullValueHandling.Ignore;
        mySettings.DefaultValueHandling = DefaultValueHandling.Ignore;
        ConfigAvatar file = ConfigAvatar.FromFile("./d7f73895.bin");
        string asJson = JsonConvert.SerializeObject(file, Formatting.Indented, mySettings);
        bool foo = false;
        await File.WriteAllTextAsync("ConfigAvatarKeqing.json", asJson);
    }
}
