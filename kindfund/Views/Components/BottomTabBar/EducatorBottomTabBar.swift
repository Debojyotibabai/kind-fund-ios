import SwiftUI

struct EducaBottomTabBar: View {
    var body: some View {
        HStack {
            ForEach(EducatorTabBarEnum.allCases, id: \.self) { item in
                HStack {
                    Spacer()
                    Image(item.unFillIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25)
                    Spacer()
                }
            }
        }
        .padding(20)
        .frame(minWidth: 0,
               maxWidth: .infinity)
        .background(.primaryBackground)
    }
}

#Preview {
    EducaBottomTabBar()
}
