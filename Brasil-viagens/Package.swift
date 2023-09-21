// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "Brasil-viagens",
    dependencies: [
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.0"),
    ],
    targets: [
        .executableTarget(
            name: "Brasil-viagens",
            dependencies: [  // Mova 'dependencies' para cá
                "SwiftyJSON",
            ],
            path: "Sources"
        ),
    ]
)
