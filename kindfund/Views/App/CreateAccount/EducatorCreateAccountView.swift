import SwiftUI

struct EducatorCreateAccountView: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var position: String = ""
    @State var emailAddress: String = ""
    @State var phoneCountryCode: String = "+91"
    @State var phoneNumber: String = ""
    @State var schoolDistrict: String = ""
    @State var schoolName: String = ""
    @State var schoolAddress: String = ""
    @State var cityStateZip: String = ""
    @State var schoolPhoneNumber: String = ""
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                OnlyBackHeader()
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Spacer().frame(height: 20)
                        
                        PrimaryTitle(text: "Create Your Account")
                        
                        Spacer().frame(height: 30)
                        
                        HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                PrimaryInputLabel(label: "Educator First Name")
                                
                                TextInput(text: $firstName,
                                          placeholder: "first name",
                                          backgroundColor: .light)
                            }
                            
                            VStack(alignment: .leading) {
                                PrimaryInputLabel(label: "Educator Last Name")
                                
                                TextInput(text: $lastName,
                                          placeholder: "last name",
                                          backgroundColor: .light)
                            }
                        }
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Educator Position")
                        
                        TextInput(text: $position,
                                  placeholder: "position",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Educator Email Address")
                        
                        TextInput(text: $emailAddress,
                                  placeholder: "email@example.com",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Educator Phone Number")
                        
                        HStack {
                            SelectPhoneCountryCode(selectedOption: $phoneCountryCode,
                                                   backgroundColor: .light,
                                                   width: geo.size.width * 0.3)
                            
                            TextInput(text: $phoneNumber,
                                      placeholder: "(801) 555 - 5555",
                                      backgroundColor: .light)
                        }
                        
                        Spacer().frame(height: 20)
                        
                        HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                PrimaryInputLabel(label: "School District")
                                
                                SelectInput(selectedOption: $schoolDistrict,
                                            backgroundColor: .light)
                            }
                            
                            VStack(alignment: .leading) {
                                PrimaryInputLabel(label: "School Name")
                                
                                SelectInput(selectedOption: $schoolName,
                                            backgroundColor: .light)
                            }
                        }
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "School Address")
                        
                        TextInput(text: $schoolAddress,
                                  placeholder: "school address",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "City, State, Zip")
                        
                        TextInput(text: $cityStateZip,
                                  placeholder: "city, state, zip",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "School Phone Number")
                        
                        TextInput(text: $schoolPhoneNumber,
                                  placeholder: "(801) 555 - 5555",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 40)
                        
                        HStack {
                            Spacer()
                            SolidButton(title: "Create Account",
                                        width: geo.size.width * 0.5)
                        }
                    }
                }
                .padding(.horizontal, 20)
                .frame(
                    minWidth: 0,
                    maxWidth: geo.size.width,
                    alignment: .topLeading
                )
            }
        }
    }
}

#Preview {
    EducatorCreateAccountView()
}
