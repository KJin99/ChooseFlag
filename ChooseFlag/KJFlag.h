//
//  KJFlag.h
//  ChooseFlag
//
//  Created by kouhanjin on 15/12/26.
//  Copyright © 2015年 khj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KJFlag : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *icon;

- (instancetype)initWithDic:(NSDictionary *)dic;
+ (instancetype)flagWithDic:(NSDictionary *)dic;

+ (NSArray *)flagList;

@end
