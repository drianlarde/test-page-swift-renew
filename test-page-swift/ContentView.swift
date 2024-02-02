import SwiftUI

struct ContentView: View {
    let categories = ["All", "Happiness", "Confidence", "Relax"]
    
    @State private var activeCategory = "All" // Default active category
    
    @State private var activeTab = "Home"
    
    let livingInBalanceCardItems: [CardItem] = [
        CardItem(
            title: "Awakening Life Balance",
            category: "Balance",
            badges: [
                Badge(text: "New", iconName: nil, position: .upperRight)
            ],
            imageName: "beach-image-card",
            action: {
                // What to do when the card is tapped
                print("Card tapped")
            }
        ),
        CardItem(
            title: "Balanced Living",
            category: "Happiness",
            badges: [
                Badge(text: "Exclusive", iconName: nil, position: .upperRight)
            ],
            imageName: "mountains-image-card",
            action: {
                // What to do when the card is tapped
                print("Card tapped")
            }
        ),
        CardItem(
            title: "Designing Adaptive Layouts",
            category: "Workshop",
            badges: [ // Assume both badges, for demonstration
                Badge(text: "Updated", iconName: nil, position: .upperLeft),
                Badge(text: nil, iconName: "star.fill", position: .upperRight)
            ],
            imageName: "beach-image-card",
            action: {
                // What to do when the card is tapped
                print("Card tapped")
            }
        )
    ]
    
    let meditationsCardItems: [CardItem] = [
        CardItem(
            title: "Awakening Life Balance",
            category: "Relaxation",
            badges: [
                Badge(text: nil, iconName: "lock", position: .upperLeft),
                Badge(text: "Featured", iconName: nil, position: .upperRight)
            ],
            imageName: "radio-image-card",
            action: {
                // What to do when the card is tapped
                print("Card tapped")
            }
        ),
        CardItem(
            title: "Awakening Life Balance",
            category: "Balance",
            badges: [
            ],
            imageName: "book-hs-image-card",
            action: {
                // What to do when the card is tapped
                print("Card tapped")
            }
        ),
        CardItem(
            title: "Designing Adaptive Layouts",
            category: "Workshop",
            badges: [ // Assume both badges, for demonstration
                Badge(text: nil, iconName: "heart.fill", position: .upperLeft),
                Badge(text: "Updated", iconName: nil, position: .upperRight),
            ],
            imageName: "cube-off-image-card",
            action: {
                // What to do when the card is tapped
                print("Card tapped")
            }
        )
    ]
    
    let bedtimeStoriesRow1 = [
        CardItem(title: "Moonlight Adventure", category: "Adventure", badges: [Badge(text: nil, iconName: "lock", position: .upperLeft)], imageName: "campaign-1-image-card",
                 action: {
                     // What to do when the card is tapped
                     print("Card tapped")
                 }),
        
        CardItem(title: "The Sleepy Forest", category: "Fantasy", badges: [Badge(text: nil, iconName: "heart.fill", position: .upperLeft), Badge(text: "New", iconName: nil, position: .upperRight)], imageName: "campaign-2-image-card",
                 action: {
                     // What to do when the card is tapped
                     print("Card tapped")
                 }),
        
        CardItem(title: "The Land of Nod", category: "Relaxation", badges: [Badge(text: "Calming", iconName: nil, position: .upperRight)], imageName: "campaign-3-image-card",
                 action: {
                     // What to do when the card is tapped
                     print("Card tapped")
                 }),
        
        CardItem(title: "The Curious Adventures of Dreamy", category: "Adventure", badges: [Badge(text: "Popular", iconName: nil, position: .upperLeft)], imageName: "campaign-3-image-card",
                 action: {
                     // What to do when the card is tapped
                     print("Card tapped")
                 }),
        
        CardItem(title: "Ocean Whispers: Tales of the Sea", category: "Nature", badges: [], imageName: "campaign-1-image-card",
                 action: {
                     // What to do when the card is tapped
                     print("Card tapped")
                 })
    ]

