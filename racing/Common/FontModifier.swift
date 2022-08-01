//
//  FontExtension.swift
//  racing
//
//  Created by destanti on 31/07/22.
//

import SwiftUI

struct FormulaBoldModifier: ViewModifier {
    var size:CGFloat?
    var color: Color?
    func body(content: Content) -> some View {
        content
            .font(.custom(FontName.formulaBold.rawValue, size: size ?? 18))
            .foregroundColor(color ?? .black)
    }
}

struct FormulaRrgularModifier: ViewModifier {
    var size:CGFloat?
    var color: Color?
    func body(content: Content) -> some View {
        content
            .font(.custom(FontName.formulaRegular.rawValue, size: size ?? 18))
            .foregroundColor(color ?? .black)
    }
}

struct SansSerifModifier: ViewModifier {
    var size:CGFloat?
    var color: Color?
    func body(content: Content) -> some View {
        content
            .font(.custom(FontName.sansSerif.rawValue, size: size ?? 12))
            .foregroundColor(color ?? .black)
    }
}

enum FontName: String {
    case formulaBold = "Formula1-Display-Bold"
    case formulaRegular = "Formula1-Display-Regular"
    case formulaWide = "Formula1-Display-Wide"
    case sansSerif = "Sans Serif"
}
