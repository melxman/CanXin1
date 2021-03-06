//
//  AppDelegate.swift
//  CanXin1
//
//  Created by HDcat on 15/10/19.
//  Copyright © 2015年 HDcat. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, RCIMUserInfoDataSource {

    var window: UIWindow?

    func getUserInfoWithUserId(userId: String!, completion: ((RCUserInfo!) -> Void)!) {
        
        let userInfo = RCUserInfo()
        
        userInfo.userId = userId
        
        switch userId {
        case "m1":
            userInfo.name = "Jobb"
            userInfo.portraitUri = "http://img1.touxiang.cn/uploads/20131114/14-065802_226.jpg"
            case "long2":
            userInfo.name = "Boss"
            userInfo.portraitUri = "http://img1.touxiang.cn/uploads/20131114/14-065803_765.jpg"
        default :
            print("无此用户")
        }
        return completion(userInfo)
    }
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        //初始化
        RCIM.sharedRCIM().initWithAppKey("bmdehs6pdulls")
        
        //设置用户信息提供者为自己
        RCIM.sharedRCIM().userInfoDataSource = self
        
        //测试连接
        RCIM.sharedRCIM().connectWithToken("6huIF3B7Go8v6j9wxbLxj+EFHcnwrDWPmUvSnx/uD8YjX6JbI3lICAqCMkEUIIrUmpL/3XZsuaDzTg3PkFcCNQ==", success: { (_) -> Void in
            print("连接成功！")
//            let currentUser = RCUserInfo(userId: "m1", name: "Jobb", portrait:nil)
//            RCIMClient.sharedRCIMClient().currentUserInfo = currentUser
            }, error: { (_) -> Void in
                print("连接错误！")
            }) { () -> Void in
                print("Token过期，或者错误")
        }
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

