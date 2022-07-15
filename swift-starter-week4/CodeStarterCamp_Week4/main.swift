//
//  main.swift
//  CodeStarterCamp_Week4
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var userBodyCondition: BodyCondition = BodyCondition()

let 윗몸일으키기: Exercise = Exercise(name: "윗몸일으키기", action: { userBodyCondition in
    userBodyCondition.상체근력 += Int.random(in: 10...20)
    userBodyCondition.피로도 += Int.random(in: 10...20)
})

let 스쿼트: Exercise = Exercise(name: "스쿼트", action: { userBodyCondition in
    userBodyCondition.하체근력 += Int.random(in: 20...30)
    userBodyCondition.피로도 += Int.random(in: 10...20)
})

let 오래달리기: Exercise = Exercise(name: "오래달리기", action: { userBodyCondition in
    userBodyCondition.근지구력 += Int.random(in: 20...30)
    userBodyCondition.상체근력 += Int.random(in: 5...10)
    userBodyCondition.하체근력 += Int.random(in: 5...10)
    userBodyCondition.피로도 += Int.random(in: 20...30)
})

let 동적휴식: Exercise = Exercise(name: "동적휴식", action: { userBodyCondition in
    userBodyCondition.피로도 -= Int.random(in: 5...10)
})

let hellRoutine: Routine = Routine(name: "hellRoutine", routine: [윗몸일으키기,
                                                                 윗몸일으키기,
                                                                 동적휴식,
                                                                 스쿼트,
                                                                 스쿼트,
                                                                 동적휴식,
                                                                 오래달리기,
                                                                 오래달리기])


let tabataRoutine: Routine = Routine(name: "타바타", routine: [윗몸일으키기,
                                                           동적휴식,
                                                           윗몸일으키기,
                                                           동적휴식,
                                                           스쿼트,
                                                           동적휴식,
                                                           스쿼트])

let refresh: Routine = Routine(name: "Refresh", routine: [동적휴식,
                                                      동적휴식,
                                                      동적휴식,
                                                      동적휴식])

var publicBodyCondition: BodyCondition = BodyCondition()

//var ryuBodyCondition: BodyCondition = BodyCondition()
//var ryu: Person = Person(name: "ryu")
//
//var yagomBodyCondition: BodyCondition = BodyCondition()
//var yagom: Person = Person(name: "yagom")

//hellRoutine.startRoutine(userBodyCondition: ryuBodyCondition)
//ryu.bodyCondition.printBodyCondition()

var yagomfit = FitnessCenter(name: "yagomfit")
//
//yagomfit.greeting()
//yagomfit.greeting()
var ryu = Person(name: "ryu")
var tom = Person(name: "tom")
hellRoutine.startRoutine(userBodyCondition: ryu.bodyCondition)
//yagomfit.member?.bodyCondition.printBodyCondition()
ryu.bodyCondition.printBodyCondition()
tom.bodyCondition.printBodyCondition()

