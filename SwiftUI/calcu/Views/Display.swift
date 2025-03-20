import SwiftUI

struct Display: View {
    let displayValue: String
    
    var body: some View {
        Text(displayValue)
            .font(.system(size: 64))
            .fontWeight(.light)
            .padding(.horizontal, 24)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .lineLimit(1)
            .minimumScaleFactor(0.5)
    }
}


#Preview {
    Display(displayValue: "1234567890")
}
