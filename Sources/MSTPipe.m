//
//  MSTPipe.m
//  Unity-iPhone
//
//  Created by Fan Li Lin on 2019/7/10.
//

#import "MSTPipe.h"
#import "MSTEmitterPlug.h"

@interface MSTPipe ()
/*&* 插件任务 */
@property (nonatomic, copy) NSArray<id<MSTEmitterPlug>> *emitters;
@end

@implementation MSTPipe

+ (instancetype)shareInstance
{
    static MSTPipe *pipe = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        pipe = [[self alloc] init];
    });
    return pipe;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.emitters = @[];
    }
    return self;
}

- (void)addEmitter:(id<MSTEmitterPlug>)emitter
{
    NSMutableArray *emitters = [self.emitters mutableCopy];
    [emitters addObject:emitter];
    self.emitters = emitters;
    [emitter prepare];
}

@end
