import SwiftUI

struct VolunteerEditProfileView: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var emailAddress: String = ""
    @State var phoneCountryCode: String = "+91"
    @State var phoneNumber: String = ""
    @State var apartment: String = ""
    @State var streetAddress: String = ""
    @State var city: String = ""
    @State var state: String = ""
    @State var zipCode: String = ""
    @State var volunteerAgreementSignature: String = ""
    @State var iAmA: String = ""
    @State var howManyKids: Int?
    @State var schoolDistricts: [String] = []
    @State var shopForWhichCountry: String = ""
    @State var affiliateName: String = ""
    @State var groupName: String = ""
    @State var volunteerTiming: String = "Weekly"
    @State var haveYouVolunteeredBefore: Bool = false
    @State var interest: String = ""
    
    @State var volunteerIdentityData: [VolunteerIdentityModel] = [
        VolunteerIdentityModel(title: "Young Automotive Group Employee"),
        VolunteerIdentityModel(title: "Family member or friend of an employee"),
        VolunteerIdentityModel(title: "An employee of a KIND Fund Donor or Sponsor"),
        VolunteerIdentityModel(title: "Simply someone who wants to help"),
    ]
    
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                DrawerHeaderWithLogo()
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Spacer().frame(height: 20)
                        
                        PrimaryTitle(text: "Edit Your Account")
                        
                        Spacer().frame(height: 30)
                        
                        HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                PrimaryInputLabel(label: "First Name")
                                
                                TextInput(text: $firstName,
                                          placeholder: "first name",
                                          backgroundColor: .light)
                            }
                            
                            VStack(alignment: .leading) {
                                PrimaryInputLabel(label: "Last Name")
                                
                                TextInput(text: $lastName,
                                          placeholder: "last name",
                                          backgroundColor: .light)
                            }
                        }
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Email Address")
                        
                        TextInput(text: $emailAddress,
                                  placeholder: "email@example.com",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Phone Number")
                        
                        HStack {
                            SelectPhoneCountryCode(selectedOption: $phoneCountryCode,
                                                   backgroundColor: .light,
                                                   width: geo.size.width * 0.3)
                            
                            TextInput(text: $phoneNumber,
                                      placeholder: "(801) 555 - 5555",
                                      backgroundColor: .light)
                        }
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Apartment, suite, etc.")
                        
                        TextInput(text: $apartment,
                                  placeholder: "apartment, suite, etc.",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Street Address")
                        
                        TextInput(text: $streetAddress,
                                  placeholder: "street address",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "City")
                        
                        TextInput(text: $city,
                                  placeholder: "city",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "State")
                        
                        TextInput(text: $state,
                                  placeholder: "state",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Zip Code")
                        
                        TextInput(text: $zipCode,
                                  placeholder: "zip code",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Volunteer Agreement Signature")
                        
                        TextInput(text: $volunteerAgreementSignature,
                                  placeholder: "type your name here to sign",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "I am a (select one)")
                        
                        Spacer().frame(height: 5)
                        
                        VStack(alignment: .leading) {
                            ForEach(volunteerIdentityData) { item in
                                VStack {
                                    Spacer().frame(height: 5)
                                    
                                    RadioButtonInput(isSelected: item.isSelected,
                                                     title: item.title,
                                                     onSelected: {
                                        iAmA = item.title
                                        
                                        volunteerIdentityData = volunteerIdentityData.map { i in
                                            if(i.id == item.id) {
                                                return VolunteerIdentityModel(id: i.id,
                                                                              title: i.title,
                                                                              isSelected: true)
                                            } else {
                                                return VolunteerIdentityModel(id: i.id,
                                                                              title: i.title,
                                                                              isSelected: false)
                                            }
                                        }
                                    })
                                    
                                    Spacer().frame(height: 5)
                                }
                            }
                        }
                        
                        Spacer().frame(height: 15)
                        
                        PrimaryInputLabel(label: "How did you hear about the KIND Fund?")
                        
                        TextInput(text: $volunteerAgreementSignature,
                                  placeholder: "write something...",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "How many kids are you interested in shopping for?")
                        
                        Spacer().frame(height: 5)
                        
                        VStack(alignment: .leading) {
                            ForEach(1..<4) { item in
                                VStack {
                                    Spacer().frame(height: 5)
                                    
                                    RadioButtonInput(isSelected: howManyKids == item,
                                                     title: "\(item)",
                                                     onSelected: {
                                        howManyKids = item
                                    })
                                    
                                    Spacer().frame(height: 5)
                                }
                            }
                            
                            RadioButtonInput(isSelected: howManyKids == 0,
                                             title: "Unlimited",
                                             onSelected: {
                                howManyKids = 0
                            })
                            
                            Spacer().frame(height: 5)
                        }
                        
                        Spacer().frame(height: 15)
                        
                        PrimaryInputLabel(label: "Which county would you prefer to shop in?")
                        
                        SelectInput(selectedOption: $shopForWhichCountry,
                                    backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Please select your KIND Fund donor or affiliate name")
                        
                        SelectInput(selectedOption: $shopForWhichCountry,
                                    backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Please select your group name?")
                        
                        SelectInput(selectedOption: $shopForWhichCountry,
                                    backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "How often would you like to volunteer?")
                        
                        SelectInput(selectedOption: $volunteerTiming,
                                    options: VolunteerTimingEnum.allCases.map { item in
                            return SelectInputModel(label: item.title, value: item.title)
                        },
                                    backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Have you volunteered with Young Caring for Our Young before?")
                        
                        Spacer().frame(height: 5)
                        
                        VStack(alignment: .leading) {
                            Spacer().frame(height: 5)
                            
                            RadioButtonInput(isSelected: haveYouVolunteeredBefore,
                                             title: "Yes",
                                             onSelected: {
                                haveYouVolunteeredBefore = true
                            })
                            
                            Spacer().frame(height: 10)
                            
                            RadioButtonInput(isSelected: !haveYouVolunteeredBefore,
                                             title: "No",
                                             onSelected: {
                                haveYouVolunteeredBefore = false
                            })
                            
                            Spacer().frame(height: 5)
                        }
                        
                        Spacer().frame(height: 15)
                        
                        PrimaryInputLabel(label: "What other types of volunteer opportunities with our group are you interested in? ")
                        
                        TextInput(text: $volunteerAgreementSignature,
                                  placeholder: "write something...",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 40)
                        
                        HStack {
                            SolidButton(title: "Delete Account",
                                        width: geo.size.width * 0.45)
                            
                            Spacer()
                            
                            SolidButton(title: "Done",
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
    VolunteerEditProfileView()
}
