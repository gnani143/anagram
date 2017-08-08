//: Playground - noun: a place where people can play

import UIKit

func areAnagram(S: String, and T: String) -> Bool {
    
    if (S.characters.count != T.characters.count) {
        return false
    }
    
    var countS: [Character: Int] = [Character: Int]()
    var countT: [Character: Int] = [Character: Int]()
    
    for i in 0 ..< S.characters.count {
        
        if let countS_i = countS[S[S.index(S.startIndex, offsetBy: i)]] {
            countS.updateValue(countS_i+1, forKey: S[S.index(S.startIndex, offsetBy: i)])
        } else {
            countS.updateValue(0, forKey: S[S.index(S.startIndex, offsetBy: i)])
        }
        
        if let countT_i = countT[T[T.index(T.startIndex, offsetBy: i)]] {
            countT.updateValue(countT_i+1, forKey: T[T.index(T.startIndex, offsetBy: i)])
        } else {
            countT.updateValue(0, forKey: T[T.index(T.startIndex, offsetBy: i)])
        }
    }
    return countS == countT
}

areAnagram(S: "naveen", and: "veenna")
