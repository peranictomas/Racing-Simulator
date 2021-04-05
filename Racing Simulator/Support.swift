//
//  Support.swift
//  Racing Simulator
//
//  Created by Tomas Peranic on 2021-04-05.
//


import Foundation
import UIKit

struct ColliderType {
    static let CAR_COLLIDER : UInt32 = 0

    static let ITEM_COLLIDER : UInt32 = 1
    static let ITEM_COLLIDER_1 : UInt32 = 2
}

class Helper : NSObject {
    
    func randomBetweenTwoNumbers(firstNumber : CGFloat ,  secondNumber : CGFloat, thirdNumber : CGFloat, fourthNumber: CGFloat) -> CGFloat{
        return CGFloat(arc4random())/CGFloat(UINT32_MAX) * abs(firstNumber - secondNumber + thirdNumber - fourthNumber) + min(firstNumber, secondNumber, thirdNumber, fourthNumber)
    }
}

class Settings {
    static let sharedInstance = Settings()
    
    private init(){
        
    }
    
    var highScore = 0
}
