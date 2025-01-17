//
//  Picker.swift
//  Eule
//
//  Created by Hariom Palkar on 27/11/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import Foundation
import SwiftUI


struct PickerTextField: UIViewRepresentable {
    
    private let textField = UITextField()
    private let pickerView = UIPickerView()
    private let helper = Helper()
    
    var data : [String]
    var placeholder: String
    @Binding var lastSelectedIndex : Int?
    
    func makeUIView(context: Context) -> UITextField {
        self.pickerView.delegate = context.coordinator
        self.pickerView.dataSource = context.coordinator
        
        self.textField.placeholder = self.placeholder
        self.textField.inputView = self.pickerView
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target : nil, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self.helper, action: #selector(self.helper.doneButtonAction))
        toolbar.setItems([flexibleSpace, doneButton], animated: true)
        self.helper.doneButtonTapped = {
            if self.lastSelectedIndex == nil {
                self.lastSelectedIndex = 0
            }
            self.textField.resignFirstResponder()
        }
        return self.textField
    }
    func updateUIView(_ uiView: UITextField, context: Context) {
        if let lastSelectedIndex = self.lastSelectedIndex {
            uiView.text = self.data[lastSelectedIndex]
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(data: self.data) { (index) in
        self.lastSelectedIndex = index
    }
    }
    class Helper {
        public var doneButtonTapped: (() -> Void)?

        @objc func doneButtonAction() {
            self.doneButtonTapped?()
        }
    }
    
    class Coordinator: NSObject, UIPickerViewDataSource, UIPickerViewDelegate {
        private var data: [String]
        private var didSelectItem: ((Int) -> Void)?
        
        init(data: [String], didSelectItem : ((Int) -> Void)?  = nil) {
        self.data = data
        self.didSelectItem = didSelectItem
        }
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return self.data.count
        }
        func pickerView(_ pickerView: UIPickerView, titleForRow row : Int, forComponent  component: Int) -> String? {
            return self.data[row]
        }
        func pickerView(_ pickerView: UIPickerView, didSelectRow row : Int, inComponent  component: Int) {
            self.didSelectItem?(row)
        }
        
        
        
    }
    
}
