//
//  AnimationAvartarConfig.swift
//  Dinosys
//
//  Created by Duy on 12/19/16.
//  Copyright © 2016 QuanChung. All rights reserved.
//


import UIKit

public class AnimationAvartarConfig: NSObject {
    let SCREEN_WIDTH = UIScreen.main.bounds.size.width
    let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
    let X_PROP = UIScreen.main.bounds.size.width/320
    let Y_PROP = UIScreen.main.bounds.size.height/480
    let SIZE_PROP = UIScreen.main.bounds.size.width/320
    let LARGE_BUBBLE_SIZE = 90 as CGFloat
    let SMALL_BUBBLE_SIZE = 50 as CGFloat
    var photosList:Array<AnimationAvartarInfo> = [AnimationAvartarInfo]()
    var user:Array<ModelUser> = [ModelUser]()
    
    public func createAvartar() -> NSArray{
        let imv1 = UIImageView()
        imv1.image = UIImage(named: "01.jpg")
        let rec1 : CGRect = CGRect(x: 35*X_PROP, y: 60*Y_PROP, width: CGFloat(LARGE_BUBBLE_SIZE*SIZE_PROP) , height: CGFloat(LARGE_BUBBLE_SIZE*SIZE_PROP))
        let info1 = AnimationAvartarInfo(imvAvartar: imv1, frame: rec1)
        photosList.append(info1)
        
        let imv2 = UIImageView()
        imv2.image = UIImage(named: "02.jpg")
        let rec2 : CGRect = CGRect(x: 200*X_PROP, y: 70*Y_PROP, width: CGFloat(LARGE_BUBBLE_SIZE*SIZE_PROP) , height: CGFloat(LARGE_BUBBLE_SIZE*SIZE_PROP))
        let info2 = AnimationAvartarInfo(imvAvartar: imv2, frame: rec2)
        photosList.append(info2)
        
        let imv3 = UIImageView()
        imv3.image = UIImage(named: "05.jpg")
        let rec3 : CGRect = CGRect(x: 105*X_PROP, y:150*Y_PROP, width: CGFloat(LARGE_BUBBLE_SIZE*SIZE_PROP + 10) , height: CGFloat(LARGE_BUBBLE_SIZE*SIZE_PROP + 10))
        let info3 = AnimationAvartarInfo(imvAvartar: imv3, frame: rec3)
        photosList.append(info3)
        
        let imv4 = UIImageView()
        imv4.image = UIImage(named: "04.jpg")
        let rec4 : CGRect = CGRect(x: 220*X_PROP, y: 250*Y_PROP, width: CGFloat(LARGE_BUBBLE_SIZE*SIZE_PROP) , height: CGFloat(LARGE_BUBBLE_SIZE*SIZE_PROP))
        let info4 = AnimationAvartarInfo(imvAvartar: imv4, frame: rec4)
        photosList.append(info4)
        
        let imv5 = UIImageView()
        imv5.image = UIImage(named: "03.jpg")
        let rec5 : CGRect = CGRect(x: 100*X_PROP, y: 300*Y_PROP, width: CGFloat(LARGE_BUBBLE_SIZE*SIZE_PROP-20) , height: CGFloat(LARGE_BUBBLE_SIZE*SIZE_PROP-20))
        let info5 = AnimationAvartarInfo(imvAvartar: imv5, frame: rec5)
        photosList.append(info5)
        
        let imv6 = UIImageView()
        imv6.image = UIImage(named: "06.jpg")
        let rec6 : CGRect = CGRect(x: 220*X_PROP, y: 150*Y_PROP, width: CGFloat(LARGE_BUBBLE_SIZE*SIZE_PROP-20) , height: CGFloat(LARGE_BUBBLE_SIZE*SIZE_PROP-20))
        let info6 = AnimationAvartarInfo(imvAvartar: imv6, frame: rec6)
        photosList.append(info6)
        
        let imv7 = UIImageView()
        imv7.image = UIImage(named: "07.jpg")
        let rec7 : CGRect = CGRect(x: 10*X_PROP, y: 200*Y_PROP, width: CGFloat(LARGE_BUBBLE_SIZE*SIZE_PROP) , height: CGFloat(LARGE_BUBBLE_SIZE*SIZE_PROP))
        let info7 = AnimationAvartarInfo(imvAvartar: imv7, frame: rec7)
        photosList.append(info7)
        
        return photosList as NSArray;
    }
    
    public func createUser() -> NSArray {
        for i in 0...9
        {
            let usertemp = ModelUser(avatar: imageArray[i], name: nameArray[i], email: emailArray[i], follow: "500 follow")
            user.append(usertemp)
        }
        return user as NSArray
    }
}
