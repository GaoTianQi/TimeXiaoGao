//
//  AppDelegate.m
//  BaseProject
//
//  Created by jiyingxin on 15/10/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate+Category.h"
#import "DuoWanNetManager.h"
#import "AllHeroModel.h"
#import "HeroSkinModel.h"
#import "HeroVideoModel.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self initializeWithApplication:application];
    
    [DuoWanNetManager getHeroVideoOfHeroName:@"Annie" Page:1 CompletionHandle:^(NSArray<HeroVideoModel *> *models, NSError *error) {
        
    }];
    return YES;
}

@end
