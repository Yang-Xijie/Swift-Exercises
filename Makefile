# [Usage]
# build project: `make build`
# run project: `make` or `make run`
# clean build folder: `make clean`

# [Info]
# Project
Q = 14
PROJECT_FOLDER = ./LeetCode/${Q}-*
# PROJECT_FOLDER = ./Algorithm/LinkedList
SOURCE = ${PROJECT_FOLDER}/src/*.swift
# Build
BUILD_FOLDER = ./build
EXECUTABLE = ${BUILD_FOLDER}/a.out
# Tools
COMPILER = swiftc

# [Target]
# Run
build: create-build-folder ${SOURCE}
	@${COMPILER} ${SOURCE} -o ${EXECUTABLE}
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
