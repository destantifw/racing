//
//  ContentView.swift
//  racing
//
//  Created by destanti on 31/07/22.
//

import SwiftUI
//
//
struct ContentView: View {
    
    @State var selectedTabIndex = 0
    
    private let tabBarItems : [Tab] = [
        Tab.latest,
        Tab.video,
        Tab.racing,
        Tab.standings,
        Tab.more,
    ]
    
    init() {
        UITabBar.appearance().barTintColor = UIColor(Color.white)
    }
    
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 0) {
                switch selectedTabIndex {
                case 2:
                    RacingView()
                default:
                    DummyView().frame(height: proxy.size.height * 0.90)
                }
                
                Divider()
                HStack (spacing: 0){
                    ForEach(0..<tabBarItems.count, id: \.self) { num in
                        Button(action: {
                            self.selectedTabIndex = num
                        }, label: {
                            VStack{
                                Image(selectedTabIndex == num ? tabBarItems[num].value().selectedImage : tabBarItems[num].value().image , bundle: .main)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: proxy.size.height * 0.045)
                                Text(tabBarItems[num].value().title)
                                    .modifier( SansSerifModifier(size: 12, color: selectedTabIndex == num ? Color.redDefault : Color.black))
                            }
                        })
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .font(.system(size: 12, weight: .semibold))
                    }
                }.frame(height: proxy.size.height * 0.1)
            }
        }.navigationBarTitle("RACING")
        
    }
}

struct DummyView: View {
    
    var body: some View {
        Text("Page")
    }
}
