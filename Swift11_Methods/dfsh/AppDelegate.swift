//
//  AppDelegate.swift
//  swift01_基本语法
//
//  Created by Scott on 15/12/22.
//  Copyright © 2015年 Scott. All rights reserved.
//


/** 导入UIKit 框架 */
import UIKit

// MARK: - 知识点1: swift项目程序入口.
/**
* 新建swift工程中并没有main函数, 实际上还是有main入口的, swift中在添加上@UIApplicationMain
* 之后, 编译器会自动合并一个app入口. 省略了main.swift文件.
* 如果需要自己编写main.swift文件. 将@UIApplicationMain注释掉, 新建一个main.swift文件.
* 详见 main.swift文件.
*/
//@UIApplicationMain


// MARK: - 知识点2: 类文件的语法说明.
/**
* 类名:Appdelegate, 继承于UIResponder.
* 签订UIApplicationDelegate协议.
*/
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    
    // MARK: - 知识点3: swift变量的 ? 和 ! 使用.
    
    /**
    * 众所周知, swift中用var定义变量. 但是swift不会给变量自动赋初始值. 所以要求在使用变量之前必须对其进行初始化.
    *
    * Optional 值的作用. optional是一个枚举值, 里面有两个值: none , some(Wrapped). none就是nil. 非nil是
    * optional.some, 然后通过wrapped包装原始值. 因此在使用optional的时候要拆包(unwrapped)进行取值.
    *
    * 声明为optional只需要在类型后面紧跟着一个 ? 符号.
    *
    * 一旦声明为optional的, 如果不显式赋值, 赋值会有个默认的nil.
    *
    * 在使用optional值的时候, 需要在具体的操作(如调用方法, 属性, 下标索引)等前面加上一个 ? , 如果是nil, 也就是
    * optional.none, 会跳过后面的操作不执行, 如果有值, 就是optional.some, 可能会拆包(unwrap), 然后对拆包后的值进行后面的操作, 在保证执行这个操作的安全性.
    *
    * 对于optional值, 不能直接进行操作, 否则会报错.因为optional的值需要拆包(unwrap)后才能得到原来的值, 然后才能对其操作. 拆包两种方法, 一种是option binding . 一种是在具体的操作添加 ! 符号.
    *
    * 使用场景: 一个myViewController类, 类中有一个属性 myLabel. myLabel在viewDidLoad中进行初始化.
    *
    *
    * 总结: ? 的几种使用场景.
    1. 声明optional值变量
    2. 用在对Optional值操作中, 用来判断是否能响应后面的操作
    3. 用于安全调用protocol的optional方法 (后面章节涉及时再详细讲解)
    4. 使用 as? 向下转型(Downcast) (后面章节涉及时再详细讲解)
    */
    var window: UIWindow? /**< var(变量), */
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
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

