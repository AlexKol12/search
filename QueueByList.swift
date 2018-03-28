class Queue {
    private var value: Link?
    private var firstOnQueue: Link! = nil

    func isEmpty() -> Bool {
        return firstOnQueue == nil
    }

    func insert(iData: Int){
        var newLink = Link(iData: iData)
        newLink.next = firstOnQueue
        firstOnQueue = newLink
    }

    func shift() -> Link?{
        var shiftedFromQueue = firstOnQueue
        firstOnQueue = firstOnQueue.next
        return shiftedFromQueue
    }

    func displayQueue() {
        print("Queue (first --> last)")

        var element = firstOnQueue

        while element != nil {
            element?.displayLink()
            element = element?.next
        }
        print("----------")
    }

}

let theQueue = Queue()
theQueue.insert(iData: 1)
theQueue.insert(iData: 1)
theQueue.insert(iData: 1)
theQueue.displayQueue()