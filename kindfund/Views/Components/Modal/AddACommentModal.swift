import SwiftUI

struct AddACommentModal: View {
    @State var comment: String = ""
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.black.opacity(0.5))
            
            VStack {
                PrimaryTitle(text: "Add a Comment?")
                
                Spacer().frame(height: 20)
                
                PrimarySubTitle(text: "Would you like you leave a comment about this request? We love to hear how the child reacted to their new clothes or anything else you have to say about the experience.",
                                color: .textInputLabel,
                                multilineTextAlignment: .center)
                
                Spacer().frame(height: 30)
                
                TextInput(text: $comment,
                          placeholder: "Write something...",
                          backgroundColor: .light,
                          lineLimit: 5...10)
                
                Spacer().frame(height: 30)
                
                SolidButton(title: "Submit", width: 250)
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
    AddACommentModal()
}
