

struct Board : CustomStringConvertible {
    var spaces: [Space]
    
    
    enum Space : CustomStringConvertible {
        case x
        case o
        case empty
        
        var description: String {
            switch self {
            case .x:
                return "x"
            case .o:
                return "o"
            case .empty:
                return " "
            }
        }
        
    }
    
    subscript(column: Int, row: Int) -> Space {
        get {
        return spaces[(row * 3) + column]
    }
        set {
            spaces[(row * 3) + column] = newValue
        }
    }
    
    var description: String {
        let horizontalLine = "-----"
        //                (0, 0)       (0, 1)       (0, 2)
        let lineOne = "\(spaces[0])|\(spaces[1])|\(spaces[2])"
        //                (1, 0)       (1, 1)       (1, 2)
        let lineTwo = "\(spaces[3])|\(spaces[4])|\(spaces[5])"
        //                (2, 0)       (2, 1)       (2, 2)
        let lineThree = "\(spaces[6])|\(spaces[7])|\(spaces[8])"
        return "\(lineOne)\n\(horizontalLine)\n\(lineTwo)\n\(horizontalLine)\n\(lineThree)"
        
}

}

let board = Board(spaces: Array(repeating: .empty, count: 9))
print(board)
print()
board[1,1] == .x
print(board)



