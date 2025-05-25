import SwiftUI

struct EducatorPacketListingView: View {
    @State var searchText: String = ""
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                DrawerHeaderWithLogo()
                
                VStack(alignment: .leading) {
                    Spacer().frame(height: 20)
                    
                    HStack {
                        Spacer()
                        SearchInput(text: $searchText)
                            .frame(minWidth: 0, maxWidth: geo.size.width * 0.65)
                        Spacer()
                    }
                    
                    Spacer().frame(height: 20)
                    
                    ScrollView(showsIndicators: false) {
                        LazyVStack(alignment: .leading) {
                            Spacer().frame(height: 10)
                            
                            PrimaryTitle(text: "Active Packets",
                                         color: .textInputLabel)
                            
                            Spacer().frame(height: 20)
                            
                            ForEach(0..<5) { _ in
                                PacketCard()
                            }
                            
                            Spacer().frame(height: 30)
                            
                            PrimaryTitle(text: "Completed Packets",
                                         color: .textInputLabel)
                            
                            Spacer().frame(height: 20)
                            
                            ForEach(0..<5) { _ in
                                PacketCard()
                            }
                            
                            Spacer().frame(height: 20)
                        }
                    }
                }
                .padding(.horizontal, 20)
                .frame(
                    minWidth: 0,
                    maxWidth: geo.size.width,
                    alignment: .topLeading
                )
                
                EducaBottomTabBar()
            }
        }
    }
}

#Preview {
    EducatorPacketListingView()
}
