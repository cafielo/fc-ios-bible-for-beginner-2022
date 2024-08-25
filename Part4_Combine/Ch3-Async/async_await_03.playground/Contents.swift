
import Foundation

// 이미지 다운로드를 시뮬레이션하는 함수
func downloadImage(id: Int) async throws -> String {
    // 네트워크 지연 시뮬레이션
    try await Task.sleep(nanoseconds: UInt64.random(in: 100_000_000...1_000_000_000)) //0.1 ~ 1초 랜덤 지연
    return "Image_\(id)"
}

// Task Group을 사용하여 여러 이미지를 동시에 다운로드
func downloadImagesWithTaskGroup(ids: [Int]) async throws -> [String] {
    try await withThrowingTaskGroup(of: String.self) { group in
        for id in ids {
            group.addTask {
                try await downloadImage(id: id)
            }
        }
        
        var downloadedImages: [String] = []
        for try await image in group {
            downloadedImages.append(image)
        }
        
        return downloadedImages
    }
}

// Task Group 사용 예시
func taskGroupExample() async {
    let imageIds = Array(1...5)
    
    do {
        let startTime = DispatchTime.now()
        let images = try await downloadImagesWithTaskGroup(ids: imageIds)
        let endTime = DispatchTime.now()
        
        let elapsedTime = Double(endTime.uptimeNanoseconds - startTime.uptimeNanoseconds) / 1_000_000_000
        
        print("Downloaded images: \(images)")
        print("Total time taken: \(elapsedTime) seconds")
    } catch {
        print("Error occurred: \(error)")
    }
}

// Task Group 없이 순차적으로 다운로드
func downloadImagesSequentially(ids: [Int]) async throws -> [String] {
    var downloadedImages: [String] = []
    for id in ids {
        let image = try await downloadImage(id: id)
        downloadedImages.append(image)
    }
    return downloadedImages
}

// 순차적 다운로드 예시
func sequentialExample() async {
    let imageIds = Array(1...5)
    
    do {
        let startTime = DispatchTime.now()
        let images = try await downloadImagesSequentially(ids: imageIds)
        let endTime = DispatchTime.now()
        
        let elapsedTime = Double(endTime.uptimeNanoseconds - startTime.uptimeNanoseconds) / 1_000_000_000
        
        print("Downloaded images sequentially: \(images)")
        print("Total time taken: \(elapsedTime) seconds")
    } catch {
        print("Error occurred: \(error)")
    }
}

//// 실행
//Task {
//    print("Task Group (사용하면,,):")
//    await taskGroupExample()
//    
//    print("\nTask Group (사용하지 않으면,, Sequential):")
//    await sequentialExample()
//}
//
//// 메인 런루프 실행 (콘솔 앱에서 결과를 볼 수 있도록)
//RunLoop.main.run(until: Date(timeIntervalSinceNow: 5))


//import Foundation

// 비동기 작업을 시뮬레이션하는 함수
func fetchData(id: Int) async throws -> String {
    try await Task.sleep(nanoseconds: UInt64.random(in: 100_000_000...1_000_000_000))
    return "Data_\(id)"
}

// async let 사용 예시
func asyncLetExample01() async {
    print("Using async let:")

    async let result1 = fetchData(id: 1)
    async let result2 = fetchData(id: 2)
    async let result3 = fetchData(id: 3)

    do {
        let results = try await [result1, result2, result3]
        print("Results: \(results)")
    } catch {
        print("Error: \(error)")
    }
}

// Task Group 사용 예시
func taskGroupExample01() async {
    print("Using Task Group:")

    do {
        let results = try await withThrowingTaskGroup(of: String.self) { group in
            for id in 1...3 {
                group.addTask {
                    try await fetchData(id: id)
                }
            }

            var collected = [String]()
            for try await result in group {
                collected.append(result)
            }
            return collected
        }
        print("Results: \(results)")
    } catch {
        print("Error: \(error)")
    }
}

// 동적인 수의 작업 처리 예시
func dynamicTasksExample01(count: Int) async {
    print("Handling dynamic number of tasks (\(count)):")

    do {
        let results = try await withThrowingTaskGroup(of: String.self) { group in
            for id in 1...count {
                group.addTask {
                    try await fetchData(id: id)
                }
            }

            return try await group.reduce(into: [String]()) { $0.append($1) }
        }
        print("Results: \(results)")
    } catch {
        print("Error: \(error)")
    }
}

// 실행
Task {
    await asyncLetExample01()
    print()
    await taskGroupExample01()
    print()
    await dynamicTasksExample01(count: 10)
}

// 메인 런루프 실행 (콘솔 앱에서 결과를 볼 수 있도록)
RunLoop.main.run(until: Date(timeIntervalSinceNow: 5))

