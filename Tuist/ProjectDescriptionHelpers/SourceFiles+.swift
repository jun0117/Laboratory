import ProjectDescription

public extension SourceFilesList {
    static let demoSources: SourceFilesList = "Demo/Sources/**"
    static let interface: SourceFilesList = "Interface/**"
    static let sources: SourceFilesList = "Sources/**"
    static let unitTests: SourceFilesList = "Tests/**"
}

public extension ResourceFileElements {
    static let resources = ResourceFileElements(arrayLiteral: "Resources/**")
}
