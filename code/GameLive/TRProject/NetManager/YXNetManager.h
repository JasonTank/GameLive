//
//  YXNetManager.h
//  TRProject
//
//  Created by 王耀先 on 16/6/23.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YXLiveModel.h"
#import "YXHomeModel.h"
#import "YXClassModel.h"
@interface YXNetManager : NSObject
+(id)getLivePage:(NSInteger)page completionHandler:(void(^)(id model, NSError *error))completionHandler;

+(id)getHomePathCompletionHandler:(void(^)(id model, NSError *error))completionHandler;

+(id)getClassPathCompletionHandler:(void(^)(id model, NSError *error))completionHandler;

+(id)getStreamRoomGameName:(NSString *)gameName page:(NSInteger)page completionHandler:(void(^)(id model, NSError *error))compleitonHandler;
@end
