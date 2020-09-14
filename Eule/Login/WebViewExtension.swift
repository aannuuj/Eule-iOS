//
//  WebViewExtension.swift
//  Eule
//
//  Created by Hariom Palkar on 14/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import Foundation
import SafariServices
import SwiftUI

public struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    public func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->
        SFSafariViewController {
            return SFSafariViewController(url: url)
    }
    
    public func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
}

