//
//  MenCalculation.swift
//  BMI Calculator
//
//  Created by Maurice Baumann on 3/22/21.
//

import SwiftUI

struct MenCalculation: View {
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
        
        if result > 0 && result <= 18.5 {
            oU = "Underweight"
        } else if result > 18.5 && result <= 24.9 {
            oU = "Normal"
        } else if result > 24.9 && result <= 29.9 {
            oU = "Overweight"
        } else if result > 29.9 && result <= 34.9 {
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
                            Text("Your BMI is \(result, specifier: "%.1f")")
                                .foregroundColor(.green)
                            Text("And you are \(overUnder)")
                                .bold()
                                .italic()
                        }
                    }
                    Image("bmiPic")
                        .resizable()
                        .frame(width: 350, height: 170, alignment: .center)
                }
            }
            .navigationTitle("BMI Calculator Man")
        }
    }
}
