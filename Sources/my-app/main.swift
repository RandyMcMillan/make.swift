#if os(Linux)
//import myLibrary
    print("os(Linux)")

#if swift(>=5.3.2)
    print("Running Swift 5.3.2 or later")
#else
    print("Running Swift earlier than 5.3.2")
#endif

// Code specific to Linux
print("Hello, Linux world!")

#elseif os(macOS)
//import myLibrary
    print("os(macOS)")

#if swift(>=5.3.2)
    print("Running Swift 5.3.2 or later")
#else
    print("Running Swift earlier than 5.3.2")
#endif

// Code specific to macOS
print("Hello, macOS world!")
#endif

#if canImport(UIKit)
//import myLibrary
    print("canImport(UIKit)")

#if swift(>=5.3.2)
    print("Running Swift 5.3.2 or later")
#else
    print("Running Swift earlier than 5.3.2")
#endif

// Code specific to platforms where UIKit is available
print("Hello, UIKit world!")
#endif

print("Hello, main.swift!")
