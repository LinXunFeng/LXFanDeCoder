//
//  ViewController.m
//  利用runtime 获取所有属性来重写归档解档
//
//  Created by 林洵锋 on 2017/3/17.
//  Copyright © 2017年 LXF. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

#import "Fruit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *personPath = @"/Users/lxf/Desktop/person.plist";
    
    // 归档
    Person *p = [[Person alloc] init];
    p.age = 18;
    p.name = @"LXF";
    p.address = @"GD";
    p.birthday = @"20180808";
    [NSKeyedArchiver archiveRootObject:p toFile:personPath];
    
    // 解档
    Person *pp = (Person *)[NSKeyedUnarchiver unarchiveObjectWithFile:personPath];
    NSLog(@"name --- %@, age --- %d, birthday --- %@, address --- %@", pp.name, pp.age, pp.birthday, pp.address);
    
    
    
    NSString *fruitPath = @"/Users/lxf/Desktop/fruit.plist";
    Fruit *f = [[Fruit alloc] init];
    f.name = @"苹果";
    f.address = @"富士山";
    [NSKeyedArchiver archiveRootObject:f toFile:fruitPath];
}


@end
