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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "5.0.0-beta.5"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "5.0.0-beta.5"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "5.0.0-beta.5")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_CardScanner-5.0.0-beta.5.xcframework.zip",
			checksum: "a4f78ab020c80faa4c9e6bd2c38250ef13aafb8d9da66d18abe5ffa4b7c2b727"
		)
	]
)