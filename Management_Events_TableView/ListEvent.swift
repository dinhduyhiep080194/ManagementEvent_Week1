//
//  ListEvent.swift
//  Management_Events_TableView
//
//  Created by Cntt12 on 5/20/17.
//  Copyright © 2017 cntt12. All rights reserved.
//

import Foundation

class ListEvent {
    var ngay: String                    // Ngay trong tuan
    var suKienTrongNgay: [Event]        // Cac su kien trong ngay hom do
    
    init(ngayTrongTuan: String, gomCacSuKien: [Event]) {
        self.ngay = ngayTrongTuan
        self.suKienTrongNgay = gomCacSuKien
    }
    
    class func listEvent() -> [ListEvent]
    {
        return [self.cn(), self.thuHai(), self.thuBa(), self.thuTu(), self.thuNam(), self.thuSau(),self.thuBay()]
    }
    
    private class func cn() -> ListEvent {
        var sukien = [Event]()
        
        sukien.append(Event(tenSuKien: "Chu nhat 1", noiDung: "Su kien 1 cua Chu Nhat"))
        sukien.append(Event(tenSuKien: "Chu nhat 2", noiDung: "Su kien 2 cua Chu Nhat"))
        sukien.append(Event(tenSuKien: "Chu nhat 3", noiDung: "Su kien 3 cua Chu Nhat"))
        sukien.append(Event(tenSuKien: "Chu nhat 4", noiDung: "Su kien 4 cua Chu Nhat"))
        sukien.append(Event(tenSuKien: "Chu nhat 5", noiDung: "Su kien 5 cua Chu Nhat"))
        
        return ListEvent(ngayTrongTuan: "Sunday", gomCacSuKien: sukien)
    }
    
    private class func thuHai() -> ListEvent {
        var sukien = [Event]()
        
        sukien.append(Event(tenSuKien: "Thu Hai 1", noiDung: "Su kien 1 cua Thu Hai"))
        sukien.append(Event(tenSuKien: "Thu Hai 1", noiDung: "Su kien 2 cua Thu Hai"))
        
        return ListEvent(ngayTrongTuan: "Monday", gomCacSuKien: sukien)
    }
        
    private class func thuBa() -> ListEvent {
        var sukien = [Event]()
        
        sukien.append(Event(tenSuKien: "Thu Ba 1", noiDung: "Su kien 1 cua Thu Ba"))
        sukien.append(Event(tenSuKien: "Thu Ba 2", noiDung: "Su kien 2 cua Thu Ba"))
        sukien.append(Event(tenSuKien: "Thu Ba 3", noiDung: "Su kien 3 cua Thu Ba"))
        
        return ListEvent(ngayTrongTuan: "Tuesday", gomCacSuKien: sukien)
    }
    
    private class func thuTu() -> ListEvent {
        var sukien = [Event]()
        
        sukien.append(Event(tenSuKien: "Thu Tu 1", noiDung: "Su kien 1 cua Thu Tu"))
        sukien.append(Event(tenSuKien: "Thu Tu 2", noiDung: "Su kien 2 cua Thu Tu"))
        sukien.append(Event(tenSuKien: "Thu Tu 3", noiDung: "Su kien 3 cua Thu Tu"))
        sukien.append(Event(tenSuKien: "Thu Tu 4", noiDung: "Su kien 4 cua Thu Tu"))
        
        return ListEvent(ngayTrongTuan: "Wednesday", gomCacSuKien: sukien)
    }
    
    private class func thuNam() -> ListEvent {
        var sukien = [Event]()
        
        sukien.append(Event(tenSuKien: "Thu Nam 1", noiDung: "Su kien 1 cua Thu Nam"))
        sukien.append(Event(tenSuKien: "Thu Nam 2", noiDung: "Su kien 2 cua Thu Nam"))
        
        return ListEvent(ngayTrongTuan: "Thusday", gomCacSuKien: sukien)
    }
    
    private class func thuSau() -> ListEvent {
        var sukien = [Event]()
        
        sukien.append(Event(tenSuKien: "Thu Sau 1", noiDung: "Su kien 1 cua Thu Sau"))
        sukien.append(Event(tenSuKien: "Thu Sau 2", noiDung: "Su kien 2 cua Thu Sau"))
        sukien.append(Event(tenSuKien: "Thu Sau 3", noiDung: "Su kien 3 cua Thu Sau"))
        
        return ListEvent(ngayTrongTuan: "Friday", gomCacSuKien: sukien)
    }
    
    private class func thuBay() -> ListEvent {
        var sukien = [Event]()
        
        sukien.append(Event(tenSuKien: "Thu Bay 1", noiDung: "Su kien 1 cua Thu Bay"))
        sukien.append(Event(tenSuKien: "Thu Bay 2", noiDung: "Su kien 2 cua Thu Bay"))
        sukien.append(Event(tenSuKien: "Thu Bay 3", noiDung: "Su kien 3 cua Thu Bay"))
        sukien.append(Event(tenSuKien: "Thu Bay 4", noiDung: "Su kien 4 cua Thu Bay"))
        
        return ListEvent(ngayTrongTuan: "Saturday", gomCacSuKien: sukien)
    }


}
