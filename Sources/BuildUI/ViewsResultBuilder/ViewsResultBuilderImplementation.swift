//
//  ViewsResultBuilderImplementation.swift
//  
//
//  Created by Dossymkhan Zhulamanov on 01.03.2024.
//

import UIKit

extension UIStackView {
    public convenience init(
        axis: NSLayoutConstraint.Axis = .horizontal,
        spacing: CGFloat = 0,
        alignment: UIStackView.Alignment = .fill,
        distribution: Distribution = .fill,
        margins: UIEdgeInsets? = .zero,
        @ViewsResultBuilder viewElements: () -> ([UIView])
    ) {
        self.init(frame: .zero)
        self.axis = axis
        self.spacing = spacing
        self.alignment = alignment
        self.distribution = distribution
        if let margins = margins {
            self.layoutMargins = margins
            self.isLayoutMarginsRelativeArrangement = true
        }
        viewElements().forEach {
            addArrangedSubview($0)
        }
    }
    
    @discardableResult
    public func arrange(
        axis: NSLayoutConstraint.Axis = .horizontal,
        spacing: CGFloat = 0,
        alignment: UIStackView.Alignment = .fill,
        insets: UIEdgeInsets = .zero,
        @ViewsResultBuilder viewElements: () -> ([UIView])
    ) -> Self {
        self.axis = axis
        self.spacing = spacing
        self.alignment = alignment
        self.layoutMargins = insets
        self.isLayoutMarginsRelativeArrangement = true
        viewElements().forEach(addArrangedSubview)
        return self
    }
}
