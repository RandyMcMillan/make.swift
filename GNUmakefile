export TOOLCHAINS=swift
.PHONY: - all
-:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?##/ {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
all:submodules package-update build-release run-release## submodules package-update build-release run-release
submodules:## git submodule update --init --recursive
	git submodule update --init --recursive
package-update:## swift packge update
	swift package update
build-release:## swift build -c release
	swift build -c release
run-release:## swift run -c release
	swift run -c release
main:## swiftc Sources/my-app/main.swift
	swiftc Sources/my-app/main.swift
	chmod +x main
run-main:## ./main
	./main
clean-all:## clean-package-resolved
clean-build:## rm -rf .build
	rm -rf .build
clean-package-resolved: clean-build## clean-build rm -rf Package.resolved
	rm -rf Package.resolved
