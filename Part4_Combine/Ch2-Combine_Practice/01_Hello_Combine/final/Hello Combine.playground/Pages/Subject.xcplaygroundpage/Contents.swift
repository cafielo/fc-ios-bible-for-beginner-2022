import Foundation
import Combine

// PassthroughSubject
let relay = PassthroughSubject<String, Never>()
let subscription1 = relay.sink { value in
    print("subscription1 received value: \(value)")
}

relay.send("Hello")
relay.send("World!")




// CurrentValueSubject
let variable = CurrentValueSubject<String, Never>("")

//variable.send("Initial text")

let subscription2 = variable.sink { value in
    print("subscription2 received value: \(value)")
}

variable.send("More text")
variable.value



//let publisher = ["Here","we","go!"].publisher
//publisher.subscribe(relay)
//publisher.subscribe(variable)
