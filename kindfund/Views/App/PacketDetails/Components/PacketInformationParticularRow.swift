import SwiftUI

struct PacketInformationParticularRow: View {
    var title: String
    var subTitle: String
    
    var body: some View {
        HStack(alignment: .top) {
            SecondaryTitle(text: title, color: .textInputLabel)
            
            PrimarySubTitle(text: subTitle, color: .textInputLabel)
        }
        .padding(.bottom, 10)
    }
}

#Preview {
    PacketInformationParticularRow(title: "Name :", subTitle: "Debojyoti Ghosh")
}
