//
//  Person.h
//  ARCReview
//
//  Created by wangtao on 14-3-13.
//  Copyright (c) 2014年 wangtao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong) NSString *strongString1;
@property (nonatomic, strong) NSString *strongString2;
@property (nonatomic, weak) NSString *weakString;
@property (nonatomic, unsafe_unretained) NSString *unretainedString;

- (void)testStrong;
- (void)testWeak;
- (void)testUnretained;

@end
