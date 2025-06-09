import SwiftUI

struct SolidButton: View {
    let title: String
    var backgroundColor: Color = .darkBackgroundPrimary
    var foregroundColor: Color = .light
    let width: CGFloat
    var height: CGFloat = 40
    var onPress: () -> Void = {}
    var isDisabled: Bool = false
    var isLoading: Bool = false
    
    var body: some View {
        Button {
            isDisabled || isLoading ? nil : onPress()
        } label: {
            Text(isLoading ? "Loading..." : title)
                .font(.custom(Fonts.semiBold, size: 16))
                .foregroundStyle(foregroundColor)
                .frame(width: width,
                       height: height,
                       alignment: .center)
                .background(isDisabled ? .textInputPlaceholder : backgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 5))
        }
    }
}

#Preview {
    SolidButton(title: "Button",
                width: 200)
}
