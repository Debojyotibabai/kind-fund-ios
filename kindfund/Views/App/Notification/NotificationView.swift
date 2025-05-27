import SwiftUI

struct NotificationView: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                DrawerHeaderWithLogo()
                
                VStack(alignment: .leading) {
                    PrimaryTitle(text: "Notifications")
                    
                    Spacer().frame(height: 25)
                    
                    ScrollView(showsIndicators: false) {
                        LazyVStack(alignment: .leading) {
                            ForEach(0..<10) { index in
                                NotificationCard()
                            }
                        }
                        .frame(minWidth: 0,
                               maxWidth: geo.size.width,
                               alignment: .leading)
                        
                        Spacer().frame(height: 20)
                    }
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                .frame(
                    minWidth: 0,
                    maxWidth: geo.size.width,
                    minHeight: 0,
                    maxHeight: geo.size.height,
                    alignment: .topLeading
                )
                
                EducatorBottomTabBar()
            }
        }
    }
}

#Preview {
    NotificationView()
}
