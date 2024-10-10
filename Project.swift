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
            product: .app,
            bundleId: "io.tuist.MovieInfo",
            infoPlist: "MovieInfo/Info.plist",
            sources: ["MovieInfo/Source/**"],
            resources: ["MovieInfo/Resources/**"],
            dependencies: [
                /** Dependencies go here **/
                /** .external(name: "Kingfisher") **/
                /** .target(name: "OtherProjectTarget") **/
                .project(
                    target: "NetworkKit",
                    path: .relativeToManifest("NetworkKit")
                )
            ],
            settings: .settings(configurations: [
                .debug(name: "Debug", xcconfig: "./xcconfigs/MovieInfo-Target.xcconfig"),
                .debug(name: "Release", xcconfig: "./xcconfigs/MovieInfo-Target.xcconfig"),
            ])
        ),
    ]
)
