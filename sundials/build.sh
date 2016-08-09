mkdir build
cd build

cmake \
    -DCMAKE_INSTALL_PREFIX="$PREFIX" \
    -DBUILD_STATIC_LIBS=OFF \
    -DBUILD_SHARED_LIBS=ON \
    -DEXAMPLES_ENABLE=OFF \
    -DLAPACK_ENABLE=ON \
    -DOPENMP_ENABLE=ON \
    --enable-sse2 \
    ..

make
make install
