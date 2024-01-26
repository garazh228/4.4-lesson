//
//  price.swift
//  4.4 lesson
//
//  Created by adyl CEO on 25/01/2024.
//

import UIKit
//
//class price: UIView {
//
//  
//    private let priceLabel: UILabel = {
//            let label = UILabel()
//            label.text = "Price: $10.00"
//            return label
//        }()
//
//        private let quantityLabel: UILabel = {
//            let label = UILabel()
//            label.text = "Quantity: 1"
//            return label
//        }()
//
//        private let stepper: UIStepper = {
//            let stepper = UIStepper()
//            stepper.minimumValue = 1
//            stepper.maximumValue = 10
//            return stepper
//        }()
//
//        override init(frame: CGRect) {
//            super.init(frame: frame)
//            setupUI()
//        }
//
//        required init?(coder: NSCoder) {
//            super.init(coder: coder)
//            setupUI()
//        }
//
//        private func setupUI() {
//            let stackView = UIStackView(arrangedSubviews: [priceLabel, quantityLabel, stepper])
//            stackView.axis = .horizontal
//            stackView.alignment = .center
//            stackView.spacing = 8
//
//            addSubview(stackView)
//            stackView.translatesAutoresizingMaskIntoConstraints = false
//
//            NSLayoutConstraint.activate([
//                stackView.topAnchor.constraint(equalTo: topAnchor),
//                stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
//                stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
//                stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
//            ])
//
//            stepper.addTarget(self, action: #selector(stepperValueChanged(_:)), for: .valueChanged)
//        }
//
//        @objc private func stepperValueChanged(_ sender: UIStepper) {
//            let quantity = Int(sender.value)
//            updateQuantityLabel(quantity)
//            updatePriceLabel(quantity)
//        }
//
//        private func updateQuantityLabel(_ quantity: Int) {
//            quantityLabel.text = "Quantity: \(quantity)"
//        }
//
//        private func updatePriceLabel(_ quantity: Int) {
//            
//            let pricePerItem = 10.00
//            let totalPrice = Double(quantity) * pricePerItem
//            priceLabel.text = String(format: "Price: $%.2f", totalPrice)
//        }
//}
