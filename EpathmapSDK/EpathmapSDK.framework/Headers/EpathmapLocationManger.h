//
//  EpathmapLocationManger.h
//  EpathmapSDK
//
//  Created by zhangty on 2017/5/18.
//  Copyright © 2017年 Epathmap. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "EpathLocationInfo.h"

@protocol EpathmapLocationDelegate;

typedef void(^EpathMapViewSignBlock)(CGFloat distance,BOOL isSign);

@interface EpathmapLocationManger : NSObject

@property (nonatomic, weak, nullable)id<EpathmapLocationDelegate> delegate;

@property (nonatomic, assign)NSUInteger locationTimeOut;

@property (nonatomic, copy) EpathMapViewSignBlock _Nullable signBlock;

- (void)signWithMapId:(nonnull NSString *)mapId targetId:(nonnull NSString *)targetId signDistance:(CGFloat)distance resultBlock:(EpathMapViewSignBlock _Nullable )signBlock;

+(EpathmapLocationManger *_Nullable)shareInstance;

- (void)startLocationEngine:(nonnull NSString *)mapId;

- (void)stopLocatingEngine;

@end
@protocol EpathmapLocationDelegate <NSObject>

- (void)ipsmapLocationManager:(EpathmapLocationManger *_Nullable)manager didUpdateLocation:(EpathLocationInfo *_Nullable)location;

@end
