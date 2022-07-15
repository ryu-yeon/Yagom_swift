//
//  FitnessCenter.swift
//  CodeStarterCamp_Week4
//
//  Created by 유연탁 on 2022/03/16.
//

import Foundation

class FitnessCenter {
    var name: String
    var upperBodyTargetCondition: Int = 0
    var lowerBodyTargetCondition: Int = 0
    var muscularEnduranceTargetCondition: Int = 0
    var member: Person? = nil
    let routineList: [Routine] = [hellRoutine, refresh]
    var selectedRoutineIndex: Int = 0
    var numOfSet: Int = 0
    
    init(name: String) {
        self.name = name
    }
    
    func startTraining() throws {
        guard member != nil else { throw FitnessError.noMember}
        greeting()
    }

    func greeting() {
        print("안녕하세요. \(self.name) 피트니스센터입니다. 회원님의 이름은 무엇인가요?", terminator: " ")
        saveMemberName()
        askTargetCondition()
    }
    
    func saveMemberName() {
        guard let name = readLine() else { return }
        self.member = Person(name: name)
    }
    
    func askTargetCondition() {
        print("운동 목표치를 순서대로 알려주세요.")
        do {
            try saveTargetCondtion()
        } catch FitnessError.TargetCondtiionOutOfRange {
            print("모든 목표치는 0보다 커야합니다.")
            return
        } catch {}
    }
    
    func saveTargetCondtion() throws {
        print("상체근력: ", terminator: "")
        guard let upperBodyMuscleTargetCondition = Int(readLine()!) else { return }
        print("하체근력: ", terminator: "")
        guard let lowerBodyMuscleTargetCondition = Int(readLine()!) else { return }
        print("근지구력: ", terminator: "")
        guard let musclularEnduranceTargetCondition = Int(readLine()!) else { return }
        
        self.upperBodyTargetCondition = upperBodyMuscleTargetCondition
        self.lowerBodyTargetCondition = lowerBodyMuscleTargetCondition
        self.muscularEnduranceTargetCondition = musclularEnduranceTargetCondition
    }
}
