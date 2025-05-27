import SwiftUI

struct VolunteerPacketListingView: View {
    @State var isAvailable: Bool = true
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                DrawerHeaderWithLogo()
                
                VStack(alignment: .leading) {
                    Spacer().frame(height: 20)
                    
                    PrimaryTitle(text: "Request a Packet",
                                 color: .textInputLabel)
                    
                    Spacer().frame(height: 20)
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text(isAvailable ? "Available" : "Unavaible")
                                .font(.custom(Fonts.medium, size: 15))
                            
                            Spacer().frame(height: 5)
                            
                            Text(isAvailable ? "You are currently marked as available. This means we will send you a packet when one becomes available and you will have 2 days to accept." : "You are currently marked as unavailable. This means you won’t get notified when a packet is available. If you would like to be notified, change your status to available.")
                                .font(.custom(Fonts.regular, size: 13))
                        }
                        .foregroundStyle(.textInputLabel)
                        
                        Spacer()
                        
                        Toggle(isOn: $isAvailable) {
                            EmptyView()
                        }
                        .toggleStyle(SwitchToggleStyle(tint: .secondaryBackground))
                        .scaleEffect(0.7)
                        .frame(width: 60)
                    }
                    .padding()
                    .padding(.vertical, 10)
                    .frame(
                        minWidth: 0,
                        maxWidth: geo.size.width,
                        alignment: .topLeading
                    )
                    .background(.cardBackground)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(.bottom, 5)
                    
                    Spacer().frame(height: 20)
                    
                    ScrollView(showsIndicators: false) {
                        LazyVStack(alignment: .leading) {
                            Spacer().frame(height: 10)
                            
                            PrimaryTitle(text: "My Packets",
                                         color: .textInputLabel)
                            
                            Spacer().frame(height: 20)
                            
                            ForEach(0..<5) { _ in
                                PacketCard()
                            }
                            
                            Spacer().frame(height: 30)
                            
                            PrimaryTitle(text: "My Closed Packets",
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
                
                VolunteerBottomTabBar()
            }
        }
    }
}

#Preview {
    VolunteerPacketListingView()
}
