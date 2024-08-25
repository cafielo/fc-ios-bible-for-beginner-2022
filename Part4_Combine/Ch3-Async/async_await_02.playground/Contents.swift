
// 1. 기본적인 Task 사용
func basicTaskExample() {
    Task {
        // 비동기 작업 수행
        await someAsyncFunction()
        print("비동기 작업 완료")
    }
    
    print("Task 시작 후 즉시 실행")
}

func someAsyncFunction() async {
    // 비동기 작업 시뮬레이션
    try? await Task.sleep(nanoseconds: 1_000_000_000)
    print("비동기 함수 실행 완료")
}

//print("1. 기본적인 Task 사용:")
//basicTaskExample()


// 2. 값을 반환하는 Task
func taskWithReturnValue() {
    let task = Task {
        // 비동기 작업 수행 후 값 반환
        try await fetchUserData()
    }

    // 작업 결과 사용
    Task {
        do {
            let userData = try await task.value
            print("사용자 데이터: \(userData)")
        } catch {
            print("오류 발생: \(error)")
        }
    }
}

func fetchUserData() async throws -> String {
    // 네트워크 요청 시뮬레이션
    try await Task.sleep(nanoseconds: 2_000_000_000)
    return "사용자 정보"
}

//print("2. 값을 반환하는 Task:")
//taskWithReturnValue()


// 3. Task 취소
func cancellableTaskExample() {
    let task = Task {
        do {
            try await performLongRunningTask()
        } catch is CancellationError {
            print("작업이 취소되었습니다.")
        } catch {
            print("다른 오류 발생: \\(error)")
        }
    }

    // 작업 취소
    task.cancel()
}

func performLongRunningTask() async throws {
    for i in 1...10 {
        try Task.checkCancellation()
        print("작업 진행 중: \(i)/10")
        try await Task.sleep(nanoseconds: 500_000_000)
    }
}

//print("\n3. Task 취소:")
//cancellableTaskExample()


//// 전체 예제 수행
//func runExamples() async {
//    print("1. 기본적인 Task 사용:")
//    basicTaskExample()
//    
//    print("\n2. 값을 반환하는 Task:")
//    taskWithReturnValue()
//    
//    print("\n3. Task 취소:")
//    cancellableTaskExample()
//    
//    // 결과를 볼 수 있도록 잠시 대기
//    try? await Task.sleep(nanoseconds: 3_000_000_000)
//}
//
//// 비동기 컨텍스트에서 실행
//Task {
//    await runExamples()
//}
