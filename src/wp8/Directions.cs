using Microsoft.Phone.Tasks;
using System.Device.Location;
using System.Runtime.Serialization;
using WPCordovaClassLib.Cordova;
using WPCordovaClassLib.Cordova.Commands;
using WPCordovaClassLib.Cordova.JSON;

namespace Cordova.Extension.Commands
{
    public class Directions : BaseCommand
    {
        [DataContract]
        public class Location
        {
            [DataMember(Name = "latitude")]
            public double Latitude;

            [DataMember(Name = "longitude")]
            public double Longitude;
        }

        public void navigateTo(string options)
        {
            var args = JsonHelper.Deserialize<string[]>(options);
            var location = JsonHelper.Deserialize<Location>(args[0]);

            var directions = new BingMapsDirectionsTask
            {
                End = new LabeledMapLocation("Destination", new GeoCoordinate(location.Latitude, location.Longitude))
            };
            directions.Show();
            DispatchCommandResult(new PluginResult(PluginResult.Status.OK));
        }
    }
}