// swift-tools-version:5.3
import PackageDescription

let version = "3.0.1"
let xcFrameworkURL = "https://vox-ios-sdk.s3.us-east-1.amazonaws.com/sdk/ios/release/v\(version)/VoxeetSDK.zip"
let xcFrameworkChecksum = "49aadcb849679d17961b7f63023cd130a5db13521c5c4b1d93653b5d5ec2abaa"

let package = Package(
    name: "VoxeetSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "VoxeetSDK",
            targets: ["VoxeetSDK", "WebRTC", "dvclient"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "VoxeetSDK",
            url: xcFrameworkURL,
            checksum: xcFrameworkChecksum
        ),
        .binaryTarget(
            name: "WebRTC",
            url: xcFrameworkURL,
            checksum: xcFrameworkChecksum
        ),
        .binaryTarget(
            name: "dvclient",
            url: xcFrameworkURL,
            checksum: xcFrameworkChecksum
        ),
    ]
)
