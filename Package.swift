// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Notepad",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(
            name: "Notepad",
            targets: ["Notepad"]
        ),
    ],
    targets: [
        .target(
            name: "Notepad",
            path: "Notepad",
            exclude: [
                "Info.plist",
            ],
            resources: [
                .copy("themes")
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
