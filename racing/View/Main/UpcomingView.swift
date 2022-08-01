//
//  UpcomingView.swift
//  racing
//
//  Created by destanti on 31/07/22.
//

import SwiftUI

struct UpcomingView: View {
    var viewModel : RacingViewModel
    
    var body: some View {
        List{
            if let racingList = viewModel.racingList {
                ForEach(racingList, id: \.id) { racing in
                    UpcomingCellView(racing: racing)
                        .overlay(
                            NavigationLink("",
                                           destination: RacingDetailView(racing: racing)
                                          )
                            .opacity(0)
                        )
                }
                .listRowSeparator(.hidden)
                .listRowBackground(ListRowBackground())
                
                
            }
        }
        
    }
}

struct ListRowBackground: View {
    var body: some View {
        ZStack {
            Color.grayBackground
            Color.white
                .cornerRadius(8)
                .padding(.vertical, 4)
        }
    }
}
