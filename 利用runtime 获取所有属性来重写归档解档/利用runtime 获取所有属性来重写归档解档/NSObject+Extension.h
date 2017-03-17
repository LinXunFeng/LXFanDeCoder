//
//  NSObject+Extension.h
//  利用runtime 获取所有属性来重写归档解档
//
//  Created by 林洵锋 on 2017/3/17.
//  Copyright © 2017年 LXF. All rights reserved.
//

#define LXFCoder \
- (instancetype)initWithCoder:(NSCoder *)aDecoder { \
if (self = [super init]) { \
    [self decode:aDecoder]; \
} \
return self; \
} \
 \
- (void)encodeWithCoder:(NSCoder *)aCoder { \
    [self encode:aCoder]; \
}

#import <Foundation/Foundation.h>

@interface NSObject (Extension)

- (NSArray *)ignoredNames;
- (void)encode:(NSCoder *)aCoder;
- (void)decode:(NSCoder *)aDecoder;

@end
