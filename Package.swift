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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "3.2.0-beta.28"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.2.0-beta.28"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "3.2.0-beta.28")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_CardScanner-3.2.0-beta.28.xcframework.zip",
			checksum: "17f989d076ee5deda3869b536987d82d2066d46bd853a4728d42e82e6aab96af"
		)
	]
)