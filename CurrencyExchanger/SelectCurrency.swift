//
//  SelectCurrency.swift
//  CurrencyExchanger
//
//  Created by Patryk Knopp on 23/08/2024.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var selectedCurrency: Currency
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            VStack{
                Text("Select the currency you would like to start with:")
                    .font(.headline)
                HStack{
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
                Text("Select a currency you would like to convert to:")
                    .font(.headline)
                
                Button("Convert"){
                    dismiss()
                }
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
                .tint(.black)
                .buttonStyle(.borderedProminent)

            }
            
        }
    }
}

#Preview {
    SelectCurrency(selectedCurrency: .silverPiece)
}
