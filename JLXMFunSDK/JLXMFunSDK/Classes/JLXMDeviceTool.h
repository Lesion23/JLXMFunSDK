//
//  JLXMDeviceTool.h
//  JLXMFunSDK
//
//  Created by Lesion on 2023/7/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JLXMDeviceTool : NSObject

+ (void)funInit;

+ (void)funXMCloundPlatformInitWithAppuuid:(NSString *)appuuid appkey:(NSString *)appkey appsecret:(NSString *)appsecret movecard:(int)movecard;

+ (void)configParam;

@end

NS_ASSUME_NONNULL_END
