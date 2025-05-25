import SwiftUI

struct CreateNewPasswordView: View {
    @State var otp: [String] = Array(repeating: "", count: 6)
    @FocusState var focusedField: Int?
    
    @State var password: String = ""
    @State var confirmPassword: String = ""
    
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
                OnlyBackHeader()
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading) {
                        LargeTitle(label: "Create New Password",
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
                        }
                        .frame(minWidth: 0,
                               maxWidth: geo.size.width,
                               alignment: .center)
                        
                        Spacer().frame(height: 60)
                        
                        PrimarySubTitle(text: "Your new password must be different from your previously used password",
                                        color: .textInputLabel)
                        
                        Spacer().frame(height: 30)
                        
                        PrimaryInputLabel(label: "Password")
                        
                        TextInput(text: $password,
                                  placeholder: "password")
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Confirm Password")
                        
                        TextInput(text: $password,
                                  placeholder: "confirm password")
                        
                        Spacer().frame(height: 60)
                    }
                    .padding(20)
                    .frame(
                        minWidth: 0,
                        maxWidth: geo.size.width,
                        alignment: .topLeading
                    )
                }
                Spacer().frame(height: 10)
                HStack {
                    Spacer()
                    SolidButton(title: "CONFIRM", width: geo.size.width * 0.55)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    CreateNewPasswordView()
}
