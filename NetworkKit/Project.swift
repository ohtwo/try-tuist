import ProjectDescription

let project = Project(
    name: "NetworkKit-Tuist",
    settings: .settings(configurations: [
        .debug(name: "Debug", xcconfig: "./xcconfigs/NetworkKit-Project.xcconfig"),
        .debug(name: "Release", xcconfig: "./xcconfigs/NetworkKit-Project.xcconfig"),
    ]),
    targets: [
        .target(
            name: "NetworkKit",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.NetworkKit",
            infoPlist: "NetworkKit/Info.plist",
            sources: ["NetworkKit/Source/**"],
            dependencies: [
                /** Dependencies go here **/
                /** .external(name: "Kingfisher") **/
                /** .target(name: "OtherProjectTarget") **/
            ],
            settings: .settings(configurations: [
                .debug(name: "Debug", xcconfig: "./xcconfigs/NetworkKit-Target.xcconfig"),
                .debug(name: "Release", xcconfig: "./xcconfigs/NetworkKit-Target.xcconfig"),
            ])
        ),
    ]
)
