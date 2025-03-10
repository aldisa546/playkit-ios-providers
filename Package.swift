// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "PlayKitProviders",
    platforms: [.iOS(.v14)],
    products: [.library(name: "PlayKitProviders",
                        targets: ["PlayKitProviders"])],
    dependencies: [
        .package(url: "https://github.com/yahoojapan/SwiftyXMLParser.git", from: "5.6.0"),
        .package(name: "PlayKitCustomized",
                 url: "https://github.com/aldisa546/playkit-ios.git",
                 .upToNextMinor(from: "3.31.0")),
    ],
    targets: [.target(name: "PlayKitProviders",
                      dependencies: [
                        "SwiftyXMLParser",
                        .product(name: "AnalyticsCommon", package: "PlayKitCustomized"),
                      ],
                      path: "Sources/")
    ]
)
