import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Laboratory",
    targets: [
        .target(
            name: "Laboratory",
            destinations: .iOS,
            product: .app,
            bundleId: "junsung.Laboratory",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                
            ]
        )
    ]
)
