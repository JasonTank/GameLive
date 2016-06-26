//
//  AppDelegate.m
//  TRProject
//
//  Created by jiyingxin on 16/2/4.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "AppDelegate.h"
#import "YXNetManager.h"
#import "YXClassViewController.h"
@interface AppDelegate ()
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UITabBarController *tbC = [[UITabBarController alloc]init];
    UICollectionViewFlowLayout *classLayout = [UICollectionViewFlowLayout new];
    classLayout.minimumLineSpacing = 10;
    classLayout.minimumInteritemSpacing = 10;
    classLayout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    classLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    CGFloat width = lround(([UIScreen mainScreen].bounds.size.width - 40) / 3.0) - 1;
    CGFloat height = width * 150 / 110 + 30;
    classLayout.itemSize = CGSizeMake(width, height);
    
    
    YXClassViewController *ClassVC = [[YXClassViewController alloc]initWithCollectionViewLayout:classLayout];
    UINavigationController *ClassNavi = [[UINavigationController alloc]initWithRootViewController:ClassVC];
   
    
    
    
    [UINavigationBar appearance].barStyle = UIBarStyleBlack;
    [UINavigationBar appearance].barTintColor = [UIColor redColor];
    tbC.viewControllers = @[ClassNavi];
    self.window.rootViewController = tbC;
    //全局默认配置
    [self setupGlobalConfig];
    return YES;
}

@end
