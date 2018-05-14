//
//  constant.swift
//  Swift4Learn
//
//  Created by Tony on 2018/5/14.
//  Copyright © 2018年 tony. All rights reserved.
//

/*
 * 你可能会问我为啥没有引用，因为swift默认在当前包内调用，不需要import.哇，好方便 >0<,当然一定是swift帮我们做了这件事，毕竟没了h文件。如果你想问它怎么知道：选中当前项目，targets->build phases-->第二项compile source：😯在这里！！！
     对比OC 你发现少了 h和m 的导入
 */


import Foundation
import UIKit


//OC宏定义的swift的写法：由于swift没有宏定义，该怎么办？？？
//需要定义全局常量/方法   呦嚯嚯～呦嚯嚯～

let kScreenHeight = UIScreen.main.bounds.size.height
let kScreenWidth =  UIScreen.main.bounds.size.width

//OC中带参数的宏定义的swift中的写法
    //你一定会问我系列套餐
    //? 和 ! 其实分别是Swift语言中对一种可选类型（ Optional) 操作的语法。一个没赋值 一个 赋值了
    //here，你一定会问我 _ x:类型 这是啥  ---》直观上不检查数据类型：编译时
    //after，你一定又会问我 x:类型！ 这是啥  ---》直观上检查数据类型，必须有值（于是就会经常遇上2种错误：编译错误和runtime错误，you'll find it!）
    //After that， 后你一定还会问我 x:类型？ 这是啥  ---》直观上检查数据类型之可以为nil
    //After that，你一定更会问我 self as! UIScrollViewDelegate？ 这是啥  ---》  直观就是说 谁要作为代理人 代理方法必须有 设置代理你可以设置nil
    //因为swift是强类型语言，类型检查的强大！！
func RGBCOLOR(_ r:CGFloat,_ g:CGFloat,_ b:CGFloat) -> UIColor
{
    return UIColor(red: (r)/255.0, green: (g)/255.0, blue: (b)/255.0, alpha: 1.0)
}
