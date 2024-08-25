

import Foundation

// Actor 정의
actor BankAccount {
    private var balance: Double
    
    init(initialBalance: Double) {
        self.balance = initialBalance
    }
    
    func deposit(amount: Double) {
        balance += amount
    }
    
    func withdraw(amount: Double) -> Bool {
        guard balance >= amount else {
            return false
        }
        balance -= amount
        return true
    }
    
    func checkBalance() -> Double {
        return balance
    }
}

// Actor 사용 예시
func bankAccountExample() async {
    let account = BankAccount(initialBalance: 1000)
    
    // 동시에 여러작업 수행
    await withTaskGroup(of: Void.self) { group in
        for i in 0..<1000 {
            group.addTask {
                await account.deposit(amount: 1)
            }
        }
        
        for i in 0..<10 {
            group.addTask {
                await account.withdraw(amount: 10)
            }
        }
    }
    
    // 최종 잔액 확인
    let finalBalance = await account.checkBalance()
    print("Final balance: \(finalBalance)")
}

// Actor를 사용하지 않은 경우의 예시
class UnsafeBankAccount {
    private var balance: Double
    
    init(initialBalance: Double) {
        self.balance = initialBalance
    }
    
    func deposit(amount: Double) {
        balance += amount
    }
    
    func withdraw(amount: Double) -> Bool {
        guard balance >= amount else {
            return false
        }
        balance -= amount
        return true
    }
    
    func checkBalance() -> Double {
        return balance
    }
}

func unsafeBankAccountExample() async {
    let account = UnsafeBankAccount(initialBalance: 1000)
    
    // 동시에 여러 작업 수행 (데이터 레이스 가능성 있음)
    DispatchQueue.concurrentPerform(iterations: 1000) { _ in
        account.deposit(amount: 1)
    }
    
    DispatchQueue.concurrentPerform(iterations: 10) { _ in
        account.withdraw(amount: 10)
    }
    
    print("Unsafe final balance: \(account.checkBalance())")
}

// 실행
Task {
    print("Using Actor:")
    await bankAccountExample()
    
    print("\nWithout Actor (Unsafe):")
    await unsafeBankAccountExample()
}

// 메인 런루프 실행 (콘솔 앱에서 결과를 볼 수 있도록)
RunLoop.main.run(until: Date(timeIntervalSinceNow: 2))


