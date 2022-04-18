//
//  ContentView.swift
//  PickersSwiftUI
//
//  Created by Slava Orlov on 16.04.2022.
//

import SwiftUI

struct ContentView: View {
    @State var section = 0
    @State var procentsection = 0
    @State var isOn = false
    var settingsTime = ["5 min", "10 min", "15 min"]
    var procent = ["5%", "50%", "100%"]
    
    var body: some View {
        NavigationView {
            Form {
                Picker(selection: $section, label:
                    Text("Время")) {
                        ForEach(0..<settingsTime.count) {
                            Text(self.settingsTime[$0])
                        }
                    }
                
                Toggle(isOn: $isOn) {
                    Text("Авиарежим").foregroundColor(isOn ? Color.orange : Color.gray)
                }
                
                Picker(selection: $procentsection, label:
                    Text("Подсветка")) {
                    ForEach(0..<101) {
                            Text("\($0)%")
                        }
                    }
                
            }.navigationTitle("Настройки")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
