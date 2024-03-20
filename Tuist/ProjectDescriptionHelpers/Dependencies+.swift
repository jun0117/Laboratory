//
//  Dependencies+.swift
//
//  Created by Junsung Lee on 3/20/24.
//

import Foundation
import ProjectDescription

extension TargetDependency {
    public struct SPM { }
}

extension TargetDependency.SPM {
    public static let RIBs: TargetDependency = .external(name: "RIBs")
    public static let RxSwift: TargetDependency = .external(name: "RxSwift")
    public static let RxCocoa: TargetDependency = .external(name: "RxCocoa")
    public static let RxGesture: TargetDependency = .external(name: "RxGesture")
    public static let ReactorKit: TargetDependency = .external(name: "ReactorKit")
    public static let Moya: TargetDependency = .external(name: "Moya")
    public static let RxMoya: TargetDependency = .external(name: "RxMoya")
    public static let Then: TargetDependency = .external(name: "Then")
    public static let Kingfisher: TargetDependency = .external(name: "Kingfisher")
    public static let FlexLayout: TargetDependency = .external(name: "FlexLayout")
    public static let PinLayout: TargetDependency = .external(name: "PinLayout")
    public static let Quick: TargetDependency = .external(name: "Quick")
    public static let Nimble: TargetDependency = .external(name: "Nimble")
}
