//
//  CurrencyIcon.swift
//  CurrencyExchanger
//
//  Created by Patryk Knopp on 04/09/2024.
//

import SwiftUI

struct CurrencyIcon: View {
    let currencyImage: ImageResource
    let currencyName: String
    
    var body: some View {
        ZStack(alignment: .bottom){
            //currency image
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            //curency text
            Text(currencyName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.black.opacity(0.66))
                .foregroundStyle(.white)
            
            
        }
        .padding(3)
        .frame(width: 100, height: 100)
        .background(.black.opacity(0.25))
        .clipShape(.rect(cornerRadius: 25))
        
    }
}

#Preview {
    CurrencyIcon(currencyImage: .goldpiece, currencyName: "gold piece")
}
