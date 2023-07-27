//
//  beers.swift
//  kiosk
//
//  Created by t2023-m0091 on 2023/07/25.
//

import Foundation

class Beers: NamePaddable {
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

let beer1 = Beers(name: "Cass", price: "W 4.5", description: "무려 국내산 카스")
let beer2 = Beers(name: "Hite", price: "W 4.5", description: "무려 국내산 하이트")
let beer3 = Beers(name: "Terra", price: "W 4.5", description: "무려 국내산 테라")


let beerMenu = """
[ Beer MENU ]
1. \(beer1.displayInfo())
2. \(beer2.displayInfo())
3. \(beer3.displayInfo())
0. \(backoption.displayInfo())
"""

func showBeerMenu() {
    print(beerMenu)
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
