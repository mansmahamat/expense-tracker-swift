//
//  TintColor.swift
//  Expense-tracker
//
//  Created by Mansour Mahamat-salle on 10/04/2024.
//

import SwiftUI

struct TintColor: Identifiable {
    let id: UUID = .init()
    var color : String
    var value: Color
    
}

var tints: [TintColor] = [
    .init(color: "Red", value: Color.red),
    .init(color: "Blue", value: Color.blue),
    .init(color: "Pink", value: Color.pink),
    .init(color: "Purple", value: Color.purple),
    .init(color: "Brown", value: Color.brown),
    .init(color: "Orange", value: Color.orange)
]

