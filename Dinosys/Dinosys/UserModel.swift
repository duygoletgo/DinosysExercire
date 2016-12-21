//
//  UserModel.swift
//  Dinosys
//
//  Created by Duy on 12/21/16.
//  Copyright © 2016 QuanChung. All rights reserved.
//

import UIKit

let imageArray:[String] = ["01.jpg" , "02.jpg" , "03.jpg" , "04.jpg" , "05.jpg" , "06.jpg", "07.jpg", "05.jpg" , "06.jpg", "07.jpg"]
let nameArray:[String] = ["Micheal" , "Taylor" , "Jonh Henry" , "Victoria" , "Ozawa" , "Ana" , "Kimochi", "Ozawa" , "Ana" , "Kimochi"]
let emailArray:[String] = ["Micheal@gmail.com" , "Taylor@yahoo.com" , "JonhHenry@abc.com" , "Victoria@serect.com" , "Ozawa@japan.com" , "Ana@grey.com" , "Kimochi@gmail.com", "Ozawa@japan.com" , "Ana@grey.com" , "Kimochi@gmail.com"]
struct ModelUser {
    var avatarUser : String
    var nameUser : String
    var emailUser : String
    var followUser : String
    
    init(avatar : String, name : String, email : String , follow: String) {
        self.avatarUser = avatar
        self.emailUser = email
        self.nameUser = name
        self.followUser = follow
    }
}
