//
//  ContentView.swift
//  CurrencyExchanger
//
//  Created by Patryk Knopp on 18/08/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State public var showInfo = false
    @State public var showSelectCurrency = false
    @State private var leftAmount: String = ""
    @State private var rightAmount: String = ""
    
    @State var leftCurrency = Currency.silverPenny
    @State var rightCurrency = Currency.goldPenny
    
    
    var body: some View {
        ZStack{
        //background
            Color.gray.edgesIgnoringSafeArea(.all)
            VStack{
                // logo
                Image(.logo)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .padding(.all, 50)
                // currency exchange text
                Text("Currency Exchanger")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .padding(.top, 10)
                    .padding(.bottom, 25)
                    .foregroundStyle(.black)
                // currency conversion section
                HStack{
                    // left conversion section
                    VStack{
                        // currency
                        HStack{
                            // currency image
                            Image(leftCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 25)
                                .frame(width: 25)
                            
                            Text(leftCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.black)
                                
                        }
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        // Textfield
                        HStack{
                            TextField(
                                "Amount",
                                text: $leftAmount
                            )
                            .textFieldStyle(.roundedBorder)
                            .padding(.all, 20)
                        }
     
                        
                    }
                    // equal sign
                    Image(systemName: "equal")
                        .padding(.top, 35)
                        .font(.headline)
                        .symbolEffect(.pulse)
                    // right conversion section
                    VStack{
                        // currency
                        HStack{
                            // currency image
                            Image(rightCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 25)
                                .frame(width: 25)
                            
                            Text(rightCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.black)
                        }
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        // Textfield
                        HStack{
                            TextField(
                                "Amount",
                                text: $rightAmount
                            )
                            .textFieldStyle(.roundedBorder)
                            .padding(.all, 20)
                        }
                    }
                }
                
                Spacer()
                //info button
                HStack {
                    Spacer()
                    Button {
                        showInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle")
                            .font(.largeTitle)
                            .padding(.all, 20)
                            .foregroundColor(.black)
                    }
                    .sheet(isPresented:$showInfo){
                        ShowInfo()
                    }
                    .sheet(isPresented:$showSelectCurrency){
                        SelectCurrency(topCurrency: $leftCurrency, bottomCurrency: $rightCurrency)
                    }
                }

                
            }
        }
    }
}

#Preview {
    ContentView()
}
