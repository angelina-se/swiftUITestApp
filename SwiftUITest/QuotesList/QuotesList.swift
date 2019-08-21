//
//  ContentView.swift
//  SwiftUITest
//
//  Created by anhelina.mamekhina on 8/20/19.
//  Copyright © 2019 anhelina.mamekhina. All rights reserved.
//

import SwiftUI

struct QuotesList: View {
    var body: some View {
        NavigationView {
            List(userResponse) { character in
                Cell(character: character)
            }.navigationBarTitle(Text("Quotes"))
        }
    }
}

#if DEBUG
struct QuotesList_Previews: PreviewProvider {
    static var previews: some View {
        QuotesList()
    }
}
#endif
