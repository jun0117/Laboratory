//
//  AppDelegate.swift
//  Laboratory
//
//  Created by Junsung Lee on 3/21/24.
//

import UIKit
import RIBs

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    private var launchRouter: LaunchRouting?
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        guard let window else { return false }
        self.launchRouter = RootBuilder(dependency: EmptyComponent()).build()
        self.launchRouter?.launch(from: window)
        return true
    }
}
