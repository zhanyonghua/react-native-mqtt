//
//  Mqtt.h
//  RCTMqtt
//
//  Created by Tuan PM on 2/14/16.
//  Copyright © 2016 Tuan PM. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
#import <React/RCTLog.h>
#import <React/RCTUtils.h>
#import <React/RCTEventDispatcher.h>

#import <MQTTClient/MQTTClient.h>
#import <MQTTClient/MQTTSessionManager.h>
#import <CocoaLumberjack/CocoaLumberjack.h>



@interface Mqtt : NSObject <MQTTSessionManagerDelegate>

- (Mqtt*) initWithBrigde:(RCTBridge *) bridge
                        options:(NSDictionary *) options
                      clientRef:(int) clientRef;
- (void) connect;
- (void) disconnect;
- (void) subscribe:(NSString *)topic qos:(NSNumber *)qos;
- (void) unsubscribe:(NSString *)topic;
- (void) publish:(NSString *) topic data:(NSData *)data qos:(NSNumber *)qos retain:(BOOL) retain;
@end
