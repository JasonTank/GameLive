//
//  YXHomeModel.m
//  TRProject
//
//  Created by 王耀先 on 16/6/24.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "YXHomeModel.h"

@implementation YXHomeModel
+(NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"moblieWebgame":[YXLiveRecommendDataModel class],
             @"moblieMinecraft":[YXLiveRecommendDataModel class],
             @"mobileTvgame":[YXLiveRecommendDataModel class],
             @"moblieSport":[YXLiveRecommendDataModel class],
             @"mobileStar":[YXLiveRecommendDataModel class],
             @"mobileRecommendation":[YXLiveRecommendDataModel class],
             @"mobileIndex":[YXLiveRecommendDataModel class],
             @"mobileLol":[YXLiveRecommendDataModel class],
             @"mobileBeauty":[YXLiveRecommendDataModel class],
             @"mobileHeartstone":[YXLiveRecommendDataModel class],
             @"moblieBizzard":[YXLiveRecommendDataModel class],
             @"mobileDoat2":[YXLiveRecommendDataModel class],
             @"moblieDnf":[YXLiveRecommendDataModel class],
             @"list":[YXHomeListModel class]};
}

+(NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"moblieWebgame":@"moblie-webgame",@"moblieMinecraft":@"moblie-minecraft",
             @"mobileTvgame":@"mobile-tvgame",@"moblieSport":@"moblie-sport",
             @"mobileStar":@"mobile-star",@"mobileRecommendation":@"mobile-recommendation",
             @"mobileIndex":@"mobile-index",@"mobileLol":@"mobile-lol",
             @"mobileBeauty":@"mobile-beauty",@"mobileHeartstone":@"mobile-heartstone",
             @"moblieBlizzard":@"moblie-bizzard",@"mobileDota2":@"mobile-doat2",
             @"moblieDnf":@"moblie-dnf"};
}

@end

@implementation YXHomeListModel

@end





