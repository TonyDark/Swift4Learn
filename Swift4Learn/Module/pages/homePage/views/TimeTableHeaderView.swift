
//
//  TimeTableHeaderView.swift
//  Swift4Learn
//
//  Created by Tony on 2018/5/15.
//  Copyright © 2018年 tony. All rights reserved.
//

import UIKit

class TimeTableHeaderView: UIView {

    static func initWith(frame: CGRect,backgroundColor: UIColor) -> TimeTableHeaderView {
        let view = TimeTableHeaderView.init(frame: frame)
        view.backgroundColor = backgroundColor
        view.parentViewAddAllChildViews(view)
        return view
     }
    //swift重写方法
    override func parentViewAddAllChildViews(_ parentView: UIView?) {
        autoreleasepool {
            let iconImgVw = UIImageView
                            .init(frame:CGRect.init(x: 30,
                                                    y: 30,
                                                    width: 120,
                                                    height: 120))
            iconImgVw.image = UIImage
                              .init(named: "哼.jpg")
            iconImgVw.backgroundColor = UIColor
                                        .red
            self.addSubview(iconImgVw)
            let nameLab = UILabel
                          .init(frame: CGRect.init(x:iconImgVw
                                                     .frame.maxX+30,
                                                   y:iconImgVw
                                                    .frame.minY+50,
                                                   width: 200,
                                                   height: 20))
            nameLab.text = "为美丽的世界献上祝福！"
            nameLab.textColor = UIColor.black
            self.addSubview(nameLab)
            
            let descLab = UILabel
                .init(frame: CGRect.init(x:nameLab
                    .frame.minX,
                                         y:nameLab
                                            .frame.maxY+20,
                                         width: 200,
                                         height: 20))
            descLab.text = "为美丽的世界献上祝福！"
            descLab.textColor = UIColor.black
            self.addSubview(descLab)
            
            //
            //这里添加一个音乐播放器
            let musicImgVw = UIImageView
                             .init(frame: CGRect.init(x: self
                                                    .frame.maxX-60,
                                                      y: self
                                                        .frame.minY+20,
                                                      width: 40,
                                                      height: 40))
            musicImgVw.image = UIImage
                              .init(named: "哼.jpg")
            musicImgVw.backgroundColor = UIColor.red
            self.addSubview(musicImgVw)
        }
    }
    func showMusic() {
        
        if (MusicPlayer.getInstance().isPlaying == false) {
            do {
                xt.startAnimation()

                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayAndRecord)
                try AVAudioSession.sharedInstance().setActive(true)
                MusicPlayer.getInstance().play()
            } catch {
                
            }
            
        }else{
            xt.performSelector(Selector("stopAnimation"), withObject: nil, afterDelay: 5)

            MusicPlayer.getInstance().stop()
        }
 
    }

    
}
