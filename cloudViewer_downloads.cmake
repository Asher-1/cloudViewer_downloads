include(ExternalProject)

set(SOURCE_DIR "${CMAKE_CURRENT_LIST_DIR}/test_data")

ExternalProject_Add(
    ext_cloudViewer_downloads
    PREFIX cloudViewer_downloads
    URL https://github.com/Asher-1/cloudViewer_downloads/archive/refs/tags/1.1.0.tar.gz
    URL_HASH SHA256=92eb68550d5fa114e18ccd42c40e0176ddd1a044ad7cd89c05602bfbfa014a41
    DOWNLOAD_DIR "${CLOUDVIEWER_THIRD_PARTY_DOWNLOAD_DIR}/cloudViewer_downloads"
    SOURCE_DIR "${SOURCE_DIR}"
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ""
    INSTALL_COMMAND ""
)

ExternalProject_Get_Property(ext_cloudViewer_downloads SOURCE_DIR)
set(TEST_DATA_DIR ${SOURCE_DIR})
