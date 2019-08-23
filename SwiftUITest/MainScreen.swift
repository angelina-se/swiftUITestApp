//
//  MainScreen.swift
//  SwiftUITest
//
//  Created by anhelina.mamekhina on 8/20/19.
//  Copyright © 2019 anhelina.mamekhina. All rights reserved.
//

import SwiftUI

struct MainScreen: View {
    var categories: [String: [ProductsResponse]] {
        .init(grouping: materialResponse, by: {$0.category.rawValue})
    }
    var body: some View {
        NavigationView {
            List {
                Cell(character: harryPotter).listRowInsets(EdgeInsets())
                ForEach(self.categories.keys.sorted(), id: \.self) { key in
                    ProductRow(categoryName: key, items: self.categories[key]!)
                }.listRowInsets(EdgeInsets())
                NavigationLink(destination: QuotesList()) {
                    Text("Quotes").font(.title)
                }
            }.navigationBarTitle(Text("Harry Potter"))
        }
    }
    
}

#if DEBUG
struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
#endif
