//
//  TargetCocoCell.swift
//  Dococo
//
//  Created by 母利 睦人 on 2015/04/25.
//  Copyright (c) 2015年 Makoto Mori. All rights reserved.
//

import UIKit

class TargetCocoCell: UITableViewCell {
    var timeLabel: UILabel!
    var userImageView: UIImageView!
    var messageLabel: UILabel?
    var addressLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //選択された時のbackgroundViewを設定
        
        //TODO:　デバイスの幅によって背景画像、種々ラベル、ユーザー画像の種類、位置を設定する
        var deviceWidth = UIScreen.mainScreen().bounds.width
        //5のとき
        if deviceWidth == 320{
            
            self.backgroundColor = UIColor(patternImage: UIImage(named: "targetcellbackground5")!)
            self.userImageView = UIImageView(frame:CGRectMake(15.76/225.78*320-25.4/225.7*320/2, self.center.y-25.4/225.7*320/2, 25.4/225.7*320, 25.4/225.7*320))
            userImageView.layer.cornerRadius = self.userImageView.frame.size.width/2
            userImageView.clipsToBounds = true
            self.addSubview(userImageView)
            
            var font:UIFont = UIFont(name: "ArialHebrew", size: 14.0)!
            self.addressLabel = UILabel(frame: CGRectMake(49.21/225.78*320, self.center.y-15, 166.0/225.78*320, 30))
            self.addressLabel.numberOfLines = 1
            self.addressLabel.adjustsFontSizeToFitWidth = true
            self.addressLabel.font = font
            self.addSubview(addressLabel)
            /*var selectedBackgroundView = UIView(frame: self.frame)
            selectedBackgroundView.backgroundColor = UIColor(patternImage: UIImage(named: "targetcellbackground5selected")!)
            self.selectedBackgroundView = selectedBackgroundView*/
            
        }else if deviceWidth == 375{
            self.backgroundColor = UIColor(patternImage: UIImage(named: "targetcellbackground6")!)
            self.userImageView = UIImageView(frame:CGRectMake(18.32/264.58*375-31.75/264.58*375/2, self.center.y-31.75/264.58*375/2, 31.75/264.58*375, 31.75/264.58*375))
            userImageView.layer.cornerRadius = self.userImageView.frame.size.width/2
            userImageView.clipsToBounds = true
            self.addSubview(userImageView)
            
            var font:UIFont = UIFont(name: "ArialHebrew", size: 14.0)!
            //TODO: -
            self.addressLabel = UILabel(frame: CGRectMake(60.85/264.58*375, self.center.y-15, 188.5/264.58*375, 30))
            self.addressLabel.numberOfLines = 1
            self.addressLabel.adjustsFontSizeToFitWidth = true
            self.addressLabel.font = font
            self.addSubview(addressLabel)
            /*var selectedBackgroundView = UIView(frame: self.frame)
            selectedBackgroundView.backgroundColor = UIColor(patternImage: UIImage(named: "targetcellbackground6selected")!)
            self.selectedBackgroundView = selectedBackgroundView*/

        }else if deviceWidth == 414{
            self.backgroundColor = UIColor(patternImage: UIImage(named: "targetcellbackground6plus")!)
            self.backgroundColor = UIColor(patternImage: UIImage(named: "targetcellbackground6plus")!)
            self.userImageView = UIImageView(frame:CGRectMake(29.81/438.15*414-47.38/438.15*414/2, self.center.y-47.38/438.15*414/2, 47.38/438.15*414, 47.38/438.15*414))
            userImageView.layer.cornerRadius = self.userImageView.frame.size.width/2
            userImageView.clipsToBounds = true
            self.addSubview(userImageView)
            /*var selectedBackgroundView = UIView(frame: self.frame)
            selectedBackgroundView.backgroundColor = UIColor(patternImage: UIImage(named: "targetcellbackground6plusselected")!)
            self.selectedBackgroundView = selectedBackgroundView*/
        }else{
            println("4S？")
        }
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
