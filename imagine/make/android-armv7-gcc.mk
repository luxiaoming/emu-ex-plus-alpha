include $(IMAGINE_PATH)/make/config.mk
include $(buildSysPath)/setAndroidNDKPath.mk
ARCH := arm
SUBARCH = armv7
CHOST := arm-linux-androideabi
android_abi := armeabi-v7a
android_ndkSDK ?= 9
android_ndkArch := arm
clangTarget := armv7-none-linux-androideabi
CFLAGS_CODEGEN += -fpic
LDFLAGS_SYSTEM += -Wl,--fix-cortex-a8
armv7CPUFlags ?= -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 -mtune=generic
android_cpuFlags ?= $(armv7CPUFlags)
android_armv7State ?= -mthumb
android_armState := $(android_armv7State)
android_cpuFlags += $(android_armv7State)

include $(buildSysPath)/android-gcc.mk
