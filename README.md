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

|                     Name                     |      License      |      Description      |
|----------------------------------------------|:-----------------:|-----------------------|
| [Catch2](https://github.com/catchorg/Catch2)									| [BSL 1.0](https://github.com/catchorg/Catch2/blob/devel/LICENSE.txt)				| Unit testing framework, basic micro-benchmarking, simple [BDD](https://en.wikipedia.org/wiki/Behavior-driven_development) macros |
| [CLI11](https://github.com/CLIUtils/CLI11)									| [BSD 3-Clause](https://github.com/CLIUtils/CLI11/blob/main/LICENSE)				| Command line parser for C++11 and beyond |
| [cpp-sort](https://github.com/Morwenn/cpp-sort)								| [MIT](https://github.com/Morwenn/cpp-sort/blob/1.x.y-develop/LICENSE.txt)			| Generic C++14 header-only sorting library |
| [faker-cxx](https://github.com/cieslarmichal/faker-cxx)						| [MIT](https://github.com/cieslarmichal/faker-cxx/blob/main/LICENSE)				| Generate fake (but realistic) data for testing and development |
| [fmtlib](https://github.com/fmtlib/fmt)										| [MIT](https://github.com/fmtlib/fmt/blob/master/LICENSE)							| Fast and safe alternative to C `stdio` and C++ `iostreams` |
| [FTXUI](https://github.com/ArthurSonzogni/FTXUI)								| [MIT](https://github.com/ArthurSonzogni/FTXUI/blob/main/LICENSE)					| A simple cross-platform C++ library for terminal based user interfaces |
| [gcc-poison](https://github.com/cblck/gcc-poison)								| [BSD 3-Clause](https://github.com/cblck/gcc-poison/blob/master/LICENSE)			| Forked from [leafsr](https://github.com/leafsr/gcc-poison): Header file to ban unsafe C/C++ functions |
| [hedley](https://github.com/cblck/hedley)										| [CC0-1.0](https://github.com/cblck/hedley/blob/master/LICENSE)					| Forked from [Kamilcuk](https://github.com/Kamilcuk/hedley) after [nemequ](https://github.com/nemequ/hedley): Wrappers for platform-specific functionality |
| [lefticus:tools](https://github.com/lefticus/tools/tree/update_build_system)	| [MIT](https://github.com/lefticus/tools/blob/update_build_system/LICENSE)			| [consteval_invoke](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/consteval_invoke.hpp) [curry](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/curry.hpp), [flat_map](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/flat_map.hpp), [flat_map_adapter](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/flat_map_adapter.hpp), [lambda_coroutines](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/lambda_coroutines.hpp), [non_promoting_ints](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/non_promoting_ints.hpp), simple_stack_([flat_map](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/simple_stack_flat_map.hpp), [string](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/simple_stack_string.hpp), [vector](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/simple_stack_vector.hpp)), [static_views](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/static_views.hpp), [utility](https://github.com/lefticus/tools/blob/update_build_system/include/lefticus/tools/utility.hpp) |
| [libcpuid](https://github.com/anrieff/libcpuid/)								| [BSD 2-Clause](https://github.com/anrieff/libcpuid/blob/master/COPYING)			| libcpuid provides CPU identification for the `x86 (and x86_64)` |
| [libenvpp](https://github.com/ph3at/libenvpp)									| [Apache 2.0](https://github.com/ph3at/libenvpp/blob/main/LICENSE)					| Modern C++ Library for Handling Environment Variables |
| [parallel-hashmap](https://github.com/greg7mdp/parallel-hashmap)				| [Apache 2.0](https://github.com/greg7mdp/parallel-hashmap/blob/master/LICENSE)	| Very efficient alternatives to `std::map` and `std::set` |
| [plf_colony](https://github.com/mattreecebentley/plf_colony)					| [Zlib](https://github.com/mattreecebentley/plf_colony/blob/master/LICENSE.md)		| Fast unordered container with pointer/iterator/reference validity to non-erased elements |
| [plf_list](https://github.com/mattreecebentley/plf_list)						| [Zlib](https://github.com/mattreecebentley/plf_list/blob/master/LICENSE.md)		| Faster `std::list` |
| [plf_queue](https://github.com/mattreecebentley/plf_queue)					| [Zlib](https://github.com/mattreecebentley/plf_queue/blob/main/LICENSE)			| Faster `std::queue` |
| [plf_rand](https://github.com/mattreecebentley/plf_rand)						| [Zlib](https://plflib.org/rand.htm#license)										| Faster `rand()` / `srand()` |
| [plf_stack](https://github.com/mattreecebentley/plf_stack)					| [Zlib](https://github.com/mattreecebentley/plf_stack/blob/master/LICENSE.md)		| Faster `std::stack` |
| [scnlib](https://github.com/eliaskosunen/scnlib)								| [Apache 2.0](https://github.com/eliaskosunen/scnlib/blob/master/LICENSE)			| Modern C++ library for replacing `scanf` and `std::istream` |
| [spdlog](https://github.com/gabime/spdlog)									| [MIT](https://github.com/gabime/spdlog/blob/v1.x/LICENSE)							| Very fast, header-only/compiled, C++ logging library |
| [unordered_dense](https://github.com/martinus/unordered_dense)				| [MIT](https://github.com/martinus/unordered_dense/blob/main/LICENSE)				| *Almost* drop-in replacements of `std::unordered_map` and `std::unordered_set` |
| [svector](https://github.com/martinus/svector)								| [MIT](https://github.com/martinus/svector/blob/main/LICENSE)						| `std::vector`-like stack container without the need for any allocation |
