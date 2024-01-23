# cmake_template

[![ci](https://github.com/cpp-best-practices/cmake_template/actions/workflows/ci.yml/badge.svg)](https://github.com/cpp-best-practices/cmake_template/actions/workflows/ci.yml)
[![codecov](https://codecov.io/gh/cpp-best-practices/cmake_template/branch/main/graph/badge.svg)](https://codecov.io/gh/cpp-best-practices/cmake_template)
[![CodeQL](https://github.com/cpp-best-practices/cmake_template/actions/workflows/codeql-analysis.yml/badge.svg)](https://github.com/cpp-best-practices/cmake_template/actions/workflows/codeql-analysis.yml)
[![Open in Dev Containers](https://img.shields.io/static/v1?label=Dev%20Containers&message=Open&color=blue&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/cpp-best-practices/cmake_template)

## About cmake_template

This is a C++ Best Practices GitHub template for getting up and running with C++ quickly.

By default (collectively known as `ENABLE_DEVELOPER_MODE`)

 * Address Sanitizer and Undefined Behavior Sanitizer enabled where possible
 * Warnings as errors
 * clang-tidy and cppcheck static analysis
 * CPM for dependencies

It includes

 * a basic CLI example
 * examples for fuzz, unit, and constexpr testing
 * large GitHub action testing matrix

It requires

 * cmake
 * a compiler


This project gets you started with a simple example of using FTXUI, which happens to also be a game.


## Getting Started

### Use the GitHub template
First, click the green `Use this template` button near the top of this page.
This will take you to GitHub's ['Generate Repository'](https://github.com/cpp-best-practices/cmake_template/generate)
page.
Fill in a repository name and short description, and click 'Create repository from template'.
This will allow you to create a new repository in your GitHub account,
prepopulated with the contents of this project.

After creating the project please wait until the cleanup workflow has finished 
setting up your project and committed the changes.

Now you can clone the project locally and get to work!

    git clone https://github.com/<user>/<your_new_repo>.git

## More Details

 * [Dependency Setup](README_dependencies.md)
 * [Building Details](README_building.md)

## Testing

See [Catch2 tutorial](https://github.com/catchorg/Catch2/blob/master/docs/tutorial.md)

## Fuzz testing

See [libFuzzer Tutorial](https://github.com/google/fuzzing/blob/master/tutorial/libFuzzerTutorial.md)


