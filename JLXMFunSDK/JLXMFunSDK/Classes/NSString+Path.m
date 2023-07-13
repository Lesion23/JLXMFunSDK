//
//  NSString+Path.m
//  FunSDKDemo
//
//  Created by XM on 2018/5/5.
//  Copyright © 2018年 XM. All rights reserved.
//

#import "NSString+Path.h"

@implementation NSString (Path)

// NSDocument/fileName
+ (NSString *)GetDocumentPathWith:(NSString *) fileName {
    NSString* path = [NSString documentsPath];
    if (fileName != nil) {
        path = [path stringByAppendingString:@"/"];
        path = [path stringByAppendingString:fileName];
    }
    return path;
}

//NSDocument
+ (NSString *)documentsPath {
    NSArray *pathArray = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [pathArray lastObject];
    return path;
}

@end
