import SwiftUI

struct PacketSubmitSuccessModal: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.black.opacity(0.5))
            
            VStack {
                PrimaryTitle(text: "Your request has been\nsubmitted!",
                             multilineTextAlignment: .center)
                
                Spacer().frame(height: 20)
                
                PrimarySubTitle(text: "Your request has been submitted. We’ve assigned the tracking number, 12345678, to this request and you can view it’s status on your Requests page. We will keep you updated on the status of your requests.",
                                color: .textInputLabel,
                                multilineTextAlignment: .center)
                
                Spacer().frame(height: 30)
                
                SolidButton(title: "View Request", width: 250)
                
                Spacer().frame(height: 10)
                
                SolidButton(title: "Submit Another Request", width: 250)
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
    PacketSubmitSuccessModal()
}
