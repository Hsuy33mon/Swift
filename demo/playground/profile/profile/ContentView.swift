//
//  ContentView.swift
//  profile
//
//  Created by Hannah on 2/5/2567 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Image("background").resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                Spacer()
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                    Image("1F945C59-C272-449B-B20C-59C7582DD8BA_1_201_a").resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 180,height: 180,alignment: .top)
                        .shadow(color: .pink ,radius: 10,x:5,y: 5)
                    Text("KoKo & Thel''")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .font(.system(.largeTitle))
                    Text("2nd Anniversary")
                        .foregroundColor(.white)
                        .font(.system(.body))
                    HStack(spacing: 30) {
                        Image(systemName: "heart.circle").resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "network").resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "message.circle").resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "phone.circle").resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    }
                    .frame(width: 250,height: 70,alignment: .center)
                    .foregroundColor(.white)
                    .shadow(color: .pink,radius: 5,x:5,y:8)
                }
                Spacer()
                VStack(alignment: .center,spacing:30){
                    RoundedRectangle(cornerRadius: 100)
                        .frame(width: 250,height: 50,alignment: .center)
                        .foregroundColor(.white)
                        .shadow(color:.pink, radius: 5,x:8,y:8)
                        .overlay(
                            Text("Follow").font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(.pink)
                        )
                    HStack(alignment: .center,spacing: 60){
                        VStack{
                            Text("1775")
                                .foregroundColor(.pink)
                                .font(.title)
                            Text("Appreciations")
                                .font(.caption)
                                .shadow(color: .gray,radius: 5,y:8)
                        }
                        VStack{
                            Text("800")
                                .foregroundColor(.pink)
                                .font(.title)
                            Text("Followers")
                                .font(.caption)
                                .shadow(color: .gray,radius: 5,y:8)
                        }
                        VStack{
                            Text("177")
                                .foregroundColor(.pink)
                                .font(.title)
                            Text("Following")
                                .font(.caption)
                                .shadow(color: .gray,radius: 5,y:8)
                        }
                    }
                    Text("About Us")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("We have been together for 2 years now.We have faced lots of fun time and hard time together. We are trying to get perfect future together.")
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
