import SwiftUI

struct EditPacketView: View {
    @State var schoolName: String = ""
    @State var trackingNumber: String = ""
    @State var locationHours: String = ""
    @State var studentAge: String = ""
    @State var studentGender: String = ""
    @State var requestedItems: [String] = []
    @State var specialClothingRequirements: String = ""
    @State var studentShirtSize: String = ""
    @State var studentPantSize: String = ""
    @State var studentShoeSize: String = ""
    @State var studentAgeType: StudentAgeTypeEnum = .youth
    @State var additionalNeeds: String = ""
    @State var studentPreferences: String = ""
    @State var otherComments: String = ""
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                DrawerHeaderWithLogo()
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Spacer().frame(height: 20)
                        
                        PrimaryTitle(text: "Edit Packet")
                        
                        Spacer().frame(height: 20)
                        
                        PrimarySubTitle(text: "Please submit a separate request for each student. Do not combine them.",
                                        color: .textInputPlaceholder)
                        
                        Spacer().frame(height: 30)
                        
                        PrimaryInputLabel(label: "School")
                        
                        Spacer().frame(height: 5)
                        
                        SecondaryInputLabel(label: "Select a school")
                        
                        SelectInput(selectedOption: $schoolName,
                                    backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Tracking Number")
                        
                        Spacer().frame(height: 5)
                        
                        SecondaryInputLabel(label: "Tracking number")
                        
                        TextInput(text: $trackingNumber,
                                  placeholder: "tracking number",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Location Hours")
                        
                        Spacer().frame(height: 5)
                        
                        SecondaryInputLabel(label: "Location hours")
                        
                        TextInput(text: $locationHours,
                                  placeholder: "location hours",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Student Age")
                        
                        Spacer().frame(height: 5)
                        
                        SecondaryInputLabel(label: "Student age")
                        
                        TextInput(text: $studentAge,
                                  placeholder: "age",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Student's Gender")
                        
                        Spacer().frame(height: 5)
                        
                        SecondaryInputLabel(label: "Student's gender")
                        
                        SelectInput(selectedOption: $studentGender,
                                    backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Requested Items - Select all that apply:")
                        
                        Spacer().frame(height: 5)
                        
                        SecondaryInputLabel(label: "Requested items - select all that apply:")
                        
                        Spacer().frame(height: 5)
                        
                        VStack(alignment: .leading) {
                            ForEach(0..<10) { index in
                                VStack {
                                    Spacer().frame(height: 5)
                                    
                                    RadioButtonInput(isSelected: false, title: "Item \(index + 1)")
                                    
                                    Spacer().frame(height: 5)
                                }
                            }
                        }
                        
                        Spacer().frame(height: 15)
                        
                        PrimaryInputLabel(label: "Special Clothing Requirements")
                        
                        Spacer().frame(height: 5)
                        
                        SecondaryInputLabel(label: "Special clothing requirements")
                        
                        TextInput(text: $specialClothingRequirements,
                                  placeholder: "type...",
                                  backgroundColor: .light,
                                  lineLimit: 5...10)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Student's Shirt Size")
                        
                        Spacer().frame(height: 5)
                        
                        SecondaryInputLabel(label: "Student's shirt size")
                        
                        TextInput(text: $studentShirtSize,
                                  placeholder: "shirt size",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Student's Pant Size")
                        
                        Spacer().frame(height: 5)
                        
                        SecondaryInputLabel(label: "Student's pant size")
                        
                        TextInput(text: $studentPantSize,
                                  placeholder: "pant size",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Student's Shoe Size")
                        
                        Spacer().frame(height: 5)
                        
                        SecondaryInputLabel(label: "Student's shoe size")
                        
                        TextInput(text: $studentShoeSize,
                                  placeholder: "shoe size",
                                  backgroundColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        HStack {
                            RadioButtonInput(isSelected: studentAgeType == .youth,
                                             title: StudentAgeTypeEnum.youth.title)
                            
                            Spacer().frame(width: 50)
                            
                            RadioButtonInput(isSelected: studentAgeType == .adult,
                                             title: StudentAgeTypeEnum.adult.title)
                        }
                        
                        Spacer().frame(height: 30)
                        
                        PrimaryInputLabel(label: "Additional Needs/Priority Items")
                        
                        Spacer().frame(height: 5)
                        
                        SecondaryInputLabel(label: "Additional needs/priority items")
                        
                        TextInput(text: $additionalNeeds,
                                  placeholder: "type...",
                                  backgroundColor: .light,
                                  lineLimit: 5...10)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Student’s Preferences (colors, styles, etc.)")
                        
                        Spacer().frame(height: 5)
                        
                        SecondaryInputLabel(label: "Student’s preferences (colors, styles, etc.)")
                        
                        TextInput(text: $studentPreferences,
                                  placeholder: "type...",
                                  backgroundColor: .light,
                                  lineLimit: 5...10)
                        
                        Spacer().frame(height: 20)
                        
                        PrimaryInputLabel(label: "Other Comments or Additional Info")
                        
                        Spacer().frame(height: 5)
                        
                        SecondaryInputLabel(label: "Other comments or additional info")
                        
                        TextInput(text: $otherComments,
                                  placeholder: "type...",
                                  backgroundColor: .light,
                                  lineLimit: 5...10)
                        
                        Spacer().frame(height: 40)
                        
                        HStack {
                            Spacer()
                            SolidButton(title: "Send Form",
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
    EditPacketView()
}
