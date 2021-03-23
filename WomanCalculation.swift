//
//  WomanCalculation.swift
//  BMI Calculator
//
//  Created by Maurice Baumann on 3/22/21.
//

import SwiftUI

struct WomanCalculation: View {
    @State public var weight = ""
    @State public var hight = ""

    public var result: Double {
        let gewicht = Double(weight) ?? 0
        let größe = Double(hight)  ?? 0
        let res = gewicht / (größe * größe)

        return res
    }
    
    public var overUnder: String {
        var oU = ""
        
        if result > 0 && result <= 17.5 {
            oU = "Underweight"
        } else if result > 17.5 && result <= 24.0 {
            oU = "Normal"
        } else if result > 24.0 && result <= 29.0 {
            oU = "Overweight"
        } else if result > 29.0 && result <= 34.0 {
            oU = "Obese"
        } else {
            oU = "Extremly Obese"
        }
        
        return oU
    }
  
    var body: some View{
        NavigationView{
            VStack{
                VStack{
                    Form{
                        Section{
                            Text("Weight")
                                .font(.system(size: 20))
                                .bold()
                                .foregroundColor(.blue)
                            TextField("Enter here your weight please", text: $weight)
                                .keyboardType(.decimalPad)
                        }
                        Section{
                            Text("Height")
                                .font(.system(size: 20))
                                .bold()
                                .foregroundColor(.blue)
                            TextField("Enter here your height please", text: $hight)
                                .keyboardType(.decimalPad)
                        }
                        Section{
                            Text("Your BMI is \(result)")
                            Text("And you are \(overUnder)")
                        }
                    }
                    Image("bmiPic")
                        .resizable()
                        .frame(width: 350, height: 170, alignment: .center)
                }
            }
            .navigationTitle("BMI Calculator Woman")
        }
    }
}

