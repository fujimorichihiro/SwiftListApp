//
//  ContentView.swift
//  swiftUiList
//
//  Created by 藤森千裕 on 2021/02/17.
//

import SwiftUI

struct Player: Identifiable {
    var id: Int
    let name: String
    let image: Image
}

struct ContentView: View {
    
    let players: [[Player]] = [
        [
            .init(id: 0, name: "James", image: Image("james")),
            .init(id: 1, name: "Stephen", image: Image("stephen")),
            .init(id: 2, name: "Lebron", image: Image("lebron"))
        ],
        
        [.init(id: 0, name: "James", image: Image("james")),
        .init(id: 1, name: "Stephen", image: Image("stephen")),
        .init(id: 2, name: "Lebron", image: Image("lebron"))
        ],
        
        [.init(id: 0, name: "James", image: Image("james")),
        .init(id: 1, name: "Stephen", image: Image("stephen")),
        .init(id: 2, name: "Lebron", image: Image("lebron"))
        ]
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(players.startIndex...(players.endIndex - 1), id: \.self) {
                    section in
                    Section(header: Text("1990s")) {
                        ForEach(self.players[section]) { player in
                            HStack {
                                player.image
                                    .resizable()
                                    .scaledToFill()
                                    .clipShape(Circle())
                                    .frame(width: 50, height: 50)
                                Text(player.name)
                                    .foregroundColor(.black)
                                    .padding(.leading, 20)
                            }
                        }
                    }
                }
            }.navigationBarTitle(Text("NBA Player"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
