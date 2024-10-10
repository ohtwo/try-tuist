import ProjectDescription

import ProjectDescription

let project = Project(
    name: "MovieInfo-Tuist",
    settings: .settings(configurations: [
        .debug(name: "Debug", xcconfig: "./xcconfigs/MovieInfo-Project.xcconfig"),
        .debug(name: "Release", xcconfig: "./xcconfigs/MovieInfo-Project.xcconfig"),
    ]),
    targets: [
        .target(
            name: "MovieInfo",
            destinations: .iOS,
            product: .app, // [!code ++] // or .staticFramework, .staticLibrary...
            bundleId: "io.tuist.MovieInfo",
            infoPlist: "MovieInfo/Info.plist",
            sources: ["MovieInfo/Source/**"],
            resources: ["MovieInfo/Resources/**"],
            dependencies: [
                /** Dependencies go here **/
                /** .external(name: "Kingfisher") **/
                /** .target(name: "OtherProjectTarget") **/
            ],
            settings: .settings(configurations: [
                .debug(name: "Debug", xcconfig: "./xcconfigs/MovieInfo-Target.xcconfig"),
                .debug(name: "Release", xcconfig: "./xcconfigs/MovieInfo-Target.xcconfig"),
            ])
        ),
    ]
)
