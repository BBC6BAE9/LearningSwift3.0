//
//  Person.m
//  1.构造函数
//
//  Created by huang on 2017/1/8.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

#import "Book.h"

@interface Book()

@property(nonatomic,copy)NSString *bookName;

@end


@implementation Book
// 顺序刚好和Swift是相反的
//-OC    是先实例化父类,再实例化子类
//-Swift 是先实例化子类，再实例化父类

-(instancetype)init{
    //1.调用父类，给父类初始化
    self = [super init];
    
    if (self) {
        // 2.为什么会有if呢---有可能会初始化失败，无法创建父类
        _bookName = @"wukongzhuan";
        
    }
    return self;
}
@end
