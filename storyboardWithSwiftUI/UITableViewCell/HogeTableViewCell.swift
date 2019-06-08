//
//  HogeTableViewCell.swift
//  storyboardWithSwiftUI
//
//  Created by kntk on 2019/06/09.
//  Copyright © 2019年 kntk. All rights reserved.
//

import UIKit

final class HogeTableViewCell: UITableViewCell, NibInstantiatable {

    // MARK: - Outlet

    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    // MARK: - Builder

    class func build() -> UIView {
        let uiView = instantiateUIView()
        return uiView
    }
}
