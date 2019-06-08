//
//  NibInstantiatable.swift
//  storyboardWithSwiftUI
//
//  Created by kntk on 2019/06/08.
//  Copyright © 2019 kntk. All rights reserved.
//

import UIKit

protocol NibInstantiatable: class {
    associatedtype Instance
    static var NibName: String { get }
    static var nib: UINib { get }
    static func instantiateUIView() -> Instance
}

extension NibInstantiatable where Self: UIView {
    
    static var NibName: String {
        return String(describing: self)
    }
    
    static var nib: UINib {
        return UINib(nibName: NibName, bundle: nil)
    }
    
    static func instantiateUIView() -> Self {
        return nib.instantiate(withOwner: nil, options: nil)[0] as! Self
    }
}
