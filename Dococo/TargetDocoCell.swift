//
//  TargetDocoCell.swift
//  Dococo
//
//  Created by 母利 睦人 on 2015/04/27.
//  Copyright (c) 2015年 Makoto Mori. All rights reserved.
//

import UIKit

class TargetDocoCell: UITableViewCell {
    var timeLabel: UILabel!
    var userImageView: UIImageView!
    var messageLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        //TODO:　デバイスの幅によって背景画像、種々ラベル、ユーザー画像の種類、位置を設定する
        var deviceWidth = UIScreen.mainScreen().bounds.width
        println(deviceWidth)
        if deviceWidth == 320{
            //MARK: - iPhone5のとき
            self.backgroundColor = UIColor(patternImage: UIImage(named: "targetcellbackground5")!)
            self.userImageView = UIImageView(frame:CGRectMake(15.76/225.78*320-25.4/225.7*320/2, self.center.y-25.4/225.7*320/2, 25.4/225.7*320, 25.4/225.7*320))
            userImageView.layer.cornerRadius = self.userImageView.frame.size.width/2
            userImageView.clipsToBounds = true
            self.addSubview(userImageView)
            
            var font:UIFont = UIFont(name: "ArialHebrew", size: 14.0)!

            self.messageLabel = UILabel(frame: CGRectMake(49.21/225.78*320, self.center.y-10, 166.0/225.78*320, 20))
            self.messageLabel.numberOfLines = 1
            self.messageLabel.font = font
            self.messageLabel.adjustsFontSizeToFitWidth = true
            self.addSubview(self.messageLabel)
            
            
        }else if deviceWidth == 375{
            
            //MARK: - iPhone6のとき
            self.backgroundColor = UIColor(patternImage: UIImage(named: "targetcellbackground6")!)
            self.userImageView = UIImageView(frame:CGRectMake(18.32/264.58*375-31.75/264.58*375/2, self.center.y-31.75/264.58*375/2, 31.75/264.58*375, 31.75/264.58*375))
            userImageView.layer.cornerRadius = self.userImageView.frame.size.width/2
            userImageView.clipsToBounds = true
            self.addSubview(userImageView)
            
            var font:UIFont = UIFont(name: "ArialHebrew", size: 14.0)!
            self.messageLabel = UILabel(frame: CGRectMake(60.85/264.58*375, self.center.y-15, 188.5/264.58*375, 30))
            self.messageLabel.numberOfLines = 1
            self.messageLabel.adjustsFontSizeToFitWidth = true
            self.messageLabel.font = font
            self.addSubview(messageLabel)
            
        }else if deviceWidth == 414{
            //MARK: - iPhone6plusのとき
            self.backgroundColor = UIColor(patternImage: UIImage(named: "targetcellbackground6plus")!)
            self.userImageView = UIImageView(frame:CGRectMake(29.81/438.15*414-47.38/438.15*414/2, self.center.y-47.38/438.15*414/2, 47.38/438.15*414, 47.38/438.15*414))
            userImageView.layer.cornerRadius = self.userImageView.frame.size.width/2
            userImageView.clipsToBounds = true
            self.addSubview(userImageView)
        }else{
            println("4S？")
        }
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
