//
//  ContentView.swift
//  CoinFliip
//
//  Created by ARNESH SAHA on 04/07/2023.
//
import SwiftUI

struct ContentView: View {
    @State private var coinSide = "circle.fill"
    @State private var showingResult = false
    
    var body: some View {
        VStack {
            Text("Coin Flipping App")
                .font(.title)
                .padding()
            
            Image(systemName: coinSide)
                .font(.system(size: 100))
                .padding()
            
            Button("Flip") {
                flipCoin()
                showingResult = true
            }
            .font(.title)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .alert(isPresented: $showingResult) {
            Alert(
                title: Text("Result"),
                message: Text(coinSide == "circle.fill" ? "Heads" : "Tails"),
                dismissButton: .default(Text("OK"))
            )
        }
    }
    
    func flipCoin() {
        coinSide = Bool.random() ? "circle.fill" : "circle"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

