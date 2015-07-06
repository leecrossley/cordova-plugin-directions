#import <Cordova/CDV.h>

@interface Directions : CDVPlugin

- (void) navigateTo:(CDVInvokedUrlCommand*)command;
- (void) navigateToAddress:(CDVInvokedUrlCommand*)command;

@end