import Foundation

// 간단한 데이터 모델
struct User {
    let id: Int
    let name: String
}

// 모의 데이터 가져오기 함수
func fetchUser(id: Int) async -> User {
    // 네트워크 지연 시뮬레이션
    await Task.sleep(2 * 1_000_000_000) // 2초 대기
    
    // 성공 시 User 반환
    return User(id: id, name: "User \(id)")
}

// 사용 예시
func exampleUsage() async {
    print("Fetching user...")
    let user = await fetchUser(id: 1)
    print("Fetched user: \(user.name)")
    print("Fetch operation completed")
}

// 비동기 컨텍스트에서 실행
//Task {
//    await exampleUsage()
//}



//import Foundation

// 상품과 프로모션을 위한 간단한 구조체
struct Product {
    let id: Int
    let name: String
}

struct Promotion {
    let id: Int
    let description: String
}

class Store {
    var products: [Product] = []
    var promotions: [Promotion] = []
    
    // 상품 가져오기 (0.4초 소요)
    func fetchProducts() async -> [Product] {
        await Task.sleep(400_000_000)
        return [
            Product(id: 1, name: "Product A"),
            Product(id: 2, name: "Product B")
        ]
    }
    
    // 프로모션 가져오기 (0.3초 소요)
    func fetchPromotions() async -> [Promotion] {
        await Task.sleep(300_000_000)
        return [
            Promotion(id: 1, description: "Sale on Product A"),
            Promotion(id: 2, description: "New Product B Launch")
        ]
    }
    
    // async let을 사용하지 않은 버전
    func prepareStoreWithoutAsyncLet() async {
        let startTime = DispatchTime.now()
        
        self.products = await fetchProducts()
        self.promotions = await fetchPromotions()
        
        let endTime = DispatchTime.now()
        let elapsedTime = Double(endTime.uptimeNanoseconds - startTime.uptimeNanoseconds) / 1_000_000_000
        print("Without async let - Total execution time: \(elapsedTime) seconds")
    }
    
    // async let을 사용한 버전
    func prepareStoreWithAsyncLet() async {
        let startTime = DispatchTime.now()
        
        async let products = fetchProducts()
        async let promotions = fetchPromotions()
        
        self.products = await products
        self.promotions = await promotions
        
        let endTime = DispatchTime.now()
        let elapsedTime = Double(endTime.uptimeNanoseconds - startTime.uptimeNanoseconds) / 1_000_000_000
        print("With async let - Total execution time: \(elapsedTime) seconds")
    }
}

// 실행 예시
func runExample() async {
    let store = Store()
    
    print("Preparing store without async let...")
    await store.prepareStoreWithoutAsyncLet()
    
    print("\nPreparing store with async let...")
    await store.prepareStoreWithAsyncLet()
}

// 비동기 컨텍스트에서 실행
Task {
    await runExample()
}
