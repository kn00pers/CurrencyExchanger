//
//  ContentView.swift
//  CurrencyExchanger
//
//  Created by Patryk Knopp on 18/08/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State public var showInfo = false
    @State private var euro: String = ""
    @State private var pln: String = ""
    
    
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
                    .foregroundStyle(.black)
                // currency conversion section
                HStack{
                    // left conversion section
                    VStack{
                        // currency
                        HStack{
                            // currency image
                            Image(systemName: "eurosign.circle")
                                .padding(.top, 20)
                            // currency text
                            Text("EURO")
                                .font(.headline)
                                .padding(.top, 20)
                        }
                        // Textfield
                        HStack{
                            TextField(
                                "euro: ",
                                text: $euro
                            )
                            .textFieldStyle(.roundedBorder)
                            .padding(.all, 20)
                        }
     
                        
                    }
                    // equal sign
                    Image(systemName: "equal")
                        .padding(.top, 20)
                        .font(.headline)
                        .symbolEffect(.pulse)
                    // right conversion section
                    VStack{
                        // currency
                        HStack{
                            // currency text
                            Text("PLN")
                                .padding(.top, 20)
                                .font(.headline)
                            // currency image
                            Image(systemName:
                                    "polishzlotysign.circle")
                                .padding(.top, 20)
                        }
                        // Textfield
                        HStack{
                            TextField(
                                "PLN: ",
                                text: $pln
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
                }

                
            }
        }
    }
}

#Preview {
    ContentView()
}
