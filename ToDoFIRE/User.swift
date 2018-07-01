//
//  User.swift
//  ToDoFIRE
//
//  Created by Ivan Akulov on 03/03/2017.
//  Copyright © 2017 Ivan Akulov. All rights reserved.
//

import Foundation
import Firebase

struct User {
    
    let uid: String
    let email: String
    
    init(user: FIRUser) {
        self.uid = user.uid
        self.email = user.email!
    }
}