    let bedtimeStoriesRow2 = [
        CardItem(title: "Starry Night", category: "Science", badges: [Badge(text: nil, iconName: "heart.fill", position: .upperLeft), Badge(text: "New", iconName: nil, position: .upperRight)], imageName: "campaign-2-image-card",
                 action: {
                     // What to do when the card is tapped
                     print("Card tapped")
                 }),
        
        CardItem(title: "Dreamland Journey", category: "Mystery", badges: [Badge(text: nil, iconName: "lock", position: .upperLeft)], imageName: "campaign-3-image-card",
                 action: {
                     // What to do when the card is tapped
                     print("Card tapped")
                 }),
        
        CardItem(title: "The Secret Garden of Dreams", category: "Fantasy", badges: [Badge(text: "New", iconName: nil, position: .upperRight)], imageName: "campaign-1-image-card",
                 action: {
                     // What to do when the card is tapped
                     print("Card tapped")
                 }),
        
        CardItem(title: "The Journey to the Moon: A Space Adventure", category: "Science Fiction", badges: [], imageName: "campaign-1-image-card",
                 action: {
                     // What to do when the card is tapped
                     print("Card tapped")
                 }),
        
        CardItem(title: "The Enchanted Forest of Lullabies", category: "Music", badges: [Badge(text: "Musical", iconName: "music.note", position: .upperLeft)], imageName: "campaign-2-image-card",
                 action: {
                     // What to do when the card is tapped
                     print("Card tapped")
                 })
    ]
    
    let affirmationsCardItems: [CardItem] = [
        CardItem(
            title: "Balanced Living",
            category: "Relaxation",
            badges: [
            ],
            imageName: "forest-image-card",
            action: {
                // What to do when the card is tapped
                print("Card tapped")
            }
        ),
        CardItem(
            title: "Awakening Life Balance",
            category: "Balance",
            badges: [
                Badge(text: nil, iconName: "heart.fill", position: .upperLeft),
                Badge(text: "Exclusive", iconName: nil, position: .upperRight),
            ],
            imageName: "desert-image-card",
            action: {
                // What to do when the card is tapped
                print("Card tapped")
            }
        ),
        CardItem(
            title: "Balanced Living",
            category: "Happiness",
            badges: [
                Badge(text: "Exclusive", iconName: nil, position: .upperRight)
            ],
            imageName: "mountains-image-card",
            action: {
                // What to do when the card is tapped
                print("Card tapped")
            }
        ),
    ]
    
    let boostConfidenceCardItems: [CardItem] = [
        CardItem(
            title: "Awakening Life Balance",
            category: "Happiness",
            badges: [
                Badge(text: nil, iconName: "lock", position: .upperLeft),
                Badge(text: "Featured", iconName: nil, position: .upperRight),
            ],
            imageName: "ocean-boat-image-card",
            action: {
                // What to do when the card is tapped
                print("Card tapped")
            }
        ),
        CardItem(
            title: "Awakening Life Balance",
            category: "Balance",
            badges: [
                Badge(text: nil, iconName: "heart.fill", position: .upperLeft),
            ],
            imageName: "man-looking-through-window-image-card",
            action: {
                // What to do when the card is tapped
                print("Card tapped")
            }
        ),
    ]

