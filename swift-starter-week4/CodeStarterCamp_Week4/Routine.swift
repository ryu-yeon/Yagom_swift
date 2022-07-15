//
//  Routine.swift
//  CodeStarterCamp_Week4
//
//  Created by 유연탁 on 2022/03/16.
//

import Foundation

struct Routine {
    let name: String
    let routine: [Exercise]
    
    init(name: String, routine: [Exercise]){
        self.name = name
        self.routine = routine
    }
    
    func startRoutine(userBodyCondition: BodyCondition) {
        for exercise in self.routine {
            exercise.action(userBodyCondition)
            print(exercise.name)
        }
    }
}
