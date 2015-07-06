#import "Directions.h"

@implementation Directions

- (void)navigateTo:(CDVInvokedUrlCommand*)command
{
    
    NSString* callbackId = [command callbackId];
    NSString* lat = [[command arguments] objectAtIndex:0];
    NSString* lng = [[command arguments] objectAtIndex:1];
    
    NSString* url = [NSString stringWithFormat:@"http://maps.apple.com/maps?daddr=%@,%@", lat, lng];
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString: url]];
    
    CDVPluginResult* result = [CDVPluginResult
                               resultWithStatus:CDVCommandStatus_OK
                               messageAsString:url];
    
    [self success:result callbackId:callbackId];
}

- (void)navigateToAddress:(CDVInvokedUrlCommand*)command
{

    NSString* callbackId = [command callbackId];
    NSString* address = [[command arguments] objectAtIndex:0];
    
    NSString* url = [NSString stringWithFormat:@"http://maps.apple.com/maps?daddr=%@", address];
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString: url]];

    CDVPluginResult* result = [CDVPluginResult
                               resultWithStatus:CDVCommandStatus_OK
                               messageAsString:url];

    [self success:result callbackId:callbackId];
}

@end