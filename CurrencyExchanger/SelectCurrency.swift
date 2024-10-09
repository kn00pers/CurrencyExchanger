//
//  SelectCurrency.swift
//  CurrencyExchanger
//
//  Created by Patryk Knopp on 23/08/2024.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            VStack{
                Text("Select the coin you would like to start with:")
                    .font(.headline)
                
                IconGrid(selectedCurrency: $topCurrency)
                
                
                
                Text("Select the coin you would like to convert to:")
                    .font(.headline)
                
                IconGrid(selectedCurrency: $bottomCurrency)
                
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
    SelectCurrency(topCurrency: .constant(.copperPenny), bottomCurrency: .constant(.silverPiece))
}
