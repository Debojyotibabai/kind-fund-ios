import SwiftUI

struct ForgotPasswordView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    
    @State var emailAddress: String = ""
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                OnlyBackHeader(
                    onBack: {
                        authViewModel.authNavigationPath.removeLast()
                    }
                )
                
                VStack(alignment: .leading) {
                    LargeTitle(label: "Forgot Your Password?",
                               color: .textInputLabel)
                    
                    Spacer().frame(height: 20)
                    
                    PrimarySubTitle(text: "Please enter the email or phone number you signed up with to reset your password",
                                    color: .textInputLabel)
                    
                    Spacer().frame(height: 60)
                    
                    VStack {
                        TextInput(text: $emailAddress, placeholder: "email@example.com")
                        
                        Spacer()
                        
                        SolidButton(title: "SEND CODE",
                                    width: geo.size.width * 0.55,
                                    onPress: {
                            authViewModel.authNavigationPath.append(.createNewPassword)
                        })
                    }
                    .frame(minWidth: 0,
                           maxWidth: geo.size.width,
                           alignment: .center)
                }
                .padding(20)
                .frame(
                    minWidth: 0,
                    maxWidth: geo.size.width,
                    minHeight: 0,
                    maxHeight: geo.size.height,
                    alignment: .topLeading
                )
            }
        }
    }
}

#Preview {
    ForgotPasswordView()
        .environmentObject(AuthViewModel())
}
