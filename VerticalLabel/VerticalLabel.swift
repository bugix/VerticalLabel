//
//  VerticalLabel.swift
//  VerticalLabel
//
//  Created by Martin Imobersteg on 10.10.17.
//  Copyright © 2017 Martin Imobersteg. All rights reserved.
//

import UIKit

@IBDesignable
public class VerticalLabel: UIView {

    private let label = UILabel()

    @IBInspectable
    public var text: String = "" {
        didSet {
            self.label.text = self.text
            invalidateIntrinsicContentSize()
        }
    }

    @IBInspectable
    public var fontSize: Int = 14 {
        didSet {
            self.label.font = .systemFont(ofSize: CGFloat(fontSize))
            invalidateIntrinsicContentSize()
        }
    }

    @IBInspectable
    public var boldFont: Bool = false {
        didSet {
            if boldFont {
                self.label.font = .boldSystemFont(ofSize: CGFloat(fontSize))
            }
            else {
                self.label.font = .systemFont(ofSize: CGFloat(fontSize))
            }
            invalidateIntrinsicContentSize()
        }
    }

    override public var intrinsicContentSize: CGSize {
        return CGSize(width: label.intrinsicContentSize.height, height: label.intrinsicContentSize.width)
    }

    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupLabel()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLabel()
    }

    private func setupLabel() {
        addSubview(label)

        label.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)

        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: label, attribute: .height, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: label, attribute: .width, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: label, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: label, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
    }
}

