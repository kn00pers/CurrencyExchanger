//
//  IconGrid.swift
//  CurrencyExchanger
//
//  Created by Patryk Knopp on 27/09/2024.
//

import SwiftUI

struct IconGrid: View {
    @State var selectedCurrency: Currency
    var body: some View {
        LazyVGrid(columns:[ GridItem(), GridItem(), GridItem()]){
            ForEach(Currency.allCases){ currency in
                if selectedCurrency == currency{
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .shadow(color: .black, radius: 10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(.black, lineWidth: 2)
                                .opacity(0.5)
                        )
                } else {
                        CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .onTapGesture{
                            withAnimation{
                                selectedCurrency = currency
                            }
                        }
                }
            }
        }
    }
}

#Preview {
    IconGrid(selectedCurrency: .silverPiece)
}
