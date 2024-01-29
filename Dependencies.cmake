include(cmake/CPM.cmake)

# Done as a function so that updates to variables like
# CMAKE_CXX_FLAGS don't propagate out to other
# targets
function(myproject_setup_dependencies)

  # For each dependency, see if it's
  # already been provided to us by a parent project

  if(NOT TARGET fmtlib::fmtlib)
    cpmaddpackage("gh:fmtlib/fmt#10.2.1")
  endif()

  if(NOT TARGET scn::scn)
    cpmaddpackage("gh:eliaskosunen/scnlib@2.0.0")
  endif()

  if(NOT TARGET spdlog::spdlog)
    cpmaddpackage(
      NAME
      spdlog
      VERSION
      1.13.0
      GITHUB_REPOSITORY
      "gabime/spdlog"
      OPTIONS
      "SPDLOG_FMT_EXTERNAL ON")
  endif()

  if(NOT TARGET Catch2::Catch2WithMain)
    cpmaddpackage("gh:catchorg/Catch2@3.5.2")
  endif()

  if(NOT TARGET CLI11::CLI11)
    cpmaddpackage("gh:CLIUtils/CLI11@2.3.2")
  endif()

  if(NOT TARGET libenvpp::libenvpp)
    cpmaddpackage("gh:ph3at/libenvpp@1.4.0")
  endif()

  if(NOT TARGET cpuid::cpuid)
    cpmaddpackage("gh:anrieff/libcpuid@0.6.4")
  endif()
  
  if(NOT TARGET hedley::hedley)
    cpmaddpackage("gh:cblck/hedley@17.0.0")
  endif()

  if(NOT TARGET gcc-poison::gcc-poison)
    cpmaddpackage("gh:cblck/gcc-poison@0.1.0")
  endif()

  if(NOT TARGET ftxui::screen)
    cpmaddpackage("gh:ArthurSonzogni/FTXUI@5.0.0")
  endif()

  if(NOT TARGET tools::tools)
    cpmaddpackage("gh:lefticus/tools#update_build_system")
  endif()

  if(NOT TARGET parallel-hashmap::parallel-hashmap)
    cpmaddpackage("gh:greg7mdp/parallel-hashmap@1.3.11")
  endif()
  
  if(NOT TARGET unordered_dense::unordered_dense)
    cpmaddpackage("gh:martinus/unordered_dense@4.4.0")
  endif()

  if(NOT TARGET svector::svector)
    cpmaddpackage("gh:martinus/svector@1.0.3")
  endif()

endfunction()
