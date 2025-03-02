#!/bin/sh

echo "Build wasm app .."
/opt/wasi-sdk/bin/clang -O3 \
        -z stack-size=192 -Wl,--initial-memory=65536 \
        -o helloworld.wasm helloworld.c \
        -Wl,--export=main -Wl,--export=__main_argc_argv \
        -Wl,--export=__data_end -Wl,--export=__heap_base \
        -Wl,--strip-all,--no-entry \
        -Wl,--allow-undefined \
        -nostdlib \

echo "Generate helloworld_wasm.h .."
../../test-tools/binarydump-tool/build/binarydump \
        -o helloworld_wasm.h \
        -n wasm_application_file \
        helloworld.wasm

echo "Done"
