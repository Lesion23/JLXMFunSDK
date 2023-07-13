//
//  NSString+Path.h
//  FunSDKDemo
//
//  Created by XM on 2018/5/5.
//  Copyright © 2018年 XM. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface NSString (Path)

//Document 文件夹中直接创建文件
+ (NSString *)GetDocumentPathWith:(NSString *) fileName;

@end
