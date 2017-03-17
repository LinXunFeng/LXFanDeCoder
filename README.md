# LXFanDeCoder

## 一行代码解决属性归档解档的操作

对文章的总结，详细原理看原作者的文章内容吧，在此感谢原作者

[OC最实用的runtime总结，面试、工作你看我就足够了！]("http://www.jianshu.com/p/ab966e8a82e2")

## Usage
Person.h
```objc
@interface Person : NSObject

/** name */
@property(nonatomic, copy) NSString *name;
/** age */
@property(nonatomic, assign) int age;
/** birthday */
@property(nonatomic, copy) NSString *birthday;
/** address */
@property(nonatomic, copy) NSString *address;

@end
```

Person.m
```objc
#import "Person.h"
#import "NSObject+Extension.h"

@implementation Person

// 设置需要忽略的属性
- (NSArray *)ignoredNames {
    return @[@"_birthday"];
}

// 重点
LXFCoder

@end
```



