Compile PRMS6-BMI

### build bmi-prms6
* cd to your repos folder and clone prms6 [GitHub - nhm-usgs/bmi-prms6](https://github.com/nhm-usgs/bmi-prms6)
* Execute the following commands in the __x64 Native Tools Command Prompt for VS 2017__ command prompt

```bash
cmake .. -DCMAKE_BUILD_TYPE=DEBUG^
-DCMAKE_INSTALL_PREFIX="B:/BuildNetcdf/install"^
-DCMAKE_PREFIX_PATH="B:/BuildNetcdf/install/lib/cmake"^
-DBUILD_SHARED_LIBS=FALSE^
-Dcoretran_lib="B:/BuildNetcdf/install/lib/coretran.lib"^
-Dcoretranlibmod="B:/BuildNetcdf/install/include/coretran/Release"^
-Dnetcdf_lib="B:/BuildNetcdf/install/lib/netcdf.lib"^
-Dnetcdff_lib="B:/BuildNetcdf/install/lib/netcdff.lib"^
-Dprms6_lib="B:/gitbmi/prms/_build/prmslib/Debug/prmslib.lib"^
-Dprmslibmod="B:/gitbmi/prms/_build/prmslib/Debug"
```
##### Build in Visual Studio 2017
* Open the bmi_prms6.sln in your ___build__ directory*
* Make the following changes to the Properties dialog of both the __prms__ and __prmslib__ projects
* For the bmiprms Property In the Linker | Command Line tab in hte Additional Options make sure there is /machine:x64
* For the run_bmiprms Property In the Librarian | Command Line tab in hte Additional Options make sure there is /machine:x64)
* For run_bmiprms Property, add to the Linker | General - Additional Library Directories: add the lib directories as follows "B:\BuildNetcdf\install\lib;B:\BuildNetcdf\install\1.10.5\lib"
* For run_bmiprms  Property, add to the Linker | Input - Additional Dependencies: B:\gitbmi\bmi-prms6\_build\src\Debug\bmiprms.lib libhdf5.lib libhdf5_hl.lib libszip.lib libzlib.lib to the end of the exiting entries