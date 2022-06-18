// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI


struct Layout_Column: View {
    var body: some View {
        ScrollView(.horizontal) {
            ColumnLayout {
//                Text("Item 1")
//                Text("Item 1")
                ForEach(0 ..< 25) { item in
                    Text("Rod")
                        .frame(maxWidth: 200)
                }
    //            Rectangle()
    //                .foregroundStyle(Color.blue)
            }
        }
        .font(.largeTitle)
    }
}

struct Layout_Column_Previews: PreviewProvider {
    static var previews: some View {
        Layout_Column()
    }
}

struct ColumnLayout: Layout {
    let spacing: CGFloat = 8
    
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        let bounds = CGRect(origin: .zero, size: proposal.replacingUnspecifiedDimensions())
        let (_, width) = buildLayout(in: bounds, subviews: subviews)
        return CGSize(width: width, height: bounds.height)
    }
    
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        let (positions, _) = buildLayout(in: bounds, subviews: subviews)
        
        for (position, subview) in zip(positions, subviews) {
            subview.place(at: position, proposal: .unspecified)
        }
    }
    
    func buildLayout(in bounds: CGRect, subviews: Subviews) -> ([CGPoint], CGFloat) {
        var cursorPosition = CGPoint(x: bounds.minX + spacing, y: bounds.minY)
        var routeLabelPositions: [CGPoint] = []
        
        var columnWidth: CGFloat = 0
        
        for subview in subviews {
            let labelSize = subview.dimensions(in: .infinity)
            columnWidth = max(columnWidth, labelSize.width)
            
            if cursorPosition.y + labelSize.height > bounds.height {
                cursorPosition = CGPoint(x: cursorPosition.x + columnWidth, y: bounds.minY)
                columnWidth = labelSize.width
            }
            
            routeLabelPositions.append(cursorPosition)
            cursorPosition.y += labelSize.height + spacing
        }
        
        return (routeLabelPositions, cursorPosition.x + columnWidth + spacing)
    }
}
