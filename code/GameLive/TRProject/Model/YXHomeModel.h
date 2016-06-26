
//
//  YXHomeModel.h
//  TRProject
//
//  Created by 王耀先 on 16/6/24.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YXLiveModel.h"
@class YXLiveRecommendDataModel, YXHomeListModel;
@interface YXHomeModel : NSObject

@property (nonatomic, strong) NSArray<YXLiveRecommendDataModel *> *moblieWebgame;

@property (nonatomic, strong) NSArray<YXLiveRecommendDataModel *> *moblieMinecraft;

@property (nonatomic, strong) NSArray<YXLiveRecommendDataModel *> *mobileTvgame;

@property (nonatomic, strong) NSArray<YXLiveRecommendDataModel *> *moblieSport;

@property (nonatomic, strong) NSArray<YXLiveRecommendDataModel *> *mobileStar;

@property (nonatomic, strong) NSArray<YXLiveRecommendDataModel *> *mobileRecommendation;

@property (nonatomic, strong) NSArray<YXLiveRecommendDataModel *> *mobileIndex;

@property (nonatomic, strong) NSArray<YXLiveRecommendDataModel *> *mobileLol;

@property (nonatomic, strong) NSArray<YXLiveRecommendDataModel *> *mobileBeauty;

@property (nonatomic, strong) NSArray<YXLiveRecommendDataModel *> *mobileHeartstone;

@property (nonatomic, strong) NSArray<YXLiveRecommendDataModel*> *moblieBlizzard;

@property (nonatomic, strong) NSArray<YXHomeListModel *> *list;

@property (nonatomic, strong) NSArray<YXLiveRecommendDataModel *> *mobileDota2;

@property (nonatomic, strong) NSArray<YXLiveRecommendDataModel *> *moblieDnf;
@end

@interface YXHomeListModel : NSObject

@property (nonatomic, copy) NSString *slug;

@property (nonatomic, copy) NSString *name;

@end

