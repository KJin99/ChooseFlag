//
//  KJFlag.m
//  ChooseFlag
//
//  Created by kouhanjin on 15/12/26.
//  Copyright © 2015年 khj. All rights reserved.
//

#import "KJFlag.h"

@implementation KJFlag

- (instancetype)initWithDic:(NSDictionary *)dic
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
    }
    
    return self;
}

+ (instancetype)flagWithDic:(NSDictionary *)dic
{
    return [[self alloc] initWithDic:dic];
}

+ (NSArray *)flagList
{
    // 加载plist数据
    NSString *path = [[NSBundle mainBundle] pathForResource:@"flags" ofType:@"plist"];
    NSArray *array = [NSArray arrayWithContentsOfFile:path];
    NSMutableArray *arrayM = [NSMutableArray array];
    for (NSDictionary *dic in array) {
        [arrayM addObject:[self flagWithDic:dic]];
    }
    
    return arrayM;
}
@end
