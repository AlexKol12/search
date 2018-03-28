import Foundation 
import CryptoSwift 

class Link {
  private let iData: Int
  var next: Link?

  init(iData: Int) {
    self.iData = iData
  }

  func displayLink() {
    print("{\(iData)}")
  }
}


class LinkList {

  private var first: Link?

  func isEmpty() -> Bool {
    return first == nil
  }

  func insertFirst(iData: Int) {
    let newLink = Link(iData: iData)
    newLink.next = first
    first = newLink
  }

  
  func deleteFirst() -> Link? {
    
    guard let first = first else { return nil }
    
    self.first = first.next
    return self.first
  }

 
  func displayList() {
    print("List (first --> last)")
    
    var element = first
   
    while element != nil {
      element?.displayLink()
      element = element?.next
    }
    print("----------")
  }

}


let theList = LinkList()
theList.insertFirst(iData: 22)
theList.insertFirst(iData: 55)
theList.insertFirst(iData: 77)

// theList.deleteFirst()
//theList.deleteFirst()
//theList.deleteFirst()

theList.displayList()