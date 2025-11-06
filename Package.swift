 // swift-tools-version: 6.0
 import PackageDescription

 let package = Package(
     name: "Taska",
     platforms: [
         .iOS(.v17)
     ],
     products: [
         .executable(name: "TaskaAppExec", targets: ["App"])
     ],
     targets: [
         .executableTarget(
             name: "App",
             path: "Sources/App"
         )
     ]
 )
