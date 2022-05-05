//: [Previous](@previous)

import Foundation
import UIKit
import Combine

final class SomeViewModel {
    @Published var name: String = "Jack"
    var age: Int = 20
}

final class Label {
    var text: String = ""
}

let label = Label()
let vm = SomeViewModel()

print("text: \(label.text)")

vm.$name.assign(to: \.text, on: label)
print("text: \(label.text)")

vm.name = "Jason"
print("text: \(label.text)")

vm.name = "Hoo"
print("text: \(label.text)")


//: [Next](@next)
