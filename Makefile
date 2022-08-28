TARGET := iphone:clang:latest:12.0
INSTALL_TARGET_PROCESSES = YouTube
ARCHS = arm64 arm64e
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YTNoShortsScroll

YTNoShortsScroll_FILES = Tweak.x
YTNoShortsScroll_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
