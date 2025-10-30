// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_CardScanner",
	platforms: [.iOS("15.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_CardScanner",
			targets: ["GXCoreModule_SD_CardScannerWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "4.0.0-beta.51"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "4.0.0-beta.51"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "4.0.0-beta.51")
	],
	targets: [
		.target(name: "GXCoreModule_SD_CardScannerWrapper",
				dependencies: [
					"GXCoreModule_SD_CardScanner",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.iOS])),
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS])),
					.product(name: "GXFoundation", package: "GXFoundation", condition: .when(platforms: [.iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_CardScanner",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_CardScanner-4.0.0-beta.51.xcframework.zip",
			checksum: "d3efa1b9860bbd3d41f3bd69ccf4c56c15bb820666bfb19427d4d9b7fb5e648a"
		)
	]
)