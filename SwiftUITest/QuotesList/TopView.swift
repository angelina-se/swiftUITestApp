//
//  TopView.swift
//  SwiftUITest
//
//  Created by anhelina.mamekhina on 8/20/19.
//  Copyright © 2019 anhelina.mamekhina. All rights reserved.
//

import SwiftUI

struct TopView: View {
    
    var character: CharacterResponse
    
    var body: some View {
        HStack(spacing: 8.0) {
            Image(character.image)
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 4.0){
                Text(character.name)
                    .font(.title)
                HStack {
                    Text(character.email)
                        .font(.subheadline)
                    Spacer()
                    Image("like")
                    Text(character.likes)
                        .font(.subheadline)
                }
            }
        }
    }
}

#if DEBUG
struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(character: userResponse[0])
    }
}
#endif
