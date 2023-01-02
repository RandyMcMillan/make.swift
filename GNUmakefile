export TOOLCHAINS=swift
-:
	swift run --build-tests

all: submodules package-update build-release run-release
submodules:
	git submodule update --init --recursive
package-update:
	swift package update
build-release:
	swift build -c release
run-release:
	swift run -c release

main:
	swiftc Sources/my-app/main.swift
	chmod +x main
run-main:
	./main
clean-main:
	rm main
