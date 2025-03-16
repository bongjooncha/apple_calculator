import SwiftUI
import Foundation

class CalculatorViewModel: ObservableObject {
    @Published var displayValue: String = "0"
    private var isTypingNumber = false
    
    private let calculatorModel = CalculatorModel()
    
    // 숫자 버튼 클릭시
    func numberPressed(_ number: String) {
        if isTypingNumber {
            if displayValue.count < 9{
                displayValue += number
            }
        } else {
            displayValue = number
            isTypingNumber = true
        }
    }
    // +-/* 클릭시
    func performOperation(_ operation: Operation){
        if let value = Double(displayValue){
            calculatorModel.setOperand(value)
            calculatorModel.performOperation(operation)
            isTypingNumber = false
        }
    }
    // =
    func equals(){
        if isTypingNumber{
            if let value = Double(displayValue){
                calculatorModel.setOperand(value)
                let result = calculatorModel.calculate()
                isTypingNumber = false
            }
        }
    }
    
    
    
    func calculate(_ expression: String) -> String {
        return "\(expression)"
    }
}
