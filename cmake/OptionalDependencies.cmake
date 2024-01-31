# Optional Libraries included by myproject_setup_dependencies()

function(optional_algorithms)

# if(NOT TARGET cpp-sort::cpp-sort)
#   cpmaddpackage("gh:Morwenn/cpp-sort#1.15.0")
# endif()

# if(NOT TARGET plf_rand::plf_rand)
#   cpmaddpackage("gh:mattreecebentley/plf_rand#764684817b0208b9f18b4b3d18f4f8d8f33fa1f0") # v1.05
# endif()

endfunction()

function(optional_containers)

# if(NOT TARGET parallel-hashmap::parallel-hashmap)
#   cpmaddpackage("gh:greg7mdp/parallel-hashmap@1.3.11")
# endif()
  
# if(NOT TARGET unordered_dense::unordered_dense)
#   cpmaddpackage("gh:martinus/unordered_dense@4.4.0")
# endif()

# if(NOT TARGET svector::svector)
#   cpmaddpackage("gh:martinus/svector@1.0.3")
# endif()
  
# if(NOT TARGET plf_colony::plf_colony)
#   cpmaddpackage("gh:mattreecebentley/plf_colony#abb0aa6525a3dae56aacf50899517f47e7036016") # v7.41
# endif()
  
# if(NOT TARGET plf_list::plf_list)
#   cpmaddpackage("gh:mattreecebentley/plf_list#a8280f5328522ee9bcb4bface898db490c59645e") # v2.71
# endif()
  
# if(NOT TARGET plf_queue::plf_queue)
#   cpmaddpackage("gh:mattreecebentley/plf_queue#1fb9d87a210f7813450ee54a469f9f79ea4ec872") # v2.02
# endif()
  
# if(NOT TARGET plf_stack::plf_stack)
#   cpmaddpackage("gh:mattreecebentley/plf_stack#9d11bf2c5de5df739c0943af942a544c95b26ffa") # v2.01
# endif()

endfunction()

function(optional_environment_and_OS)

# if(NOT TARGET libenvpp::libenvpp)
#   cpmaddpackage("gh:ph3at/libenvpp@1.4.0")
# endif()

# if(NOT TARGET cpuid::cpuid)
#   cpmaddpackage("gh:anrieff/libcpuid@0.6.4")
# endif()
  
# if(NOT TARGET hedley::hedley)
#   cpmaddpackage("gh:cblck/hedley@17.0.0")
# endif()

endfunction()

function(optional_frameworks)

# if(NOT TARGET EnTT::EnTT)
#   cpmaddpackage("gh:skypjack/entt@3.13.0")
# endif()

endfunction()

function(optional_testing_libs)

# if(NOT TARGET faker-cxx::faker-cxx)
#   cpmaddpackage("gh:cieslarmichal/faker-cxx#main")
# endif()

endfunction()

function(optional_dependencies)

optional_algorithms()
optional_containers()
optional_environment_and_OS()
optional_frameworks()
optional_testing_libs()

endfunction()
