//
//  MSTContext.m
//  Unity-iPhone
//
//  Created by Fan Li Lin on 2019/7/10.
//

#import "MSTContext.h"
#import "MSTPipe.h"

@interface MSTContext ()
/*&* 事件触发插件 */
@property (nonatomic, copy) NSArray<Class<MSTEmitterPlug>> *emitterPlugs;
@end

@implementation MSTContext

+ (instancetype)sharedContext
{
    static MSTContext *context = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        context = [[self alloc] init];
    });
    return context;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.emitterPlugs = @[];
    }
    return self;
}

#pragma mark - EmitterPlug

- (instancetype)addEmitterPlug:(Class<MSTEmitterPlug>)emitterPlug
{
    NSMutableArray *emitterPlugs = [self.emitterPlugs mutableCopy];
    [emitterPlugs addObject:emitterPlug];
    self.emitterPlugs = emitterPlugs;
    id<MSTEmitterPlug> emitter = [[(Class)emitterPlug alloc] init];
    [[MSTPipe shareInstance] addEmitter:emitter];
    return self;
}

@end

