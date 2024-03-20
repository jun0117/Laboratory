import ProjectDescription

let config = Config(
    compatibleXcodeVersions: .list([
        .upToNextMajor(.init(15, 0, 0))
    ]),
    swiftVersion: .init(5, 0, 0),
    plugins: [
        .local(path: .relativeToRoot("Plugins/EnvironmentPlugin"))
    ]
)
