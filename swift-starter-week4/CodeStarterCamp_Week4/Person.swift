//
//  Person.swift
//  CodeStarterCamp_Week4
//
//  Created by 유연탁 on 2022/03/16.
//

import Foundation

struct Person {
    var name: String
    var bodyCondition: BodyCondition = BodyCondition()
    
    init(name: String)
    {
        self.name = name
    }
    
    func exercise(for set: Int, routine: Routine) {
        
    }
}
