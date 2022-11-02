// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "RxWebKit",
    platforms: [.iOS(.v9), .macOS(.v10_13)],
    products: [
        .library(name: "RxWebKit", targets: ["RxWebKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0"))
    ],
    targets: [
        .target(
            name: "RxWebKit",
            dependencies: ["RxSwift", "RxCocoa"],
			path: "RxWebKit/Sources"
        )
    ],
    swiftLanguageVersions: [.v5]
)
