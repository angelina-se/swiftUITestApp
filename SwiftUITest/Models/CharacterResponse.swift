//
//  UserResponse.swift
//  SwiftUITest
//
//  Created by anhelina.mamekhina on 8/20/19.
//  Copyright © 2019 anhelina.mamekhina. All rights reserved.
//

import Foundation
import SwiftUI

struct CharacterResponse: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var image: String
    var email: String
    var likes: String
    var text: String
}

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
