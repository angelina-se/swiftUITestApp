//
//  ProductResponse.swift
//  SwiftUITest
//
//  Created by TRaz on 8/22/19.
//  Copyright © 2019 anhelina.mamekhina. All rights reserved.
//

import Foundation
import SwiftUI

enum Category: String, CaseIterable, Codable, Hashable {
    case books = "Books"
    case films = "Films"
}

struct ProductsResponse: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var image: String
    var shortName: String
    var category: Category
    var description: String
    var rating: Double
    var year: Int
    var isFavorite: Bool
}
