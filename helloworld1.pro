TEMPLATE = app
CONFIG += console c++17
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.cpp

INCLUDEPATH +=\
    /home/grostig/libs/include

#QMAKE_CXXFLAGS += -std=gnu++1z
#QMAKE_CXXFLAGS += -std=c++1z -pedantic-errors -pedantic -Weffc++ -Wall -fconcepts
#QMAKE_CXXFLAGS += -std=c++11

QMAKE_CXXFLAGS += -DBOOST_LOG_DYN_LINK  # on compile line not link line.

QMAKE_CXXFLAGS += -DBOOST_SYSTEM_NO_DEPRECATED

QMAKE_CXXFLAGS += -Wl,-wrap=main

# check dynamic link dependencies with "ldd"
# https://unix.stackexchange.com/questions/279397/ldd-dont-find-path-how-to-add
# https://unix.stackexchange.com/questions/367600/what-is-the-order-that-linuxs-dynamic-linker-searches-paths-in
# https://unix.stackexchange.com/questions/22926/where-do-executables-look-for-shared-objects-at-runtime

# HPX libs in custom location
LIBS += \
    -L/home/grostig/libs/lib64 \
    -lhpx_init \
    -lhpx_wrap \
    -lhpx_accumulator \
    -lhpx_cancelable_action \
    -lhpx_component_storage \
    -lhpx_iostreams \
    -lhpx_jacobi_component \
    -lhpx_nqueen \
    -lhpx_partitioned_vector \
    -lhpx_process \
    -lhpx_random_mem_access \
    -lhpx_simple_central_tuplespace \
    -lhpx \
    -lhpx_startup_shutdown \
    -lhpx_template_accumulator \
    -lhpx_template_function_accumulator \
    -lhpx_throttle \
    -lhpx_unordered

#LIBS += \
#    -L/usr/lib64/hpx \
#    -lhpx_io_counters \
#    -lhpx_memory \
#    -lhpx_parcel_coalescing \
#    -lhpx_sine

#LIBS += -pthread  # to avoid some link error on Fedora26

# boost on fedora26 parial list only derived from Unbuntu list
LIBS += \
        -lboost_atomic \
        -lboost_chrono \
        -lboost_context \
        -lboost_coroutine \
        -lboost_date_time \
        -lboost_fiber \
        -lboost_filesystem \
#        -lboost_graph_parallel \
        -lboost_graph \
        -lboost_iostreams \
        -lboost_locale \
        -lboost_log_setup \
        -lboost_log \
        -lboost_math_c99f \
        -lboost_math_c99l \
        -lboost_math_c99 \
        -lboost_math_tr1f \
        -lboost_math_tr1l \
        -lboost_math_tr1 \
#        -lboost_mpi_python-py27 \
#        -lboost_mpi_python-py35 \
#        -lboost_mpi_python \
#        -lboost_mpi \
        -lboost_prg_exec_monitor \
        -lboost_program_options \
#        -lboost_python-py27 \
#        -lboost_python-py35 \
#        -lboost_python \
        -lboost_random \
        -lboost_regex \
        -lboost_serialization \
        -lboost_signals \
        -lboost_system \
        -lboost_thread \
        -lboost_timer \
        -lboost_type_erasure \
        -lboost_unit_test_framework \
        -lboost_wave \
        -lboost_wserialization
