import ProjectDescription

let config = Config(
    compatibleXcodeVersions: .list([
        .upToNextMajor(.init(15, 0, 0))
    ]),
    swiftVersion: .init(5, 0, 0),
    plugins: [
        .local(path: .relativeToRoot("Plugins/EnvironmentPlugin")),
        .local(path: .relativeToRoot("Plugins/ConfigurationPlugin")),
        .local(path: .relativeToRoot("Plugins/TemplatePlugin")),
        .local(path: .relativeToRoot("Plugins/DependencyPlugin"))
    ]
)
