import SwiftUI

struct TotalSpendModeyModal: View {
    @State var comment: String = ""
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.black.opacity(0.5))
            
            VStack {
                PrimaryTitle(text: "How much money did you spend total?",
                             multilineTextAlignment: .center)
                
                Spacer().frame(height: 30)
                
                TextInput(text: $comment,
                          placeholder: "")
                
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
    TotalSpendModeyModal()
}
