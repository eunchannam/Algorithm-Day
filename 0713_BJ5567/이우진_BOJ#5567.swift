//
//  main.swift
//  BOJ#5567
//
//  Created by RooZin on 2021/07/14.
//

import Foundation

func removeDuplication(in array: [Int]) -> [Int] {
    let set = Set(array)
    let duplicationRemovedArray = Array(set)
    return duplicationRemovedArray
}

let classmate = Int(readLine()!)!
let listCnt = Int(readLine()!)!

var friend : [Int] = []
var friendOfFriend : [Int] = []

for _ in 0 ..< listCnt {
    let input = readLine()!.split(separator: " ").map{ $0 }
    let me = Int(input[0])!
    let you = Int(input[1])!
    
    if me <= classmate && you <= classmate {
        if me == 1 {
            friend.append(you)
        }
        
        for person in friend {
            if me == person {
                friendOfFriend.append(you)
            }
        }
    }
    
}

var total = friend + friendOfFriend
total = removeDuplication(in: total)

print(total.count)

