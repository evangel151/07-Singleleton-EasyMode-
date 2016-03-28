//
//  ViewController.m
//  07-Singleleton(EasyMode)
//
//  Created by  a on 16/3/28.
//  Copyright © 2016年 eva. All rights reserved.
//

#import "ViewController.h"
#import "MovieTool.h"
#import "MusicTool.h"
#import "TestTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 使用传统的单例宏创建单例对象
    TestTool *tool3 = [[TestTool alloc] init];
    TestTool *tool4 = [TestTool sharedInstance];
    
    // 使用修改过的单例宏 可以使用定制的创建单例的类方法
    // 使用(name)传入类名  使用 ## 连接符连接shared方法
    MusicTool *tool1 = [MusicTool sharedMusicTool];
    MusicTool *tool2 = [[MusicTool alloc] init];
    
        
   
// 对不同环境下的项目 根据适配 进行条件编译
#if __has_feature(objc_arc)
// ARC 环境下来到这里
     NSLog(@"1%@ 2%@ 3%@ 4%@",tool1,tool2,tool3,tool4);
#else
// MRC
     NSLog(@"MRC环境测试");
#endif
}

@end
