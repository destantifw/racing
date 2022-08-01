//
//  DetailDescriptionView.swift
//  racing
//
//  Created by destanti on 31/07/22.
//

import SwiftUI

struct DetailDescriptionView: View {
    
    var firstRow: String
    var secondRow: String
    var thirdRow: String?
    var corners : UIRectCorner
    var lineCorners : [Edge]?
    var width : CGFloat?
    var borderColor : Color?
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Spacer()
            HStack{
                Text(firstRow)
                    .modifier(FormulaRrgularModifier(size: 16, color: .grayText))
                Spacer()
            }
            
            Text(secondRow)
                .modifier(FormulaBoldModifier(size: 22, color: .black))
            if(thirdRow != nil){
                Text(thirdRow!)
                    .modifier(SansSerifModifier(size: 12, color: .grayText))
            }
            Spacer()
        }.background(Color.grayBackground)
            .border(width: width ?? 2,
                    edges: lineCorners ?? [.trailing, .bottom],
                    color: borderColor ?? .gray,
                    cornerRadius: corners)
    }
}

//    @State var windowSize : CGSize?
//
//    var body: some View{
//        ZStack(alignment: .bottomLeading) {
//            RoundedRectangle(cornerRadius: 10)
//                .fill(.red)
//                .frame(minWidth: 61,
//                       maxWidth: (self.windowSize?.width ?? .infinity) + (width ?? 1),
//                       minHeight: 61,
//                       maxHeight: (self.windowSize?.height ?? .infinity) + (width ?? 1))
//
//            GeometryReader{ (reader: GeometryProxy) in
//                VStack(alignment: .leading, spacing: 5){
//                    Spacer()
//                    HStack{
//                        Text(firstRow)
//                            .modifier(FormulaRrgularModifier(size: 16, color: .grayText))
//                        Spacer()
//                    }
//
//                    Text(secondRow)
//                        .modifier(FormulaBoldModifier(size: 22, color: .black))
//                    if(thirdRow != nil){
//                        Text(thirdRow!)
//                            .modifier(SansSerifModifier(size: 12, color: .grayText))
//                    }
//                    Spacer()
//                }
//                .background(Color.grayBackground)
//                .cornerRadius(10, corners: corners)
//                self.useProxy(reader)
//            }.frame(minWidth: 10,
//                     maxWidth: (self.windowSize?.width ?? .infinity) + (width ?? 1),
//                     minHeight: 61,
//                     maxHeight: (self.windowSize?.height ?? .infinity) + (width ?? 1))
//        }
//    }
//
//    func useProxy(_ geometry: GeometryProxy) -> some View {
//        DispatchQueue.main.async {
//            self.windowSize?.width = geometry.size.width
//            self.windowSize?.height = geometry.size.height
//        }
//
//        return EmptyView()
//    }


