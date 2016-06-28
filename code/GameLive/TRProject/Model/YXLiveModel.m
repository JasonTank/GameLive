//
//  YXLiveModel.m
//  TRProject
//
//  Created by 王耀先 on 16/6/23.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "YXLiveModel.h"

@implementation YXLiveModel
+(NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"data":[YXLiveLinkObjectModel class]};
}
@end

@implementation YXLiveRecommendModel
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"data":[YXLiveRecommendDataModel class]};
}
@end


@implementation YXLiveRecommendDataModel
+(NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    //new old
    return @{@"ID":@"id"};
}
+(NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"data":[YXLiveLinkObjectModel class]};
}

@end


@implementation YXLiveLinkObjectModel
+(NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"nStartTime":@"new_start_time"};
}
@end



