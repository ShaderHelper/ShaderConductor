# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

set(SPIRV_Headers_REV "c16439f4268a9de088ac7c67b6206ade4b28d53a")

#UpdateExternalLib("SPIRV-Headers" "https://github.com/KhronosGroup/SPIRV-Headers.git" ${SPIRV_Headers_REV})

add_subdirectory(SPIRV-Headers EXCLUDE_FROM_ALL)
foreach(target
    "install-headers" "SPIRV-Headers-example")
    set_target_properties(${target} PROPERTIES FOLDER "External/SPIRV-Headers")
endforeach()
