//
//  Shop.swift
//  TouchDown
//
//  Created by Teenu Abraham on 15/05/23.
//

import Foundation

class Shop: ObservableObject {
   @Published var showingProduct: Bool = false
   @Published var selectedProduct: Product? = nil
}
