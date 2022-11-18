//
//  CalculatorView.swift
//  PerGram
//
//  Created by Javier Fransiscus on 18/11/22.
//

import SwiftUI

struct CalculatorView: View {
    @State private var price: Double = 0
    @State private var weight: Double = 0
    
    private var calculatedValue: Double {
        price / weight
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Form {
                    Section {
                        TextField("Enter Price", value: $price, format: .number)
                            .keyboardType(.numberPad)
                    } header : {
                        Text("Price")
                    }
                    
                    Section {
                        TextField("Enter Weight", value: $weight, format: .number)
                            .keyboardType(.numberPad)
                    } header : {
                        Text("Weight in grams")
                    }
                    
                    Section {
                        Text("\(calculatedValue)")
                    } header : {
                            Text("Price per gram")
                    }
                }
            }
            .navigationBarTitle(Text("Calculate"), displayMode: .automatic)

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
