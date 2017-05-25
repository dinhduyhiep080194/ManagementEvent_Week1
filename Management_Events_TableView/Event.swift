//
//  Event.swift
//  Management_Events_TableView
//
//  Created by Cntt12 on 5/20/17.
//  Copyright © 2017 cntt12. All rights reserved.
//

import Foundation

class Event {
    // Mot su kien gom ten va noi dung
    var tenSuKien: String
    var noiDung:String
    
    init(tenSuKien: String, noiDung: String) {
        self.tenSuKien = tenSuKien
        self.noiDung = noiDung
    }
}
