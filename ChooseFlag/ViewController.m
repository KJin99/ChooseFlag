//
//  ViewController.m
//  ChooseFlag
//
//  Created by kouhanjin on 15/12/26.
//  Copyright © 2015年 khj. All rights reserved.
//

#import "ViewController.h"
#import "KJFlag.h"
#import "KJFlagView.h"

@interface ViewController ()<UIPickerViewDataSource,UIPickerViewDelegate>
@property (nonatomic, strong) NSArray *flags;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@end

@implementation ViewController
/**
 *  数据的懒加载
 *
 */
- (NSArray *)flags
{
    if (_flags == nil) {
        _flags = [KJFlag flagList];
    }
    
    return _flags;
}

#pragma mark - 数据源方法
/**
 *  返回有好多列，类似于UITableView中得组
 *
 */
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
/**
 *  返回每列有好多行
 *
 */
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.flags.count;
}
/**
 *  第component列的第row行显示什么文字
 */
//- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
//{
//    return @"hahha";
//}

/**
 *  第component列的第row行显示怎样的view
 *  每当有一行内容出现在视野范围内,就会调用(调用频率高)
 */
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    // 自定义view，reusingView可重用的view
    KJFlagView *flagView = [KJFlagView flagWithReusingView:view];
    NSLog(@"%p",flagView);
    // 设置数据
    KJFlag *flag = self.flags[row];
    flagView.flag = flag;
    return flagView;
}

/**
 *  返回每列的宽度
 *
 */
//- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component __TVOS_PROHIBITED
//{
//    return self.view.bounds.size.width;
//}
/**
 *  返回每列的高度
 *
 */
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component __TVOS_PROHIBITED
{
    return 44;
}
@end
