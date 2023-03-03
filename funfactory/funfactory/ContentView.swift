//
//  ContentView.swift
//  funfactory
//
//  Created by Timo Schönbeck on 23.02.23.
//

import SwiftUI
struct ContentView: View {
    let funFactors = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    @State var funFactor: String = ""
    @State var response: String = ""
    var body: some View {
        VStack {
            Text("Wie war eurer Tag?")
                .font(.headline)
            TextField("Geben Sie hier Ihre Antwort ein", text: $response)
                .padding(.horizontal, 50)
            Text("Welchen Funfaktor habt ihr Heute?")
                .font(.headline)
            Picker("Funfaktor", selection: $funFactor) {
                ForEach(funFactors, id: \.self) { factor in
                    Text(factor)
                }
            }
            .pickerStyle(WheelPickerStyle())
            .padding(.horizontal, 50)
            Button(action: {
                let randomFactor = funFactors.randomElement() ?? "0"
                self.funFactor = randomFactor
            }) {
                Text("Zufälligen Funfaktor generieren")
            }
            .padding(.top, 20)
            Spacer()
        }
        .padding(.top, 50)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
