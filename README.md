## Directions Plugin for Apache Cordova

Cordova Directions Plugin to utilise native maps for satnav style direction purposes (using latitude and longitude or address).

## Install

#### Latest published version on npm (with Cordova CLI >= 5.0.0)

```
cordova plugin add cordova-plugin-directions
```

#### Latest version from GitHub

```
cordova plugin add https://github.com/leecrossley/cordova-plugin-directions.git
```

## Usage

You **do not** need to reference any JavaScript, the Cordova plugin architecture will add a `directions` object to your root automatically when you build.

Ensure you use the plugin after your `deviceready` event has been fired.

### Navigate to a latitude and longitude

```
directions.navigateTo("51.50722", "-0.12750"); // latitude, longitude
```

### Navigate to an address (Android only)

```
directions.navigateToAddress("123 Main St. Orlando, Florida"); // address
```

## Platforms

Support for Android and Windows Phone 8. Address navigation is available on Android only.

## License

[MIT License](http://ilee.mit-license.org)
