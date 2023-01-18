//
//  CartButtom.swift
//  GameShopStudy
//
//  Created by Adriano Souza Costa on 18/01/23.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 16, height: 16)
                    .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                    .cornerRadius(8)
            }
        }
    }
}

struct CartButtom_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfProducts: 1)
    }
}
