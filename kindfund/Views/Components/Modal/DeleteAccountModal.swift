import SwiftUI

struct DeleteAccountModal: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.black.opacity(0.5))
            
            VStack {
                PrimaryTitle(text: "Delete Your Account")
                
                Spacer().frame(height: 20)
                
                PrimarySubTitle(text: "Are you sure you want to delete your account? This process is irreversible and you will lose all you data.",
                                color: .textInputLabel,
                                multilineTextAlignment: .center)
                
                Spacer().frame(height: 30)
                
                SolidButton(title: "Delete Account", width: 250)
                
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
    DeleteAccountModal()
}
