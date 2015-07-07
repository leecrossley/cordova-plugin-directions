## Directions Plugin for Apache Cordova [![npm version](https://badge.fury.io/js/cordova-plugin-directions.svg)](http://badge.fury.io/js/cordova-plugin-directions)

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

#### PhoneGap build

Add the following to your `config.xml` to use version 0.4.0 (you can also omit the version attribute to always use the latest version). You should now use the npm source:

```
<gap:plugin name="cordova-plugin-directions" version="0.4.0" source="npm" />
```

For more information, see the [PhoneGap build docs](http://docs.build.phonegap.com/en_US/configuring_plugins.md.html#Plugins).

## Usage

You **do not** need to reference any JavaScript, the Cordova plugin architecture will add a `directions` object to your root automatically when you build.

Ensure you use the plugin after your `deviceready` event has been fired.

### Navigate to a latitude and longitude

```
directions.navigateTo("51.50722", "-0.12750"); // latitude, longitude
```

### Navigate to an address (not available for WP8)

```
directions.navigateToAddress("123 Main St. Orlando, Florida"); // address
```

## Platforms

Support for iOS, Android and Windows Phone 8. Address navigation is not available for Windows Phone 8.

## License

[MIT License](http://ilee.mit-license.org)
