cmake_minimum_required(VERSION 3.26)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)

set(CMAKE_SYSTEM_NAME Wasi)
set(CMAKE_CXX_COMPILER_TARGET wasm32-wasi)
set(CMAKE_C_COMPILER_TARGET wasm32-wasi)
set(CMAKE_SYSROOT ${CMAKE_CURRENT_LIST_DIR}/work/wasi-libc/sysroot)
set(CMAKE_INTERPROCEDURAL_OPTIMIZATION ON)
set(CMAKE_SHARED_LIBRARY_SUFFIX_C ".wasm")
set(CMAKE_SHARED_LIBRARY_SUFFIX_CXX ".wasm")
set(CMAKE_SHARED_LINKER_FLAGS "-Wl,--no-entry -Wl,--allow-undefined -Wl,--export-all -lwasi-emulated-process-clocks -lwasi-emulated-signal -v")
set(CMAKE_EXE_LINKER_FLAGS "-lwasi-emulated-process-clocks -lwasi-emulated-signal -v")
set(CMAKE_C_FLAGS "-D_WASI_EMULATED_PROCESS_CLOCKS -D_WASI_EMULATED_SIGNAL")
set(CMAKE_CXX_FLAGS "-D_WASI_EMULATED_PROCESS_CLOCKS -D_WASI_EMULATED_SIGNAL")

