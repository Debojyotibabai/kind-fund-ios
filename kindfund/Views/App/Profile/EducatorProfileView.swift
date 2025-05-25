import SwiftUI

struct EducatorProfileView: View {
    @State var name: String = "Jenny Smith"
    @State var position: String = "4th Grade Teacher"
    @State var emailAddress: String = "jsmith@davisdistrict.org"
    @State var phoneNumber: String = "(801) 555 - 1234"
    @State var schoolDistrict: String = "Davis"
    @State var schoolName: String = "Endeavour Elementry"
    @State var schoolAddress: String = "1870 S 25 W, Kaysville, UT 84037"
    @State var schoolPhoneNumber: String = "(801) 402-0400"
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                DrawerHeaderWithLogo()
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Spacer().frame(height: 20)
                        
                        PrimaryTitle(text: "My Profile")
                        
                        Spacer().frame(height: 30)
                        
                        HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                PrimaryInputLabel(label: "Educator Name")
                                
                                UnderlineTextInput(text: $name,
                                                   placeholder: "name")
                            }
                            
                            VStack(alignment: .leading) {
                                PrimaryInputLabel(label: "Educator Position")
                                
                                UnderlineTextInput(text: $position,
                                                   placeholder: "position")
                            }
                        }
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Educator Email Address")
                        
                        UnderlineTextInput(text: $emailAddress,
                                           placeholder: "email@example.com")
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Educator Phone Number")
                        
                        UnderlineTextInput(text: $phoneNumber,
                                           placeholder: "(801) 555 - 5555")
                        
                        Spacer().frame(height: 20)
                        
                        HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                PrimaryInputLabel(label: "School District")
                                
                                UnderlineTextInput(text: $schoolDistrict,
                                                   placeholder: "school district")
                            }
                            
                            VStack(alignment: .leading) {
                                PrimaryInputLabel(label: "School Name")
                                
                                UnderlineTextInput(text: $schoolName,
                                                   placeholder: "school name")
                            }
                        }
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "School Address")
                        
                        UnderlineTextInput(text: $schoolAddress,
                                           placeholder: "school address")
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "School Phone Number")
                        
                        UnderlineTextInput(text: $schoolPhoneNumber,
                                           placeholder: "school phone number")
                        
                        Spacer().frame(height: 40)
                        
                        HStack {
                            SolidButton(title: "Edit Profile",
                                        width: geo.size.width * 0.45)
                            
                            Spacer()
                            
                            SolidButton(title: "Log Out",
                                        width: geo.size.width * 0.4)
                        }
                        
                        Spacer().frame(height: 20)
                    }
                }
                .padding(.horizontal, 20)
                .frame(
                    minWidth: 0,
                    maxWidth: geo.size.width,
                    alignment: .topLeading
                )
                
                EducaBottomTabBar()
            }
        }
    }
}

#Preview {
    EducatorProfileView()
}
