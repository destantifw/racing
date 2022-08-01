//
//  TabItemData.swift
//  racing
//
//  Created by destanti on 31/07/22.
//

import Foundation

struct TabItemData: Equatable {
    let image: String
    let selectedImage: String
    let title: String
}


enum Tab {
    case latest
    case video
    case racing
    case standings
    case more
}

extension Tab {
    func value() -> TabItemData{
        switch self{
        case .latest:
            return TabItemData(image: "ic_latest",selectedImage: "ic_latest_selected", title: "Latest")
        case .video:
            return TabItemData(image: "ic_video",selectedImage: "ic_video_selected", title: "Video")
        case .racing:
            return  TabItemData(image: "ic_racing",selectedImage: "ic_racing_selected", title: "Racing")
        case .standings:
            return  TabItemData(image: "ic_standings",selectedImage: "ic_standings_selected", title: "Standings")
        case .more:
            return  TabItemData(image: "ic_more", selectedImage: "ic_more_selected",title: "More")
        }
    }
}
