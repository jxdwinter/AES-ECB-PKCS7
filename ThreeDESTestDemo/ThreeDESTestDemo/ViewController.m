//
//  ViewController.m
//  ThreeDESTestDemo
//
//  Created by JiangXiaodong on 6/4/14.
//  Copyright (c) 2014 jxdwinter. All rights reserved.
//

#import "ViewController.h"
#import "GTMBase64.h"
#import "AESenAndDe.h"
#import "AESenAndDe.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *str = @"请求示例：℃天气℃么\r\n+-*/!@#$^&*%()^$-http://apis.juhe.cn/cook/query?key=&menu=%E8%A5%BF%E7%BA%A2%E6%9F%BF&rn=10&pn=3||";
    NSString *s = [AESenAndDe En_AESandBase64EnToString:str];
    NSLog(@"================%@",s);


    NSString *d = [AESenAndDe De_Base64andAESDeToString:@"CJ/fHKg0hxU+vXtNBd+3AWfRpkLn2iWUOl+INMKC+bIVc/RPil//genA4HpgE8ET"];
    NSLog(@"%@",d);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
