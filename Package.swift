// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_CardScanner",
	platforms: [.iOS("12.0"), .watchOS("5.0"), .tvOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_CardScanner",
			targets: ["GXCoreModule_SD_CardScannerWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", branch: "beta"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", branch: "beta"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", branch: "beta")
	],
	targets: [
		.target(name: "GXCoreModule_SD_CardScannerWrapper",
				dependencies: [
					"GXCoreModule_SD_CardScanner",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.watchOS, .tvOS, .iOS])),
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS])),
					.product(name: "GXFoundation", package: "GXFoundation", condition: .when(platforms: [.iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_CardScanner",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_CardScanner-1.0.0-beta+20230309171424.xcframework.zip",
			checksum: "361132c936325d0f515300c792ce818172423a909e72fc7f17d34de93f50941b"
		)
	]
)