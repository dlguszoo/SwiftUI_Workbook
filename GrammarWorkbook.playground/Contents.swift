struct Car {
    let make: String
    let model: String
    let year: Int
    var mileage: Double
    var isRunning: Bool
    
    init(make: String, model: String, year: Int, mileage: Double, isRunning: Bool) {
        self.make = make
        self.model = model
        self.year = year
        self.mileage = mileage
        self.isRunning = isRunning
    }
    
    mutating func start() {
        print(!isRunning ? "차 시동 걸림" : "차 이미 시동 중.")
        isRunning.toggle()
    }

    mutating func stop() {
        print(!isRunning ? "차 이미 꺼짐." : "차 시동 꺼짐")
        isRunning.toggle()
    }
    
    mutating func drive(distance: Double) {
        if isRunning {
            mileage += distance
            print("이동거리 \(distance)km. 현재 mileage: \(mileage)km")
        } else {
            print("이동 불가능. 차 시동 꺼짐.")
        }
    }
}

/* 코드 시나리오, 위 클래스 구현 후 실행 시켜주세요! */

var myCar = Car(make: "한국", model: "KIA", year: 2024, mileage: 15000.0, isRunning: false)

myCar.start() // 출력: "차 시동 걸림."
myCar.drive(distance: 100) // 출력: "이동거리 100 km. 현재 mileage: 15100 km"
myCar.stop() // 출력: "차 시동 꺼짐."
myCar.drive(distance: 50) // 출력: "이동 불가능. 차 시동 꺼짐."
myCar.start() // 출력: "Car started."
myCar.start() // 출력: "차 이미 시동 중."
