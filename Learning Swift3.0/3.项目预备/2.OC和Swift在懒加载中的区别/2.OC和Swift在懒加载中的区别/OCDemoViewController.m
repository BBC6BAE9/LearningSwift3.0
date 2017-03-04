//
//  OCDemoViewController.m
//  2.OC和Swift在懒加载中的区别
//
//  Created by huang on 2017/1/12.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

#import "OCDemoViewController.h"

@interface OCDemoViewController ()

@property(nonatomic,strong)UILabel *label;

@end

@implementation OCDemoViewController

//如果label等于nil，就创建
-(UILabel *)label{
    if (_label == nil) {
        _label = [[UILabel alloc]init];
        _label.center = self.view.center;
        _label.text = @"我的label";
        [_label sizeToFit];
    }
    return _label;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view addSubview:_label];

    //释放label
    _label = nil;
    //会再次调用懒加载的代码
    NSLog(@"%@",self.label);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // 接收到内存警告，释放视图
    //iOS 6.0以后不会再清理视图，视图始终会保留
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
