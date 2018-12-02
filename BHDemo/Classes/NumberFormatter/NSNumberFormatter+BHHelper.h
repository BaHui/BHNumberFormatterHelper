//
//  NSNumberFormatter+BHHelper.h
//  BHDemo
//
//  Created by QBH on 2018/12/2.
//  Copyright © 2018 QiaoBaHui. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSNumberFormatter (BHHelper)

#pragma mark - 无格式

// Return: 无格式, 四舍五入
+ (NSString *)roundNoStyleWithDoubleValue:(double)doubleValue scale:(NSInteger)scale;

// Return: 无格式, 向上取值 (进)
+ (NSString *)ceilingNoStyleWithDoubleValue:(double)doubleValue scale:(NSInteger)scale;

// Return: 无格式, 向下取值 (舍)
+ (NSString *)floorNoStyleWithDoubleValue:(double)doubleValue scale:(NSInteger)scale;

#pragma mark - 逗号间隔

// Return: 逗号间隔, 保留`scale`位小数, 四舍五入
+ (NSString *)roundCommaSeparateWithDoubleValue:(double)doubleValue scale:(NSInteger)scale;

// Return: 逗号间隔, 保留`scale`位小数, 向上取值 (进)
+ (NSString *)ceilingCommaSeparateWithDoubleValue:(double)doubleValue scale:(NSInteger)scale;

// Return: 逗号间隔, 保留`scale`位小数, 向下取值 (舍)
+ (NSString *)floorCommaSeparateWithDoubleValue:(double)doubleValue scale:(NSInteger)scale;

#pragma mark - $/¥前缀, 逗号间隔 (前缀符号有本地化自动选择)

// Return: $/¥前缀, 逗号间隔, 保留`scale`位小数, 四舍五入
+ (NSString *)roundCurrencyCommaSeparateWithDoubleValue:(double)doubleValue scale:(NSInteger)scale;

// Return: $/¥前缀, 逗号间隔, 保留`scale`位小数, 向上取值 (进)
+ (NSString *)ceilingCurrencyCommaSeparateWithDoubleValue:(double)doubleValue scale:(NSInteger)scale;

// Return: $/¥前缀, 逗号间隔, 保留`scale`位小数, 向下取值 (舍)
+ (NSString *)floorCurrencyCommaSeparateWithDoubleValue:(double)doubleValue scale:(NSInteger)scale;

#pragma mark - %后缀, 逗号间隔

// Return: %后缀, 逗号间隔, 保留`scale`位小数, 四舍五入
+ (NSString *)roundPercentCommaSeparateWithDoubleValue:(double)doubleValue scale:(NSInteger)scale;

// Return: %后缀, 逗号间隔, 保留`scale`位小数, 向上取值 (进)
+ (NSString *)ceilingPercentCommaSeparateWithDoubleValue:(double)doubleValue scale:(NSInteger)scale;

// Return: %后缀, 逗号间隔, 保留`scale`位小数, 向下取值 (舍)
+ (NSString *)floorPercentCommaSeparateWithDoubleValue:(double)doubleValue scale:(NSInteger)scale;

@end

NS_ASSUME_NONNULL_END
