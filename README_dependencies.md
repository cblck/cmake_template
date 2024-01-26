## Initial Environment Setup
1. [Terminal](https://aka.ms/terminal)
1. [Chocolatey](https://chocolatey.org/install)
	<details><summary>Install Packages (As Admin)</summary>

	- [ccache](https://ccache.dev/),
    	[Cppcheck](https://cppcheck.sourceforge.io/),
    	[doxygen](http://doxygen.nl/) and [Graphviz](https://graphviz.org/).
    	- [**ccache MSVC caveat 1:**](https://github.com/ccache/ccache/wiki/MS-Visual-Studio) Debug format cannot be `/ZI` aka `DebugInformationFormat=ProgramDatabase` must be `/Z7` aka `OldStyle`.
		- [**ccache MSVC caveat 2:**](https://medium.com/@parakram.majumdar/ccache-with-msbuild-devenv-f286778e0be7) `TrackFileAccess` must be disabled.
	- `choco install ccache cppcheck doxygen.install graphviz -y`
	- Verify your system environment variable PATH contains:
    	- `C:\ProgramData\chocolatey\bin`
		- `C:\Program Files\Cppcheck`
		- `C`
	</details>
1. [WSL 2](https://learn.microsoft.com/en-us/windows/wsl/setup/environment)
	<details>
	<summary>Ubuntu Image</summary>

	1. Install the default Ubuntu distro: `wsl --install`
	1. Open Ubuntu in Terminal and run the following commands: [(1)](https://learn.microsoft.com/en-us/cpp/build/walkthrough-build-debug-wsl2?view=msvc-170) [(2)](https://itsfoss.com/build-essential-ubuntu/)
		```
		sudo apt update && sudo apt upgrade
		wget "https://github.com/aminya/setup-cpp/releases/download/v0.36.2/setup-cpp-x64-linux"
		chmod +x ./setup-cpp-x64-linux
		sudo ./setup-cpp-x64-linux --compiler llvm-16 --cmake 3.27.2 --ninja true --ccache true --vcpkg true
		source ~/.cpprc
		sudo apt install build-essential clang doxygen gdb graphviz ninja-build rsync zip
		```
	<details>
    <summary>To remove the image if something goes wrong:</summary>

    	`wsl --unregister Ubuntu`
	</details>
1. [Visual Studio (Community) 2022](https://visualstudio.microsoft.com/downloads/)
    <details><summary>Installation Options</summary>
	
	<details><summary>.vsconfig</summary>

	```
	{
		"version": "1.0",
		"components": [
		"Microsoft.VisualStudio.Component.DependencyValidation.Community",
		"Microsoft.VisualStudio.Component.ClassDesigner",
		"Microsoft.VisualStudio.Component.CoreEditor",
		"Microsoft.VisualStudio.Workload.CoreEditor",
		"Microsoft.VisualStudio.Component.TypeScript.TSServer",
		"Microsoft.VisualStudio.ComponentGroup.WebToolsExtensions",
		"Microsoft.VisualStudio.Component.JavaScript.TypeScript",
		"Microsoft.VisualStudio.Component.Roslyn.Compiler",
		"Microsoft.Component.MSBuild",
		"Microsoft.VisualStudio.Component.Roslyn.LanguageServices",
		"Microsoft.VisualStudio.Component.TextTemplating",
		"Microsoft.VisualStudio.Component.NuGet",
		"Microsoft.VisualStudio.Component.SQL.CLR",
		"Microsoft.NetCore.Component.Runtime.8.0",
		"Microsoft.NetCore.Component.SDK",
		"Microsoft.VisualStudio.Component.AppInsights.Tools",
		"Microsoft.VisualStudio.Component.DiagnosticTools",
		"Microsoft.VisualStudio.Component.Debugger.JustInTime",
		"Component.Microsoft.VisualStudio.LiveShare.2022",
		"Microsoft.VisualStudio.Component.IntelliCode",
		"Microsoft.VisualStudio.Component.VC.CoreIde",
		"Microsoft.VisualStudio.Component.Windows10SDK",
		"Microsoft.VisualStudio.Component.VC.Tools.x86.x64",
		"Microsoft.VisualStudio.Component.Graphics.Tools",
		"Microsoft.VisualStudio.Component.VC.DiagnosticTools",
		"Microsoft.VisualStudio.Component.Windows11SDK.22621",
		"Component.OpenJDK",
		"Microsoft.VisualStudio.ComponentGroup.MSIX.Packaging",
		"Component.Android.SDK.MAUI",
		"Microsoft.ComponentGroup.Blend",
		"Microsoft.VisualStudio.Component.VC.ATL",
		"Microsoft.VisualStudio.Component.SecurityIssueAnalysis",
		"Microsoft.VisualStudio.Component.VC.Redist.14.Latest",
		"Microsoft.VisualStudio.ComponentGroup.NativeDesktop.Core",
		"Microsoft.VisualStudio.Component.Windows11Sdk.WindowsPerformanceToolkit",
		"Microsoft.VisualStudio.Component.CppBuildInsights",
		"Microsoft.VisualStudio.ComponentGroup.WebToolsExtensions.CMake",
		"Microsoft.VisualStudio.Component.VC.CMake.Project",
		"Microsoft.VisualStudio.Component.VC.TestAdapterForBoostTest",
		"Microsoft.VisualStudio.Component.VC.TestAdapterForGoogleTest",
		"Microsoft.VisualStudio.Component.VC.ASAN",
		"Microsoft.VisualStudio.Component.Vcpkg",
		"Microsoft.VisualStudio.Component.VC.Llvm.ClangToolset",
		"Microsoft.VisualStudio.Component.VC.Llvm.Clang",
		"Microsoft.VisualStudio.Workload.NativeDesktop",
		"Microsoft.Component.NetFX.Native",
		"Microsoft.VisualStudio.ComponentGroup.UWP.NetCoreAndStandard",
		"Microsoft.VisualStudio.Component.Graphics",
		"Microsoft.VisualStudio.ComponentGroup.UWP.Xamarin",
		"Microsoft.VisualStudio.ComponentGroup.UWP.Support",
		"Microsoft.VisualStudio.Workload.Universal",
		"Component.Android.NDK.R23C",
		"Component.HAXM.Private",
		"Component.Android.Emulator.MDD",
		"Component.MDD.Android",
		"Microsoft.VisualStudio.Workload.NativeMobile",
		"Microsoft.VisualStudio.Component.HLSL",
		"Component.Unreal.Ide",
		"Microsoft.VisualStudio.Workload.NativeGame",
		"Microsoft.VisualStudio.Component.Embedded",
		"Component.MDD.Linux",
		"Component.Linux.CMake",
		"Component.Linux.RemoteFileExplorer",
		"Microsoft.VisualStudio.Workload.NativeCrossPlat",
		"Microsoft.VisualStudio.Component.Git"
		]
	}
	```
	</details>

	### Code tools:
	- *Class Designer*
	- *Dependency Validation*
	- *Developer Analytics tools*
	- **Git for Windows**
	- *NuGet package manager*
	- *Text Template Transformation*
	- **vcpkg package manager**

	### Compilers, build tools, and runtimes:
	- *C# and Visual Basic Roslyn compilers*
	- **C++ 2022 Redistributable Update**
	- **C++ Build Insights**
	- **C++ Clang Compiler for Windows (16.0.5)**
	- **C++ CMake tools for Windows**
	- **MSBuild**
	- **MSBuild support for LLVM (clang-cl) toolset**
	- **MSVC v143 - VS 2022 C++ x64/x86 build tools (Latest)**

	### Debugging and testing:
	- **C++ AddressSanitizer**
	- **C++ profiling tools**
	- **Just-In-Time debugger**
	- *Test Adapter for Boost.Test*
	- *Test Adapter for Google Test*

	### Development activities
	- *C# and Visual Basic*
	- *C++ Android development tools*
	- **C++ CMake tools for Linux**
	- **C++ core features**
	- C**++ for Linux Development**
	- *Embedded and IoT tools*
	- *HLSL Tools*
	- **IntelliCode**
	- *JavaScript and Typescript language support*
	- **Live Share**
	- **Remote File Explorer for Linux**
	- *Security Issue Analysis*

	### Emulators
	- *Google Android Emulator (local install)*
	- *Intel Hardware Accelerated Execution Manager (HAXM) (local install)*

	### Games and Graphics
	- *Graphics debugger and GPU profiler for DirectX*
	- *IDE support for Unreal Engine*
	- *Image and 3d model editors*

	### SDK, libraries, and frameworks
	- *Android SDK setup/environment*
	- **C++ ATL for latest v143 build tools (x86 & x64)**
	- *OpenJDK (Microsoft Distribution)*
	- *Typescript Server*
	- **Windows 11 SDK (10.0.22621.0)**
	- **Windows Performance Toolkit**
	- **Windows Universal C Runtime**

	</details>

	<details>
	<summary>Optional Extensions</summary> 

	- Credit to ['ArgumentativeTroll'](https://old.reddit.com/user/ArgumentativeTroll) for [their list](https://old.reddit.com/r/cpp/comments/vq444p/what_are_your_favorite_visual_studio_msvc/ieqsb9a/).
	- [Better Comments VS2022](https://marketplace.visualstudio.com/items?itemName=OmarRwemi.BetterComments)
	- [CodeMaid VS2022](https://www.codemaid.net)
	- [Cppcheck addin-for-vs (***Only works for MSBuild Projects***)](https://github.com/VioletGiraffe/cppcheck-vs-addin/releases)
	- [Doxygen Comments](https://marketplace.visualstudio.com/items?itemName=FinnGegenmantel.doxygenComments#Customizing)
	- [Editor Enhancements](https://github.com/madskristensen/Editorsk)
	- [FormatAllFilesPlus](https://marketplace.visualstudio.com/items?itemName=Havunen.FormatAllFilesPlus-1)
	- [File Icons](https://github.com/madskristensen/FileIcons)
	- [Image Optimizer (64-bit)](https://github.com/madskristensen/ImageOptimizer)
	- [Include Toolbox 2022](https://marketplace.visualstudio.com/items?itemName=Agrael.IncludeToolbox2022)
	- [Markdown Editor v2](https://github.com/MadsKristensen/MarkdownEditor2022)
	- [Notepad++](https://notepad-plus-plus.org/)
	- [Output enhancer](https://marketplace.visualstudio.com/items?itemName=NikolayBalakin.Outputenhancer)
	- [Productivity Power Tools](https://marketplace.visualstudio.com/items?itemName=VisualStudioPlatformTeam.ProductivityPowerTools):
		- [Middle Click Scroll 2022](https://marketplace.visualstudio.com/items?itemName=VisualStudioPlatformTeam.MiddleClickScroll)
		- [Shrink Empty Lines 2022](https://marketplace.visualstudio.com/items?itemName=VisualStudioPlatformTeam.SyntacticLineCompression)
		- [Solution Error Visualizer 2022](https://marketplace.visualstudio.com/items?itemName=VisualStudioPlatformTeam.SolutionErrorVisualizer)
		- [Time Stamp Margin 2022](https://marketplace.visualstudio.com/items?itemName=VisualStudioPlatformTeam.TimeStampMargin)
	- [Show Selection Length](https://github.com/madskristensen/ShowSelectionLength)
	- [SonarLint for Visual Studio 2022](https://vs.sonarlint.org)
	- [Tweaks 2022](https://github.com/madskristensen/Tweakster)
	- [Viasfora](https://viasfora.com/)
	- [Visual Assist ($149 Personal License)](https://www.wholetomato.com/)
	- [Visual Studio Spell Checker](https://ewsoftware.github.io/VSSpellChecker/)
	- [VSColorOutput64](https://mike-ward.net/vscoloroutput/)
    </details>
	<details><summary>Customize IDE</summary>
    
	- <details><summary>Custom Toolbar:</summary>
    
    	- 'Analyze > Run Code Analysis on File'
		- 'Edit > Outline Collapse to Definitions'
		- 'Edit > Outline Toggle All'
		</details>
    - Configure code cleanup: Enable 'Format Document (C++)'
	- <details><summary>Extensions > CodeMaid > Options</summary>
    
		```CodeMaid.config
		<?xml version="1.0" encoding="utf-8"?>
		<configuration>
			<configSections>
				<sectionGroup name="userSettings" type="System.Configuration.UserSettingsGroup, System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" >
					<section name="SteveCadwallader.CodeMaid.Properties.Settings" type="System.Configuration.ClientSettingsSection, System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" />
				</sectionGroup>
			</configSections>
			<userSettings>
				<SteveCadwallader.CodeMaid.Properties.Settings>
					<setting name="Formatting_IgnoreLinesStartingWith" serializeAs="String">
						<value>&lt;?xml version="1.0" encoding="utf-16"?&gt;
		&lt;ArrayOfString xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"&gt;
			&lt;string&gt;ReSharper disable &lt;/string&gt;
			&lt;string&gt;ReSharper enable &lt;/string&gt;
		&lt;/ArrayOfString&gt;</value>
					</setting>
					<setting name="Reorganizing_AlphabetizeMembersOfTheSameGroup"
						serializeAs="String">
						<value>False</value>
					</setting>
					<setting name="Reorganizing_MemberTypeStructs" serializeAs="String">
						<value>Structs||3||Structs</value>
					</setting>
					<setting name="Reorganizing_MemberTypeConstructors" serializeAs="String">
						<value>Constructors||4||Constructors</value>
					</setting>
					<setting name="Reorganizing_MemberTypeMethods" serializeAs="String">
						<value>Methods||11||Methods</value>
					</setting>
					<setting name="Reorganizing_MemberTypeProperties" serializeAs="String">
						<value>Properties||9||Properties</value>
					</setting>
					<setting name="Reorganizing_MemberTypeEnums" serializeAs="String">
						<value>Enums||1||Enums</value>
					</setting>
					<setting name="Reorganizing_MemberTypeDestructors" serializeAs="String">
						<value>Destructors||5||Destructors</value>
					</setting>
					<setting name="Reorganizing_MemberTypeDelegates" serializeAs="String">
						<value>Delegates||7||Delegates</value>
					</setting>
					<setting name="Reorganizing_MemberTypeIndexers" serializeAs="String">
						<value>Indexers||10||Indexers</value>
					</setting>
					<setting name="Reorganizing_MemberTypeClasses" serializeAs="String">
						<value>Classes||2||Classes</value>
					</setting>
					<setting name="Reorganizing_MemberTypeFields" serializeAs="String">
						<value>Fields||12||Fields</value>
					</setting>
					<setting name="Reorganizing_MemberTypeInterfaces" serializeAs="String">
						<value>Interfaces||6||Interfaces</value>
					</setting>
					<setting name="Reorganizing_MemberTypeEvents" serializeAs="String">
						<value>Events||8||Events</value>
					</setting>
					<setting name="Formatting_CommentWrapColumn" serializeAs="String">
						<value>600</value>
					</setting>
					<setting name="Cleaning_AutoCleanupOnFileSave" serializeAs="String">
						<value>False</value>
					</setting>
					<setting name="Feature_BuildProgressToolWindow" serializeAs="String">
						<value>False</value>
					</setting>
				</SteveCadwallader.CodeMaid.Properties.Settings>
			</userSettings>
		</configuration>
		```
    	</details>
	- Tools > Options > Better Comments:
    	- Set 'size offset' to 0.
		- Enable 'color only TODO keyword in task comments'.
    - Tools > Options > Include Toolbox: IWYU Executable: 'C:\..\include-what-you-use.exe'
	- Tools > Options > Preview Features: Enable Build Acceleration by default
	- Tools > Options > Text Editor > C/C++ > CodeStyle > General > Generated documentation comments style: '/**'
    </details>
	
1. [include-what-you-use](https://github.com/include-what-you-use/include-what-you-use#how-to-install)
