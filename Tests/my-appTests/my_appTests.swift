import XCTest
import class Foundation.Bundle

final class my_appTests: XCTestCase {
    func testExample() throws {

    #if os(Linux)

    // Code specific to Linux
        #if swift(>=5.3.2)
        //
        #else
        //
        #endif

    #elseif os(macOS)
    // Code specific to macOS

        guard #available(macOS 10.11, *) else {/*return*/}
        guard #available(macOS 10.12, *) else {/*return*/}
        guard #available(macOS 10.13, *) else {/*return*/}

        #if swift(>=5.3.2)
        //
        #else
        //
        #endif
    #endif

    #if canImport(UIKit)
    // Code specific to platforms where UIKit is available
        #if swift(>=5.3.2)
        //
        #else
        //
        #endif
    #endif

    // Mac Catalyst won't have `Process`, but it is supported for executables.
    #if !targetEnvironment(macCatalyst)

        let fooBinary = productsDirectory.appendingPathComponent("my-app")

        let process = Process()
        process.executableURL = fooBinary

        let pipe = Pipe()
        process.standardOutput = pipe

        try process.run()
        process.waitUntilExit()

        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = String(data: data, encoding: .utf8)
        print("%c", output ?? 0)
        print("%c", output!)
        print("%c", output as Any)
        //XCTAssertEqual(output, "Hello, macOS world! Hello, main.swift!")
        XCTAssertNotNil(output)

    #endif
}

    /// Returns path to the built products directory.
    var productsDirectory: URL {
      #if os(macOS)
        for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
            return bundle.bundleURL.deletingLastPathComponent()
        }
        fatalError("couldn't find the products directory")
      #else
        return Bundle.main.bundleURL
      #endif
    }
}
