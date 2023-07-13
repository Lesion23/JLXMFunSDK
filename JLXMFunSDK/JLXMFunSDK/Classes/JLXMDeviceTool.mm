//
//  JLXMDeviceTool.m
//  JLXMFunSDK
//
//  Created by Lesion on 2023/7/13.
//

#import "JLXMDeviceTool.h"
#import <FunSDK/FunSDK.h>
#import "JLXMDeviceHeader.h"
#import "NSString+Path.h"

@implementation JLXMDeviceTool

+ (void)funInit {
    FUN_Init();
}

+ (void)funXMCloundPlatformInitWithAppuuid:(NSString *)appuuid appkey:(NSString *)appkey appsecret:(NSString *)appsecret movecard:(int)movecard {
    FUN_XMCloundPlatformInit(SZSTR(appuuid), SZSTR(appkey), SZSTR(appsecret), movecard);
}

+ (void)configParam {
    // 初始化相关的参数 必须设置,账号登录成功后设备信息的保存路径+文件
    FUN_SetFunStrAttr(EFUN_ATTR_SAVE_LOGIN_USER_INFO,SZSTR([NSString GetDocumentPathWith:@"UserInfo.db"]));
    
    // 本地设备密码存储文件，必须设置
    FUN_SetFunStrAttr(EFUN_ATTR_USER_PWD_DB, SZSTR([NSString GetDocumentPathWith:@"password.txt"]));
    
    //升级⽂文件存放路径(只是路径，不包含文件名)
    FUN_SetFunStrAttr(EFUN_ATTR_UPDATE_FILE_PATH,SZSTR([NSString GetDocumentPathWith:@""]));
    
    //设置是否可以自动下载设备升级文件, 0不自动下载， 1wifi下自动下载， 2 有网络即自动下载
    FUN_SetFunIntAttr(EFUN_ATTR_AUTO_DL_UPGRADE, 0);//自行选择哪一种，可以动态更改
    
    // 配置文件存放路径(只是路径，不包含文件名)
    FUN_SetFunStrAttr(EFUN_ATTR_CONFIG_PATH,SZSTR([NSString GetDocumentPathWith:@"APPConfigs"]));
}

@end
