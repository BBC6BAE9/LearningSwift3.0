//
//  ViewController.m
//  调度组
//
//  Created by huang on 2017/1/26.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

#import "ViewController.h"

/**
 
 1.调度组没有任务，直接执行notify
 2.入组多余出组，永远不会执行notify，因为组永远不会为空
 3.出组多于入组，会导致崩溃
 
 */
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self group2];
    

}


-(void)group2{

    //1.创建调度组
    dispatch_group_t group = dispatch_group_create();
    
    //2.队列
    dispatch_queue_t q = dispatch_get_global_queue(0, 0);

    
    
    //3.调度组
    //1>入组,监听随后的block
    dispatch_group_enter(group);
    dispatch_group_async(group, q, ^{
        
        NSLog(@"download A %@",[NSThread currentThread]);
        //2>出组(入组和出组一定要配对)
        dispatch_group_leave(group);
        

    });
    
    //1>入组
    dispatch_group_enter(group);
    dispatch_group_async(group, q, ^{
        [NSThread sleepForTimeInterval:1.0];
        NSLog(@"download B %@",[NSThread currentThread]);
        //2>出组(入组和出组一定要配对)
        dispatch_group_leave(group);
        
        
    });
   
    //在指定的队列调用，在主队列执行，正当调度组为空的时候调用
    dispatch_group_notify(group, dispatch_get_main_queue(), ^{
        //需求是当输出A和B完成的时候，才输出下面这句话
        NSLog(@"Come Here,Baby");
    });


}


/**
  调度组最重要的目的--监听一组任务完成
 
 */
-(void)group1 {

    //创建调度组
    dispatch_group_t group = dispatch_group_create();

    //队列
    dispatch_queue_t q = dispatch_get_global_queue(0, 0);
    
    //调度组，监听队列调度任务
    dispatch_group_async(group, q, ^{
        NSLog(@"download A %@",[NSThread currentThread]);
    });
    
    dispatch_group_async(group, q, ^{
        [NSThread sleepForTimeInterval:2];
        NSLog(@"download B %@",[NSThread currentThread]);
    });

    
    dispatch_group_notify(group, dispatch_get_main_queue(), ^{
        //需求是当输出A和B完成的时候，才输出下面这句话
        NSLog(@"Come Here,Baby");
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
