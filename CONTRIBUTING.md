## Compilation instructions

Set up your MSYS2 environment using pacman to obtain native and mingw-w64-cross compilers (C,C++), mingw-w64-cross-zlib, wget, and git.  Then run the following:
```bash
# Set environment options to catch errors.  Please report any issues.
set -xe

# Set this variable to the path of pokeruby-tools if different.
TOOLSDIR=$(pwd)/pokeruby-tools

# Edit this variable if libpng updates or you want to use an older version of libpng.
PNGVER=1.6.37

# Clone this repository if you haven't already.
git clone https://github.com/pret/pokeruby-tools

# Clone and install agbcc if you haven't already.
git clone https://github.com/pret/agbcc
cd agbcc
sh build.sh
sh install.sh ${TOOLSDIR}
cd ..

# gbagfx and rsfont require static libpng targeting i686-w64-mingw32, so we compile it here.
wget http://prdownloads.sourceforge.net/libpng/libpng-${PNGVER}.tar.xz
tar -xJf libpng-${PNGVER}.tar.xz
cd libpng-${PNGVER}
./configure --host=i686-w64-mingw32 --prefix=${TOOLSDIR}/tools/.local
make
make install
cd ..

# Now build the tools.
cd pokeruby-tools
sh build.sh
```
