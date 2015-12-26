//
//  KJFlagView.h
//  ChooseFlag
//
//  Created by kouhanjin on 15/12/26.
//  Copyright © 2015年 khj. All rights reserved.
//

#import <UIKit/UIKit.h>
@class KJFlag;

@interface KJFlagView : UIView
/**
 *  提供一个类方法，初始化view
 */
+ (instancetype)flagWithReusingView:(UIView *)view;

@property (nonatomic, strong) KJFlag *flag;
@end
