import SwiftUI

struct VolunteerProfileView: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
    @State var name: String = "Jenny Smith"
    @State var emailAddress: String = "jsmith@davisdistrict.org"
    @State var phoneNumber: String = "(801) 555 - 1234"
    @State var homeAddress: String = "123 N 1234 W, Highland, UT 84003"
    @State var schoolAddress: String = "1870 S 25 W, Kaysville, UT 84037"
    @State var schoolPhoneNumber: String = "(801) 402-0400"
    @State var howManyKids: String = "Unlimited"
    @State var howOftenShop: String = VolunteerTimingEnum.weekly.title
    @State var schoolDistricts: String = [
        "Davis County",
        "Cache County",
        "Summit County",
        "Iron County",
        "Weber County",
        "Grand County",
        "Box Elder County",
        "Uintah County",
        "Millard County",
        "Sanpete County",
    ].joined(separator: ", ")
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                DrawerHeaderWithLogo()
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Spacer().frame(height: 20)
                        
                        PrimaryTitle(text: "My Profile")
                        
                        Spacer().frame(height: 30)
                        
                        PrimaryInputLabel(label: "Full Name")
                        
                        UnderlineText(text: name)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Email Address")
                        
                        UnderlineText(text: emailAddress)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Phone Number")
                        
                        UnderlineText(text: phoneNumber)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Home Address")
                        
                        UnderlineText(text: homeAddress)
                        
                        Spacer().frame(height: 35)
                        
                        PrimaryTitle(text: "My Preferences")
                        
                        Spacer().frame(height: 30)
                        
                        PrimaryInputLabel(label: "How many kids do you shop for?")
                        
                        UnderlineText(text: howManyKids)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "How often can you shop?")
                        
                        UnderlineText(text: howOftenShop)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "School Districts")
                        
                        UnderlineText(text: schoolDistricts)
                        
                        Spacer().frame(height: 40)
                        
                        HStack {
                            SolidButton(title: "Edit Profile",
                                        width: geo.size.width * 0.45,
                                        onPress: {
                                appViewModel.volunteerProfileStackNavigationPath.append(.editProfile)
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
                
                VolunteerBottomTabBar()
            }
        }
    }
}

#Preview {
    VolunteerProfileView()
        .environmentObject(AppViewModel())
}
