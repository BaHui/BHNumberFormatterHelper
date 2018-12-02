//
//  NSNumberFormatter+BHHelper.m
//  BHDemo
//
//  Created by QBH on 2018/12/2.
//  Copyright © 2018 QiaoBaHui. All rights reserved.
//

#import "NSNumberFormatter+BHHelper.h"

@implementation NSNumberFormatter (BHHelper)

+ (NSString *)roundNoStyleWithDoubleValue:(double)doubleValue scale:(NSInteger)scale {
	NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
	numberFormatter.numberStyle = NSNumberFormatterNoStyle;
	numberFormatter.maximumFractionDigits = scale;
	
	return [numberFormatter stringFromNumber:[NSNumber numberWithDouble:doubleValue]];
}

+ (NSString *)ceilingNoStyleWithDoubleValue:(double)doubleValue scale:(NSInteger)scale {
	NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
	numberFormatter.numberStyle = NSNumberFormatterNoStyle;
	numberFormatter.roundingMode = kCFNumberFormatterRoundCeiling;
	numberFormatter.maximumFractionDigits = scale;
	
	return [numberFormatter stringFromNumber:[NSNumber numberWithDouble:doubleValue]];
}

+ (NSString *)floorNoStyleWithDoubleValue:(double)doubleValue scale:(NSInteger)scale {
	NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
	numberFormatter.numberStyle = NSNumberFormatterNoStyle;
	numberFormatter.roundingMode = kCFNumberFormatterRoundFloor;
	numberFormatter.maximumFractionDigits = scale;
	
	return [numberFormatter stringFromNumber:[NSNumber numberWithDouble:doubleValue]];
}

+ (NSString *)roundCommaSeparateWithDoubleValue:(double)doubleValue scale:(NSInteger)scale {
	NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
	numberFormatter.numberStyle = NSNumberFormatterDecimalStyle;
	numberFormatter.maximumFractionDigits = scale;
	
	return [numberFormatter stringFromNumber:[NSNumber numberWithDouble:doubleValue]];
}

+ (NSString *)ceilingCommaSeparateWithDoubleValue:(double)doubleValue scale:(NSInteger)scale {
	NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
	numberFormatter.numberStyle = NSNumberFormatterDecimalStyle;
	numberFormatter.roundingMode = kCFNumberFormatterRoundCeiling;
	numberFormatter.maximumFractionDigits = scale;
	
	return [numberFormatter stringFromNumber:[NSNumber numberWithDouble:doubleValue]];
}

+ (NSString *)floorCommaSeparateWithDoubleValue:(double)doubleValue scale:(NSInteger)scale {
	NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
	numberFormatter.numberStyle = NSNumberFormatterDecimalStyle;
	numberFormatter.roundingMode = kCFNumberFormatterRoundFloor;
	numberFormatter.maximumFractionDigits = scale;
	
	return [numberFormatter stringFromNumber:[NSNumber numberWithDouble:doubleValue]];
}

+ (NSString *)roundCurrencyCommaSeparateWithDoubleValue:(double)doubleValue scale:(NSInteger)scale {
	NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
	numberFormatter.numberStyle = NSNumberFormatterCurrencyStyle;
	numberFormatter.maximumFractionDigits = scale;
	
	return [numberFormatter stringFromNumber:[NSNumber numberWithDouble:doubleValue]];
}

+ (NSString *)ceilingCurrencyCommaSeparateWithDoubleValue:(double)doubleValue scale:(NSInteger)scale {
	NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
	numberFormatter.numberStyle = NSNumberFormatterCurrencyStyle;
	numberFormatter.roundingMode = kCFNumberFormatterRoundCeiling;
	numberFormatter.maximumFractionDigits = scale;
	
	return [numberFormatter stringFromNumber:[NSNumber numberWithDouble:doubleValue]];
}

+ (NSString *)floorCurrencyCommaSeparateWithDoubleValue:(double)doubleValue scale:(NSInteger)scale {
	NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
	numberFormatter.numberStyle = NSNumberFormatterCurrencyStyle;
	numberFormatter.roundingMode = kCFNumberFormatterRoundFloor;
	numberFormatter.maximumFractionDigits = scale;
	
	return [numberFormatter stringFromNumber:[NSNumber numberWithDouble:doubleValue]];
}

+ (NSString *)roundPercentCommaSeparateWithDoubleValue:(double)doubleValue scale:(NSInteger)scale {
	NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
	numberFormatter.numberStyle = NSNumberFormatterPercentStyle;
	numberFormatter.maximumFractionDigits = scale;
	
	return [numberFormatter stringFromNumber:[NSNumber numberWithDouble:doubleValue]];
}

+ (NSString *)ceilingPercentCommaSeparateWithDoubleValue:(double)doubleValue scale:(NSInteger)scale {
	NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
	numberFormatter.numberStyle = NSNumberFormatterPercentStyle;
	numberFormatter.roundingMode = kCFNumberFormatterRoundCeiling;
	numberFormatter.maximumFractionDigits = scale;
	
	return [numberFormatter stringFromNumber:[NSNumber numberWithDouble:doubleValue]];
}

+ (NSString *)floorPercentCommaSeparateWithDoubleValue:(double)doubleValue scale:(NSInteger)scale {
	NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
	numberFormatter.numberStyle = NSNumberFormatterPercentStyle;
	numberFormatter.roundingMode = kCFNumberFormatterRoundFloor;
	numberFormatter.maximumFractionDigits = scale;
	
	return [numberFormatter stringFromNumber:[NSNumber numberWithDouble:doubleValue]];
}

@end
