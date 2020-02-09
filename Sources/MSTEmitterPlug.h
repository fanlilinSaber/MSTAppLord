//
//  MSTALEmitterPlug.h
//  Unity-iPhone
//
//  Created by Fan Li Lin on 2019/7/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MSTEmitterPlug <NSObject>
@required
/**
 * 事件发射器准备事件源等工作
 */
- (void)prepare;
@end

NS_ASSUME_NONNULL_END
