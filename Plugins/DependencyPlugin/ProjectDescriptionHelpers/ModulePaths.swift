import Foundation

// swiftlint: disable all
public enum ModulePaths {
    case feature(Feature)
    case domain(Domain)
    case core(Core)
    case shared(Shared)
    case component(Component)
}

extension ModulePaths: PathConvertable {
    public func targetName(type: MicroTargetType) -> String {
        switch self {
        case let .feature(module as any PathConvertable),
            let .domain(module as any PathConvertable),
            let .core(module as any PathConvertable),
            let .shared(module as any PathConvertable),
            let .component(module as any PathConvertable):
            return module.targetName(type: type)
        }
    }
}

public extension ModulePaths {
    enum Feature: String, PathConvertable {
        case BaseFeature
    }
}

public extension ModulePaths {
    enum Domain: String, PathConvertable {
        case BaseDomain
    }
}

public extension ModulePaths {
    enum Core: String, PathConvertable {
        case Net
    }
}

public extension ModulePaths {
    enum Shared: String, PathConvertable {
        case GlobalThirdPartyLibrary
    }
}

public extension ModulePaths {
    enum Component: String, PathConvertable {
        case DesignSystem
    }
}

public enum MicroTargetType: String {
    case interface = "Interface"
    case sources = ""
    case unitTest = "Tests"
    case testing = "Testing"
    case demo = "Demo"
}

public protocol PathConvertable {
    func targetName(type: MicroTargetType) -> String
}

public extension PathConvertable where Self: RawRepresentable {
    func targetName(type: MicroTargetType) -> String {
        "\(self.rawValue)\(type.rawValue)"
    }
}
