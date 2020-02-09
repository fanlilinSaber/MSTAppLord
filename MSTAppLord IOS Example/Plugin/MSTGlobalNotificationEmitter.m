//
//  MSTGlobalNotificationEmitter.m
//  MARS
//
//  Created by Fan Li Lin on 2019/3/11.
//  Copyright © 2019 puwang. All rights reserved.
//

#import "MSTGlobalNotificationEmitter.h"

@interface MSTGlobalNotificationEmitter ()
/**
 *  所有用侦听通知的对象
 */
@property (nonatomic, strong) NSMutableArray *observers;

@end

@implementation MSTGlobalNotificationEmitter

- (void)prepare
{

}

//私有方法
#pragma mark - private method


#pragma mark - getters and setters

- (NSMutableArray *)observers
{
    if (_observers == nil) {
        _observers = [NSMutableArray array];
    }
    return _observers;
}

- (void)dealloc
{
    if (_observers) {
        for (id<NSObject> observer in _observers) {
            [[NSNotificationCenter defaultCenter] removeObserver:observer];
        }
        _observers = nil;
    }
}
    
@end
