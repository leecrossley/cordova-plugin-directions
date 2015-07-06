## Directions Plugin for Apache Cordova [![npm version](https://badge.fury.io/js/cordova-plugin-directions.svg)](http://badge.fury.io/js/cordova-plugin-directions)

Cordova Directions Plugin to utilise native maps for satnav style direction purposes (using latitude and longitude or address).

This Plugin is based on [Lee Crossley](http://ilee.co.uk/)'s [work](https://github.com/leecrossley/cordova-plugin-directions), which was lack of support for iOS.

## Install

```
cordova plugin add https://github.com/starsasumi/cordova-plugin-directions.git
```

## Usage

You **do not** need to reference any JavaScript, the Cordova plugin architecture will add a `directions` object to your root automatically when you build.

Ensure you use the plugin after your `deviceready` event has been fired.

### Navigate to a latitude and longitude

```
directions.navigateTo("51.50722", "-0.12750"); // latitude, longitude
```

### Navigate to an address (iOS and Android only)

```
directions.navigateToAddress("123 Main St. Orlando, Florida"); // address
```

## Platforms

Support for iOS, Android and Windows Phone 8. Address navigation is available on iOS and Android only.

## License

[MIT License](http://ilee.mit-license.org)
