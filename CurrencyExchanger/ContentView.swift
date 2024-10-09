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
    @State private var leftAmount = ""
    @State private var rightAmount = ""
    
    @FocusState var leftTyping
    @FocusState var rightTyping
    
    @State var leftCurrency: Currency = .silverPenny
    @State var rightCurrency: Currency = .goldPenny
    
    
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
                            .focused($leftTyping)
                            .keyboardType(.decimalPad)
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
                            .focused($rightTyping)
                            .keyboardType(.decimalPad)
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
                    .onChange(of: leftAmount){
                        if leftTyping == true {
                            rightAmount = leftCurrency.convert(leftAmount, to: rightCurrency)
                        }
                    }
                    .onChange(of: rightAmount){
                        if rightTyping == true {
                            leftAmount = rightCurrency.convert( rightAmount, to: leftCurrency)
                        }
                    }
                    .onChange(of: leftCurrency){
                        leftAmount = rightCurrency.convert(rightAmount, to: leftCurrency)
                    }
                    .onChange(of: rightCurrency){
                        rightAmount = leftCurrency.convert(leftAmount, to: rightCurrency)
                    }
                }


                
            }
            .contentShape(Rectangle())
            .onTapGesture {
                leftTyping = false
                rightTyping = false
            }
        }
    }

}

#Preview {
    ContentView()
}
