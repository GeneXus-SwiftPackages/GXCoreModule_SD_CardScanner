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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "3.1.0-beta.0"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.1.0-beta.0"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "3.1.0-beta.0")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_CardScanner-3.1.0-beta.0.xcframework.zip",
			checksum: "0dd3a7eadb2e1e081e2b03e9dfd1d449125d54f5d6a51ad46b134dfb6d5747a5"
		)
	]
)