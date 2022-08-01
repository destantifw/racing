//
//  UpcomingCell.swift
//  racing
//
//  Created by destanti on 31/07/22.
//

import SwiftUI

struct UpcomingCellView: View {
    var racing : Racing
    
    private var _date: String
    private var _month: String
    
    init(racing: Racing) {
        self.racing = racing
        let _getDate = getDate(startDate: racing.startDate ?? "", endDate: racing.endDate ?? "")
        
        _date = _getDate.date
        _month = _getDate.month
    }
    
    var body: some View {
        GeometryReader { metrics in
            HStack {
                VStack(alignment: .center, spacing: 6){
                    Text("\(_date)")
                        .modifier(FormulaRrgularModifier(size: 15, color: .black))
                    VStack{
                    Text("\(_month)")
                        .lineLimit(1)
                        .minimumScaleFactor(0.6)
                        .cornerRadius(3)
                        .padding(1)
                        .modifier(FormulaBoldModifier(size:15, color: Color.grayText))
                    }
                    .frame(width: metrics.size.width*0.18)
                    .background(Color.grayPampas
                        .cornerRadius(10))
                }.frame(width: metrics.size.width * 0.2)
                
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [4]))
                    .foregroundColor(.gray)
                    .frame(width: 1)
                
                VStack(alignment: .leading, spacing: 4){
                    Spacer()
                    Text("ROUND \(racing.round?.formatted() ?? "")")
                        .modifier(FormulaRrgularModifier(size: 14, color: .redDefault))
                    
                    Text("\(racing.country ?? "")")
                        .modifier(FormulaBoldModifier(size: 17, color: .black))
                    
                    Text("\(racing.datumDescription ?? "")")
                        .modifier(SansSerifModifier(size: 12, color: .gray))
                        .lineLimit(2)
                    
                    Spacer()
                }
                .frame(width: metrics.size.width*0.6)
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.redDefault)
                    .frame(width: metrics.size.width*0.2)
                    .scaledToFill()
            }
        }.frame(height: 100)
            .background(.white)
            .cornerRadius(10)
    }
}
