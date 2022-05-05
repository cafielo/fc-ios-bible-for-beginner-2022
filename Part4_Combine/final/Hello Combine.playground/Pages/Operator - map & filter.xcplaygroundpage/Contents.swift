//: [Previous](@previous)

import Foundation
import Combine

// Transform
let numPublisher = PassthroughSubject<Int, Never>()

let subscription1 = numPublisher
    .map { $0 * 2 }
    .sink { value in
        print("Tranformed Value: \(value)")
    }

numPublisher.send(10)
numPublisher.send(20)
numPublisher.send(30)
subscription1.cancel()


// Filter
let stringPublisher = PassthroughSubject<String, Never>()

let subscription2 = stringPublisher
    .filter { $0.contains("a") }
    .sink { value in
        print("Filtered Value: \(value)")
    }

stringPublisher.send("abc")
stringPublisher.send("Jack")
stringPublisher.send("Joon")
stringPublisher.send("Jenny")
stringPublisher.send("Jason")
subscription2.cancel()


//: [Next](@next)
