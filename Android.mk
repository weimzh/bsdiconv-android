# libiconv
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE	:= iconv

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include $(LOCAL_PATH)

LOCAL_CFLAGS	:= -D_ANDROID -D_PATH_ESDB=\"/mnt/sdcard/i18n/esdb\" -DLINE_MAX=_POSIX2_LINE_MAX \
	-D_PATH_I18NMODULE=\".\" -D_PATH_CSMAPPER=\"/mnt/sdcard/i18n/csmapper\" \
	-Dbe16toh=betoh16 -Dbe32toh=betoh32 -std=gnu99

LOCAL_SRC_FILES := \
	iconv_open.c \
	__iconv_free_list.c \
	iconv_set_relocation_prefix.c \
	citrus_db_factory.c \
	iconv_close.c \
	iconvctl.c \
	citrus_bcs_strtol.c \
	citrus_lookup.c \
	citrus_mapper.c \
	citrus_stdenc.c \
	iconv_open_into.c \
	iconv_canonicalize.c \
	citrus_esdb.c \
	citrus_db_hash.c \
	libiconv_modules/EUC/citrus_euc.c \
	libiconv_modules/mapper_zone/citrus_mapper_zone.c \
	libiconv_modules/JOHAB/citrus_johab.c \
	libiconv_modules/mapper_none/citrus_mapper_none.c \
	libiconv_modules/HZ/citrus_hz.c \
	libiconv_modules/EUCTW/citrus_euctw.c \
	libiconv_modules/VIQR/citrus_viqr.c \
	libiconv_modules/mapper_646/citrus_mapper_646.c \
	libiconv_modules/BIG5/citrus_big5.c \
	libiconv_modules/ZW/citrus_zw.c \
	libiconv_modules/MSKanji/citrus_mskanji.c \
	libiconv_modules/ISO2022/citrus_iso2022.c \
	libiconv_modules/iconv_none/citrus_iconv_none.c \
	libiconv_modules/GBK2K/citrus_gbk2k.c \
	libiconv_modules/UTF8/citrus_utf8.c \
	libiconv_modules/UES/citrus_ues.c \
	libiconv_modules/iconv_std/citrus_iconv_std.c \
	libiconv_modules/UTF1632/citrus_utf1632.c \
	libiconv_modules/mapper_serial/citrus_mapper_serial.c \
	libiconv_modules/DECHanyu/citrus_dechanyu.c \
	libiconv_modules/mapper_std/citrus_mapper_std.c \
	libiconv_modules/UTF7/citrus_utf7.c \
	citrus_bcs_strtoul.c \
	citrus_pivot_factory.c \
	citrus_bcs.c \
	citrus_module.c \
	citrus_csmapper.c \
	bsd_iconv.c \
	__iconv.c \
	citrus_db.c \
	citrus_mmap.c \
	citrus_lookup_factory.c \
	citrus_none.c \
	citrus_prop.c \
	citrus_memstream.c \
	iconvlist.c \
	__iconv_get_list.c \
	iconv.c \
	citrus_hash.c \
	citrus_iconv.c

include $(BUILD_STATIC_LIBRARY)
