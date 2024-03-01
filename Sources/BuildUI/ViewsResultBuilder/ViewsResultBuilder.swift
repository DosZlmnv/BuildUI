//
//  ViewsResultBuilder.swift
//
//
//  Created by Dossymkhan Zhulamanov on 01.03.2024.
//

import UIKit

@resultBuilder
public final class ViewsResultBuilder {
    public static func buildBlock(_ views: UIView...) -> [UIView] {
        return views
    }
}
