
import Foundation

protocol NamePaddable {
    var name: String { get set }
    func paddedName() -> String
}

extension NamePaddable {
    func paddedName() -> String {
            return name.padding(toLength: 19, withPad: " ", startingAt: 0)
        }
}


let mainMenu = """
[ SHAKESHACK MENU ]
1. Burgers         | 앵거스 비프 통살을 다져만든 버거
2. Frozen Custard  | 매장에서 신선하게 만드는 아이스크림
3. Drinks          | 매장에서 직접 만드는 음료
4. Beer            | 매장에서 직접 파는 맥주
5. Check Card      | 현재까지 선택한 목록 확인
0. Exit            | 프로그램 종료
"""

let cart = Cart()

while true {//0으로 프로그램 종료 전까지 showMainMenu 계속 호출
    showMainMenu()
}



func showMainMenu() {
    print(mainMenu)
    if let choice = readLine() {
        switch choice {
        case "1":
            showBurgerMenu()
        case "2":
            showIceMenu()
        case "3":
            showDrinkMenu()
        case "4":
            showBeerMenu()
        case "5":
            cart.displayCart()
        case "0":
            print("프로그램을 종료합니다.")
            exit(0)
        default:
            print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
            showMainMenu()
        }
    }
}





