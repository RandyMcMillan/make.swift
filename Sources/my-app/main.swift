#if os(Linux)
//import myLibrary

// Code specific to Linux
print("Hello, Linux world!")

#elseif os(macOS)
//import myLibrary

// Code specific to macOS
print("Hello, macOS world!")

#endif

#if canImport(UIKit)
//import myLibrary

// Code specific to platforms where UIKit is available
print("Hello, UIKit world!")

#endif

print("Hello, main.swift!")
