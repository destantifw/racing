//
//  ViewExtension.swift
//  racing
//
//  Created by destanti on 31/07/22.
//

import SwiftUI
import UIKit

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(
            RoundedCorner(radius: 20, corners: corners)
        )
    }
    
    func border(width: CGFloat, edges: [Edge], color: Color, cornerRadius: UIRectCorner) -> some View {
        
        overlay(EdgeBorder(width: 2, edges: edges)
            .stroke(style: .init(lineWidth: width))
            .foregroundColor(color)
        )
        .zIndex(1)
            .cornerRadius(10, corners: cornerRadius)
            .padding()
        
    }
    
    
}

struct EdgeBorder: Shape {
    
    var width: CGFloat
    var edges: [Edge]
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        for edge in edges {
            var x: CGFloat {
                switch edge {
                case .top, .bottom, .leading: return rect.minX
                case .trailing: return rect.maxX - width
                }
            }
            
            var y: CGFloat {
                switch edge {
                case .top, .leading, .trailing: return rect.minY
                case .bottom: return rect.maxY - width
                }
            }
            
            var w: CGFloat {
                switch edge {
                case .top, .bottom: return rect.width
                case .leading, .trailing: return self.width
                }
            }
            
            var h: CGFloat {
                switch edge {
                case .top, .bottom: return self.width
                case .leading, .trailing: return rect.height
                }
            }
            
            path.addPath(Path(CGRect(x: x, y: y, width: w, height: h)))
        }
        return path
    }
}

extension Shape {
    public func fill<S:ShapeStyle>(
        _ fillContent: S,
        stroke       : StrokeStyle
    ) -> some View {
        ZStack {
            self.fill(fillContent)
            self.stroke(style:stroke)
        }
    }
}
