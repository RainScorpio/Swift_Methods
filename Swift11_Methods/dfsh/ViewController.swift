//
//  ViewController.swift
//  dfsh
//
//  Created by Rain on 15/12/22.
//  Copyright © 2015年 Rain. All rights reserved.
//

import UIKit

// MARK: - 知识点1: 方法参数名命名规范

/** 我准备把命名规范这部分放到方法章节. */

/**
 * 1. 参数名由外部名称和局部名称组合, 中间用空格分隔. (局部名称是用于方法内部使用, 外部名称是用于方法调用时使用)
 * 2. 使用一些介词指向第一个参数, 例如: with, for, by. 使用介词是为了方法在调用的时候能像句子一样被读取.
 * 3. 默认情况下给第一个参数本地名称, 给第二个及以后的参数本地和外部名称
 * 4. 在有些情况下, 可以给第一个参数一个外部名称.
 * 5. 可以使用_(下划线)作为参数的一个明确的外部名称.(可以用_代替外部名称)
 */


// MARK: - 知识点2: self属性

/**
 * 当属性名称和内部方法的参数名称相同时, 就必须使用self来区分它们.
 */

//struct Point {
//    var x = 0.0, y = 0.0;
//    
//    func isToTheRightOfX(x:Double) -> Bool{
//        return self.x > x;
//    }
//}
//
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        let point = Point(x: 3.0, y: 4.0)
//        
//        if point.isToTheRightOfX(1.0) {
//            print("sdkf;a");
//        }
//        
//        
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//}

// MARK: - 知识点3: 在实例方法中修改Value Type(值类型), 关键字: mutating

/** 结构体和枚举都是值类型, 默认情况下, 值类型的属性是不能在实例方法中改变的. */

// FIXME: 结构体
//
//struct Point {
//    var x = 0.0, y = 0.0;
//    
//    /** 在方法的func关键字前面加上mutating关键字, 就可以改变值类型的属性. */
//   
//    mutating func moveByX(deltaX: Double, y deltaY: Double) {
//        
//        /** 在方法结束时, 会把任何的变化写回原来的结构体. */
////        x += deltaX
////        y += deltaY
//        
//        
//        /** 这种方法也可以给self属性分配一个新的实例, 在方法结束时, 用新实例替换原来存在的实例. */
//        self = Point(x: x + deltaX, y: y + deltaY);
//        
//    }
//}
///** 
// * 注意:
// * 结构体常量不能调用mutating方法.
// */
//
//
// FIXME: 枚举
//
//enum TriStateSwitch {
//    
//    case Off, Low, High
//    mutating func next() {
//        
//        switch self {
//            
//        case .Off:
//            self = Low
//        case .Low:
//            self = High
//        case .High:
//            self = Off
//        }
//        
//        
//    }
//    
//    
//}
//
//class ViewController: UIViewController {
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        /** 结构体. */
//        var somePoint = Point(x: 1.0, y: 1.0)
//        somePoint.moveByX(2.0, y: 3.0)
//        print("The point is now at (\(somePoint.x), \(somePoint.y))")
//        
//        /** 枚举. */
//        var ovenLight = TriStateSwitch.Low
//        ovenLight.next();
//        print("\(ovenLight)")
//        
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    
//}


// MARK: - 知识点4: 类方法, 关键字: static

//class SomeClass {
//    static func someTypeMethod() {
//        print("类方法: someTypeMethod")
//    }
//    
//    static func callTypeMethod() {
//        
//        print("在callTypeMethod类方法内调用另一个类方法.")
//        
//        // 一个类方法可以在其他类方法中被调用, 仅使用方法名即可, 不需要使用类名.
//        someTypeMethod()
//    }
//}


/**
 * 在结构体和枚举中, 类方法内可以使用self区分相同的属性名和参数名.
 * (代码未实现)
 */


/**
 * LevelTracker结构体
 * 监测玩家的游戏晋级情况
 * 这是一个单人游戏, 也可以存储多个玩家在同一设备上的游戏信息.
 */

//struct LevelTracker {
//    static var highestUnlockedLevel = 1 /**< 当前解锁的最高等级. */
//    
//    /** 解锁某一级 */
//    static func unlockLevel(level: Int) {
//        if level > highestUnlockedLevel {
//            highestUnlockedLevel = level
//        }
//    }
//    
//    /** 判断level是否被解锁. */
//    static func levelIsUnlocked(level: Int) -> Bool {
//        
//        return level <= highestUnlockedLevel
//    }
//    
//    
//    var currentLevel = 1 /**< 当前等级. */
//    
//    /** 被解锁的级别, 设置成当前级别. */
//    mutating func advanceToLevel(level: Int) -> Bool {
//        if LevelTracker.levelIsUnlocked(level) {
//            currentLevel = level
//            return true
//        } else {
//            return false
//        }
//    }
//
//}

/**
 * Player 类使用LeveTracker来监测和更新每个玩家的发展进度
 */

//class Player {
//    var tracker = LevelTracker()
//    let playerName: String
//    func completedLevel(level: Int) {
//        LevelTracker.unlockLevel(level + 1)
//        tracker.advanceToLevel(level + 1)
//    }
//    
//    init(name: String) {
//        
//        playerName = name
//        
//    }
//}

//class ViewController: UIViewController {
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        // 类方法调用.
//        SomeClass.someTypeMethod()
//        SomeClass.callTypeMethod()
//        
//        // 创建第一个玩家.
//        var player = Player(name: "Argyrios")
//        player.completedLevel(1)
//        print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
//        
//        // 创建第二个玩家.
//        player = Player(name: "Beto")
//        
//        // 创建了第二个玩家，并尝试让他开始一个没有被任何玩家解锁的等级，那么试图设置玩家当前等级将会失败
//        if player.tracker.advanceToLevel(6) {
//            print("player is now on level 6")
//        } else{
//            print("level 6 has not yet been unlocked")
//        }
//        
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    
//}


