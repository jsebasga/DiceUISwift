//
//  ContentView.swift
//  Dice
//
//  Created by Sebas's Mac on 5/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack  {
            Image("GreenBackground")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("DiceeLogo")
                Spacer()
                    .frame(height: 100)
                HStack{
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                    .frame(height: 80)
                Button(action:{
                    
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }){
                    Text("Roll")
                        .font(.system(size: 45))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    .padding(.horizontal)
                }
                .background(.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    
    let n : Int
    var body: some View {
        Image("Dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
