//: [Previous](@previous)

import Foundation
import Combine



let subject = PassthroughSubject<String, Never>()

// The print() operator prints you all lifecycle events
let subscription = subject
    .print("[Debug]")
    .sink { (value) in
        print("Subscriber received value: \(value)")
    }


subject.send("Hello!")
subject.send("Hello again!")
subject.send("Hello for the last time!")
subject.send(completion: .finished)
//subscription.cancel()
subject.send("Hello?? :(")

//: [Next](@next)
