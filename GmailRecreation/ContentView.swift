//
//  ContentView.swift
//  GmailRecreation
//
//  Created by Liam Horch on 6/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(alignment: .leading) {
                searchBar
                    .padding(.horizontal)
                
                EmailListView()
            }
            
            VStack(alignment: .trailing) {
                
                HStack {
                    Image(systemName: "pencil.circle")
                    Text("Compose")
                }
                .padding()
                .background(.gray)
                .cornerRadius(25)
                .padding()
                
                HStack {
                    Image(systemName: "envelope")
                        .frame(maxWidth: .infinity)
                    Image(systemName: "camera")
                        .frame(maxWidth: .infinity)
                }
                .padding()
            .background(.gray)
            }
            // TODO: Add header and footer
        }
    }
}

extension ContentView {
    var searchBar: some View {
        ZStack {
            Rectangle()
                .cornerRadius(8)
                .frame(height: 55)
                .foregroundColor(.gray)
                
            HStack(alignment: .center) {
                Image(systemName: "line.3.horizontal")
                    .bold()
                
                Text("Search in mail")
                    .padding(.horizontal)
                
                Spacer()
                
                Circle()
                    .frame(width: 40)
            }
            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
