//
//  SelectCurrency.swift
//  CurrencyExchanger
//
//  Created by Patryk Knopp on 23/08/2024.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            VStack{
                Text("Currency you would like to start with:")
                    .font(.headline)
                HStack{
                    LazyVGrid(columns:[ GridItem(), GridItem(), GridItem()]){
                        
                        ForEach(Currency.allCases){ currency in
                            CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                            
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
    SelectCurrency()
}
