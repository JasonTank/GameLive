//
//  YXIndexModel.h
//  TRProject
//
//  Created by tarena on 16/6/29.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@class App-Overwatch,Link_Object,App-Index,Link_Object,App-Classification,Ext,App-Blizzard,Link_Object,App-Lol,Link_Object,App-Tvgame,Link_Object,App-Minecraft,Link_Object,App-Beauty,Link_Object,App-Sport,Link_Object,App-Dnf,Link_Object,App-Huwai,Link_Object,App-Dota2,Link_Object,App-Recommendation,Link_Object,App-Webgame,Link_Object,List,App-Heartstone,Link_Object;
@interface YXIndexModel : NSObject

@property (nonatomic, strong) NSArray<App-Overwatch *> *app-overwatch;

@property (nonatomic, strong) NSArray<App-Index *> *app-index;

@property (nonatomic, strong) NSArray<App-Classification *> *app-classification;

@property (nonatomic, strong) NSArray<App-Blizzard *> *app-blizzard;

@property (nonatomic, strong) NSArray<App-Lol *> *app-lol;

@property (nonatomic, strong) NSArray<App-Tvgame *> *app-tvgame;

@property (nonatomic, strong) NSArray<App-Beauty *> *app-beauty;

@property (nonatomic, strong) NSArray<App-Sport *> *app-sport;

@property (nonatomic, strong) NSArray<App-Dnf *> *app-dnf;

@property (nonatomic, strong) NSArray<App-Minecraft *> *app-minecraft;

@property (nonatomic, strong) NSArray<App-Huwai *> *app-huwai;

@property (nonatomic, strong) NSArray<App-Dota2 *> *app-dota2;

@property (nonatomic, strong) NSArray<App-Recommendation *> *app-recommendation;

@property (nonatomic, strong) NSArray<App-Webgame *> *app-webgame;

@property (nonatomic, strong) NSArray<List *> *list;

@property (nonatomic, strong) NSArray<App-Heartstone *> *app-heartstone;

@end
@interface App-Overwatch : NSObject

@property (nonatomic, strong) Link_Object *link_object;

@end

@interface Link_Object : NSObject

@property (nonatomic, copy) NSString *default_image;

@property (nonatomic, copy) NSString *slug;

@property (nonatomic, copy) NSString *weight;

@property (nonatomic, copy) NSString *status;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *category_name;

@property (nonatomic, assign) BOOL hidden;

@property (nonatomic, copy) NSString *intro;

@property (nonatomic, copy) NSString *category_slug;

@property (nonatomic, copy) NSString *recommend_image;

@property (nonatomic, copy) NSString *app_shuffling_image;

@property (nonatomic, copy) NSString *level;

@property (nonatomic, copy) NSString *thumb;

@property (nonatomic, copy) NSString *grade;

@property (nonatomic, copy) NSString *nick;

@property (nonatomic, copy) NSString *announcement;

@property (nonatomic, copy) NSString *uid;

@property (nonatomic, copy) NSString *avatar;

@property (nonatomic, copy) NSString *view;

@property (nonatomic, copy) NSString *video_quality;

@property (nonatomic, copy) NSString *category_id;

@property (nonatomic, copy) NSString *follow;

@end

@interface App-Index : NSObject

@property (nonatomic, assign) NSInteger id;

@property (nonatomic, copy) NSString *thumb;

@property (nonatomic, copy) NSString *content;

@property (nonatomic, copy) NSString *subtitle;

@property (nonatomic, assign) NSInteger slot_id;

@property (nonatomic, copy) NSString *link;

@property (nonatomic, assign) NSInteger priority;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *create_at;

@property (nonatomic, strong) Link_Object *link_object;

@property (nonatomic, copy) NSString *ext;

@property (nonatomic, assign) NSInteger status;

@property (nonatomic, copy) NSString *fk;

@end



@interface List : NSObject

@property (nonatomic, copy) NSString *slug;

@property (nonatomic, copy) NSString *name;

@end


