//
//  DetailCircuitView.swift
//  racing
//
//  Created by destanti on 31/07/22.
//

import SwiftUI

struct DetailCircuitView: View {
    
    var racing : Racing
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 10){
                HStack{
                    Image(racing.flagImg!, bundle: .main)
                        .resizable()
                        .frame(width: 80)
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(10)
                    
                    
                    VStack(alignment: .leading, spacing: 10){
                        Text(
                            "\(racing.country?.uppercased() ?? "") \(racing.roundYear ?? "")"
                        ).modifier(FormulaBoldModifier(size: 22))
                        
                        
                        Text("\(racing.circuitName ?? "")")
                            .modifier(FormulaRrgularModifier(size: 14, color: .grayText))
                        
                        
                    }
                }
                
                Image(
                    racing.circuitImg!, bundle: .main)
                .resizable()
                .frame(height: 200).aspectRatio(contentMode: .fit
                )
                
                Spacer()
                
                DetailDescriptionView(firstRow: "Circuit Length",
                                      secondRow: "\(racing.circuitLength ?? "-") KM",
                                      corners: .topRight,
                                      lineCorners: [.top, .trailing],
                                      width: 5.0,
                                      borderColor: .redDefault)
                
                HStack(alignment: .firstTextBaseline, spacing: 10){
                    DetailDescriptionView(firstRow: "No. of laps",
                                          secondRow: "\(racing.noLap ?? 0) ",
                                          corners: .bottomRight)
                    .frame(minWidth: 0,maxWidth: .infinity)
                    
                    DetailDescriptionView(firstRow: "First Grand Prix",
                                          secondRow: "\(racing.firstGrandPrix ?? "-")",
                                          corners: .bottomRight)
                    .frame(minWidth: 0, maxWidth: .infinity)
                }
                
                DetailDescriptionView(firstRow: "Race distance",
                                      secondRow: "\(racing.raceDistance ?? "0") KM",
                                      corners: .bottomRight)
                
                DetailDescriptionView(firstRow: "Lap record",
                                      secondRow: "\(racing.lapRecord ?? "-") KM",
                                      thirdRow: "\(racing.lapRecordName ?? "-") \(racing.yearRecordName ?? "-")",
                                      corners: .bottomRight)
                
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(20)
            .background(Color.grayBackground
                .cornerRadius(10))
        }
    }
}

//struct DetailCircuitView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailCircuitView()
//    }
//}
