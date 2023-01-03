#if os(Linux)
//import myLibrary

#if swift(>=5.3.2)
    print("Running Swift 5.3.2 or later")
#else
    print("Running Swift 5.3.2 or earlier")
#endif

// Code specific to Linux
print("Hello, Linux world!")

#elseif os(macOS)
//import myLibrary

#if swift(>=5.3.2)
    print("Running Swift 5.3.2 or later")
#else
    print("Running Swift 5.3.2 or earlier")
#endif

// Code specific to macOS
print("Hello, macOS world!")
#endif

#if canImport(UIKit)
//import myLibrary

#if swift(>=5.3.2)
    print("Running Swift 5.3.2 or later")
#else
    print("Running Swift 5.3.2 or earlier")
#endif

// Code specific to platforms where UIKit is available
print("Hello, UIKit world!")
#endif

print("Hello, main.swift!")
