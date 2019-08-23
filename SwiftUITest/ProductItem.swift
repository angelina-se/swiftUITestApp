//
//  ProductItem.swift
//  SwiftUITest
//
//  Created by anhelina.mamekhina on 8/23/19.
//  Copyright © 2019 anhelina.mamekhina. All rights reserved.
//

import SwiftUI

struct ProductItem: View {
    
    var object: ProductsResponse
    
    var body: some View {
        VStack {
            Image(object.image)
                .resizable()
                .cornerRadius(10)
                .frame(width: 120, height: 170)
        }.padding(.leading, 15)
    }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItem(object: materialResponse[1])
    }
}
