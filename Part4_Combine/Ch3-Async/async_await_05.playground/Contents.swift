
import Foundation

// 1. 기본적인 continuation 사용 예제
func fetchData(completion: @escaping (Result<String, Error>) -> Void) {
    // 비동기 작업 시뮬레이션
    DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
        completion(.success("Data fetched successfully"))
    }
}

func fetchDataAsync() async throws -> String {
    return try await withCheckedThrowingContinuation { continuation in
        fetchData { result in
            continuation.resume(with: result)
        }
    }
}

//Task {
//    let result = try await fetchDataAsync()
//    print(result)
//}

// 2. 에러 처리를 포함한 continuation 예제
enum NetworkError: Error {
    case connectionFailed
}

func simulateNetworkCall(success: Bool, completion: @escaping (Result<Int, NetworkError>) -> Void) {
    DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
        if success {
            completion(.success(200))
        } else {
            completion(.failure(.connectionFailed))
        }
    }
}

func performNetworkCallAsync(success: Bool) async throws -> Int {
    try await withCheckedThrowingContinuation { continuation in
        simulateNetworkCall(success: success) { result in
            continuation.resume(with: result)
        }
    }
}


// 실행 예제
func runExamples() async {
    // 예제 1
    print("1. Basic Continuation Example:")
    do {
        let result = try await fetchDataAsync()
        print(result)
    } catch {
        print("Error: \(error)")
    }

    // 예제 2
    print("\n2. Error Handling Continuation Example:")
    do {
        let successResult = try await performNetworkCallAsync(success: true)
        print("Success: \(successResult)")

        let failureResult = try await performNetworkCallAsync(success: false)
        print("Failure: \(failureResult)")
    } catch {
        print("Network Error: \(error)")
    }
}

// 실행
Task {
    await runExamples()
}

// Playground에서 결과를 볼 수 있도록 RunLoop 실행
RunLoop.main.run(until: Date(timeIntervalSinceNow: 10))

