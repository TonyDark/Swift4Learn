//
//  ScrollViewExtesion.swift
//  Swift4Learn
//
//  Created by Tony on 2018/5/10.
//  Copyright © 2018年 tony. All rights reserved.
//

import Foundation
import UIKit
extension UIScrollView{
    
    static func initWith(frame:CGRect,
                         delegate:UIScrollViewDelegate,
                         contentSize:CGSize
                         ) -> UIScrollView {
        let scrollView = UIScrollView.init(frame: frame)
        scrollView.delegate = delegate
        scrollView.contentSize = contentSize
        return scrollView;
    }
}
