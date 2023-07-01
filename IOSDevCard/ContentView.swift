//
//  ContentView.swift
//  IOSDevCard
//
//  Created by Murat Minaz on 30.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.95, green: 0.77, blue: 0.06, alpha: 1.00)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("murat")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 3)
                    )
                Text("Murat Minaz")
                    .font(Font.custom("Lobster-Regular", size: 40))
                    .bold()
                .foregroundColor(.white)
                Text("iOS Developer")
                    .bold()
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Divider()
                infoView(imageName: "phone.fill", text: "+90 123 456 78 90")
                infoView(imageName: "envelope.fill", text: "muratmnz@test.com")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct infoView: View {
    
    let imageName : String
    let text : String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color(.white))
            .frame(height: 40)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(.green)
                Text(text).foregroundColor(.black)
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
