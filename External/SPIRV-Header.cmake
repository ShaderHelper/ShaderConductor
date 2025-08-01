# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

set(SPIRV_Headers_REV "3f17b2af6784bfa2c5aa5dbb8e0e74a607dd8b3b")

UpdateExternalLib("SPIRV-Headers" "https://github.com/KhronosGroup/SPIRV-Headers.git" ${SPIRV_Headers_REV})

# add_subdirectory(SPIRV-Headers EXCLUDE_FROM_ALL)
# foreach(target
#     "install-headers" "SPIRV-Headers-example")
#     set_target_properties(${target} PROPERTIES FOLDER "External/SPIRV-Headers")
# endforeach()
