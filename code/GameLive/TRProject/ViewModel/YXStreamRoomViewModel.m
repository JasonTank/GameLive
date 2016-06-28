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
-(id)initWithGameName:(NSString *)gameName{
    if (self = [super init]) {
        _gameName = gameName;
    }
    return self;
}
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
    return [self modelForRow:row].view;
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
        case VMRequestModeRefresh :
            _page = 0;
            break;
        case VMRequestModeMore:
            _page += 1;
            break;
    }
    if (self.gameName == nil) {
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
            !completionHandler?:completionHandler(error);
        }];
    }else{
        _dataTask = [YXNetManager getStreamRoomGameName:_gameName page:_page completionHandler:^(YXLiveModel *model, NSError *error) {
            NSLog(@"%@", model);
            if (error) {
                DDLogInfo(@"%@", error);
            }else{
                _hasMore = model.data.count == 90;
                if (requestMode == VMRequestModeRefresh) {
                    [self.dataList removeAllObjects];
                }
                [self.dataList addObjectsFromArray:model.data];
                NSLog(@"%ld",self.dataList.count);
            }
            !completionHandler?:completionHandler(error);
        }];
    }
    
    
    

    
}

- (NSMutableArray<YXLiveLinkObjectModel *> *)dataList{
    if (!_dataList) {
        _dataList = [NSMutableArray<YXLiveLinkObjectModel *> init];
    }
    return _dataList;
}
@end
