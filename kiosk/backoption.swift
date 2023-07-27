//
//  backoption.swift
//  kiosk
//
//  Created by t2023-m0091 on 2023/07/25.
//

import Foundation

class BackOption: NamePaddable {
    var name: String
    let description: String

    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
    
//    func paddedName() -> String {
//        return name.padding(toLength: 19, withPad: " ", startingAt: 0)
//    }
//
    func displayInfo() -> String {
        return "\(paddedName()) | \(description)"
    }
}

let backoption = BackOption(name: "Back", description: "뒤로가기")
