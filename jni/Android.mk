#
# "Portions Copyright (c) 1999-2003 Apple Computer, Inc. All Rights
# Reserved.
#
# This file contains Original Code and/or Modifications of Original Code
# as defined in and that are subject to the Apple Public Source License
# Version 2.0 (the 'License'). You may not use this file except in
# compliance with the License. Please obtain a copy of the License at
# http://www.opensource.apple.com/apsl/ and read it before using this
# file.

# The Original Code and all software distributed under the License are
# distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER
# EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,
# INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR NON-INFRINGEMENT.
# Please see the License for the specific language governing rights and
# limitations under the License."
# 

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := $(LOCAL_PATH) $(LOCAL_PATH)/CoreFoundation/
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)

LOCAL_SRC_FILES :=  AppServices.subproj/CFUserNotification.c Base.subproj/CFBase.c Base.subproj/CFFileUtilities.c Base.subproj/CFPlatform.c Base.subproj/CFRuntime.c Base.subproj/CFSortFunctions.c Base.subproj/CFUtilities.c Base.subproj/CFUUID.c Base.subproj/uuid.c Collections.subproj/CFArray.c Collections.subproj/CFBag.c Collections.subproj/CFBinaryHeap.c Collections.subproj/CFBitVector.c Collections.subproj/CFData.c Collections.subproj/CFDictionary.c Collections.subproj/CFSet.c Collections.subproj/CFStorage.c Collections.subproj/CFTree.c NumberDate.subproj/CFDate.c NumberDate.subproj/CFNumber.c NumberDate.subproj/CFTimeZone.c Parsing.subproj/CFBinaryPList.c Parsing.subproj/CFPropertyList.c Parsing.subproj/CFXMLInputStream.c Parsing.subproj/CFXMLNode.c Parsing.subproj/CFXMLParser.c Parsing.subproj/CFXMLTree.c PlugIn.subproj/CFBundle.c PlugIn.subproj/CFBundle_Resources.c PlugIn.subproj/CFPlugIn.c PlugIn.subproj/CFPlugIn_Factory.c PlugIn.subproj/CFPlugIn_Instance.c PlugIn.subproj/CFPlugIn_PlugIn.c String.subproj/CFCharacterSet.c String.subproj/CFString.c String.subproj/CFStringEncodings.c String.subproj/CFStringScanner.c String.subproj/CFStringUtilities.c StringEncodings.subproj/CFBuiltinConverters.c StringEncodings.subproj/CFStringEncodingConverter.c StringEncodings.subproj/CFUniChar.c StringEncodings.subproj/CFUnicodeDecomposition.c StringEncodings.subproj/CFUnicodePrecomposition.c URL.subproj/CFURL.c URL.subproj/CFURLAccess.c version.c

LOCAL_LDLIBS   += -v 

MY_VERSION = 299.33
MY_PLATFORM_CFLAGS = -D__LINUX__=1 -DCOMPATIBLE_GCC4=1 -D__LITTLE_ENDIAN__=1 -DVERSION=$(MY_VERSION)
MY_WARNING_CFLAGS =

LOCAL_EXPORT_CFLAGS = $(MY_PLATFORM_CFLAGS)
LOCAL_CFLAGS = -DCF_BUILDING_CF=1 -g -fno-common -pipe $(MY_PLATFORM_CFLAGS) $(MY_WARNING_CFLAGS) 

LOCAL_MODULE    := corefoundationlite

include $(BUILD_STATIC_LIBRARY)

