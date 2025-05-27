import SwiftUI

struct PacketStatusChanger: View {
    var body: some View {
        VStack(alignment: .leading) {
            Spacer().frame(height: 10)
            
            ForEach(Array(PacketStatusEnum.allCases.enumerated()), id: \.element.id) { (index, item) in
                VStack(alignment: .leading) {
                    HStack {
                        Rectangle()
                            .frame(width: 25, height: 25)
                            .foregroundStyle(.light)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        
                        Spacer().frame(width: 10)
                        
                        Text(item.title.uppercased())
                            .font(.custom(Fonts.regular, size: 14))
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 15)
                    
                    if(index < PacketStatusEnum.allCases.count - 1) {
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.dark)
                    } else {
                        Spacer().frame(height: 8)
                    }
                }
            }
        }
        .background(.lightYellow)
        .clipShape(RoundedRectangle(cornerRadius: 5))
    }
}

#Preview {
    PacketStatusChanger()
}
