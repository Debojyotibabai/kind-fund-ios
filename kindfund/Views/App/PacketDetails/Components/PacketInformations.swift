import SwiftUI

struct RequestedItemsModel: Identifiable {
    var id: UUID = UUID()
    var name: String
    var isChecked: Bool
}

struct PacketInformations: View {
    @EnvironmentObject var appViewModel: AppViewModel
    @EnvironmentObject var authViewModel: AuthViewModel
    
    @State var requestedItems: [RequestedItemsModel] = [
        RequestedItemsModel(name: "Shirt", isChecked: false),
        RequestedItemsModel(name: "Pants", isChecked: false),
        RequestedItemsModel(name: "Shoes", isChecked: false),
        RequestedItemsModel(name: "Backpack", isChecked: false),
        RequestedItemsModel(name: "Water Bottle", isChecked: false),
        RequestedItemsModel(name: "Snacks", isChecked: false),
        RequestedItemsModel(name: "Lunch Box", isChecked: false)
    ]
    
    let requestedItemsGridLayout = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Educator Information")
                .font(.custom(Fonts.medium, size: 19))
                .foregroundStyle(.dark)
                .multilineTextAlignment(.leading)
            
            Spacer().frame(height: 20)
            
            PacketInformationParticularRow(title: "Full Name :", subTitle: "Jenny Smith")
            PacketInformationParticularRow(title: "Position :", subTitle: "4th Grade Teacher")
            PacketInformationParticularRow(title: "Email :", subTitle: "jsmith@davisdistrict.org")
            PacketInformationParticularRow(title: "Phone Number :", subTitle: "(801) 555 - 1234")
            
            Spacer().frame(height: 20)
            
            Text("School Information")
                .font(.custom(Fonts.medium, size: 19))
                .foregroundStyle(.dark)
                .multilineTextAlignment(.leading)
            
            Spacer().frame(height: 20)
            
            PacketInformationParticularRow(title: "District :", subTitle: "Davis")
            PacketInformationParticularRow(title: "Name :", subTitle: "Endeavour Elementary")
            PacketInformationParticularRow(title: "Address :", subTitle: "1870 S 25 W, Kaysville, UT 84037")
            PacketInformationParticularRow(title: "Phone Number :", subTitle: "(801) 555 - 1234")
            
            Spacer().frame(height: 20)
            
            Text("Student Information")
                .font(.custom(Fonts.medium, size: 19))
                .foregroundStyle(.dark)
                .multilineTextAlignment(.leading)
            
            Spacer().frame(height: 20)
            
            HStack {
                PacketInformationParticularRow(title: "Age :", subTitle: "99")
                
                Spacer().frame(width: 60)
                
                PacketInformationParticularRow(title: "Gender :", subTitle: "Female")
            }
            
            PacketInformationParticularRow(title: "Requested Items ", subTitle: "(tap to check off list) :")
            
            LazyVGrid(columns: requestedItemsGridLayout, alignment: .leading, spacing: 10) {
                ForEach(requestedItems) { item in
                    Text(item.name)
                        .font(.custom(Fonts.medium, size: 15))
                        .foregroundStyle(.light)
                        .padding(.vertical, 15)
                        .padding(.horizontal, 20)
                        .background(item.isChecked ? .darkBackgroundPrimary : .lightYellow)
                        .clipShape(Capsule())
                        .onTapGesture {
                            requestedItems = requestedItems.map{ i in
                                if(i.id == item.id) {
                                    return RequestedItemsModel(id: i.id,
                                                               name: i.name,
                                                               isChecked: !i.isChecked)
                                } else {
                                    return i
                                }
                            }
                        }
                }
            }
            
            Spacer().frame(height: 30)
            
            PacketInformationParticularRow(title: "Student’s Shirt Size :", subTitle: "Youth Small")
            PacketInformationParticularRow(title: "Student’s Pant Size :", subTitle: "Youth Small")
            PacketInformationParticularRow(title: "Student’s Shoe Size :", subTitle: "Youth Small")
            
            Spacer().frame(height: 20)
            
            SecondaryTitle(text: "Special Clothing Requirements :", color: .textInputLabel)
            
            Spacer().frame(height: 10)
            
            PrimarySubTitle(text: "Student delights in vibrant and diverse color palettes that allow them to showcase their creativity and individuality. While there are no specific colors or styles to avoid, they appreciate clothing that offers comfort and freedom of movement, as it aligns with their active and inquisitive nature.", color: .textInputLabel)
            
            Spacer().frame(height: 20)
            
            SecondaryTitle(text: "Other notes :", color: .textInputLabel)
            
            Spacer().frame(height: 10)
            
            PrimarySubTitle(text: "To better understand their preferences, it is worth noting that student finds solace in elegant designs that exude a sense of sophistication, while also embracing elements of fun and playfulness. We kindly request the support of a compassionate volunteer to assist in providing student with the clothing essentials that reflect their personality and enable them to feel confident and comfortable as they continue to excel in the classroom.", color: .textInputLabel)
            
            Spacer().frame(height: 30)
            
            if(authViewModel.userType == .educator) {
                VStack {
                    SolidButton(title: "Mark as Child Recieved", width: 250)
                    
                    Spacer().frame(height: 15)
                    
                    if(authViewModel.userType == .educator) {
                        SolidButton(title: "Edit Request",
                                    width: 160,
                                    onPress: {
                            appViewModel.educatorPacketStackNavigationPath.append(.editPacket)
                        })
                    }
                }
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       alignment: .center)
            }
        }
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               maxHeight: .infinity,
               alignment: .topLeading)
    }
}

#Preview {
    PacketInformations()
        .environmentObject(AppViewModel())
        .environmentObject(AuthViewModel())
}
