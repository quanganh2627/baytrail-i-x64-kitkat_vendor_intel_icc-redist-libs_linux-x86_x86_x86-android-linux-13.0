ifeq ($(call intel-target-need-intel-libraries),)
# ICC_LIB* are relative paths, so LOCAL_PATH is $(call my-dir)
LOCAL_PATH := $(call my-dir)

# Use libraries from ICC version 13.0
ICC_LIBCHKP_SO    := lib/libchkp.so
ICC_LIBCILKRTS_SO := lib/libcilkrts.so
ICC_LIBIMF_SO     := lib/libimf.so
ICC_LIBINTLC_SO   := lib/libintlc.so
ICC_LIBIRNG_SO    := lib/libirng.so
ICC_LIBPDBX_SO    := lib/libpdbx.so
ICC_LIBSVML_SO    := lib/libsvml.so

ICC_LIBBFP754_A   :=
ICC_LIBDECIMAL_A  :=
ICC_LIBIMF_A      :=
ICC_LIBIPGO_A     :=
ICC_LIBIRNG_A     :=
ICC_LIBIRC_A      :=
ICC_LIBIRC_S_A    :=
ICC_LIBSVML_A     :=

include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS :=                       \
                       $(ICC_LIBCHKP_SO)     \
                       $(ICC_LIBCILKRTS_SO)  \
                       $(ICC_LIBIMF_SO)      \
                       $(ICC_LIBINTLC_SO)    \
                       $(ICC_LIBIRNG_SO)     \
                       $(ICC_LIBPDBX_SO)     \
                       $(ICC_LIBSVML_SO)     \
                                             \
                       $(ICC_LIBBFP754_A)    \
                       $(ICC_LIBDECIMAL_A)   \
                       $(ICC_LIBIMF_A)       \
                       $(ICC_LIBIPGO_A)      \
                       $(ICC_LIBIRC_A)       \
                       $(ICC_LIBIRC_S_A)     \
                       $(ICC_LIBIRNG_A)      \
                       $(ICC_LIBSVML_A)

include $(BUILD_MULTI_PREBUILT)
endif

