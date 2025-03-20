import SwiftUI

struct CalculatorButton: View{
    var title: String
    var color: Color
    var action: () -> Void
    
    var body: some View {
        Button (action:action) {
            Text(title)
                .font(.system(size: 32))
                .frame(width: 70, height: 70)
                .background(color)
                .foregroundColor(.white)
                .cornerRadius(35)
        }
    }
}

#Preview {
    CalculatorButton(title: "ㅁ", color: .green){}
}
