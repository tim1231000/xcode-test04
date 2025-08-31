//
//  ContentView.swift
//  test_04
//
//  Created by 최욱진 on 8/31/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
        
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
            
        }
    }
    
    func deal(){
        //Randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" +  String(playerCardValue)
        
        //Randomize the cpus card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" +  String(cpuCardValue)
        
        //Update the score
        if playerCardValue > cpuCardValue{
            //add 1 to playerScore
            playerScore += 1
        }
        else if playerCardValue < cpuCardValue{
            //add 1 to cpuScore
            cpuScore += 1
        }
        else{
            //tie
        }
    }
}

#Preview {
    ContentView()
}
