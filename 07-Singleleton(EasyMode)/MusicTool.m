//
//  MusicTool.m
//  07-Singleleton(EasyMode)
//
//  Created by  a on 16/3/28.
//  Copyright © 2016年 eva. All rights reserved.
//

#import "MusicTool.h"

@implementation MusicTool

SingletonM(MusicTool)
//static id _instance;
//
//+ (instancetype)allocWithZone:(struct _NSZone *)zone {
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        _instance = [super allocWithZone:zone];
//    });
//    return _instance;
//}
//
//+ (instancetype)sharedInstance {
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        _instance = [[self alloc] init];
//    });
//    return _instance;
//}
//
//- (id)copyWithZone:(NSZone *)zone {
//    return _instance;
//}

@end
