# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget mrpt::pbmap)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target mrpt::pbmap
add_library(mrpt::pbmap SHARED IMPORTED)

set_target_properties(mrpt::pbmap PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/matt/Documents/Robot-transporting/workspace/src/van_loading/libs/mrpt/libs/pbmap/include"
  INTERFACE_LINK_LIBRARIES "mrpt::graphs"
)

# Import target "mrpt::pbmap" for configuration "Release"
set_property(TARGET mrpt::pbmap APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(mrpt::pbmap PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkChartsCore;vtkCommonColor;vtkCommonDataModel;vtkCommonMath;vtkCommonCore;vtksys;vtkCommonMisc;vtkCommonSystem;vtkCommonTransforms;vtkInfovisCore;vtkFiltersExtraction;vtkCommonExecutionModel;vtkFiltersCore;vtkFiltersGeneral;vtkCommonComputationalGeometry;vtkFiltersStatistics;vtkImagingFourier;vtkImagingCore;vtkalglib;vtkRenderingContext2D;vtkRenderingCore;vtkFiltersGeometry;vtkFiltersSources;vtkRenderingFreeType;vtkftgl;vtkDICOMParser;vtkDomainsChemistry;vtkIOXML;vtkIOGeometry;vtkIOCore;vtkIOXMLParser;vtkFiltersAMR;vtkParallelCore;vtkIOLegacy;vtkFiltersFlowPaths;vtkFiltersGeneric;vtkFiltersHybrid;vtkImagingSources;vtkFiltersHyperTree;vtkFiltersImaging;vtkImagingGeneral;vtkFiltersModeling;vtkFiltersParallel;vtkFiltersParallelFlowPaths;vtkParallelMPI;vtkFiltersParallelGeometry;vtkFiltersParallelImaging;vtkFiltersParallelMPI;vtkFiltersParallelStatistics;vtkFiltersProgrammable;vtkFiltersPython;vtkWrappingPythonCore;vtkFiltersReebGraph;vtkFiltersSMP;vtkFiltersSelection;vtkFiltersTexture;vtkFiltersVerdict;verdict;vtkGUISupportQt;vtkInteractionStyle;vtkRenderingOpenGL;vtkImagingHybrid;vtkIOImage;vtkmetaio;vtkGUISupportQtOpenGL;vtkGUISupportQtSQL;vtkIOSQL;vtkGUISupportQtWebkit;vtkViewsQt;vtkViewsInfovis;vtkInfovisLayout;vtkInfovisBoostGraphAlgorithms;vtkRenderingLabel;vtkViewsCore;vtkInteractionWidgets;vtkRenderingAnnotation;vtkImagingColor;vtkRenderingVolume;vtkGeovisCore;vtkIOAMR;vtkIOEnSight;vtkIOExodus;vtkexoIIc;vtkIOExport;vtkRenderingGL2PS;vtkRenderingContextOpenGL;vtkIOFFMPEG;vtkIOMovie;vtkIOGDAL;vtkIOGeoJSON;vtkIOImport;vtkIOInfovis;vtkIOLSDyna;vtkIOMINC;vtkIOMPIImage;vtkIOMPIParallel;vtkIOParallel;vtkIONetCDF;vtkIOMySQL;vtkIOODBC;vtkIOPLY;vtkIOParallelExodus;vtkIOParallelLSDyna;vtkIOParallelNetCDF;vtkIOParallelXML;vtkIOPostgreSQL;vtkIOVPIC;VPIC;vtkIOVideo;vtkIOXdmf2;vtkxdmf2;vtkImagingMath;vtkImagingMorphological;vtkImagingStatistics;vtkImagingStencil;vtkInteractionImage;vtkLocalExample;vtkParallelMPI4Py;vtkPythonInterpreter;vtkRenderingExternal;vtkRenderingFreeTypeFontConfig;vtkRenderingImage;vtkRenderingLIC;vtkRenderingLOD;vtkRenderingMatplotlib;vtkRenderingParallel;vtkRenderingParallelLIC;vtkRenderingQt;vtkRenderingVolumeAMR;vtkRenderingVolumeOpenGL;vtkTestingGenericBridge;vtkTestingIOSQL;vtkTestingRendering;vtkViewsContext2D;vtkViewsGeovis;vtkWrappingJava"
  IMPORTED_LOCATION_RELEASE "/home/matt/Documents/Robot-transporting/workspace/src/van_loading/libs/mrpt/lib/libmrpt-pbmap.so.1.9.9"
  IMPORTED_SONAME_RELEASE "libmrpt-pbmap.so.1.9"
  )

# Make sure the targets which have been exported in some other 
# export set exist.
unset(${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets)
foreach(_target "mrpt::graphs" )
  if(NOT TARGET "${_target}" )
    set(${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets "${${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets} ${_target}")
  endif()
endforeach()

if(DEFINED ${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets)
  if(CMAKE_FIND_PACKAGE_NAME)
    set( ${CMAKE_FIND_PACKAGE_NAME}_FOUND FALSE)
    set( ${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE "The following imported targets are referenced, but are missing: ${${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets}")
  else()
    message(FATAL_ERROR "The following imported targets are referenced, but are missing: ${${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets}")
  endif()
endif()
unset(${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets)

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
