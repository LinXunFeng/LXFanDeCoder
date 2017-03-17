//
//  Fruit.h
//  利用runtime 获取所有属性来重写归档解档
//
//  Created by 林洵锋 on 2017/3/17.
//  Copyright © 2017年 LXF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fruit : NSObject

/** name */
@property(nonatomic, copy) NSString *name;
/** address */
@property(nonatomic, copy) NSString *address;

@end
