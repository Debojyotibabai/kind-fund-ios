import SwiftUI

struct LogoutModal: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.black.opacity(0.5))
            
            VStack {
                PrimaryTitle(text: "Log Out")
                
                Spacer().frame(height: 20)
                
                PrimarySubTitle(text: "Are you sure you want to log out? You’ll have to sign back in.",
                                color: .textInputLabel,
                                multilineTextAlignment: .center)
                
                Spacer().frame(height: 30)
                
                SolidButton(title: "Log Out", width: 250)
                
                Spacer().frame(height: 10)
                
                SolidButton(title: "Cancel", width: 250)
            }
            .padding(25)
            .frame(width: 330)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    LogoutModal()
}
