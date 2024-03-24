// swift-tools-version:5.0

import PackageDescription

#if TUIST
import struct ProjectDescription.PackageSettings
import ConfigurationPlugin

let packageSettings = PackageSettings(
    productTypes: [
        "RIBs": .framework,
        "Then": .framework,
        "ReactorKit": .framework,
        "WeakMapTable": .framework,
        "RxSwift": .framework,
        "RxCocoa": .framework,
        "RxRelay": .framework,
        "RxGesture": .framework,
        "RxDataSources": .framework,
        "Moya": .framework,
        "Kingfisher": .framework,
        "FlexLayout": .framework,
        "PinLayout": .framework
    ],
    baseSettings: .settings(configurations: .default),
    platforms: [.iOS]
)

#endif

let package = Package(
    name: "Packages",
    dependencies: [
        .package(url: "https://github.com/uber/RIBs.git", .exactItem("0.16.2")),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .exactItem("6.6.0")),
        .package(url: "https://github.com/RxSwiftCommunity/RxGesture.git", .exactItem("4.0.4")),
        .package(url: "https://github.com/ReactorKit/ReactorKit.git", .exactItem("3.2.0")),
        .package(url: "https://github.com/Moya/Moya.git", .exactItem("15.0.3")),
        .package(url: "https://github.com/onevcat/Kingfisher.git", .exactItem("7.11.0")),
        .package(url: "https://github.com/devxoul/Then", .exactItem("3.0.0")),
        .package(url: "https://github.com/Quick/Quick", .exactItem("7.4.1")),
        .package(url: "https://github.com/Quick/Nimble", .exactItem("13.2.1")),
        .package(url: "https://github.com/apple/swift-collections.git", .exactItem("1.0.6")),
        .package(url: "https://github.com/layoutBox/FlexLayout.git", .exactItem("2.0.07")),
        .package(url: "https://github.com/layoutBox/PinLayout.git", .exactItem("1.10.5"))
    ]
)
