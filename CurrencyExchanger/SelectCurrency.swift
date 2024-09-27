//
//  SelectCurrency.swift
//  CurrencyExchanger
//
//  Created by Patryk Knopp on 23/08/2024.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var leftCurrency = Currency.silverPenny
    @State var rightCurrency = Currency.goldPenny
    
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            VStack{
                Text("Select the currency you would like to start with:")
                    .font(.headline)
                
                IconGrid(selectedCurrency: leftCurrency)
                
                
                
                Text("Select a currency you would like to convert to:")
                    .font(.headline)
                
                IconGrid(selectedCurrency: rightCurrency)
                
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
