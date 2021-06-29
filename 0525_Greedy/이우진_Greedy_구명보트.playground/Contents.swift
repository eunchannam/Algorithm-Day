import UIKit

func solution(_ people : [Int], _ limit : Int) -> Int {
    var boat : Int = 0
    var peopleWeight = people
    
    peopleWeight = people.sorted()
    var keepWeight = peopleWeight
    
    for i in 0 ... peopleWeight.capacity - 2 {
        for j in i+1 ..< peopleWeight.capacity - 1 {
            if keepWeight.count > 1 {
                let sum = peopleWeight[i] + peopleWeight[j]
                if sum <= limit {
                    keepWeight.remove(at: i)
                    keepWeight.remove(at: j-1)
                    boat += 1
                }
            }
        }
    }
    
    boat += keepWeight.count
    return boat
}

print(solution([70,80,50], 100))

