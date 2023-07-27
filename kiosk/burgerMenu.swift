//
//  burgerMenu.swift
//  kiosk
//
//  Created by t2023-m0091 on 2023/07/25.
//

import Foundation




func showBurgerMenu() {
    var burgerMenu = "[ Burgers MENU ]\n"
    for (index, burger) in burgers.enumerated() {
        burgerMenu += "\(index + 1). \(burger.displayInfo())\n"
    }
    burgerMenu += "0. \(backoption.displayInfo())"

    print(burgerMenu)

    if let choice = readLine() {
        if let choiceInt = Int(choice), choiceInt >= 1 && choiceInt <= burgers.count {
            let selectedBurger = burgers[choiceInt - 1]
            cart.addMenu(selectedBurger)
            print("\(selectedBurger.name)을 장바구니에 추가했습니다.")
        } else if choice == "0" {
            // 이전 메뉴로 돌아가기
        } else {
            print("잘못된 번호를 입력했습니다. 다시 입력해주세요.")
            showBurgerMenu()
        }
    }
}



//func showBurgerMenu() {
//    print(burgerMenu)
//    if let choice = readLine() {
//        switch choice {
//        case "0":
//            showMainMenu()
//        default:
//            print("잘못된 번호를 입력했어요. 다시 입력해주세요.")
//            showBurgerMenu()
//        }
//    }
//}
