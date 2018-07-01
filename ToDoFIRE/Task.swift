//
//  Task.swift
//  ToDoFIRE
//
//  Created by Ivan Akulov on 03/03/2017.
//  Copyright © 2017 Ivan Akulov. All rights reserved.
//

import Foundation
import Firebase

struct Task {
    let title: String
    let userId: String
    let ref: FIRDatabaseReference?
    var completed: Bool = false
    
    init(title: String, userId: String) {
        self.title = title
        self.userId = userId
        self.ref = nil
    }
    
    init(snapshot: FIRDataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        title = snapshotValue["title"] as! String
        userId = snapshotValue["userId"] as! String
        completed = snapshotValue["completed"] as! Bool
        ref = snapshot.ref
    }
    
    func convertToDictionary() -> Any {
        return ["title": title, "userId": userId, "completed": completed]
    }
}
