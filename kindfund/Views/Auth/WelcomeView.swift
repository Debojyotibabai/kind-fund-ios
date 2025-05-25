import SwiftUI

struct WelcomeView: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                Image(.logo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width * 0.5)
            }
            .frame(minWidth: 0,
                   maxWidth: geo.size.width,
                   minHeight: 0,
                   maxHeight: geo.size.height,
                   alignment: .center)
            .background(.primaryBackground)
        }
    }
}

#Preview {
    WelcomeView()
}
