import SwiftUI

struct KeyPad: View {
    var onNumberPressed: (String) -> Void       // 숫자 입력
    var onOperationPressed: (Operation) -> Void    // 연산자 입력
    var onEqualsPressed: () -> Void             // = 입력
    var onClearPressed: () -> Void              // 초기화
    var onChangeSignPressed:()->Void
    var onPercentagePressed: () -> Void
    var onDecimalPressed: () -> Void
    
    var body: some View{
        VStack(spacing: 12) {
            // ac
            HStack(spacing: 12) {
                CalculatorButton(title: "AC", color: .gray) {
                    onClearPressed()
                }
                CalculatorButton(title: "+/-", color: .gray) {
                    onChangeSignPressed()
                }
                CalculatorButton(title: "%", color: .gray) {
                    onPercentagePressed()
                }
                CalculatorButton(title: "÷", color: .orange) {
                    onOperationPressed(.div)
                }
                
            }
            // 7
            HStack(spacing: 12) {
                CalculatorButton(title: "7", color: .gray) {
                    onNumberPressed("7")
                }
                CalculatorButton(title: "8", color: .gray) {
                    onNumberPressed("8")
                }
                CalculatorButton(title: "9", color: .gray) {
                    onNumberPressed("9")
                }
                CalculatorButton(title: "×", color: .orange) {
                    onOperationPressed(.multi)
                }
            }
            // 4
            HStack(spacing: 12) {
                CalculatorButton(title: "4", color: .gray) {
                    onNumberPressed("4")
                }
                CalculatorButton(title: "5", color: .gray) {
                    onNumberPressed("5")
                }
                CalculatorButton(title: "6", color: .gray) {
                    onNumberPressed("6")
                }
                CalculatorButton(title: "-", color: .orange) {
                    onOperationPressed(.sub)
                }
            }
            // 1
            HStack(spacing: 12) {
                CalculatorButton(title: "1", color: .gray) {
                    onNumberPressed("1")
                }
                CalculatorButton(title: "2", color: .gray) {
                    onNumberPressed("2")
                }
                CalculatorButton(title: "3", color: .gray) {
                    onNumberPressed("3")
                }
                CalculatorButton(title: "+", color: .orange) {
                    onOperationPressed(.add)
                }
            }
            // 0
            HStack(spacing: 12) {
                CalculatorButton(title:"" , color: .white){}
                CalculatorButton(title: "0", color: .gray) {
                    onNumberPressed("0")
                }
                CalculatorButton(title: ".", color: .gray) {
                    onDecimalPressed()
                }
                CalculatorButton(title: "=", color: .orange) {
                    onEqualsPressed()
                }
            }
            
        }
    }
}

#Preview {
    KeyPad(onNumberPressed: { _ in }, onOperationPressed: { _ in }, onEqualsPressed: { }, onClearPressed: { }, onChangeSignPressed: { }, onPercentagePressed: { }, onDecimalPressed: { })
}
