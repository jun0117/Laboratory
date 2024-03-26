import Foundation
import ProjectDescription
import DependencyPlugin
import EnvironmentPlugin

public extension Target {
    static func interface(module: ModulePaths, dependencies: [TargetDependency] = []) -> Target {
        TargetSpec(sources: .interface, dependencies: dependencies)
            .toTarget(with: module.targetName(type: .interface), product: .framework)
    }
    
    static func implements(
        module: ModulePaths,
        product: Product = .staticLibrary,
        dependencies: [TargetDependency] = []
    ) -> Target {
        TargetSpec(sources: .sources, dependencies: dependencies)
            .toTarget(with: module.targetName(type: .sources), product: product)
    }
    
    static func tests(module: ModulePaths, dependencies: [TargetDependency] = []) -> Target {
        TargetSpec(sources: .unitTests, dependencies: dependencies + [.SPM.Quick, .SPM.Nimble])
            .toTarget(with: module.targetName(type: .unitTest), product: .unitTests)
    }
    
    static func testing(module: ModulePaths, dependencies: [TargetDependency] = []) -> Target {
        TargetSpec(sources: .testing, dependencies: dependencies)
            .toTarget(with: module.targetName(type: .testing), product: .framework)
    }
    
    static func demo(module: ModulePaths, dependencies: [TargetDependency] = []) -> Target {
        TargetSpec(
            infoPlist: .extendingDefault(with: [
                "UIMainStoryboardFile": "",
                "UILaunchStoryboardName": "LaunchScreen",
                "ENABLE_TESTS": .boolean(true),
            ]),
            sources: .demoSources,
            dependencies: dependencies
        )
        .toTarget(with: module.targetName(type: .demo), product: .app)
    }
}

public struct TargetSpec {
    public var name: String
    public var destinations: Destinations
    public var product: Product
    public var productName: String?
    public var bundleId: String?
    public var deploymentTargets: DeploymentTargets?
    public var infoPlist: InfoPlist?
    public var sources: SourceFilesList?
    public var resources: ResourceFileElements?
    public var copyFiles: [CopyFilesAction]?
    public var headers: Headers?
    public var entitlements: Entitlements?
    public var dependencies: [TargetDependency]
    public var settings: Settings?
    public var coreDataModels: [CoreDataModel]
    public var environmentVariables: [String: EnvironmentVariable]
    public var launchArguments: [LaunchArgument]
    public var additionalFiles: [FileElement]
    public var buildRules: [BuildRule]
    public var mergedBinaryType: MergedBinaryType
    public var mergeable: Bool

    public init(
        name: String = "",
        destinations: Destinations = env.destinations,
        product: Product = .staticLibrary,
        productName: String? = nil,
        bundleId: String? = nil,
        deploymentTargets: DeploymentTargets? = env.deploymentTargets,
        infoPlist: InfoPlist = .default,
        sources: SourceFilesList? = .sources,
        resources: ResourceFileElements? = nil,
        copyFiles: [CopyFilesAction]? = nil,
        headers: Headers? = nil,
        entitlements: Entitlements? = nil,
        dependencies: [TargetDependency] = [],
        settings: Settings? = nil,
        coreDataModels: [CoreDataModel] = [],
        environmentVariables: [String: EnvironmentVariable] = [:],
        launchArguments: [LaunchArgument] = [],
        additionalFiles: [FileElement] = [],
        buildRules: [BuildRule] = [],
        mergedBinaryType: MergedBinaryType = .disabled,
        mergeable: Bool = false
    ) {
        self.name = name
        self.destinations = destinations
        self.product = product
        self.productName = productName
        self.bundleId = bundleId
        self.deploymentTargets = deploymentTargets
        self.infoPlist = infoPlist
        self.sources = sources
        self.resources = resources
        self.copyFiles = copyFiles
        self.headers = headers
        self.entitlements = entitlements
        self.dependencies = dependencies
        self.settings = settings
        self.coreDataModels = coreDataModels
        self.environmentVariables = environmentVariables
        self.launchArguments = launchArguments
        self.additionalFiles = additionalFiles
        self.buildRules = buildRules
        self.mergedBinaryType = mergedBinaryType
        self.mergeable = mergeable
    }

    func toTarget() -> Target {
        self.toTarget(with: self.name)
    }

    func toTarget(with name: String, product: Product? = nil) -> Target {
        .target(
            name: name,
            destinations: destinations,
            product: product ?? self.product,
            productName: productName,
            bundleId: bundleId ?? "\(env.organizationName).\(name)",
            deploymentTargets: deploymentTargets,
            infoPlist: infoPlist,
            sources: sources,
            resources: resources,
            copyFiles: copyFiles,
            headers: headers,
            entitlements: entitlements,
            dependencies: dependencies,
            settings: settings,
            coreDataModels: coreDataModels,
            environmentVariables: environmentVariables,
            launchArguments: launchArguments,
            additionalFiles: additionalFiles,
            buildRules: buildRules,
            mergedBinaryType: mergedBinaryType,
            mergeable: mergeable
        )
    }
}
