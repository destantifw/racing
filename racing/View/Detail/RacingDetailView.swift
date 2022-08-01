//
//  RacingDetailView.swift
//  racing
//
//  Created by destanti on 31/07/22.
//

import SwiftUI
import Parchment

struct RacingDetailView: View {
    var racing : Racing
    let items = [
        PagingIndexItem(index: 0, title: "Schedule"),
        PagingIndexItem(index: 1, title: "Media"),
        PagingIndexItem(index: 2, title: "Circuit"),
    ]
    
    var optionColor = PagingOptions.init()
    
    init(racing: Racing) {
        optionColor.backgroundColor = UIColor(Color.redDefault)
        optionColor.selectedBackgroundColor = UIColor(Color.redDefault)
        optionColor.textColor = .white
        optionColor.selectedTextColor = .white
        optionColor.indicatorColor = .white
        optionColor.font = UIFont(name: FontName.sansSerif.rawValue, size: 14) ?? UIFont.systemFont(ofSize: 12)
        optionColor.selectedFont = UIFont(name: FontName.sansSerif.rawValue, size: 14) ?? UIFont.systemFont(ofSize: 12)
        self.racing = racing
    }
    
    var body: some View {
        DefaultPageNav.init(inBody: AnyView(
            PageView (options: optionColor, items: items){ item in
                RacingSlideView(index: item.index, racing: racing)
            }
        ), hideBack: false)
    }
}

struct RacingSlideView: View{
    var index = 0;
    var racing:Racing
    
    var body: some View {
        switch index {
        case 2:
            DetailCircuitView(racing: racing).navigationBarTitle("\(racing.country?.uppercased() ?? "-")")
        default:
            Text("").navigationBarTitle("\(racing.country?.uppercased() ?? "-")")
        }
    }
}

