//
//  YXClassModel.h
//  TRProject
//
//  Created by 王耀先 on 16/6/26.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@class YXClassEsarrayModel;
@interface YXClassModel : NSObject

@property (nonatomic, strong) NSArray<YXClassEsarrayModel *> *esArray;

@end
@interface YXClassEsarrayModel : NSObject

@property (nonatomic, copy) NSString *slug;

@property (nonatomic, copy) NSString *first_letter;

@property (nonatomic, assign) NSInteger status;
//id - > ID
@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, assign) NSInteger prompt;

@property (nonatomic, copy) NSString *image;

@property (nonatomic, copy) NSString *thumb;

@property (nonatomic, assign) NSInteger priority;

@property (nonatomic, copy) NSString *name;

@end

