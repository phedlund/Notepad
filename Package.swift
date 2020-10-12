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
                .process("themes/base16-tomorrow-dark.json"),
                .process("themes/base16-tomorrow-light.json"),
                .process("themes/blues-clues.json"),
                .process("themes/one-dark-custom.json"),
                .process("themes/one-dark.json"),
                .process("themes/one-light-custom.json"),
                .process("themes/one-light.json"),
                .process("themes/solarized-dark.json"),
                .process("themes/solarized-light.json"),
                .process("themes/system-minimal.json")
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
