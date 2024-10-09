//
//  ShowInfo.swift
//  CurrencyExchanger
//
//  Created by Patryk Knopp on 19/08/2024.
//

import SwiftUI

struct ShowInfo: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            VStack{
                Text("INFO")
                    .font(.system(size: 50, weight: .bold, design: .default))
                    .foregroundStyle(.white)
                    .padding(.all, 50)
                
                Spacer()
                    
                
                VStack{
                    Text("To select a coin, tap on the coin's icon/name to exchange")
                        .foregroundStyle(.white)
                        .padding(.all, 20)
                        .multilineTextAlignment(.center)
                    Text("Here you have the exchange rates ")
                        .foregroundStyle(.white)
                        .padding(.all, 20)
                        .multilineTextAlignment(.center)
                    
                    Text("1 Gold Piece = 4 Gold Pennies")
                        .foregroundStyle(.white)
                        .padding(.all, 20)
                        .multilineTextAlignment(.center)
                    Text("1 Gold Penny = 4 Silver Pieces")
                        .foregroundStyle(.white)
                        .padding(.all, 20)
                        .multilineTextAlignment(.center)
                    Text("1 Silver Piece = 4 Silver Pennies")
                        .foregroundStyle(.white)
                        .padding(.all, 20)
                        .multilineTextAlignment(.center)
                    Text("1 Silver Penny = 100 Copper Pennies")
                        .foregroundStyle(.white)
                        .padding(.all, 20)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                }
                
                VStack{
                    Button{
                        dismiss()
                    }label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundStyle(.white)
                            .font(.system(size: 40, weight: .bold, design: .default))
                            
                    }
                }
            }

            

        }

    }
}

#Preview {
    ShowInfo()
}
