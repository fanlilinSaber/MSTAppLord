//
//  MSTContext.h
//  Unity-iPhone
//
//  Created by Fan Li Lin on 2019/7/10.
//

#import <Foundation/Foundation.h>

@protocol MSTEmitterPlug;

NS_ASSUME_NONNULL_BEGIN

@interface MSTContext : NSObject

/**
 APP模块化管理

 @return MSTContext
 */
+ (instancetype)sharedContext;

@end

@interface MSTContext (EmitterPlug)

/**
 添加一个插件

 @param emitterPlug 插件类
 @return MSTContext
 */
- (instancetype)addEmitterPlug:(Class<MSTEmitterPlug>)emitterPlug;

@end

NS_ASSUME_NONNULL_END
