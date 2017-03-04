//
//  DemoViewController.m
//  6.循环引用
//
//  Created by huang on 2017/1/8.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

/*OC中解决循环引用的方法，面试有用*/

#import "DemoViewController.h"

@interface DemoViewController ()

@property(nonatomic,copy) void(^completionCallBack)();
@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //解除引用1:
    //    __weak typeof(self) weakSelf = self;
    //    [self loadData:^{
    //
    //        NSLog(@"%@",weakSelf.view);
    //    }];
    
    //解除引用2:
    //高级iOS程序员，自己手动管理内存的时候会使用，使用__unsafe_unretained会有风险,以后一定要试验一下，日常开发安全为主
    __unsafe_unretained typeof(self) weakSelf = self;
    [self loadData:^{
        //EXC_BAD_ACCESS坏内存访问（野指针访问）
        //__unsafe_unretained同样是也指针的引用（MRC（手动内存管理）中没有weak）
        //在MRC中需要弱引用的都是实用assign，不会增加引用计数，一旦对象被释放，地址不会改变，继续访问将会出现野指针
        //ARC的weak的本质上是观察者模式，一旦发现对象被释放，降低址设置为nil，更加安全。weak的效率会“略微”差一些
    NSLog(@"%@",weakSelf.view);
    }];
}

-(void)loadData:(void(^)())completion{
    
    //使用属性记录block
    self.completionCallBack = completion;
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"执行耗时操作%@",[NSThread currentThread]);
        [NSThread sleepForTimeInterval:3];
        dispatch_async(dispatch_get_main_queue(), ^{
            //执行block
            completion();
        });
    });
}
@end
