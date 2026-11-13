# SPDX-FileCopyrightText: 2026 Blender Authors
#
# SPDX-License-Identifier: GPL-2.0-or-later

# Cache initialization file used by the "Windows x64 Release (CUDA + OptiX)"
# GitHub Actions workflow, see `.github/workflows/build-windows-x64-release.yml`.
#
# This is `blender_release.cmake` with the GPU backends removed whose SDKs are
# not installed by that workflow. The overrides have to come after the release
# configuration is included, since it forces those options on.

include("${CMAKE_CURRENT_LIST_DIR}/blender_release.cmake")

# Cycles HIP (AMD), HIP-RT and oneAPI (Intel) require the ROCm/HIP SDK and the
# Intel oneAPI compilers in addition to the CUDA Toolkit.
set(WITH_CYCLES_DEVICE_HIP      OFF CACHE BOOL "" FORCE)
set(WITH_CYCLES_HIP_BINARIES    OFF CACHE BOOL "" FORCE)
set(WITH_CYCLES_DEVICE_HIPRT    OFF CACHE BOOL "" FORCE)
set(WITH_CYCLES_DEVICE_ONEAPI   OFF CACHE BOOL "" FORCE)
set(WITH_CYCLES_ONEAPI_BINARIES OFF CACHE BOOL "" FORCE)
