//
//  main.swift
//  유기농 배추
//
//  Created by RooZin on 2021/06/29.
//

import Foundation

var cnt = 0
var globalFarm : [[Int]] = []
var worm : [Int] = []

func search(_ n : Int, _ m : Int, _ farm : [[Int]]) {
    var chage : Int = 0
    var start : Int = 0
    var updatedFarm = farm
    
    while chage != 0 || start == 0 {
        start = 1
        chage = 0
        
        if updatedFarm[n][m+1] == 1 {
            updatedFarm[n][m+1] = 2
            search(n, m+1, updatedFarm)
            chage += 1
        }
        if updatedFarm[n][m-1] == 1 {
            updatedFarm[n][m+1] = 2
            search(n, m-1, updatedFarm)
            chage += 1
        }
        if updatedFarm[n+1][m] == 1 {
            updatedFarm[n][m+1] = 2
            search(n+1, m, updatedFarm)
            chage += 1
        }
        if updatedFarm[n-1][m+1] == 1 {
            updatedFarm[n][m+1] = 2
            search(n-1, m, updatedFarm)
            chage += 1
        }
        else {
            cnt += 1
            globalFarm = updatedFarm
        }
    }
}

let testCase = Int(readLine()!)!

for _ in 0 ..< testCase {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    let m = input[0]
    let n = input[1]
    let k = input[2]
    var farm = Array(repeating: [Int](repeating: 0, count: m), count: n)
    
    for _ in 0 ..< k {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let col = input[0]
        let row = input[1]
        farm[row][col] = 1
    }
    globalFarm = farm
    
    for i in 0 ..< n - 1 {
        for j in 0 ..< m - 1 {
            if globalFarm[i][j] == 1 {
                globalFarm[i][j] = 2
                search(n, m, globalFarm)
            }
        }
    }
    
    worm.append(cnt)
    cnt = 0
}

for num in worm {
    print(num)
}





