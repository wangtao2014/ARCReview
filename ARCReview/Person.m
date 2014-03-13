//
//  Person.m
//  ARCReview
//
//  Created by wangtao on 14-3-13.
//  Copyright (c) 2014年 wangtao. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize strongString1;
@synthesize strongString2;
@synthesize weakString;
@synthesize unretainedString;

- (void)testStrong
{
    self.strongString1 = @"hello";
    self.strongString2 = self.strongString1;
    self.strongString1 = nil;
    NSLog(@"%@", self.strongString2);
}

- (void)testWeak
{
    self.strongString1 = [[NSString alloc] initWithUTF8String:"hello"];
    self.weakString = self.strongString1;
    self.strongString1 = nil;
    NSLog(@"%@", self.weakString);
}

- (void)testUnretained
{
    // Assigning retained object to weak variable, object will be released after assignment
    // __weak NSString *str = [[NSString alloc] initWithUTF8String:"hello"];
    // NSLog(@"%@", str); // (null)
    // 成员变量和局部变量默认是strong类型的，因此一般不需要加__strong修饰
    self.strongString1 = [[NSString alloc] initWithUTF8String:"hello"];
    self.unretainedString = self.strongString1;
    self.strongString1 = nil;
    NSLog(@"%@", self.unretainedString);
}

@end
