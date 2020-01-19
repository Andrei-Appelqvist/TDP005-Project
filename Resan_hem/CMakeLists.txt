cmake_minimum_required(VERSION 3.0)
project(sfml)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")

if (DEFINED ENV{LOADEDMODULES} AND ("$ENV{LOADEDMODULES}" MATCHES ".*prog/gcc/7.1.0.*"))
    set(CMAKE_CXX_COMPILER /sw/gcc-7.1.0/bin/g++)

    if (DEFINED ENV{SFML_ROOT})
        list(APPEND CMAKE_MODULE_PATH "$ENV{SFML_ROOT}/share/SFML/cmake/Modules")
    endif()
endif()

if (DEFINED ENV{LOADEDMODULES} AND ("$ENV{LOADEDMODULES}" MATCHES ".*prog/gcc/6.1.0.*"))
    set(CMAKE_CXX_COMPILER /sw/gcc-6.1.0/bin/g++)

    if (DEFINED ENV{SFML_ROOT})
        list(APPEND CMAKE_MODULE_PATH "$ENV{SFML_ROOT}/share/SFML/cmake/Modules")
    endif()
endif()

set(SFML_MODULES graphics window system)

# Försök att hitta SFML genom att anropa 'FindSFML.cmake'.
find_package(SFML 2 COMPONENTS ${SFML_MODULES})
include_directories(${SFML_INCLUDE_DIR})

if (NOT (${SFML_FOUND} STREQUAL "TRUE"))
    set(SFML_LIBRARIES "")
    foreach(i ${SFML_MODULES})
        list(APPEND SFML_LIBRARIES "sfml-${i}")
    endforeach(i)
endif()

set(SOURCE_FILES sfml_test.cpp car.h car.cpp collision.cpp collision.h buff_debuff.h buff_debuff.cpp bullet.h bullet.cpp game_field.cpp game_field.h score.h score.cpp game_state.cpp game_state.h menu_state.cpp menu_state.h object.h object.cpp)

add_executable(sfml ${SOURCE_FILES})

target_link_libraries(sfml ${SFML_LIBRARIES} ${SFML_DEPENDENCIES})
