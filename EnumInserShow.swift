 mutating func insertByIndex(index: Int, val : Value){
    switch self {
    case .end:
        self = .next(.end, val)
    case .next(var next, var value):
        if index > 1 {
            next.insertByIndex(index: index - 1, val: val)
        }
        next = .next(self, value)
        self = .next(next, val)
    }
}

mutating func printAll() {
    var stop = false
    while !stop {
        switch self {
        case .end:
            print("end")
            stop = true
        case .next(var next, var value):
            print(value)
            self = next
        }
    }
}