    var body: some View {
        VStack(spacing: 0){
            ScrollView() {
                
                // Top Drawer
                VStack {
                    VStack(spacing: 15) {
                        HStack {
                            
                            Image("renewme-logo")
                            Spacer()
                            
                            Button(action: {
                                // Handle button action here
                            }) {
                                Image("music-icon") // Using a system icon for demonstration
                                    .resizable()
                                    .scaledToFit() // Scale the image proportionally
                                    .frame(width: 16, height: 16)
                                    .padding(12)
                                    .background(Color(hex: "F0F2F5"))
                                    .foregroundColor(Color(hex: "213559"))
                                    .clipShape(Circle())
                            }
                        }
                        
                        
                        HStack {
                            Text("Explore").gilroyFont(.bold, size: 24).foregroundColor(Color(hex: "3A3A3B"))
                            Spacer()
                        }
                    }
                    .padding(.horizontal, 25)
                    .padding(.top, 25)
                    .padding(.bottom, 10)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 6) {
                            // Dynamic "Liked" circular button
                            Button(action: {
                                // Set "Liked" as the active category
                                self.activeCategory = "Liked"
                            }) {
                                Image(self.activeCategory == "Liked" ? "heart-icon-selected" : "heart-icon") // Use heart icon
                                    .padding(10)
                                    .background(self.activeCategory == "Liked" ? Color(hex: "01C0C5") : Color(hex: "F0F2F5"))
                                    .overlay(
                                        Circle().stroke(self.activeCategory == "Liked" ? Color.clear : Color(hex: "4D5D71").opacity(0.1), lineWidth: 3)
                                    )
                                    .clipShape(Circle())
                            }
                            
                            // ForEach for other categories
                            ForEach(categories, id: \.self) { category in
                                Button(action: {
                                    // Update active category
                                    self.activeCategory = category
                                }) {
                                    Text(category)
                                        .padding(.horizontal, 15)
                                        .padding(.vertical, 10)
                                        .foregroundColor(self.activeCategory == category ? .white : Color(hex: "213559"))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(Color(hex: self.activeCategory == category ? "01C0C5" : "4D5D71").opacity(self.activeCategory == category ? 0 : 0.1), lineWidth: 3)
                                        )
                                        .gilroyFont(.medium, size: 16)
                                }
                                .background(self.activeCategory == category ? Color(hex: "01C0C5") : Color(hex: "F0F2F5"))
                                .cornerRadius(20)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .padding(.bottom, 20)
                    
                }
                .background(.white)
                .clipShape(
                    .rect(
                        bottomLeadingRadius: 30,
                        bottomTrailingRadius: 30
                    )
                )
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 5, y: 0)
                
                // ---
                
                // For you: Hero
                HStack(alignment: .top) {
                    VStack() {
                        Text("For you").gilroyFont(.bold, size: 22).frame(maxWidth: .infinity, alignment: .leading).foregroundColor(Color(hex: "3A3A3B"))
                        Text("Recommended Meditation").gilroyFont(.regular, size: 12).frame(maxWidth: .infinity, alignment: .leading).foregroundColor(.gray)
                    }
                    
                    Button(action: {
                        // Handle button action here
                    }) {
                        Text("See This Week's Talks")
                            .gilroyFont(.bold, size: 14)
                            .foregroundColor(Color(hex: "F07E58"))
                    }
                }
                .padding(.horizontal, 25)
                .padding(.top, 10)
                .padding(.bottom, 5)
                
                VStack() {
                    VStack() {
                        Text("Daily PepTalk").gilroyFont(.bold, size: 22).frame(maxWidth: .infinity, alignment: .leading)
                        Text("Apr 21 - Balance your life").gilroyFont(.medium, size: 12).frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer(minLength: 20)
                        
                        HStack() {
                            Spacer()
                            Button(action: {
                                // Handle button action here
                            }) {
                                HStack {
                                    Image("podcast-icon")  // Use the PNG image from assets
                                        .renderingMode(.original)  // Preserve original image colors
                                    Text("Let's Motivate!")
                                        .gilroyFont(.bold, size: 14)
                                }
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                                .background(Color.white.opacity(0.3))
                                .cornerRadius(100)
                            }

                        }
                    }
                    .padding(20)
                    .background(
                        Image("vector-mountains-blue-image-card")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    )
                    .cornerRadius(10)
                    .foregroundColor(Color.white)
                    
                    
                    
                    
                }
                .padding(.horizontal, 25)
                
                // ---
                
                // Living in Balance
                
                CardsSliderView(
                    sliderTitle: "Living in Balance",
                    rows: [SliderRow(items: livingInBalanceCardItems)],
                    size: "lg" // Or "sm" for smaller cards
                )
                .padding(.vertical) // Add vertical padding if needed
                
                
                // ---
                
                // Meditations
                
                CardsSliderView(
                    sliderTitle: "Meditations",
                    rows: [SliderRow(items: meditationsCardItems)],
                    size: "sm" // Or "sm" for smaller cards
                )
                .padding(.vertical) // Add vertical padding if needed
                
                // ---
                
                // Explore Premium Features
                
                Button(action: {
                    // Handle button action here
                }) {
                    ZStack {
                        HStack {
                            // Placeholder for left alignment in ZStack
                            Circle()
                                .stroke(Color.clear, lineWidth: 0)
                                .frame(width: 30, height: 30) // Match the size of the circle around the star for alignment
                            
                            Spacer()
                        }
                        
                        // Button text centered
                        Text("Explore Premium Features")
                            .gilroyFont(.bold, size: 14)
                            .foregroundColor(.white)
                        
                        HStack {
                            // Circle with smaller star icon aligned to the left
                            Image(systemName: "star")
                                .padding(6) // Smaller padding for a smaller icon
                                .background(Color.white.opacity(0.24)) // Circle color
                                .clipShape(Circle())
                                .foregroundColor(Color.white) // Icon color
                                .frame(width: 30, height: 30) // Ensure this matches the placeholder circle's size for alignment
                            
                            Spacer()
                        }
                    }
                    .padding(10) // Padding inside the button
                    .frame(maxWidth: .infinity) // Stretch out the button
                    .background(Color(hex: "01C0C5"))
                    .cornerRadius(100)
                    .overlay(
                        RoundedRectangle(cornerRadius: 100)
                            .stroke(Color(hex: "979797").opacity(0.2), lineWidth: 6)
                    )
                }
                .padding(.horizontal, 25) // Padding outside the button
                
                // ---
                
                // Bedtime Stories
                
                CardsSliderView(
                    sliderTitle: "Bedtime Stories",
                    rows: [
                        SliderRow(items: bedtimeStoriesRow1),
                        SliderRow(items: bedtimeStoriesRow2)
                    ],
                    size: "lg"
                )
                .padding(.vertical)
                
                // ---
                
                // Affirmations
                
                CardsSliderView(
                    sliderTitle: "Affirmations",
                    rows: [SliderRow(items: affirmationsCardItems)],
                    size: "sm" // Or "sm" for smaller cards
                )
                .padding(.vertical) // Add vertical padding if needed
                
                // ---
                
                // Boost Confidence
                
                CardsSliderView(
                    sliderTitle: "Boost Confidence",
                    rows: [SliderRow(items: boostConfidenceCardItems)],
                    size: "2xl" // Or "2xl" for 2x extra large cards
                )
                .padding(.vertical) // Add vertical padding if needed
                
                // ---
                
                // Spotlights
                
                // New Section Title and See All Button
                HStack {
                    Text("Spotlights")
                        .font(.custom("Gilroy-Bold", size: 22))
                        .foregroundColor(Color(hex: "3A3A3B"))
                    
                    Spacer()
                    
                    Button(action: {
                        // Action for See All
                    }) {
                        Text("See All")
                            .font(.custom("Gilroy-Medium", size: 14))
                            .foregroundColor(Color(hex: "F07E58"))
                    }
                }
                .padding(.horizontal, 25)
                
                // Circles with Icons and Text
                // Circles with Icons and Text
                HStack(spacing: 20) { // Adjust spacing as needed
                    Button(action: {
                        // Action for Mind button
                    }) {
                        VStack {
                            Circle()
                                .fill(Color(hex: "9AC17E"))
                                .frame(width: 70, height: 70) // Adjust size as needed
                                .overlay(
                                    Image("spotlights-mind") // Use the image from your assets
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 34, height: 34)
                                )
                            Text("Mind")
                                .font(.custom("Gilroy-Regular", size: 12))
                                .foregroundColor(Color(hex: "3A3A3B"))
                        }
                    }
                    
                    Button(action: {
                        // Action for Body button
                    }) {
                        VStack {
                            Circle()
                                .fill(Color(hex: "01C0C5"))
                                .frame(width: 70, height: 70)
                                .overlay(
                                    Image("spotlights-body") // Use the image from your assets
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 34, height: 34)
                                )
                            Text("Body")
                                .font(.custom("Gilroy-Regular", size: 12))
                                .foregroundColor(Color(hex: "3A3A3B"))
                        }
                    }
                    
                    Button(action: {
                        // Action for Soul button
                    }) {
                        VStack {
                            Circle()
                                .fill(Color(hex: "F9916B"))
                                .frame(width: 70, height: 70)
                                .overlay(
                                    Image("spotlights-soul") // Use the image from your assets
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 34, height: 34)
                                )
                            Text("Soul")
                                .font(.custom("Gilroy-Regular", size: 12))
                                .foregroundColor(Color(hex: "3A3A3B"))
                        }
                    }
                    
