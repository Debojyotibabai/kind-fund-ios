import SwiftUI

struct EducatorProfileView: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
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
                                
                                UnderlineText(text: name)
                            }
                            
                            VStack(alignment: .leading) {
                                PrimaryInputLabel(label: "Educator Position")
                                
                                UnderlineText(text: position)
                            }
                        }
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Educator Email Address")
                        
                        UnderlineText(text: emailAddress)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Educator Phone Number")
                        
                        UnderlineText(text: phoneNumber)
                        
                        Spacer().frame(height: 20)
                        
                        HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                PrimaryInputLabel(label: "School District")
                                
                                UnderlineText(text: schoolDistrict)
                            }
                            
                            VStack(alignment: .leading) {
                                PrimaryInputLabel(label: "School Name")
                                
                                UnderlineText(text: schoolName)
                            }
                        }
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "School Address")
                        
                        UnderlineText(text: schoolAddress)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "School Phone Number")
                        
                        UnderlineText(text: schoolPhoneNumber)
                        
                        Spacer().frame(height: 40)
                        
                        HStack {
                            SolidButton(title: "Edit Profile",
                                        width: geo.size.width * 0.45,
                                        onPress: {
                                appViewModel.educatorProfileStackNavigationPath.append(.editProfile)
                            })
                            
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
                
                EducatorBottomTabBar()
            }
        }
    }
}

#Preview {
    EducatorProfileView()
        .environmentObject(AppViewModel())
}
