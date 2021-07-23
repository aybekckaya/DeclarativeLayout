//
//  DeclarativeLayout.swift
//  DeclarativeLayout
//
//  Created by Aybek Can Kaya on 24.07.2021.
//

import Foundation
import UIKit

// MARK: - Edge insets
public extension UIEdgeInsets {
    public static func fill(with value: CGFloat) -> UIEdgeInsets {
        return UIEdgeInsets(top: value, left: value, bottom: value, right: value)
    }
}

// MARK: - Constraints
extension UIView {
    var view: UIView { self.superview! }
    
    @discardableResult
    public func fit(edges: UIEdgeInsets = .zero) -> UIView {
        return self.topAnchor(margin: edges.top)
            .leadingAnchor(margin: edges.left)
            .trailingAnchor(margin: edges.right)
            .bottomAnchor(margin: edges.bottom)
    }
    
    @discardableResult
    public func alignToCenter(margins: CGPoint) -> UIView {
        return self.centerXAnchor(margin: margins.x)
            .centerYAnchor(margin: margins.y)
    }
    
    @discardableResult
    public func dimensions(_ size: CGSize) -> UIView {
        return self.widthAnchor(size.width)
            .heightAnchor(size.height)
    }
    
    @discardableResult
    public func topAnchor(margin: CGFloat) -> UIView {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.topAnchor.constraint(equalTo: view.topAnchor, constant: margin).isActive = true
        return self
    }
    
    @discardableResult
    public func leadingAnchor(margin: CGFloat) -> UIView {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        return self
    }
    
    @discardableResult
    public func trailingAnchor(margin: CGFloat) -> UIView {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -1 * margin).isActive = true
        return self
    }
    
    @discardableResult
    public func bottomAnchor(margin: CGFloat) -> UIView {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -1 * margin).isActive = true
        return self
    }
    
    @discardableResult
    public func centerXAnchor(margin: CGFloat) -> UIView {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: margin).isActive = true
        return self
    }
    
    @discardableResult
    public func centerYAnchor(margin: CGFloat) -> UIView {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: margin).isActive = true
        return self
    }
    
    @discardableResult
    public func widthAnchor(_ constant: CGFloat) -> UIView {
        self.widthAnchor.constraint(equalToConstant: constant).isActive = true
        return self
    }
    
    @discardableResult
    public func heightAnchor(_ constant: CGFloat) -> UIView {
        self.heightAnchor.constraint(equalToConstant: constant).isActive = true
        return self
    }
}
