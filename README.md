meta-hectronic-x86
==================

This Yocto meta layer adds BSP support for the Hectronic X86 platforms to be
used together with the official yocto repos.

Build instructions for each branch is found in this README file in respective branch.


Build instructions using yocto poky
-------------------------------------------------------------
Download Yocto BSP:
```
mkdir -p x86-yocto && cd $_
repo init -u https://github.com/hectronic-sw/hectronic-manifest -b wrynose -m repo/intel-x86.xml
repo sync
```

Setup build directory:
```
TEMPLATECONF=`pwd`/sources/meta-hectronic-x86/conf/templates/h1190 . sources/openembedded-core/oe-init-build-env build-h1190
```

Add local changes (to speedup rebuild during development)
 - conf/local.conf
    - INHERIT += "rm_work"
 - conf/site.conf
    - DL_DIR ?= "${BSPDIR}/../downloads/"
    - SSTATE_DIR ?= "${BSPDIR}/../sstate-cache/"

Build image:
```
  $ bitbake core-image-minimal
```

Or any other more potent image:
  - core-image-base
  - imx-image-core
  - imx-image-multimedia

