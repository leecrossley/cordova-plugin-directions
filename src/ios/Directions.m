#import "Directions.h"

@implementation Directions

- (void)navigateTo:(CDVInvokedUrlCommand*)command
{
    
    NSString* callbackId = [command callbackId];
    NSString* address = [[[command arguments] objectAtIndex:0] valueForKey:@"address"];
    NSString* lat = [[[command arguments] objectAtIndex:0] valueForKey:@"latitude"];
    NSString* lng = [[[command arguments] objectAtIndex:0] valueForKey:@"longitude"];
    
    NSString* url;
    if (address != nil) {
        address = [address stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLHostAllowedCharacterSet]];
        url = [NSString stringWithFormat:@"http://maps.apple.com/maps?daddr=%@", address];
    } else {
        url = [NSString stringWithFormat:@"http://maps.apple.com/maps?daddr=%@, %@", lat, lng];
    }
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString: url]];
    
    CDVPluginResult* result = [CDVPluginResult
                               resultWithStatus:CDVCommandStatus_OK
                               messageAsString:url];
    
    [self success:result callbackId:callbackId];
}

@end