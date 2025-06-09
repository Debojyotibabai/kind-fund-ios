import SwiftUI

struct VolunteerSignupView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @EnvironmentObject var signupViewModel: SignupViewModel
    
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var emailAddress: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    
    @State var isFirstNameValid: Bool = false
    @State var isLastNameValid: Bool = false
    @State var isEmailAddressValid: Bool = false
    @State var isPasswordValid: Bool = false
    @State var isConfirmPasswordValid: Bool = false
    
    var isFormValid: Bool {
        return isFirstNameValid &&
        isLastNameValid &&
        isEmailAddressValid &&
        isPasswordValid &&
        isConfirmPasswordValid
    }
    
    func signup() async {
        await signupViewModel.signup(signupRequestModel: SignupRequestModel(userType: "Volunteer",
                                                                            firstName: firstName,
                                                                            lastName: lastName,
                                                                            emailAddress: emailAddress,
                                                                            password: password))
        
        if(signupViewModel.isSuccess) {
            authViewModel.authNavigationPath.append(.verifyEmail)
        }
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                VStack(alignment: .leading) {
                    VStack {
                        Spacer().frame(height: 15)
                        
                        HStack {
                            Spacer()
                            Text("Sign Up")
                                .font(.custom(Fonts.bold, size: 32))
                                .foregroundStyle(.primaryBackground)
                            Spacer()
                        }
                        
                        Spacer().frame(height: 15)
                        
                        HStack {
                            Spacer()
                            (Text("You are signing up as an VOLUNTEER. Not you?")
                                .font(.custom(Fonts.regular, size: 15))
                                .foregroundStyle(.textInputPlaceholder) + Text(" Go back")
                                .font(.custom(Fonts.medium, size: 15))
                                .foregroundStyle(.secondaryBackground))
                            .multilineTextAlignment(.center)
                            .onTapGesture {
                                authViewModel.authNavigationPath = []
                            }
                            
                            Spacer()
                        }
                        
                        Spacer().frame(height: 20)
                    }
                    
                    ScrollView(showsIndicators: false) {
                        VStack(alignment: .leading) {
                            PrimaryInputLabel(label: "Full Name")
                            
                            HStack(alignment: .top) {
                                TextInput(text: $firstName,
                                          placeholder: "first name",
                                          validationError: isFirstNameValid ? "" : "First name must be at least 3 characters long")
                                .onChange(of: firstName) { oldValue, newValue in
                                    if(newValue.count >= 3) {
                                        isFirstNameValid = true
                                    } else {
                                        isFirstNameValid = false
                                    }
                                }
                                
                                TextInput(text: $lastName,
                                          placeholder: "last name",
                                          validationError: isLastNameValid ? "" : "Last name must be at least 3 characters long")
                                .onChange(of: lastName) { oldValue, newValue in
                                    if(newValue.count >= 3) {
                                        isLastNameValid = true
                                    } else {
                                        isLastNameValid = false
                                    }
                                }
                            }
                            
                            Spacer().frame(height: 20)
                            
                            PrimaryInputLabel(label: "Email Address")
                            
                            TextInput(text: $emailAddress,
                                      placeholder: "email@example.com",
                                      validationError: isEmailAddressValid ? "" : "Please enter a valid email address")
                            .onChange(of: emailAddress) { oldValue, newValue in
                                let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
                                
                                let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
                                
                                isEmailAddressValid = emailPred.evaluate(with: newValue)
                            }
                            
                            Spacer().frame(height: 20)
                            
                            PrimaryInputLabel(label: "Password")
                            
                            TextInput(text: $password,
                                      placeholder: "password",
                                      validationError: isPasswordValid ? "" : "Password must be at least 8 characters long")
                            .onChange(of: password) { oldValue, newValue in
                                let passwordRegEx = "^.{8,}$"
                                
                                let passwordPred = NSPredicate(format:"SELF MATCHES %@", passwordRegEx)
                                
                                isPasswordValid = passwordPred.evaluate(with: newValue)
                            }
                            
                            Spacer().frame(height: 20)
                            
                            PrimaryInputLabel(label: "Confirm Password")
                            
                            TextInput(text: $confirmPassword,
                                      placeholder: "confirm password",
                                      validationError: isConfirmPasswordValid ? "" : "Passwords must match")
                            .onChange(of: confirmPassword) { oldValue, newValue in
                                if(password == newValue) {
                                    isConfirmPasswordValid = true
                                } else {
                                    isConfirmPasswordValid = false
                                }
                            }
                        }
                    }
                    
                    HStack {
                        Spacer()
                        SolidButton(title: "Sign Up",
                                    width: geo.size.width * 0.4,
                                    onPress: {
                            Task {
                                await signup()
                            }
                        },
                                    isDisabled: !isFormValid,
                                    isLoading: signupViewModel.isSigningup)
                        
                        Spacer()
                    }
                    
                    Spacer().frame(height: 30)
                    
                    HStack {
                        Spacer()
                        (Text("Already have an account?")
                            .font(.custom(Fonts.regular, size: 15))
                            .foregroundStyle(.textInputPlaceholder) + Text(" Login")
                            .font(.custom(Fonts.medium, size: 15))
                            .foregroundStyle(.primaryBackground))
                        .multilineTextAlignment(.center)
                        .onTapGesture {
                            authViewModel.authNavigationPath.removeLast()
                        }
                        
                        Spacer()
                    }
                    
                    Spacer().frame(height: 15)
                }
                .padding(20)
                .frame(width: geo.size.width * 0.9,
                       height: geo.size.height * 0.9,
                       alignment: .topLeading)
                .background(.light)
            }
            .frame(minWidth: 0,
                   maxWidth: geo.size.width,
                   minHeight: 0,
                   maxHeight: geo.size.height,
                   alignment: .center)
            .background(.primaryBackground)
        }
        .alert(signupViewModel.signupErrorData?.message ?? "Something went wrong", isPresented: $signupViewModel.isError) {
            Button {
                signupViewModel.resetSignupViewModel()
            } label: {
                Text("Try Again")
            }
        }
    }
}

#Preview {
    VolunteerSignupView()
        .environmentObject(AuthViewModel())
        .environmentObject(SignupViewModel())
}
