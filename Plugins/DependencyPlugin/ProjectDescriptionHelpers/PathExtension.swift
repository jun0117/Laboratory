import ProjectDescription

public extension TargetDependency {
    static func feature(target: ModulePaths.Feature, type: MicroTargetType = .sources) -> TargetDependency {
        .project(target: target.targetName(type: type), path: .relativeToFeature(target.rawValue))
    }

    static func domain(target: ModulePaths.Domain, type: MicroTargetType = .sources) -> TargetDependency {
        .project(target: target.targetName(type: type), path: .relativeToDomain(target.rawValue))
    }

    static func core(target: ModulePaths.Core, type: MicroTargetType = .sources) -> TargetDependency {
        .project(target: target.targetName(type: type), path: .relativeToCore(target.rawValue))
    }

    static func shared(target: ModulePaths.Shared, type: MicroTargetType = .sources) -> TargetDependency {
        .project(target: target.targetName(type: type), path: .relativeToShared(target.rawValue))
    }

    static func userInterface(target: ModulePaths.Component, type: MicroTargetType = .sources) -> TargetDependency {
        .project(target: target.targetName(type: type), path: .relativeToComponent(target.rawValue))
    }
}


public extension ProjectDescription.Path {
    static func relativeToFeature(_ path: String) -> Self {
        .relativeToRoot("Projects/Feature/\(path)")
    }
    
    static func relativeToDomain(_ path: String) -> Self {
        .relativeToRoot("Projects/Domain/\(path)")
    }
    
    static func relativeToCore(_ path: String) -> Self {
        .relativeToRoot("Projects/Core/\(path)")
    }
    
    static func relativeToShared(_ path: String) -> Self {
        .relativeToRoot("Projects/Shared/\(path)")
    }
    
    static func relativeToComponent(_ path: String) -> Self {
        .relativeToRoot("Projects/Component/\(path)")
    }
    
    static var app: Self {
        .relativeToRoot("Projects/App")
    }
}
