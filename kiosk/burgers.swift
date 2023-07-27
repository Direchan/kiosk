//
//  burgers.swift
//  kiosk
//
//  Created by t2023-m0091 on 2023/07/25.
//

import Foundation

class Burgers: NamePaddable {
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

let burger1 = Burgers(name: "ShackBurger", price: "W 6.9", description: "토마토, 양상추, 쉑소스가 토핑된 치즈버거")
let burger2 = Burgers(name: "SmokeShack", price: "W 8.9", description: "베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거")
let burger3 = Burgers(name: "Shroom Burger", price: "W 9.4", description: "몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거")
let burger4 = Burgers(name: "Cheeseburger", price: "W 6.9", description: "포테이토 번과 비프패티, 치즈가 토핑된 치즈버거")
let burger5 = Burgers(name: "Hamburger", price: "W 5.4", description: "비프패티를 기반으로 야채가 들어간 기본버거")

let burgers = [burger1, burger2, burger3, burger4, burger5]

let burgerMenu = """
[ Burgers MENU ]
1. \(burger1.displayInfo())
2. \(burger2.displayInfo())
3. \(burger3.displayInfo())
4. \(burger4.displayInfo())
5. \(burger5.displayInfo())
0. \(backoption.displayInfo())
"""




