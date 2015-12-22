//
//  main.swift
//  swift01_基本语法
//
//  Created by Scott on 15/12/22.
//  Copyright © 2015年 Scott. All rights reserved.
//

import Foundation
import UIKit /** 导入UIKit框架. */

/** 
 * 此处函数和OC中的函数相同, 只是参数格式不同. 
 * OC是在c的main函数中调用UIApplicationMain, 所以是将main中的两个参数传入
 * UIApplicationMain函数中, 而swift并不是从C的main函数进入, 因此UIApplication
 * 前两个参数由一种新的枚举Process获取.
 * 
 * Process.argc: Access to the raw argc value from C
 * Process.nusafeArgv: Access to the raw argv value from C. Accessing the argument vector through this pointer is unsafe.
 */
UIApplicationMain(Process.argc, Process.unsafeArgv, nil, NSStringFromClass(AppDelegate))



