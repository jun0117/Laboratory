import ProjectDescription
import ProjectDescriptionHelpers
import DependencyPlugin

let project = Project.module(
    name: ModulePaths.Core.Net.rawValue,
    targets: [
        .interface(module: .core(.Net), dependencies: [
            .SPM.Moya,
            .SPM.RxMoya,
            .SPM.RxSwift
        ]),
        .implements(module: .core(.Net)),
        .tests(module: .core(.Net)),
    ]
)
