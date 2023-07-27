import Foundation

class IceCreams: NamePaddable {
    var name: String
    var price: String
    var description: String

    init(name: String, price: String, description: String) {
        self.name = name
        self.price = price
        self.description = description
}
    
    func displayInfo() -> String {
       return "\(paddedName()) | \(price) | \(description)"
    }
}

let ices = [ice1, ice2, ice3]

let ice1 = IceCreams(name: "Halla Shake", price: "W 7.5", description: "상큼한 시트러으 계열의 한라봉을 달콤한 바닐라 커스터드와 블렌딩한 시즌 한정 쉐이크")
let ice2 = IceCreams(name: "Float", price: "W 6.5", description: "부드러운 바닐라 커스터드와 톡톡 터지는 탄산이 만나 탄생한 색다른 음료")
let ice3 = IceCreams(name: "Cup & Cone", price: "W 6.5", description: "매일 점포에서 신선하게 제조하는 쫀득하고 진한 아이스크림")




let iceCreamMenu = """
[ IceCream MENU ]
1. \(ice1.displayInfo())
2. \(ice2.displayInfo())
3. \(ice3.displayInfo())
0. \(backoption.displayInfo())
"""


func showIceMenu() {
    print(iceCreamMenu)
    if let choice = readLine() {
        switch choice {
        case "1":
            print("메로나")
        case "2":
            print("누가바")
        case "3":
            print("쌍쌍바")
        default:
            print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
            showBurgerMenu()
        }
    }
}
    

