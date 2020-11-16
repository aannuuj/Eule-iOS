//
//  ContentView.swift
//  Eule
//
//  Created by Hariom Palkar on 01/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    
@State var showWebView = false
    var body: some View {
        NavigationView{
            ZStack{
                Color.EuleBackground.edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading){
                    ZStack(alignment: .topLeading){
                        ScrollView(showsIndicators: false) {
                            VStack(alignment: .leading){
                       Spacer()
                        .frame(height: 20)
                                CardsView()
                                VStack(alignment: .leading, spacing: 10){
                                    
                                    HStack{
                                        Text("Bulletin")
                                            .font(.EuleTitle)
                                            .foregroundColor(.gray)
                                        Spacer()
                                    }
                                    VStack(alignment: .leading){
                                        Button(action: {
                                            self.showWebView.toggle()
                                        }) {
                                            BloodView()
                                        } .sheet(isPresented: $showWebView, content: {
                                            SafariView(url: URL(string: "https://eule.in/")!) })
                                        Button(action: {
                                            self.showWebView.toggle()
                                        }) {
                                            AssistanceView()
                                        } .sheet(isPresented: $showWebView, content: {
                                            SafariView(url: URL(string: "https://www.eule.in/")!) });
                                    }
                                    .background(Color.white)
                                    .frame(width: 400, height: 100)
                                    .cornerRadius(15)
                                }
                                .padding(.all, 10)
                                RemindersView()
                                GoalsView()
                            }
                        }.padding(.top)
                            .padding(.leading)
                            .padding(.trailing)
                        // make this in a line
                    }
                }            }
            .navigationBarColor(.EuleBackground)
                .navigationBarItems(leading: HomeLeftView(),trailing: HomeRightView())
                .navigationBarTitle("",displayMode: .inline)
           
            .onAppear(perform: {
                print("userid  is \(Auth.auth().currentUser?.uid ?? "")")
                
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
