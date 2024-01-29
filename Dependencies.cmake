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
  
  if(NOT TARGET plf_colony::plf_colony)
    cpmaddpackage("gh:mattreecebentley/plf_colony#abb0aa6525a3dae56aacf50899517f47e7036016") # v7.41
  endif()
  
  if(NOT TARGET plf_list::plf_list)
    cpmaddpackage("gh:mattreecebentley/plf_list#a8280f5328522ee9bcb4bface898db490c59645e") # v2.71
  endif()
  
  if(NOT TARGET plf_queue::plf_queue)
    cpmaddpackage("gh:mattreecebentley/plf_queue#1fb9d87a210f7813450ee54a469f9f79ea4ec872") # v2.02
  endif()
  
  if(NOT TARGET plf_stack::plf_stack)
    cpmaddpackage("gh:mattreecebentley/plf_stack#9d11bf2c5de5df739c0943af942a544c95b26ffa") # v2.01
  endif()
  
  if(NOT TARGET plf_rand::plf_rand)
    cpmaddpackage("gh:mattreecebentley/plf_rand#764684817b0208b9f18b4b3d18f4f8d8f33fa1f0") # v1.05
  endif()

endfunction()
