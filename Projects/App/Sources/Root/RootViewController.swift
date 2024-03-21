//
//  RootViewController.swift
//  Laboratory
//
//  Created by Junsung Lee on 3/21/24.
//

import UIKit
import RIBs
import RxSwift
import FlexLayout
import PinLayout

protocol RootPresentableListener: AnyObject {
    
}

final class RootViewController: UIViewController,
                                RootPresentable,
                                RootViewControllable {

    weak var listener: RootPresentableListener?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
}
