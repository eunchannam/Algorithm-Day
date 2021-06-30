import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    var newBoard : [[Int]] = board
    var result : [Int] = []
    var cnt : Int = 0
    
    for i in 0 ..< moves.count {
        for j in 0 ..< newBoard.count {
            if newBoard[j][moves[i] - 1] != 0 {
                let value = newBoard[j][moves[i]-1]
                newBoard[j][moves[i]-1] = 0
                
                if result.last == value {
                    result.removeLast()
                    cnt += 2
                }
                else {
                    result.append(value)
                }
                break
            }
        }
    }
    
    return cnt
}
    print(solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4]))
