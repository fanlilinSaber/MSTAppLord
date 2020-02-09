//
//  MSTPipe.h
//  Unity-iPhone
//
//  Created by Fan Li Lin on 2019/7/10.
//

#import <Foundation/Foundation.h>

@protocol MSTEmitterPlug;

NS_ASSUME_NONNULL_BEGIN

@interface MSTPipe : NSObject

/**
 组件全局消息通道

 @return MSTPipe
 */
+ (instancetype)shareInstance;

/**
 添加事件发射器

 @param emitter 发射器
 */
- (void)addEmitter:(id<MSTEmitterPlug>)emitter;

@end

NS_ASSUME_NONNULL_END
