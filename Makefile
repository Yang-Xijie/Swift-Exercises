# [Usage]
# build project: `make build`
# run project: `make` or `make run`
# clean build folder: `make clean`

# [Info]
# Project
Q ?= 1
PROJECT_FOLDER = ./LeetCode/${Q}-*
SOURCES = ${PROJECT_FOLDER}/*.swift
# Build
BUILD_FOLDER = ./build
EXECUTABLE = ${BUILD_FOLDER}/main
# Tools
COMPILER = swiftc

# [Target]
# Run
build: clean create-build-folder ${SOURCES}
	${COMPILER} ${SOURCES} -o ${EXECUTABLE}
run: build
	@${EXECUTABLE}
# Others
create-build-folder:
	@mkdir -p ${BUILD_FOLDER} 
clean:
	@rm -rf ${BUILD_FOLDER}

# [Config]
.PHONY = build run create-build-folder clean 
.DEFAULT_GOAL = run
