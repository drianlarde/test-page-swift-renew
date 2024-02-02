import SwiftUI

// Define the structure for each card item
struct CardItem {
    let title: String
    let category: String
    let badges: [Badge]
    let imageName: String? // Optional: Used if specifying image backgrounds
    let action: () -> Void // Action to perform on tap
}

// Define the structure for the badge on a card
struct Badge {
    let text: String?
    let iconName: String?
    let position: BadgePosition
}

// Enumerate the possible positions for a badge
enum BadgePosition {
    case upperLeft, upperRight
}

// Define a structure to encapsulate each row's data
struct SliderRow {
    let items: [CardItem]
}

// Define the main view for displaying the cards slider
struct CardsSliderView: View {
    let sliderTitle: String
    let rows: [SliderRow]
    let size: String // Accepts "sm" or "lg"
    
    // Define a callback or action for when 'See All' is tapped
    var seeAllAction: () -> Void = {}
    
    // Calculate card size based on the specified size
    private var cardSize: CGSize {
        switch size {
        case "2xl":
            return CGSize(width: 300, height: 180)
        case "xl":
            return CGSize(width: 200, height: 140)
        case "lg":
            return CGSize(width: 140, height: 140)
        default:
            return CGSize(width: 140, height: 90)
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
                
            HStack {
                Text(sliderTitle)
                    .font(.custom("Gilroy-Bold", size: 22))
                    .foregroundColor(Color(hex: "3A3A3B"))
                
                Spacer() // Pushes the title and button to opposite sides
                
                // 'See All' Button
                Button(action: seeAllAction) {
                    Text("See All")
                        .font(.custom("Gilroy-Medium", size: 14))
                        .foregroundColor(Color(hex: "F07E58"))
                }
            }
            .padding(.horizontal, 25)
            
            ForEach(rows.indices, id: \.self) { rowIndex in
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        ForEach(0..<rows[rowIndex].items.count, id: \.self) { itemIndex in
                            cardView(for: rows[rowIndex].items[itemIndex])
                                .padding(.leading, itemIndex == 0 ? 25 : 0) // Add left padding to the first item
                                .padding(.trailing, itemIndex == rows[rowIndex].items.count - 1 ? 25 : 0) // Add right padding to the last item
                        }
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    private func cardView(for item: CardItem) -> some View {
        VStack(alignment: .leading, spacing: 5) {
            ZStack(alignment: .top) {
                cardBackground(for: item)
                    .frame(width: cardSize.width, height: cardSize.height)
                    .cornerRadius(10)
                
                HStack {
                    if hasBadge(in: .upperLeft, for: item.badges) {
                        badgeView(badge: item.badges.first(where: { $0.position == .upperLeft })!)
                    }
                    Spacer()
                    if hasBadge(in: .upperRight, for: item.badges) {
                        badgeView(badge: item.badges.first(where: { $0.position == .upperRight })!)
                    }
                }
                .padding(.horizontal, 10)
                .padding(.top, 10)
            }
            .frame(width: cardSize.width, height: cardSize.height)
            .cornerRadius(10)
            
            Text(item.title)
                .font(.custom("Gilroy-Bold", size: 14))
                .lineLimit(1)
                .truncationMode(.tail)
            
            Text(item.category)
                .font(.custom("Gilroy-Regular", size: 12))
        }
        .frame(width: cardSize.width)
        .onTapGesture {
            item.action() // Call the action when the card is tapped
        }
    }

    private func hasBadge(in position: BadgePosition, for badges: [Badge]) -> Bool {
        badges.contains(where: { $0.position == position })
    }

    @ViewBuilder
    private func cardBackground(for item: CardItem) -> some View {
        GeometryReader { geometry in
            if let imageName = item.imageName, !imageName.isEmpty {
                Image(imageName)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .brightness(-0.10) // Adjust brightness
                    .contrast(1)
            } else {
                Color(hex: "004A5A") // Fallback color if no image is provided
            }
        }
    }


    @ViewBuilder
    private func badgeView(badge: Badge) -> some View {
        if let text = badge.text {
            Text(text)
                .font(.custom("Gilroy-Medium", size: 12))
                .padding(.vertical, 5)
                .padding(.horizontal, 10) // Adjust padding to make the badge smaller
                .background(.ultraThinMaterial.opacity(0.8))
                .foregroundColor(Color.white)
                .cornerRadius(50) // Adjust cornerRadius to make the badge circular
                .frame(height: 24) // Ensures the height matches the icon badge
        } else if let iconName = badge.iconName {
            Image(systemName: iconName)
                .font(.system(size: 12))
                .padding(5) // Reduce padding to decrease overall size
                .background(.ultraThinMaterial.opacity(0.8))
                .foregroundColor(Color.white)
                .frame(width: 24, height: 24) // Explicitly set the frame to match the text badge
                .cornerRadius(12) // Adjust to maintain circular shape
        }
    }

}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
