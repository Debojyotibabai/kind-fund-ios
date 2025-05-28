import SwiftUI

struct DrawerSideBar: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .ignoresSafeArea()
                .foregroundStyle(.black.opacity(0.5))
                .onTapGesture {}
            
            VStack {
                Spacer().frame(height: 25)
                
                HStack {
                    Spacer()
                    
                    Button {
                    } label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.light)
                            .fontWeight(.medium)
                    }
                    
                    Spacer().frame(width: 30)
                }
                
                Spacer()
                
                VStack(alignment: .leading) {
                    ForEach(EducatorAppStacks.allCases, id: \.self.rawValue) { item in
                        Button {
                        } label: {
                            HStack(spacing: 15) {
                                Image(item.icon)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25, height: 25)
                                    .foregroundStyle(.light)
                                
                                Text(item.title)
                                    .font(.system(size: 20, weight: .medium))
                                    .foregroundStyle(.light)
                            }
                            .padding()
                        }
                    }
                }
                
                Spacer()
            }
            .frame(width: 300)
            .background(.primaryBackground)
        }
    }
}

#Preview {
    DrawerSideBar()
}
