//
//  Cart.swift
//  kiosk
//
//  Created by t2023-m0091 on 2023/07/27.
//

import Foundation


class Cart {
    var items: [Burgers] = []

    func addMenu(_ item: Burgers) {
        items.append(item)
    }

    func total() -> Double {
        var total = 0.0
        for item in items {
            total += Double(item.price) ?? 0.0
        }
        return total
    }

    func displayCart() {
        if items.isEmpty {
            print("장바구니가 비어있습니다.")
        } else {
            for (index, item) in items.enumerated() {
                print("\(index + 1). \(item.displayInfo())")
            }
        }
    }
}
