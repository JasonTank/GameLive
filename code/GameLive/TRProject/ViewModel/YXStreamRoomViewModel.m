//
//  YXStreamRoomViewModel.m
//  TRProject
//
//  Created by 王耀先 on 16/6/26.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "YXStreamRoomViewModel.h"
#import "YXNetManager.h"
@implementation YXStreamRoomViewModel

-(NSInteger)numForRow{
    return self.dataList.count;
}

-(YXLiveLinkObjectModel *)modelForRow:(NSInteger)row{
    return self.dataList[row];
}



-(NSURL *)iconURLForRow:(NSInteger)row{
    return [self modelForRow:row].avatar.yx_URL;
}

- (NSURL *)coverURLForRow:(NSInteger)row{
    return [self modelForRow:row].thumb.yx_URL;
}
- (NSString *)spectaterForRow:(NSInteger)row{
    return [self modelForRow:row].slug;
}
-(NSString *)titleForRow:(NSInteger)row{
    return [self modelForRow:row].title;
}
- (NSString *)nickForRow:(NSInteger)row{
    return [self modelForRow: row].nick;
}
-(NSString *)uidForRow:(NSInteger)row{
    return [self modelForRow:row].uid;
}


-(void)getDataWithRequestMode:(VMRequestMode)requestMode completionHandler:(void (^)(NSError *))completionHandler{
    switch (requestMode) {
        case VMRequestModeMore:
            _page = 0;
            break;
        case VMRequestModeRefresh:
            _page += 1;
            break;
    }
    
    _dataTask = [YXNetManager getLivePage:_page completionHandler:^(YXLiveModel *model, NSError *error) {
        if (error) {
            DDLogInfo(@"%@", error);
        }else{
            _hasMore = model.data.count == 90;
            if (requestMode == VMRequestModeRefresh) {
                [self.dataList removeAllObjects];
            }
            [self.dataList addObjectsFromArray:model.data];
        }
    }];
}

@end
