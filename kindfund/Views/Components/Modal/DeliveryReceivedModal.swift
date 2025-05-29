import SwiftUI

struct DeliveryReceivedModal: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.black.opacity(0.5))
            
            VStack {
                PrimaryTitle(text: "Delivery Received")
                
                Spacer().frame(height: 20)
                
                PrimarySubTitle(text: "Please submit images of your delivery (bag at the front office), maybe you with the child for KIND Fund records",
                                color: .textInputLabel,
                                multilineTextAlignment: .center)
                
                Spacer().frame(height: 30)
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())],
                              spacing:15) {
                        ForEach(0..<5) { item in
                            Rectangle()
                                .frame(width: 80, height: 80)
                                .foregroundStyle(.textInputBorder)
                        }
                    }
                }
                .frame(height: 150)
                
                Spacer().frame(height: 30)
                
                SolidButton(title: "Choose from Camera Roll", width: 250)
                
                Spacer().frame(height: 10)
                
                SolidButton(title: "Take Photo", width: 250)
                
                Spacer().frame(height: 20)
                
                SolidButton(title: "Complete", backgroundColor: .lightYellow, width: 150)
            }
            .padding(25)
            .frame(width: 330)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    DeliveryReceivedModal()
}
