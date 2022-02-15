cmake_minimum_required(VERSION 3.18)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(boost-env-boilerplate)

set(Boost_NO_SYSTEM_PATHS TRUE)
set(Boost_USE_STATIC_LIBS TRUE)
set(BOOST_ROOT "P:/Downloads/cpp-libraries/boost/lib/cmake/Boost-1.78.0")

find_package(Boost REQUIRED COMPONENTS filesystem system)

if(Boost_FOUND)
  include_directories(${Boost_INCLUDE_DIRS})

  SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static")

  add_executable(${PROJECT_NAME} 
    "src/main.cpp"
  )
  target_link_libraries(${PROJECT_NAME} 
    ws2_32
    ${Boost_LIBRARIES}
  )
endif()
