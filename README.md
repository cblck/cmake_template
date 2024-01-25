# cmake_template (for Visual Studio 2022)

[![ci](https://github.com/cblck/cmake_template/actions/workflows/ci.yml/badge.svg)](https://github.com/cblck/cmake_template/actions/workflows/ci.yml)
[![codecov](https://codecov.io/gh/cblck/cmake_template/branch/main/graph/badge.svg)](https://codecov.io/gh/cblck/cmake_template)
[![CodeQL](https://github.com/cblck/cmake_template/actions/workflows/codeql-analysis.yml/badge.svg)](https://github.com/cblck/cmake_template/actions/workflows/codeql-analysis.yml)

## Personalized cmake_template

This fork of [C++ Best Practices's cmake_template](https://github.com/cpp-best-practices/cmake_template) is for Visual Studio 2022 users on Windows.

It targets [C++20](https://en.cppreference.com/w/cpp/compiler_support) compilation on MSVC (19.38.33134) [Win], Clang(-cl) (16.0.5) [Win,WSL], and GCC (11.4.0) [WSL].

By default (collectively known as `ENABLE_DEVELOPER_MODE`) enables
 * Address Sanitizer and Undefined Behavior Sanitizer enabled where possible
 * Warnings as errors
 * clang-tidy and cppcheck static analysis
 * CPM for dependencies

It includes
 * a basic CLI example
 * examples for fuzz, unit, and constexpr testing
 * GitHub action testing matrix

It requires
 * Visual Studio 2022

This project gets you started with a simple game using [FTXUI](https://github.com/ArthurSonzogni/FTXUI).


## Getting Started

### Using this GitHub template
1. Click the green `Use this template` button near the top of this page.
1. Fill in a repository name and short description.
1. Click 'Create repository from template'.
1. Please wait until the cleanup workflow has finished setting up your project and committed the changes.
1. Clone the project: `git clone https://github.com/<user>/<your_new_repo>.git`
1. Get to work!

## More Details
 * [Initial Environment Setup](README_dependencies.md)
 * [Building Details](README_building.md)

## Testing
See [Catch2 tutorial](https://github.com/catchorg/Catch2/blob/master/docs/tutorial.md)

## Fuzz testing
See [libFuzzer Tutorial](https://github.com/google/fuzzing/blob/master/tutorial/libFuzzerTutorial.md)
