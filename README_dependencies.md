## Dependencies

Note about install commands:
- for Windows, we use [choco](https://chocolatey.org/install).
- In case of an error in cmake, make sure that the dependencies are on the PATH.


#### Setup-cpp

We have [setup-cpp](https://github.com/aminya/setup-cpp) that is a cross-platform tool to install all the compilers and dependencies on the system.

Please check [the setup-cpp documentation](https://github.com/aminya/setup-cpp) for more information.

For example, on Windows, you can run the following to install llvm, cmake, ninja, ccache, and cppcheck.
```ps1
# windows example (open shell as admin)
curl -LJO "https://github.com/aminya/setup-cpp/releases/download/v0.36.1/setup-cpp-x64-windows.exe"
./setup_cpp_windows --compiler llvm --cmake true --ninja true --ccache true --cppcheck true

RefreshEnv.cmd # reload the environment
```

### Necessary Dependencies
1. A C++ compiler that supports C++20.
See [cppreference.com](https://en.cppreference.com/w/cpp/compiler_support)
to see which features are supported by each compiler.
The following compilers should work:

  * [gcc 13+](https://gcc.gnu.org/)
	<details>
	<summary>Install command</summary>

	- Debian/Ubuntu:

			sudo apt install build-essential

	- Windows:

			choco install mingw -y

	</details>

  * [clang 16+](https://clang.llvm.org/)
	<details>
	<summary>Install command</summary>

	- Debian/Ubuntu:

			bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"

	- Windows:

		Visual Studio 2022 ships with LLVM [16.0.5] (see the Visual Studio section). However, to install LLVM separately:

			choco install llvm --version=16.0.5

		llvm-utils for using external LLVM with Visual Studio generator:

			git clone https://github.com/zufuliu/llvm-utils.git
			cd llvm-utils/VS2017
			.\install.bat

	</details>

  * [Visual Studio 2022](https://visualstudio.microsoft.com/)
	<details>
	<summary>Install command + Environment setup</summary>

	On Windows, you need to install Visual Studio 2022 because of the SDK and libraries that ship with it.

  	Visual Studio IDE - 2022 Community (installs Clang too):

  	  	choco install -y visualstudio2022community --package-parameters "add Microsoft.VisualStudio.Workload.NativeDesktop --includeRecommended --includeOptional --passive --locale en-US"

	Put MSVC compiler, Clang compiler, and vcvarsall.bat on the path:

			choco install vswhere -y
			refreshenv

			# change to x86 for 32bit
			$clpath = vswhere -products * -latest -prerelease -find **/Hostx64/x64/*
			$clangpath = vswhere -products * -latest -prerelease -find **/Llvm/bin/*
			$vcvarsallpath =  vswhere -products * -latest -prerelease -find **/Auxiliary/Build/*

			$path = [System.Environment]::GetEnvironmentVariable("PATH", "User")
			[Environment]::SetEnvironmentVariable("Path", $path + ";$clpath" + ";$clangpath" + ";$vcvarsallpath", "User")
			refreshenv

	</details>


2. [CMake 3.21+](https://cmake.org/)
	<details>
	<summary>Install Command</summary>

	- Debian/Ubuntu:

			sudo apt-get install cmake

	- Windows:

			choco install cmake -y

	</details>

### Optional Dependencies
#### C++ Tools
  * [Doxygen](http://doxygen.nl/)
	<details>
	<summary>Install Command</summary>

	- Debian/Ubuntu:

			sudo apt-get install doxygen
			sudo apt-get install graphviz

	- Windows:

			choco install doxygen.install -y
			choco install graphviz -y

	</details>


  * [ccache](https://ccache.dev/)
	<details>
	<summary>Install Command</summary>

	- Debian/Ubuntu:

			sudo apt-get install ccache

	- Windows:

			choco install ccache -y

	</details>


  * [Cppcheck 2.13.0+](http://cppcheck.sourceforge.net/)
	<details>
	<summary>Install Command</summary>
	
	[Manual installation may be required if version < 2.13.0.](https://github.com/danmar/cppcheck/releases)

	- Debian/Ubuntu:

			sudo apt-get install cppcheck

	- Windows:

			choco install cppcheck -y

	</details>


  * [include-what-you-use](https://include-what-you-use.org/)
	<details>
	<summary>Install Command</summary>

	Follow instructions here:
	https://github.com/include-what-you-use/include-what-you-use#how-to-install
	</details>
