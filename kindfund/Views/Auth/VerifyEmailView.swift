import SwiftUI

struct VerifyEmailView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    
    @State var otp: [String] = Array(repeating: "", count: 6)
    @FocusState var focusedField: Int?
    
    func handleInputChange(_ newValue: String, _ index: Int) {
        // Limit to one character
        if newValue.count > 1 {
            otp[index] = String(newValue.prefix(1))
        }
        
        // Move focus to next field if valid
        if !newValue.isEmpty {
            if index < 5 {
                focusedField = index + 1
            } else {
                focusedField = nil // Last digit entered, dismiss keyboard
            }
        } else {
            if index > 0 {
                focusedField = index - 1 // Move focus back on delete
            }
        }
    }
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                OnlyBackHeader(
                    onBack: {
                        authViewModel.authNavigationPath.removeLast()
                    }
                )
                
                VStack(alignment: .leading) {
                    LargeTitle(label: "Verify Your Email",
                               color: .textInputLabel)
                    
                    Spacer().frame(height: 20)
                    
                    PrimarySubTitle(text: "Please enter the 6 digit code sent to email@example.com",
                                    color: .textInputLabel)
                    
                    Spacer().frame(height: 60)
                    
                    VStack {
                        OtpInput(otp: $otp, focusedField: $focusedField, handleInputChange: handleInputChange)
                        
                        Spacer().frame(height: 30)
                        
                        HStack {
                            (Text("Didn’t receive the code?")
                                .font(.custom(Fonts.regular, size: 15))
                                .foregroundStyle(.textInputPlaceholder) + Text(" Resend")
                                .font(.custom(Fonts.medium, size: 15))
                                .foregroundStyle(.primaryBackground))
                            .multilineTextAlignment(.center)
                        }
                        
                        Spacer()
                        
                        SolidButton(title: "VERIFY",
                                    width: geo.size.width * 0.55,
                                    onPress: {
                            authViewModel.authNavigationPath.removeLast(2)
                        })
                        
                        Spacer().frame(height: 25)
                        
                        Text("Change Email?")
                            .font(.custom(Fonts.medium, size: 16))
                            .foregroundStyle(.primaryBackground)
                            .onTapGesture {
                                authViewModel.authNavigationPath.removeLast()
                            }
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
    VerifyEmailView()
        .environmentObject(AuthViewModel())
}
