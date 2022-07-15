//
//  BodyCondition.swift
//  CodeStarterCamp_Week4
//
//  Created by 유연탁 on 2022/03/16.
//

import Foundation

class BodyCondition {
    var 상체근력: Int = 0
    var 하체근력: Int = 0
    var 근지구력: Int = 0
    var 피로도: Int = 0

    func printBodyCondition() {
        print("""
        상체근력: \(self.상체근력)
        하체근력: \(self.하체근력)
        근지구력: \(self.근지구력)
        피로도: \(self.피로도)
        """)
    }
}
