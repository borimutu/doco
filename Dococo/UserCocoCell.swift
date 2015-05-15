//
//  UserCocoCell.swift
//  Dococo
//
//  Created by 母利 睦人 on 2015/04/27.
//  Copyright (c) 2015年 Makoto Mori. All rights reserved.
//

import UIKit

class UserCocoCell: UITableViewCell {
    var timeLabel: UILabel!
    var addressLabel: UILabel!
    var userImageView: UIImageView!
    var messageLabel: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //TODO:　デバイスの幅によって背景画像、種々ラベル、ユーザー画像の種類、位置を設定する
        var deviceWidth = UIScreen.mainScreen().bounds.width
        
        if deviceWidth == 320{
            //MARK: - iPhone5のとき
            self.backgroundColor = UIColor(patternImage: UIImage(named: "usercellbackground5")!)
            var originxBefore:CGFloat = 15.76/225.78*320-25.4/225.7*320/2
            println(originxBefore)
            self.userImageView = UIImageView(frame:CGRectMake(deviceWidth-originxBefore-25.4/225.7*320, self.center.y-25.4/225.7*320/2, 25.4/225.7*320, 25.4/225.7*320))
            println(userImageView.frame)
            userImageView.layer.cornerRadius = self.userImageView.frame.size.width/2
            userImageView.clipsToBounds = true
            self.addSubview(userImageView)
            
            self.addressLabel = UILabel(frame: CGRectMake(17.0/225.78*320, self.center.y-10, 166.0/225.78*320, 20))
            self.addressLabel.numberOfLines = 2
            self.addSubview(self.addressLabel)
            
        }else if deviceWidth == 375{
            //MARK: - iPhone6のとき
            self.backgroundColor = UIColor(patternImage: UIImage(named: "usercellbackground6")!)
            var originxBefore:CGFloat = 18.32/264.58*375-31.75/264.58*375/2
            println(originxBefore)
            self.userImageView = UIImageView(frame:CGRectMake(deviceWidth-originxBefore-31.75/264.58*375, self.center.y-31.75/264.58*375/2, 31.75/264.58*375, 31.75/264.58*375))
            println(userImageView.frame)
            userImageView.layer.cornerRadius = self.userImageView.frame.size.width/2
            userImageView.clipsToBounds = true
            self.addSubview(userImageView)
        }else if deviceWidth == 414{
            //MARK: - iPhone6plusのとき
            self.backgroundColor = UIColor(patternImage: UIImage(named: "usercellbackground6plus")!)
            self.backgroundColor = UIColor(patternImage: UIImage(named: "usercellbackground6")!)
            var originxBefore:CGFloat = 29.81/438.15*414-47.38/438.15*414/2
            println(originxBefore)
            self.userImageView = UIImageView(frame:CGRectMake(deviceWidth-originxBefore-47.38/438.15*414, self.center.y-47.38/438.15*414/2, 47.38/438.15*414, 47.38/438.15*414))
            println(userImageView.frame)
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
