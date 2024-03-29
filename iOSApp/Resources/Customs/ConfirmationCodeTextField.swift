//
//  ConfirmationCodeTextField.swift
//  iOSApp
//
//  Created by HOGGISH on 15/05/21.
//

import UIKit

protocol OneTimeCodeTextFieldDelegate {
    func didEnterLastDigit(_ text: String)
}

final class OneTimeCodeTextField: UITextField {
    
    var oneTimeCodeTextFieldDelegate: OneTimeCodeTextFieldDelegate!
    
    private var digitLabels = [UILabel]()
    
    init(with slotCount: Int = 6) {
        super.init(frame: .zero)
        
        configureTextField()
        let labelsStackView = createLabelsStackView(with: slotCount)
        addSubview(labelsStackView)
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(becomeFirstResponder))
        addGestureRecognizer(tapRecognizer)
        labelsStackView.snp.makeConstraints { (make) in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func configureTextField() {
        tintColor = .clear
        textColor = .clear
        keyboardType = .numberPad
        textContentType = .oneTimeCode
        
        addTarget(self, action: #selector(textDidChange), for: .editingChanged)
        delegate = self
    }
    
    private func createLabelsStackView(with count: Int) -> UIStackView {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        
        for _ in 1 ... count {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textAlignment = .center
            label.font = appMediumFont(size: 40)
            label.isUserInteractionEnabled = true
            label.backgroundColor = .appDyanmicClearGrayColor
            label.layer.borderWidth = 1
            label.layer.borderColor = appLightGrayColor.cgColor
            label.layer.cornerRadius = 8
            label.layer.masksToBounds = true
            stackView.addArrangedSubview(label)
            digitLabels.append(label)
        }
        
        return stackView
    }
    
    @objc private func textDidChange() {
        
        guard let text = self.text, text.count <= digitLabels.count else { return }
        
        for i in 0 ..< digitLabels.count {
            let currentLabel = digitLabels[i]
            if i < text.count {
                let index = text.index(text.startIndex, offsetBy: i)
                currentLabel.text = String(text[index])
            } else {
                currentLabel.text?.removeAll()
            }
        }
        
        if text.count == digitLabels.count {
            oneTimeCodeTextFieldDelegate.didEnterLastDigit(text)
        }
    }
    
}

extension OneTimeCodeTextField: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        guard let characterCount = textField.text?.count else { return }
        for i in 0 ..< digitLabels.count {
            if characterCount == i {
                digitLabels[i].layer.borderColor = appGrayColor.cgColor
            } else {
                digitLabels[i].layer.borderColor = appLightGrayColor.cgColor
            }
        }
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let characterCount = textField.text?.count else { return false }
        return characterCount < digitLabels.count || string == ""
    }
}
