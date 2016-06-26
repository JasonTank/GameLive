//
//  YXClassModel.m
//  TRProject
//
//  Created by 王耀先 on 16/6/26.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "YXClassModel.h"

@implementation YXClassModel
+(NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"Esarray":[YXClassEsarrayModel class]};
}
@end
@implementation YXClassEsarrayModel
+(NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"ID":@"id"};
}
@end


