//
//  main.m
//  ARCReview
//
//  Created by wangtao on 14-3-13.
//  Copyright (c) 2014年 wangtao. All rights reserved.
//  http://blog.csdn.net/q199109106q/article/details/8565017
//  http://mobile.51cto.com/iphone-386301.htm

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Person *person = [[Person alloc] init];
//        [person testStrong]; // hello
//        [person testWeak]; // (null)
        [person testUnretained];
        
    }
    return 0;
}

