import Foundation

//1. Find the smallest element in a queue

func smallestElement<T: Comparable>(in q: Queue<T>) -> T? {
    
    guard !q.isEmpty else { return nil }
    
    // make a copy
    // point to the head of the Queue
    // compare current node with store node
    // using while loop to go to the next node until the Queue is empty
    // compare currentNode with storedNode, if currentNode is smalller storeNode, storedNode will become currentNode
    // currentNode = currentNode.dequeue
    
    var queueOne = q
    var currentElement = queueOne.dequeue()
    var smallestElement = currentElement

    while currentElement != nil {
        if currentElement! < smallestElement! {
            smallestElement = currentElement
        }
        currentElement = queueOne.dequeue()
    }
    return smallestElement
}

//2. Find the sum of a queue of Ints

func sum(of q: Queue<Int>) -> Int {
    var queueTwo = q
    var currentElement = queueTwo.dequeue()
    var sum = 0
    
    while currentElement != nil {
        sum += currentElement ?? 0
        currentElement = queueTwo.dequeue()
    }
    
    return sum
}

//3. Find out whether or not a queue is in sorted order from smallest to biggest
/*
True example:   (Back) 9 - 6 - 2 - 1 (Front)
False example   (Back) 4 - 19 - 1 - 20 (Front)
False example   (Back) 4 - 19 - 134 - 200 (Front)
*/


// [5, 18, 13, 17 ]

func isSorted<T: Comparable>(q: Queue<T>) -> Bool {
    // make a copy
    var queueThree = q
    // getting a value from the head
    var currentElement = queueThree.dequeue() // 5
    var previousElement = currentElement // 5
    
    // use a while loop to compare nodes
    // if the previous element is smaller than the next element
    // return true
    // dequeue the next element
    while currentElement != nil {
        if previousElement! > currentElement! {
            return false
        }
        previousElement = currentElement // 5
        currentElement = queueThree.dequeue() // 18
    }
    return true
}

//4. Given a Queue as input, return a reversed queue. (Hint: A stack can be helpful here)

/*
Sample Input:   (Back) 9 - 16 - 2 - 31 (Front)
Sample Output:  (Back) 31 - 2 - 16 - 9 (Front)
 */

func reversed<T>(q: Queue<T>) -> Queue<T> {
    return q
}

//5 Determine if two Queues are equal

func areEqual<T: Equatable>(qOne: Queue<T>, qTwo: Queue<T>) -> Bool {
    return false
}

