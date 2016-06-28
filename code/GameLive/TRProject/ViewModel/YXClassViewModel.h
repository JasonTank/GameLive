//
//  YXClassViewModel.h
//  TRProject
//
//  Created by 王耀先 on 16/6/26.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "TRBaseViewModel.h"
#import "YXClassModel.h"
@interface YXClassViewModel : TRBaseViewModel
@property(nonatomic) NSInteger numForIndex;
@property(nonatomic) NSArray<YXClassEsarrayModel *> *dataList;


- (YXClassEsarrayModel *)modelForIndex:(NSInteger)index;
- (NSString *)titleForIndex:(NSInteger)index;
- (NSURL *)iconURLForIndex:(NSInteger)index;
- (NSString *)gameNameForIndex:(NSInteger)index;

@end
