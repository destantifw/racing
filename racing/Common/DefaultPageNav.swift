//
//  RootView.swift
//  racing
//
//  Created by destanti on 01/08/22.
//

import SwiftUI

struct DefaultPageNav : View {
    var inBody: AnyView
    var hideBack : Bool
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    init(inBody: AnyView, hideBack: Bool?){
        UINavigationBar.appearance().barTintColor = .white
        UINavigationBar.appearance().backgroundColor = UIColor(Color.redDefault)
        UINavigationBar.appearance().titleTextAttributes = [
            .foregroundColor: UIColor(Color.white),
            .font : UIFont(name: FontName.formulaBold.rawValue, size: 14) ?? UIFont.systemFont(ofSize: 14)
        ]
        self.inBody = inBody
        self.hideBack = hideBack ?? true
    }
    
    
    var body: some View{
        inBody
            .navigationViewStyle(.stack)
            .navigationBarTitle(" ", displayMode: .inline)
            .navigationViewStyle(.stack)
            .accentColor(Color.redDefault)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: Text("Add Event")) {
                        Image("ic_add_event", bundle: .main)
                            .font(.title)
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    if (!hideBack){
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            HStack {
                                Image(systemName: "chevron.left")
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
            }
            .overlay(alignment: .top, content: {
                Color.redDefault
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 0)
            })
            .navigationBarBackButtonHidden(true)
        
    }
}
