//
//  MSTNetworkEmitter.m
//  MARS
//
//  Created by Fan Li Lin on 2019/3/8.
//  Copyright © 2019 puwang. All rights reserved.
//

#import "MSTNetworkEmitter.h"
//#import <AFNetworking.h>

@implementation MSTNetworkEmitter

- (void)prepare
{
//    // 检测网络连接状态
//    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
//    // 连接状态回调处理
//    @weakify(self);
//    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
//        @strongify(self);
//        // 调试日志打印
//        [self logNetworkReachabilityStatus:status];
//    }];
}

//- (void)logNetworkReachabilityStatus:(AFNetworkReachabilityStatus)status
//{
//    switch (status) {
//        case AFNetworkReachabilityStatusReachableViaWWAN:
//            NSLog(@"当前是移动网");
//            break;
//        case AFNetworkReachabilityStatusReachableViaWiFi:
//            NSLog(@"当前是wifi");
//            break;
//        case AFNetworkReachabilityStatusNotReachable:
//            NSLog(@"当前无网");
//            break;
//        default:
//            break;
//    }
//}
//
//- (void)dealloc
//{
//    [[AFNetworkReachabilityManager sharedManager] stopMonitoring];
//}

@end
