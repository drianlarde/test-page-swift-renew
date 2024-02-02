//
//  GilroyFontsView.swift
//  test-page-swift
//
//  Created by Adrian on 2/1/24.
//

import Foundation
import SwiftUI

enum GilroyFontStyle: String {
    case black = "Gilroy-Black"
    case blackItalic = "Gilroy-BlackItalic"
    case bold = "Gilroy-Bold"
    case boldItalic = "Gilroy-BoldItalic"
    case extraBold = "Gilroy-ExtraBold"
    case extraBoldItalic = "Gilroy-ExtraBoldItalic"
    case heavy = "Gilroy-Heavy"
    case heavyItalic = "Gilroy-HeavyItalic"
    case light = "Gilroy-Light"
    case lightItalic = "Gilroy-LightItalic"
    case medium = "Gilroy-Medium"
    case mediumItalic = "Gilroy-MediumItalic"
    case regular = "Gilroy-Regular"
    case regularItalic = "Gilroy-RegularItalic"
    case semiBold = "Gilroy-SemiBold"
    case semiBoldItalic = "Gilroy-SemiBoldItalic"
    case thin = "Gilroy-Thin"
    case thinItalic = "Gilroy-ThinItalic"
    case ultraLight = "Gilroy-UltraLight"
    case ultraLightItalic = "Gilroy-UltraLightItalic"
}

struct CustomFontModifier: ViewModifier {
    var name: String
    var size: CGFloat

    func body(content: Content) -> some View {
        content.font(.custom(name, size: size))
    }
}

extension View {
    func gilroyFont(_ style: GilroyFontStyle, size: CGFloat) -> some View {
        self.modifier(CustomFontModifier(name: style.rawValue, size: size))
    }
}
