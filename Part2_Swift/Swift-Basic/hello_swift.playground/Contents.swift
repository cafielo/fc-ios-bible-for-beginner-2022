import UIKit

//var greeting = "Hello, playground"

//var num = 5
//num = 1 // 값 수정 가능

//let quote = "I'm mother father genius, Man"
//
//let num = 5
//
//let otherNum = num + 2
//// 7
//
//let halfOfNum = otherNum / 2
//// 3

//let num = 360
//
//// 3의 배수인지 확인하는 메소드
//print(num.isMultiple(of: 37))
//
//// 0~300 사이중 랜덤으로 수를 뽑아내는 메소드
//let random = Int.random(in: 0...300)
//
//let score = 3.6

//let isMan = true
//let isHuman = false
//
//var isSingle = true
//isSingle.toggle()
//isSingle // false


//let difficulty = "쉽다"
//let maximumAge = 80
//
//let message = "\(maximumAge) 할머니도 배우는 iOS 개발은 \(difficulty)"
// "80 할머니도 배우는 iOS 개발은 쉽다"

// Array
//let ages = [3, 20, 60]
//let colors = ["green", "red", "yellow"]
//
//let color = colors[0] // "green"
//
//// Dictionary (Key: Value)
//let languageCode = [
//    "한국" : "ko",
//    "미국" : "en",
//    "일본" : "ja",
//]
//
//let code = languageCode["미국"] // "ko"


//var emptyArr: [Int] = []
//var emptyDic: [String: Any] = [:]

//// 요일을 한번 enum으로 만들어 보겠습니다.
//enum WeekDay {
//    case mon
//    case tue
//    case wed
//    case thu
//    case fri
//}
//
//var today: WeekDay = .mon
////var tod: String = "mom"
//
//// 미디어타입을 한번 enum으로 만들어 보겠습니다.
//enum MediaType {
//    case audio
//    case video
//}
//
//var mediaType: MediaType = .audio


// 위에서 만들어본 미디어 타입에,
// 파일 확장자도 문자열로 받을수 있게 수정해보겠습니다.

//enum MediaType {
//    case audio(String)
//    case video(String)
//}
//
//var mp3: MediaType = .audio("mp3")
//var h264: MediaType = .video("h264")

//let age = 30
//
//// if 문의 조건절에는 boolean 타입을 사용합니다.
//// 예) age > 20
//if age > 20 {
//    print("성인 입니다")
//} else {
//    print("미성년 입니다")
//}
//
//// else-if 조건을 이용해서, 조건을 세분화 해보겠습니다.
//if age >= 10 && age < 20 {
//    print("10대 입니다")
//} else if age >= 20 && age < 30 {
//    print("20대 입니다")
//} else if age >= 30 && age < 40 {
//    print("30대 입니다")
//} else if age >= 40 && age < 50 {
//    print("40대 입니다")
//} else {
//    print("......")
//}

//enum Weather {
//    case sun
//    case cloud
//    case rain
//}
//
//var weather: Weather = .rain
//
//switch weather {
//case .sun:
//    print("맑아요")
//case .cloud:
//    print("흐려요")
//case .rain:
//    print("비와요")
//}


//let ages = [3, 20, 60]
//let languageCode = [
//    "한국" : "ko",
//    "미국" : "en",
//    "일본" : "ja",
//]
//
//for age in ages {
//    print("age: \(age)")
//}
////    age: 3
////    age: 20
////    age: 60
//
//for (key, value) in languageCode {
//    print("\(key)의 언어코드는 \(value)")
//}
////    한국의 언어코드는 ko
////    미국의 언어코드는 en
////    일본의 언어코드는 ja


//print("전방에 다짐 10번 발사~~!")
//
//for _ in 0..<10 {
//    print("나는 iOS 개발자다!")
//}

//var count = 10
//
//print("Ready!")
//
//while count > 0 {
//    print("\(count)...")
//    count -= 1
//}
//
//print("START!")

//// Dictionary (Key: Value)
//let languageCode = [
//    "한국" : "ko",
//    "미국" : "en",
//    "일본" : "ja",
//]
//
//let krCode = languageCode["한국"] // "ko"
//let jpCode = languageCode["일본"] // "ja"
//let deCode = languageCode["독일"] // nil


// 이름이 있을수도 있고 없을수 있는 타입 선언 => String?
//var name: String? = nil
//
//name = "Jason"
//name = nil

//func printGugu(dan: Int) {
//    for i in 1...9 {
//        print("\(dan) * \(i) = \(dan * i)")
//    }
//}
//
//printGugu(dan: 5)
//
////    5 * 1 = 5
////    5 * 2 = 10
////    5 * 3 = 15
////    5 * 4 = 20
////    5 * 5 = 25
////    5 * 6 = 30
////    5 * 7 = 35
////    5 * 8 = 40
////    5 * 9 = 45
//
//func rollDice() -> Int {
//    return Int.random(in: 1...6)
//}
//
//let random = rollDice()


