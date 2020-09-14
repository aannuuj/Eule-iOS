////
////  EmergancyView.swift
////  Eule
////
////  Created by Hariom Palkar on 01/08/20.
////  Copyright © 2020 Hariom Palkar. All rights reserved.
////
//
//import SwiftUI
//import SafariServices
//
//struct SomeView: View {
//    // whether or not to show the Safari ViewController
//    @State var showSafari = false
//    // initial URL string
//    @State var urlString = "https://duckduckgo.com"
//
//    var body: some View {
//        Button(action: {
//            // update the URL if you'd like to
//            self.urlString = "https://duckduckgo.com"
//            // tell the app that we want to show the Safari VC
//            self.showSafari = true
//        }) {
//            Text("Present Safari")
//        }
//        // summon the Safari sheet
//        .sheet(isPresented: $showSafari) {
//            SafariView(url:URL(string: self.urlString)!)
//        }
//    }
//}
//
//
//
//
//
//struct SomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        SomeView()
//    }
//}
