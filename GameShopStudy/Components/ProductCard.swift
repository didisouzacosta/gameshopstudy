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
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .scaledToFill()

                VStack(alignment: .leading) {
                    Text(product.name)
                        .lineLimit(2)
                        .bold()
                    Text(product.price.formatedPrice() ?? "")
                        .font(.caption)
                }
                .foregroundColor(.white)
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(16)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            .cornerRadius(16)
            .clipped()

            Button {
                cartManager.add(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
            .environmentObject(CartManager())
    }
}
