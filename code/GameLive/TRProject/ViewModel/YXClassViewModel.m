//
//  YXClassViewModel.m
//  TRProject
//
//  Created by 王耀先 on 16/6/26.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "YXClassViewModel.h"
#import "YXNetManager.h"
@implementation YXClassViewModel

-(NSString *)gameNameForIndex:(NSInteger)index{
    return [self modelForIndex:index].slug;
}

-(NSString *)titleForIndex:(NSInteger)index{
    return [self modelForIndex:index].name;
}

-(NSURL *)iconURLForIndex:(NSInteger)index{
    return [self modelForIndex:index].image.yx_URL;
}

- (YXClassEsarrayModel *)modelForIndex:(NSInteger)index{
    return self.dataList[index];
}

-(void)getDataWithRequestMode:(VMRequestMode)requestMode completionHandler:(void (^)(NSError *))completionHandler{
    _dataTask = [YXNetManager getClassPathCompletionHandler:^(id model, NSError *error) {
        self.dataList = model;
        !completionHandler?:completionHandler(error);
    }];
}

-(NSArray<YXClassEsarrayModel *> *)dataList{
    if (!_dataList) {
        _dataList = [[NSArray<YXClassEsarrayModel *> alloc]init];
    }
    return _dataList;
}

-(NSInteger)numForIndex{
    return self.dataList.count;
}

@end
