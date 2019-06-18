Compile PRMS6-BMI

I'm using a VM with CentOS.  For compiling a new (recent - supports Fortran 2008) version of gFortran is required.  I used Devtoolset-7 from https://www.softwarecollections.org/en/scls/rhscl/devtoolset-7 . Once downloaded it can be instantiated by:
1) scl enable devtoolset-7 bash
 # Coretran
1) clone coretran from: [GitHub - leonfoks/coretran: An easy to follow library to make Fortran easier in general with wrapped interfaces, sorting routines, kD-Trees, and other algorithms to handle scientific data and concepts. The library contains core fortran routines and object-oriented classes.](https://github.com/leonfoks/coretran)
2) In coretran directory - watch for long lines below
``` bash
mkdir build
cd build
cmake -DCMAKE_Fortran_COMPILER=opt/rh/devtoolset-7/root/usr/bin/gfortran -DCMAKE_BUILD_TYPE=DEBUG -DCMAKE_INSTALL_PREFIX="/usr/local/coretran/debug" -DBUILD_SHARED_LIBS=ON ../src
make
sudo make install
cmake -DCMAKE_Fortran_COMPILER=opt/rh/devtoolset-7/root/usr/bin/gfortran -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX="/usr/local/coretran/release" -DBUILD_SHARED_LIBS=ON ../src
make
sudo make install
```
 # HDF and NetCDF
The following directions essentially follow the directions from Here: [NetCDF: Getting and Building netCDF](https://www.unidata.ucar.edu/software/netcdf/docs/getting_and_building_netcdf.html)

 ## zlib
1) Download zlib from [zlib Home Site](http://www.zlib.net/)
2) Enter the following commands
``` bash 
cd zlib-1.2.11
ZDIR=/usr/local
./configure --prefix=${ZDIR}
make check
surdo make install
```

 ## HDF
1) Download HDF from [HDF5® Source Code - The HDF Group](https://www.hdfgroup.org/downloads/hdf5/source-code/)
2) Enter the following commands
``` bash
cd hdf5-1.10.4/
H5DIR=/usr/local
./configure --with-zlib=${ZDIR} --prefix=${H5DIR} --enable-hl
make check
sudo make install
```
 ## Netcdf-c
1) Download NetCDF (netcdf-c-4.6.2.tar.gz and netcdf-fortran-4.4.4.tar.gz) from [NetCDF Downloads](https://www.unidata.ucar.edu/downloads/netcdf/index.jsp)
2) Enter the following commands 
``` bash
cd netcdf-c-4.6.2/
CPPFLAGS='-I${H5DIR}/include -I${ZDIR}/include' LDFLAGS='-L{H5DIR}/lib -L${ZDIR}/lib' ./configure --prefix=${NCDIR}
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${H5DIR}/lib
make check
sudo make install
```

 ## NetCDF-Fortran
``` bash
cd netcdf-fortran-4.4.4/
CC=/usr/local/cc
FC=/usr/local/fortran
export LD_LIBRARY_PATH=${NCDIR}/lib:${LD_LIBRARY_PATH}
NFDIR=/usr/local
CPPFLAGS=-I${NCDIR}/include LDFLAGS=-L${NCDIR}/lib ./configure --prefix${NFDIR}
make check
sudo make install
```

 ## PRMS6
``` bash
git clone git@code.usgs.gov:pnorton/prms6.git
cd prms6
git checkout develoment
mkdir build
cd build
cmake -DCMAKE_FORTRAN_COMPILER=/opt/rh/devtoolset-7/root/usr/bin/gfortran -CDMAKE_BUILD_TYPE=DEBUG -DCMAKE_INTSALL_PREFIX=/usr/local -DBUILD_SHARED_LIBS=ON -DCMAKE_PREFIX_PATH=/usr/local/lib/cmake ../src
make
sudo make install
```
 ## PRMS6-BMI
``` bash
git clone git@code.usgs.gov:rmcd/prms6-bmi.git
cd prms6-bmi
mkdir build
cd build
cmake -DCMAKE_FORTRAN_COMPILER=/opt/rh/devtoolset-7/root/usr/bin/gfortran  -DCMAKE_BUILD_TYPE=DEBUG -DCMAKE_INSTALL_PREFIX=/usr/local -DCMAKE_PREFIX_PATH=/usr/local/lib/cmake -DBUILD_SHARED_LIBS=ON ../src
make
```