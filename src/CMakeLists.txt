set(header ${CMAKE_SOURCE_DIR}/include)

file(GLOB SOURCE "*.cpp")
list(REMOVE_ITEM source ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp)
add_compile_options("-g")
add_compile_options("-Wall")
add_compile_options("-Werror")
add_compile_options("-Wnon-virtual-dtor")
add_compile_options("-Woverloaded-virtual")
add_library(executor ${SOURCE})

target_include_directories(executor PUBLIC "${header}")
add_executable(main ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp)
target_link_libraries(main executor)

