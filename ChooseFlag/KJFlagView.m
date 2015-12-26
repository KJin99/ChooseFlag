//
//  KJFlagView.m
//  ChooseFlag
//
//  Created by kouhanjin on 15/12/26.
//  Copyright © 2015年 khj. All rights reserved.
//

#import "KJFlagView.h"
#import "KJFlag.h"

@interface KJFlagView ()
@property (weak, nonatomic) IBOutlet UILabel *countryLabel;
@property (weak, nonatomic) IBOutlet UIImageView *countryImageView;

@end

@implementation KJFlagView

+ (instancetype)flagWithReusingView:(UIView *)view
{
    KJFlagView *flagView = (KJFlagView *)view;
    // 如果为空创建view
    if (flagView == nil) {
        flagView =  [[[NSBundle mainBundle] loadNibNamed:@"KJFlagView" owner:nil options:nil] lastObject];
        // 要设置宽度 ，不然没有效果，高度可以不设置
        flagView.bounds = CGRectMake(0, 0, 200, 0);
    }
    
    return flagView;
}

- (void)setFlag:(KJFlag *)flag
{
    _flag = flag;
    
    self.countryLabel.text = flag.name;
    self.countryImageView.image = [UIImage imageNamed:flag.icon];
}
@end
