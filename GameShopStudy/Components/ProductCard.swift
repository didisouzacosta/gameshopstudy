//
//  ProductCard.swift
//  GameShopStudy
//
//  Created by Adriano Souza Costa on 18/01/23.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    
    var product: Product
    
    var body: some View {
        VStack(spacing: 0) {
            Image(product.image)
                .resizable()
                .scaledToFill()
                .aspectRatio(0.8, contentMode: .fill)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(product.name)
                        .lineLimit(2)
                        .bold()
                    Text(product.price.formatedPrice() ?? "")
                        .font(.caption)
                }
                Spacer()
            }
            .padding()
            .foregroundColor(.white)
            .background(.black)
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .cornerRadius(8)
        .clipped()
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
            .environmentObject(CartManager())
            .frame(width: 400, height: 400)
    }
}
