//
//  People.swift
//  Custom Cell Table View**
//
//  Created by Ömer Özyılmaz on 4.02.2024.
//

import Foundation

class People {
    var personId:Int?
    var personName:String?
    var personTelNo:Int?
    
    init() {
        
    }
    init(personId: Int?, personName: String?, personTelNo: Int?) {
        self.personId = personId
        self.personName = personName
        self.personTelNo = personTelNo
    }
    
    
    
}

