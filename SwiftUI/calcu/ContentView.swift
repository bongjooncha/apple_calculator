//
//  ContentView.swift
//  calcu
//
//  Created by Apple on 3/15/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CalculatorViewModel()
    
    private let calculatorModel = CalculatorModel()
    
    var body : some View {
        VStack(spacing:12){
            Spacer()
            // 숫자 화면
            Display(displayValue: viewModel.displayValue)
            
            // 키패드
            KeyPad(onNumberPressed: { _ in }, onOperationPressed: { _ in }, onEqualsPressed: { }, onClearPressed: { }, onChangeSignPressed: { }, onPercentagePressed: { }, onDecimalPressed: { })
        }
    }
       
}

#Preview {
    ContentView()
}
