//
//  Person.m
//  利用runtime 获取所有属性来重写归档解档
//
//  Created by 林洵锋 on 2017/3/17.
//  Copyright © 2017年 LXF. All rights reserved.
//

#import "Person.h"
#import "NSObject+Extension.h"

@implementation Person

// 设置需要忽略的属性
- (NSArray *)ignoredNames {
    return @[@"_birthday"];
}

// 在系统方法内来调用我们的方法
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        [self decode:aDecoder];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [self encode:aCoder];
}

@end
