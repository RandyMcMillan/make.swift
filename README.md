## make.swift
##### cross platform configuration

$```make``` 

```shell
all             submodules package-update build-release run-release
submodules      git submodule update --init --recursive
package-update  swift packge update
build-release   swift build -c release
run-release     swift run -c release
main            swiftc Sources/my-app/main.swift
run-main        ./main
clean-all       clean-package-resolved##clean-package-resolved
clean-build     rm -rf .build
clean-package-resolved clean-build rm -rf Package.resolved

```