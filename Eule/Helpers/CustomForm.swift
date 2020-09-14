//
//  CustomForm.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import Foundation
import SwiftUI

extension CGSize {
    public static var IconSize: CGSize {
        .init(width: 36, height: 36)
    }
    
    public static var SelectorIconSize: CGSize {
        .init(width: 28, height: 28)
    }
}

public struct CustomForm<Content: View>: View {
    public let content: Content
    
    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    public var body: some View {
        VStack {
            content
        }
    }
}

public struct CustomSection<Parent: View, Footer: View, Content: View>: View {
    private let header: Parent
    private let footer: Footer
    private let content: Content
    
    public init(
        header: Parent,
        footer: Footer,
        @ViewBuilder content: () -> Content
    ) {
        self.header = header
        self.footer = footer
        self.content = content()
    }
    
    public var body: some View {
        VStack {
            HStack {
                header
                Spacer()
            }
            content
            HStack {
                footer
                Spacer()
            }
        }
    }
}

extension CustomSection where Footer == EmptyView {
    public init(
        header: Parent,
        @ViewBuilder content: () -> Content
    ) {
        self.init(header: header, footer: EmptyView(), content: content)
    }
}