//// 함수
//func call(name: String) {
//    print("hello, \(name)")
//}
//
//call(name: "Jason")
//// hello, Jason
//
//// 상수에 함수 할당하고, 해당 상수를 호출 해보기
//let callName = call
//callName("Aha")
//// hello, Aha
//
//// 상수에 클로저 할당하고, 해당 상수 호출 해보기
//let helloName = { (name: String) in
//    print("hello, \(name)")
//}
//helloName("Oho")
//// hello, Oho

//// filter
//let members = ["Jason", "Greg", "Tiffany"]
//let nameHasT = members.filter { name in
//    return name.hasPrefix("T")
//}
//// ["Tiffany"]


//// map
//let prices = [1000, 2000, 3000]
//let doubledPrices = prices.map { price in
//    return price * 2
//}
//// [2000, 4000, 6000]

//// reduce
//let revenues = [100, 200, 300]
//let totalRevenue = revenues.reduce(0) { partialResult, next in
//    return partialResult + next
//}
//// 600

//struct Album {
//        // 멤버 변수들
//        // stored property
//    let title: String
//    let artist: String
//    var isReleased = false
//
////    init(title: String, artist: String) {
////        self.title = title
////        self.artist = artist
////    }
//
//    func description() -> String {
//        return "\(title) by \(artist)"
//    }
//
//        // 구조체 내부 멤버 변수의 값을 변경하는 경우, mutating 키워드 이용
//    mutating func release() {
//        self.isReleased = true
//    }
//}
//
//var easyOnMe = Album(title: "Easy On Me", artist: "Adele")
//print(easyOnMe.description())
//// Easy On Me by Adele
//
//print(easyOnMe.isReleased)
//easyOnMe.release()
//print(easyOnMe.isReleased)
// false
// true


//class Employee {
//    var name: String
//    var hours: Int
//
//    init(name: String, hours: Int) {
//        self.name = name
//        self.hours = hours
//    }
//
//    func work() {
//        print("I'm working now...")
//    }
//
//    func summary() {
//        print("I work \(self.hours) hours a day. ")
//    }
//}
//
//class iOSDeveloper: Employee {
//
//    override func work() {
//        print("I'm developing iOS app now.")
//    }
//
//    override func summary() {
//        print("I work \(self.hours/2) hours a day.")
//    }
//}
//
//struct Phone {
//    var modelName: String
//    var manufacturer: String
//    var version: Double = 1.0
//}
//
//let normalWorker = Employee(name: "Kim", hours: 8)
//normalWorker.work()
//normalWorker.summary()
////    I'm working now...
////    I work 8 hours a day.
//
//let developer = iOSDeveloper(name: "Jason", hours: 8)
//developer.work()
//developer.summary()
////    I'm developing iOS app now.
////    I work 4 hours a day.
//
//// Reference vs. Copy
//var iPhone1 = Phone(modelName: "iPhone 13", manufacturer: "Apple")
//var iPhone2 = iPhone1
//iPhone2.modelName = "iPhone 14"
//print(iPhone2.modelName)
//print(iPhone1.modelName)
////    iPhone 14
////    iPhone 13
//
//var jrDeveloper1 = iOSDeveloper(name: "John", hours: 8)
//var jrDeveloper2 = jrDeveloper1
//jrDeveloper1.name = "Billy"
//print(jrDeveloper1.name)
//print(jrDeveloper2.name)
////    Billy
////    Billy

//struct Watch {
//    let model: String
//    let manufacturer: String
//
//    var description: String {
//        return "\(model) by \(manufacturer)"
//    }
//}
//
//struct Person {
//    let firstName: String
//    let lastName: String
//
//    var fullName: String {
//        return "\(firstName) \(lastName)"
//    }
//}
//
//let appleWatch = Watch(model: "Watch 7", manufacturer:  "Apple")
//print(appleWatch.description)
//// Watch 7 by Apple
//
//let jason = Person(firstName: "Jason", lastName: "Lee")
//print(jason.fullName)
//// Jason Lee


//protocol Coach {
//    var name: String { get set }
//    var currentTeam: String { get }
//    func training()
//    func direct()
//}
//
//struct Mourinho: Coach {
//    var name: String = "Jose Mourinho"
//    var currentTeam: String = "AS Roma"
//
//    func training() {
//        print("Traing Player")
//    }
//
//    func direct() {
//        print("Direct Game")
//    }
//}
//
//let mourinho = Mourinho()
//print("\(mourinho.name), \( mourinho.currentTeam)")
//mourinho.training()
//mourinho.direct()
//
////    Jose Mourinho, AS Roma
////    Traing Player
////    Direct Game

extension String {
    func contains(s: String) -> Bool {
        return self.range(of: s) != nil
    }
    
    func replace(target: String, with: String) -> String {
        return self.replacingOccurrences(of: target, with: with)
    }
}


let testString = "Hello iOS Developer!!"
let replaced = testString.replace(target: "Hello", with: "안녕하세요")

print(replaced)
//    안녕하세요 iOS Developer!!
print(testString.contains(s: "Android"))
// true
