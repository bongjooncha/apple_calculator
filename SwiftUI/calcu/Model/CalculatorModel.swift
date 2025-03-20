enum Operation {
    case add, sub, multi, div, none
}


class CalculatorModel {
    private var accumulator: Double = 0
    private var currentOperation: Operation = .none
    private var previousNumber: Double = 0
    
    func setOperand(_ operand: Double){
        accumulator = operand
    }
    func performOperation(_ operation: Operation){
        previousNumber = accumulator
        currentOperation = operation
    }
    
    func calculate() -> Double{
        switch currentOperation {
        case .add:
            return accumulator + previousNumber
        case .sub:
            return previousNumber - accumulator
        case .multi:
            return accumulator * previousNumber
        case .div:
            return previousNumber / accumulator
        case .none:
            return accumulator
        }
    func clear(){
            accumulator = 0
            currentOperation = .none
            previousNumber = 0
        }
    }
}
