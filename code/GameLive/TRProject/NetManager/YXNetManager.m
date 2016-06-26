//
//  YXNetManager.m
//  TRProject
//
//  Created by 王耀先 on 16/6/23.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "YXNetManager.h"

@implementation YXNetManager
//live页面
+(id)getLivePage:(NSInteger)page completionHandler:(void (^)(id, NSError *))completionHandler{
    NSString *path = page?[NSString stringWithFormat:kLivePath, page]:kLivePathOne;

    
    return [self GET:path parameters:nil progress:nil completionHandler:^(id jsonObject, NSError *error) {
        if (error) {
            DDLogError(@"%@", error);
        }else{
            !completionHandler?:completionHandler([YXLiveModel parseJSON:jsonObject], error);
        }
    }];
}

//home页面
+(id)getHomePathCompletionHandler:(void (^)(id, NSError *))completionHandler{
   
    return [self GET:kHomePath parameters:nil progress:nil completionHandler:^(id jsonObject, NSError *error) {
        if (error) {
            DDLogError(@"%@", error);
        }else{
            !completionHandler?:completionHandler([YXHomeListModel parseJSON:jsonObject], error);
        }
    }];
}


+(id)getClassPathCompletionHandler:(void (^)(id, NSError *))completionHandler{

    return [self GET:kClassPath parameters:nil progress:nil completionHandler:^(id jsonObject, NSError *error) {
        if (error) {
            DDLogError(@"%@", error);
        }else{
            !completionHandler?:completionHandler([YXClassEsarrayModel parseJSON:jsonObject], error);
        }
    }];
}


@end
