set PKG_CXXFLAGS=-I"%LIBRARY_INC%" && "%R%" CMD INSTALL --build . %R_ARGS%
if %ERRORLEVEL% neq 0 exit 1
