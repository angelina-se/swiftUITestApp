//
//  Cell.swift
//  SwiftUITest
//
//  Created by anhelina.mamekhina on 8/20/19.
//  Copyright © 2019 anhelina.mamekhina. All rights reserved.
//

import SwiftUI

struct Cell: View {
    
    var character: CharacterResponse
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            TopView(character: character)
            Text(character.text)
                .lineLimit(nil)
        }.padding()
    }
}

#if DEBUG
struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(character: userResponse[0])
    }
}
#endif
