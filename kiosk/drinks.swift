import Foundation



class Drinks: NamePaddable {
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





let drink1 = Drinks(name: "Halla Lemonade", price: "W 5.5", description: "쉑쉑 시그니처 레몬에이드에 향긋한 한라봉 맛이 더해진 레몬에이드")
let drink2 = Drinks(name: "Lemonade", price: "W 5.0", description: "매장에서 직접 만드는 상크함 레몬에이드")
let drink3 = Drinks(name: "IceTea", price: "W 4.2", description: "직접 유기농 홍차를 우려낸 아이스 티")
let drink4 = Drinks(name: "Soda", price: "W 3.6", description: "코카콜라, 제로코카, 스프라이트, 환타 오렌지, 환타 포도, 환타 파인")
let drink5 = Drinks(name: "Coffe", price: "W 3.5", description: "쉑 블렌드 원두를 사용한 밸런스 좋은 드립 커피")



let drinkMenu = """
[ Drinks MENU ]
1. \(drink1.displayInfo())
2. \(drink2.displayInfo())
3. \(drink3.displayInfo())
4. \(drink4.displayInfo())
5. \(drink5.displayInfo())
0. \(backoption.displayInfo())
"""


func showDrinkMenu() {
    print(drinkMenu)
    if let choice = readLine() {
        switch choice {
        case "1":
            showBurgerMenu()
        case "0":
            showMainMenu()
            exit(0)
        default:
            print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
            showDrinkMenu()
        }
    }
}


//파일별 역할 단일화, 분리, 우선은 기능구현에 초점두고 후에 코드의 구조적인 면 생각해보기
// 이 파일은 벌써 클래스의 선언 및 인스턴스 생성 2개의 일을 하고있음
