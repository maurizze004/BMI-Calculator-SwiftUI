//
//  ContentView.swift
//  BMI Calculator
//
//  Created by Maurice Baumann on 3/22/21.
//

import SwiftUI

struct ContentView: View {  
    var body: some View {
        TabView{
            MenCalculation()
                .tabItem {
                    Image(systemName: "arrow.up.right")
                    Text("Male")
                }
            WomanCalculation()
                .tabItem {
                    Image(systemName: "arrow.down")
                    Text("Female")
                }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
