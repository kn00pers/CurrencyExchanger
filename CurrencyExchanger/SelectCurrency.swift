//
//  SelectCurrency.swift
//  CurrencyExchanger
//
//  Created by Patryk Knopp on 23/08/2024.
//

import SwiftUI

struct SelectCurrency: View {
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            VStack{
                Text("Available currencies:")
                    .font(.headline)
                HStack{
                    LazyVGrid(columns:[ GridItem(), GridItem(), GridItem()]){
                        
                        ForEach(0..<5){ _ in
                            CurrencyIcon(currencyImage: .copperpenny, currencyName: "USD")
                            
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    SelectCurrency()
}
