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
#import "YXStreamRoomViewController.h"
@interface AppDelegate ()
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [YXNetManager getStreamRoomGameName:@"dota2" page:0 completionHandler:^(id model, NSError *error) {
        NSLog(@"");
    }];
    
    
    UITabBarController *tbC = [[UITabBarController alloc]init];
    /****************************************************************************************/
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
   /****************************************************************************************/
    UICollectionViewFlowLayout *streamLayout = [UICollectionViewFlowLayout new];
    streamLayout.minimumLineSpacing = 10;
    streamLayout.minimumLineSpacing = 10;
    streamLayout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    streamLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    CGFloat width2 = lround(([UIScreen mainScreen].bounds.size.width - 30) / 2) - 1;
    CGFloat height2 = width2 * 100 / 156 + 40;
    streamLayout.itemSize = CGSizeMake(width2, height2);
    
    YXStreamRoomViewController *streamRoomVC = [[YXStreamRoomViewController alloc]initWithCollectionViewLayout:streamLayout];
    UINavigationController *streamNavi = [[UINavigationController alloc]initWithRootViewController:streamRoomVC];
    
    [UINavigationBar appearance].barStyle = UIBarStyleBlack;
    [UINavigationBar appearance].barTintColor = [UIColor redColor];
    tbC.viewControllers = @[ClassNavi,streamNavi];
    self.window.rootViewController = tbC;
    //全局默认配置
    [self setupGlobalConfig];
    return YES;
}

@end
