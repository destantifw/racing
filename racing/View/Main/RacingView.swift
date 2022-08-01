//
//  RacingView.swift
//  racing
//
//  Created by destanti on 31/07/22.
//

import SwiftUI
import Parchment

struct RacingView: View {
    
    @State var tabIndex = 0
    var viewModel = RacingViewModel.init()
    
   let items = [
        PagingIndexItem(index: 0, title: "Upcoming"),
        PagingIndexItem(index: 1, title: "Past"),
    ]
    var optionColor = PagingOptions.init()
    
    init() {
        optionColor.backgroundColor = UIColor(Color.redDefault)
        optionColor.selectedBackgroundColor = UIColor(Color.redDefault)
        optionColor.textColor = .white
        optionColor.selectedTextColor = .white
        optionColor.indicatorColor = .white
        optionColor.font = UIFont(name: FontName.sansSerif.rawValue, size: 14) ?? UIFont.systemFont(ofSize: 12)
        optionColor.selectedFont = UIFont(name: FontName.sansSerif.rawValue, size: 14) ?? UIFont.systemFont(ofSize: 12)
    }
    
    var body: some View {
        PageView(options: optionColor, items: items) { item in
               UpcomingView(viewModel: viewModel)
           }
       }
}

struct RacingView_Previews: PreviewProvider {
    static var previews: some View {
        RacingView()
    }
}
