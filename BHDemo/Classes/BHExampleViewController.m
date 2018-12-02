//
//  BHExampleViewController.m
//  BHDemo
//
//  Created by QiaoBaHui on 2018/9/18.
//  Copyright © 2018年 QiaoBaHui. All rights reserved.
//

#import "BHExampleViewController.h"
#import "NSNumberFormatter+BHHelper.h"

@interface BHExampleViewController ()

@end

static NSString *const DEMO_VIEWS_STORYBOARD_NAME = @"DemoViews";


@implementation BHExampleViewController

+ (instancetype)create {
  UIStoryboard *demoViewsStoryboard = [UIStoryboard storyboardWithName:DEMO_VIEWS_STORYBOARD_NAME bundle:nil];
  return [demoViewsStoryboard instantiateViewControllerWithIdentifier:NSStringFromClass([BHExampleViewController class])];
}

#pragma mark - ViewController LifeCycle

- (void)viewDidLoad {
  [super viewDidLoad];
	
	double doubleValue = 12346789.44421;
	NSLog(@"原始: %f", doubleValue);
	
	// 无格式, 四舍五入
	NSString *roundNoFloatsString = [NSNumberFormatter roundNoStyleWithDoubleValue:doubleValue scale:2];
	NSLog(@"无格式, 四舍五入-> %@", roundNoFloatsString); // 输出: 无格式, 四舍五入-> 12346789.44

	// 向上取整(进)
	NSString *ceilingNoFloatsString = [NSNumberFormatter ceilingNoStyleWithDoubleValue:doubleValue scale:3];
	NSLog(@"无格式, 向上取值-> %@", ceilingNoFloatsString); // 输出: 无格式, 向上取值-> 12346789.445

	// 向下取整(舍)
	NSString *floorNoFloatsString = [NSNumberFormatter floorNoStyleWithDoubleValue:doubleValue scale:2];
	NSLog(@"无格式, 向下取值-> %@", floorNoFloatsString); // 输出: 无格式, 向下取值-> 12346789.44

	
	
	// 逗号间隔, 保留`scale`位小数, 四舍五入
	NSString *commaSeparatedString = [NSNumberFormatter roundCommaSeparateWithDoubleValue:doubleValue scale:2];
	NSLog(@"逗号分割-> %@", commaSeparatedString); // 输出: 逗号分割-> 12,346,789.44
	
	// 逗号间隔, 保留`scale`位小数, 向上取值 (进)
	NSString *ceilingCommaSeparatedString = [NSNumberFormatter ceilingCommaSeparateWithDoubleValue:doubleValue scale:2];
	NSLog(@"逗号分割, 向上取值-> %@", ceilingCommaSeparatedString); // 输出: 逗号分割, 向上取值-> 12,346,789.45
	
	// 逗号间隔, 保留`scale`位小数, 向下取值 (舍)
	NSString *floorCommaSeparatedString = [NSNumberFormatter floorCommaSeparateWithDoubleValue:doubleValue scale:3];
	NSLog(@"逗号分割, 向下取值-> %@", floorCommaSeparatedString); // 输出: 逗号分割, 向下取值-> 12,346,789.444
	
	
	
	// $/¥前缀, 逗号间隔, 保留`scale`位小数, 四舍五入
	NSString *roundCurrencyCommaSeparateString = [NSNumberFormatter roundCurrencyCommaSeparateWithDoubleValue:doubleValue scale:2];
	NSLog(@"$/¥前缀, 逗号分割, 向下取值-> %@", roundCurrencyCommaSeparateString); // 输出: $/¥前缀, 逗号分割, 向下取值-> $12,346,789.44
	
	// $/¥前缀, 逗号间隔, 保留`scale`位小数, 向上取值 (进)
	NSString *ceilingCurrencyCommaSeparateString = [NSNumberFormatter ceilingCurrencyCommaSeparateWithDoubleValue:doubleValue scale:2];
	NSLog(@"$/¥前缀, 逗号分割, 向下取值-> %@", ceilingCurrencyCommaSeparateString); // 输出: $/¥前缀, 逗号分割, 向下取值-> $12,346,789.45
	
	// $/¥前缀, 逗号间隔, 保留`scale`位小数, 向下取值 (舍)
	NSString *floorCurrencyCommaSeparateString = [NSNumberFormatter floorCurrencyCommaSeparateWithDoubleValue:doubleValue scale:2];
	NSLog(@"$/¥前缀, 逗号分割, 向下取值-> %@", floorCurrencyCommaSeparateString); // 输出: $/¥前缀, 逗号分割, 向下取值-> $12,346,789.44
	
	
	
	// %后缀, 逗号间隔, 保留`scale`位小数, 四舍五入
	NSString *roundPercentCommaSeparateString = [NSNumberFormatter roundPercentCommaSeparateWithDoubleValue:doubleValue scale:1];
	NSLog(@"百分号后缀, 逗号间隔, 保留`scale`位小数, 四舍五入-> %@", roundPercentCommaSeparateString);// 输出: %后缀, 逗号间隔, 保留`scale`位小数, 四舍五入-> 1,234,678,944.4%

	// %后缀, 逗号间隔, 保留`scale`位小数, 向上取值 (进)
	NSString *ceilingPercentCommaSeparateString = [NSNumberFormatter ceilingPercentCommaSeparateWithDoubleValue:doubleValue scale:1];
	NSLog(@"百分号后缀, 逗号间隔, 保留`scale`位小数, 向上取值-> %@", ceilingPercentCommaSeparateString);// 输出: %后缀, 逗号间隔, 保留`scale`位小数, 向上取值-> 1,234,678,944.5%
	
	// %后缀, 逗号间隔, 保留`scale`位小数, 向下取值 (舍)
	NSString *floorPercentCommaSeparateString = [NSNumberFormatter floorPercentCommaSeparateWithDoubleValue:doubleValue scale:1];
	NSLog(@"百分号后缀, 逗号间隔, 保留`scale`位小数, 向下取值-> %@", floorPercentCommaSeparateString);// 输出: %后缀, 逗号间隔, 保留`scale`位小数, 向下取值-> 1,234,678,944.4%
}

@end
