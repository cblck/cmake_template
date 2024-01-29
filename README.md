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

## More Details
 * [Initial Environment Setup](README_dependencies.md)
 * [Building Details](README_building.md)

## Testing
See [Catch2 tutorial](https://github.com/catchorg/Catch2/blob/master/docs/tutorial.md)

## Fuzz testing
See [libFuzzer Tutorial](https://github.com/google/fuzzing/blob/master/tutorial/libFuzzerTutorial.md)

## Included Libraries
Credit to [fffaraz/awesome-cpp](https://github.com/fffaraz/awesome-cpp) for their list.
- [Catch2](https://github.com/catchorg/Catch2) (Unit testing framework, basic micro-benchmarking, simple [BDD](https://en.wikipedia.org/wiki/Behavior-driven_development) macros)
- [CLI11](https://github.com/CLIUtils/CLI11) (Command line parser for C++11 and beyond)
- [fmtlib](https://github.com/fmtlib/fmt) (Fast and safe alternative to C `stdio` and C++ `iostreams`)
- [FTXUI](https://github.com/ArthurSonzogni/FTXUI) (A simple cross-platform C++ library for terminal based user interfaces)
- [gcc-poison](https://github.com/cblck/gcc-poison) (Forked from [leafsr](https://github.com/leafsr/gcc-poison): Header file to ban unsafe C/C++ functions)
- [hedley](https://github.com/cblck/hedley) (Forked from [Kamilcuk](https://github.com/Kamilcuk/hedley) after [nemequ](https://github.com/nemequ/hedley): Wrappers for platform-specific functionality)
- [lefticus:tools](https://github.com/lefticus/tools/tree/update_build_system) 
	([consteval_invoke](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/consteval_invoke.hpp)
	[curry](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/curry.hpp), 
	[flat_map](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/flat_map.hpp), 
	[flat_map_adapter](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/flat_map_adapter.hpp), 
	[lambda_coroutines](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/lambda_coroutines.hpp), 
	[non_promoting_ints](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/non_promoting_ints.hpp), 
	simple_stack_([flat_map](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/simple_stack_flat_map.hpp), [string](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/simple_stack_string.hpp), [vector](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/simple_stack_vector.hpp)), 
	[static_views](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/static_views.hpp), 
	[utility](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/utility.hpp))
- [libcpuid](https://github.com/anrieff/libcpuid/) (libcpuid provides CPU identification for the `x86 (and x86_64)`)
- [libenvpp](https://github.com/ph3at/libenvpp) (Modern C++ Library for Handling Environment Variables)
- [parallel-hashmap](https://github.com/greg7mdp/parallel-hashmap) (Very efficient alternatives to `std::map` and `std::set`)
- [plf_colony](https://github.com/mattreecebentley/plf_colony) (Fast unordered container with pointer/iterator/reference validity to non-erased elements)
- [plf_list](https://github.com/mattreecebentley/plf_list) (Faster `std::list`)
- [plf_queue](https://github.com/mattreecebentley/plf_queue) (Faster `std::queue`)
- [plf_rand](https://github.com/mattreecebentley/plf_rand) (Faster `rand()` / `srand()`)
- [plf_stack](https://github.com/mattreecebentley/plf_stack) (Faster `std::stack`)
- [scnlib](https://github.com/eliaskosunen/scnlib) (Modern C++ library for replacing `scanf` and `std::istream`)
- [spdlog](https://github.com/gabime/spdlog) (Very fast, header-only/compiled, C++ logging library)
- [unordered_dense](https://github.com/martinus/unordered_dense) (*Almost* drop-in replacements of `std::unordered_map` and `std::unordered_set`)
- [svector](https://github.com/martinus/svector) (`std::vector`-like stack container without the need for any allocation)
