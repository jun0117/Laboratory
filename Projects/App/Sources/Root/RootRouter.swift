//
//  RootRouter.swift
//  Laboratory
//
//  Created by Junsung Lee on 3/21/24.
//

import RIBs

protocol RootInteractable: Interactable {
    var router: RootRouting? { get set }
}

protocol RootViewControllable: ViewControllable {
    
}

final class RootRouter: LaunchRouter<RootInteractable, RootViewControllable>,
                        RootRouting {

    override init(interactor: RootInteractable, viewController: RootViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
