import ProjectDescription

public extension TargetDependency {
    struct SPM {}
}

public extension TargetDependency.SPM {
    static let RIBs: TargetDependency = .external(name: "RIBs")
    static let RxSwift: TargetDependency = .external(name: "RxSwift")
    static let RxCocoa: TargetDependency = .external(name: "RxCocoa")
    static let RxGesture: TargetDependency = .external(name: "RxGesture")
    static let ReactorKit: TargetDependency = .external(name: "ReactorKit")
    static let Moya: TargetDependency = .external(name: "Moya")
    static let RxMoya: TargetDependency = .external(name: "RxMoya")
    static let Then: TargetDependency = .external(name: "Then")
    static let Kingfisher: TargetDependency = .external(name: "Kingfisher")
    static let FlexLayout: TargetDependency = .external(name: "FlexLayout")
    static let PinLayout: TargetDependency = .external(name: "PinLayout")
    static let Quick: TargetDependency = .external(name: "Quick")
    static let Nimble: TargetDependency = .external(name: "Nimble")
}

