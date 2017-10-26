//
//  main.swift
//  LadderGame
//
//  Created by JK on 09/10/2017.
//  Copyright © 2017 Codesquad Inc. All rights reserved.
//

import Foundation

func prompt(){
    print("참여할 사람은 몇 명 인가요?")
    let numberOfPlayer = readLine()
    
    print("최대 사다리 높이는 몇 개인가요?")
    let heightForLadder = readLine()
    
    printLadder(numberOfPlayer: numberOfPlayer!, heightForLadder: heightForLadder!)
}

func printLadder(numberOfPlayer: String, heightForLadder: String){
    for _ in 0..<Int(heightForLadder)! {
        printLadderBar(numberOfPlayer: numberOfPlayer)
        print()
    }
}

func printLadderBar(numberOfPlayer: String){
    for index in 0..<Int(numberOfPlayer)! {
        print("|", terminator: "")
        printLadderStep(index: index)
    }
}

func printLadderStep(index: Int){
    let isPrintStep = makeRandomValue()
    if isPrintStep && index > 0 {
        print(" ", terminator: "")
    }else if !isPrintStep && index > 0 {
        print("-", terminator: "")
    }
}

func makeRandomValue() -> Bool {
    let randomValue = arc4random_uniform(2)
    var isPrintStep: Bool = false
    if randomValue == 0 {
        isPrintStep = false
    }else{
        isPrintStep = true
    }
    return isPrintStep
}
prompt()

