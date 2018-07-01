//
//  Constants.swift
//  ToDoFIRE
//
//  Created by Сергей on 01.07.2018.
//  Copyright © 2018 Ivan Akulov. All rights reserved.
//

import Foundation
import Firebase

struct Constants {
    struct refs {
        static let databaseRoot = FIRDatabase.database().reference()
        static let databaseChats = databaseRoot.child("chats")
        
    }
}
