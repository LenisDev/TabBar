import PackageDescription

let package = Package(name: "TabBar",
                      platforms: [.iOS(.v10)],
                      products: [.library(name: "TabBar",
                                          targets: ["TabBar"])],
                      targets: [.target(name: "TabBar",
                                        path: "TabBar/TabBar",
                                .testTarget(name: "TabBarTests",
                                            dependencies: ["TabBar"],
                                            path: "TabBar/TabBarTests")],
                      swiftLanguageVersions: [.v5])
