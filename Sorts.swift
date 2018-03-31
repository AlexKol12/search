var numbers = [1, 12, 5, 4, -11, -2, 3, 1, 21, 51, 4, -1, -2, 3]


func selection(array: [Int]) -> [Int] {
    var copy = array
    
    for index1 in 0..<copy.count {
        var minIndex = index1
        for index2 in index1..<copy.count { 
            if copy[minIndex] > copy[index2] {
                minIndex = index2
            }
        }
        copy.swapAt(index1, minIndex)
    }
    return copy
}

func buble(array: [Int]) {
    var copy = array
    var count = copy.count
    for index1 in 0..<(count - 1) {
        for index2 in 0..<(count - 1) {
            if copy[index2] > copy[index2 + 1] {
                copy.swapAt(index2, index2 + 1)
            }
        }
        count -= 1
    }
    print(copy)
}

func quickSort(array: [Int]) -> [Int] {
    var copy = array
    for index in (0..<copy.count).reversed() {
        for index1 in 0...index {
            if index1 != 0, copy[index1] > copy[index] {
                if (index - 1 == index1) {   
                    copy.swapAt(index, index - 1)
                } else {
                    copy.swapAt(index, index - 1)
                    copy.swapAt(index, index1)
                }
                break
            }
            if index1 == 0, copy[index1] > copy[index] {
                copy.swapAt(index, index1)
                break
            }
            
        }
    }
    
    for index3 in 0..<copy.count - 1 {
        if copy[index3] > copy[index3 + 1] {
            print(1)
            copy = quickSort(array: copy)
        }
    }
    return copy 
}

print(quickSort(array: numbers))
buble(array: numbers)
print(selection(array: numbers))