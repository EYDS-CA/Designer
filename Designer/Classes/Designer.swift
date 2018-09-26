//
//  Designer.swift
//  Designer
//
//  Created by Amir Shayegh on 2018-09-25.
//

import Foundation
import UIKit

public protocol Designer {}
public extension Designer {
    public func style(button: UIButton, backgroundColor: UIColor, titleColor: UIColor, borderColor: UIColor, cornerRadius: CGFloat) {
        button.layer.cornerRadius = cornerRadius
        button.backgroundColor = backgroundColor
        button.layer.borderWidth = 1
        button.layer.borderColor = borderColor.cgColor
        button.setTitleColor(titleColor, for: .normal)
    }

    public func roundCorners(layer: CALayer, by: CGFloat) {
        layer.cornerRadius = by
    }

    public func makeCircle(view: UIView) {
        view.layer.cornerRadius = view.frame.size.height/2
    }

    public func addShadow(layer: CALayer) {
        addShadow(to: layer, opacity: 0.8, height: 2)
    }

    public func addShadow(to layer: CALayer, opacity: Float, height: Int, radius: CGFloat? = 10) {
        layer.borderColor = UIColor(red:0.14, green:0.25, blue:0.46, alpha:0.2).cgColor
        layer.shadowOffset = CGSize(width: 0, height: height)
        layer.shadowColor = UIColor(red:0.14, green:0.25, blue:0.46, alpha:0.2).cgColor
        layer.shadowOpacity = opacity
        var r: CGFloat = 10
        if let radius = radius {
            r = radius
        }
        layer.shadowRadius = r
    }
}
