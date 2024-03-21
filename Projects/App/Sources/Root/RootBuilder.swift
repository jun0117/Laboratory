//
//  RootBuilder.swift
//  Laboratory
//
//  Created by Junsung Lee on 3/21/24.
//

import RIBs

protocol RootDependency: Dependency {
    
}

final class RootComponent: EmptyDependency {

}

// MARK: - Builder

protocol RootBuildable: Buildable {
    func build() -> LaunchRouting
}

final class RootBuilder: Builder<EmptyDependency>, RootBuildable {

    override init(dependency: EmptyDependency) {
        super.init(dependency: dependency)
    }

    func build() -> LaunchRouting {
        let component = RootComponent()
        let viewController = RootViewController()
        let interactor = RootInteractor(presenter: viewController)
        return RootRouter(interactor: interactor, viewController: viewController)
    }
}
