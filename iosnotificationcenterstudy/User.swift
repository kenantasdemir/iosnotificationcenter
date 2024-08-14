//
//  User.swift
//  iosnotificationcenterstudy
//
//  Created by kenan on 13.08.2024.
//

import Foundation

class User{
    var user_name:String?
    var user_age:String?
    
    init(user_name: String? = nil, user_age: String? = nil) {
        self.user_name = user_name
        self.user_age = user_age
    }
    
    init(){
        
    }
}