                    Button(action: {
                        // Action for Success button
                    }) {
                        VStack {
                            Circle()
                                .fill(Color(hex: "B48DB3"))
                                .frame(width: 70, height: 70)
                                .overlay(
                                    Image("spotlights-success") // Use the image from your assets
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 34, height: 34)
                                )
                            Text("Success")
                                .font(.custom("Gilroy-Regular", size: 12))
                                .foregroundColor(Color(hex: "3A3A3B"))
                        }
                    }
                }
                .padding(.horizontal, 25)
                .padding(.bottom, 25)

                
                // ---
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            
            bottomNavigationBar() // Call the bottom navigation bar component
        }
        .edgesIgnoringSafeArea(.bottom)
    }
    
    private func bottomNavigationItem(icon: String, label: String, tag: String, isActive: Bool) -> some View {
        VStack(spacing: 8) {
            ZStack {
                // Background circle for active state
                if isActive {
                    Image("overlay-\(icon)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: icon == "fit" ? 30 : 20, height: icon == "fit" ? 20 : 20)
                        .offset(x: 4, y: -4)
                }
                
                // Use different image assets based on the active state
                Image(isActive ? "active-\(icon)" : "inactive-\(icon)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: icon == "fit" ? 30 : 20, height: icon == "fit" ? 20 : 20)
            }

            Text(label)
                .foregroundColor(isActive ? Color(hex: "0F2141") : Color(hex: "909AAC"))
                .gilroyFont(.bold, size: 10)
        }
        .frame(maxWidth: .infinity) // Expand to fill available space
        .contentShape(Rectangle()) // Ensure full clickable area
        .onTapGesture {
            self.activeTab = tag
        }
    }

    private func bottomNavigationBar() -> some View {
        HStack(alignment: .bottom) {
            bottomNavigationItem(icon: "home", label: "Home", tag: "Home", isActive: activeTab == "Home")
            bottomNavigationItem(icon: "meditate", label: "Meditate", tag: "Meditate", isActive: activeTab == "Meditate")
            bottomNavigationItem(icon: "coping", label: "Coping", tag: "Coping", isActive: activeTab == "Coping")
            bottomNavigationItem(icon: "goal", label: "Goals", tag: "Goals", isActive: activeTab == "Goals")
            bottomNavigationItem(icon: "fit", label: "Fit", tag: "Fit", isActive: activeTab == "Fit")

            // Profile item with conditional overlay of the profile icon and a background circle
            VStack(spacing: 8) {
                ZStack {
                    // Conditional background circle for active state
                    if activeTab == "Profile" {
                        Circle()
                            .fill(Color(hex: "F8AA95").opacity(0.5)) // Semi-transparent background circle
                            .frame(width: 22, height: 22)
                            .offset(x: 4, y: -4)
                    }
                    
                    // Profile icon
                    Image("profile")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 22, height: 22)
                }

                Text("Profile")
                    .gilroyFont(.bold, size: 10)
                    .foregroundColor(activeTab == "Profile" ? Color(hex: "0F2141") : Color(hex: "909AAC"))
            }
            .frame(maxWidth: .infinity) // Expand to fill available space
            .contentShape(Rectangle()) // Ensure full clickable area
            .onTapGesture {
                self.activeTab = "Profile"
            }
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 14)
        .frame(maxWidth: .infinity, alignment: .bottom) // Align bottom and fill width
        .background(Color.white)
        .clipShape(
            .rect(
                topLeadingRadius: 30,
                topTrailingRadius: 30
            )
        )
        .shadow(radius: 15, y: 10)
    }




    
    // Font
    
    /*
    init() {
        for familyName in UIFont.familyNames {
            print(familyName)
            
            for fontName in UIFont.fontNames(forFamilyName: familyName) {
                print("-- \(fontName)")
            }
        }
    }
     */
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

