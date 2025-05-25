import SwiftUI

struct VolunteerSignupView: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var emailAddress: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    
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
                            Spacer()
                        }
                        
                        Spacer().frame(height: 20)
                    }
                    
                    ScrollView {
                        VStack(alignment: .leading) {
                            PrimaryInputLabel(label: "Full Name")
                            
                            HStack {
                                TextInput(text: $firstName,
                                          placeholder: "first name")
                                TextInput(text: $lastName,
                                          placeholder: "last name")
                            }
                            
                            Spacer().frame(height: 20)
                            
                            PrimaryInputLabel(label: "Email Address")
                            
                            TextInput(text: $emailAddress,
                                      placeholder: "email@example.com")
                            
                            Spacer().frame(height: 20)
                            
                            PrimaryInputLabel(label: "Password")
                            
                            TextInput(text: $password,
                                      placeholder: "password")
                            
                            Spacer().frame(height: 20)
                            
                            PrimaryInputLabel(label: "Confirm Password")
                            
                            TextInput(text: $password,
                                      placeholder: "confirm password")
                        }
                    }
                    
                    HStack {
                        Spacer()
                        SolidButton(title: "Sign Up",
                                    width: geo.size.width * 0.4,
                        )
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
    }
}

#Preview {
    VolunteerSignupView()
}
