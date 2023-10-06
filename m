Return-Path: <usb-storage+bncBD6LRVPZ6YGRBANLQGUQMGQEKYKNPXI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4587BBED9
	for <lists+usb-storage@lfdr.de>; Fri,  6 Oct 2023 20:44:18 +0200 (CEST)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-57b63ce34acsf2980673eaf.2
        for <lists+usb-storage@lfdr.de>; Fri, 06 Oct 2023 11:44:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696617857; cv=pass;
        d=google.com; s=arc-20160816;
        b=NUcJJNrJSQbmsjtIaWZ3T+EbJ/UUh0upPpVt/XNQcUGYNOFjS1qwTihvRuSmCVyM67
         bu/dHxvPyBL7KVtV+GyLxmTrQah+uCCLMXHJLbBVf69f2VyVOnFJEbA3c+spYvG8gWsc
         on5pHTucZoj7TdR4hpg/kAv+K0g5G8pHkixY+II8bRHeYoSVYnd8eXD159sQ3RP87nMs
         eWLGf0cgxNClxGC85H+YzplEdMDRYaYpUJQOyL8t3OfoROmxVR2QXiOdPj+Bey7+Gys8
         emjMoi6vNYE5DDPKvMs4UMsMU5lsDNOrr/WxP7aBH9Zcn3cp0HFBxHivBQ+G+xY0AzSt
         y1Dw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Iwein/3I4UOLSh0JiKbzqbbb/NmNl16bFVKiyC+AYmk=;
        fh=kvpULo+2AZq4Wqdduw5izQWSbOSxdORzDRc3JwUeeX4=;
        b=NXqW6Qm5qEwckW1D1Id1hQE7RCroEABLtAeZYIFWtHX+huqC13qK+n4NWh/lDZ3bvk
         EEACwCyItk7da47elfSvHoG63jBpQclpwU+I3HSeQV04an/xsn0tfvrbqj1SdyQm5ad6
         lFmvpuTWfN44lS3qIjLQ3MNVy+wyn/xb2Fks7NiBT9dc6pRK9MIcwtNkY9kD6Zl3CQpF
         W7s4Hkmn4oZyFFhx/tsLc0QSKA64S8UWpi1fhHWDSV3//BFRxS3iPXps/Nh7iTq664mx
         /Un34bllQCK/J67BK9mP9JRMBloSDRuSRc2k4dXaUL43ko9AUNtyDHC3YVZD2Oq53Ddc
         H7NA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1696617857; x=1697222657; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Iwein/3I4UOLSh0JiKbzqbbb/NmNl16bFVKiyC+AYmk=;
        b=g7zAYy0QAfSPSfY0pPnz8lpODxKfeL+vFfKHIONKUemTpxBcT7GjS6nAAd45Eaauy4
         81mbrEE4QjLwyG1i8+ZPYsAvTLsKH7qeG5yGx8Gg/y8TcWb2/AUUvdAEoYb/jU0QS0gq
         lrewRwPa0bSzJ54Fl/Xm6+2noS/69UheD5HOg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696617857; x=1697222657;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Iwein/3I4UOLSh0JiKbzqbbb/NmNl16bFVKiyC+AYmk=;
        b=Pz61/MhMD0rq61f9CpDXcbLPr3OHTfF+Ezp+FodYGvx9Kho7G2BBeHvzu17OWDxYg2
         55AjgwfXllDad7t4djPDYxSlt8IN/zQyDRH3Y9SjPBWMU0THQ5Uda91HIQxg4pf++z0r
         fkgkHfLt3MPcwbf3BwQxKuS3UtviaDV3JZZs0c/iL4I3qrJxm4Lna/sy8yjyJaqJPDz/
         68ePU1QAPcuBTzkeQlmPRYrfGD2j6Bg8F5NGf0DeCwK6lRF0lzNZoiEFtE14W9guVKiw
         fqjrxTJhansxtTjY/c3K8g/EXTXatkopDWFpHtGnhoFas1V5S7fOCQAPbNQdK+Vv8wpV
         gmfQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yx6v8ZUvuBAYIsC1clEwPzOOTkG4SQ9rFxEt3VsNy+c5Wb4zyzV
	zEC24waUxLxs+KVV6GRiCNWetg==
X-Google-Smtp-Source: AGHT+IEOlbKgZrAIqwFg0ZzPCGuT7Y7b6IigndiF3dHGobh4w1UJEQF+BJMsm8GqO8CWFVGtDjVxXQ==
X-Received: by 2002:a4a:9b0b:0:b0:57b:6f3c:2083 with SMTP id a11-20020a4a9b0b000000b0057b6f3c2083mr8813317ook.1.1696617857312;
        Fri, 06 Oct 2023 11:44:17 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:2cd3:0:b0:57b:7aef:9d04 with SMTP id o202-20020a4a2cd3000000b0057b7aef9d04ls871837ooo.0.-pod-prod-08-us;
 Fri, 06 Oct 2023 11:44:16 -0700 (PDT)
X-Received: by 2002:a4a:9b0b:0:b0:57b:6f3c:2083 with SMTP id a11-20020a4a9b0b000000b0057b6f3c2083mr8813289ook.1.1696617856495;
        Fri, 06 Oct 2023 11:44:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696617856; cv=none;
        d=google.com; s=arc-20160816;
        b=S7k6uhUY4pIfT62bVH4BxHZFHaY2HJfUSMuYC2ApBNUJJIQcb1uaUVtjZ092JWlxT2
         QCMhrFFFHSHtTD9AL0mDVAwRcJ1u69C/RZZbTpaaDRhRc29Q2kpPtiTPu6Tm/URAOB7i
         eKQQkD/g4lIUNdOaPlaLNtEyK8s+AvT+skecLHsAMw1FEU2zF3fE7Dtt90VIUMkwlC4l
         /SyBz4kMG7/iDPUCN/3xljDA+17/LQNi3CfsYHP+8cO5R5ELH3of55J6gmorM4mgwHUi
         q5YetfVsx+7sgTCWbUcdLPEq1YdOJUOufa0Ec05v3EVLcGj+y8FxJjPLyF5v5AGhGiB/
         kqJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=Zi4Fz34BwxG8v6JU3FLOWQD+z/Y7R0wx54H9alHp51s=;
        fh=kvpULo+2AZq4Wqdduw5izQWSbOSxdORzDRc3JwUeeX4=;
        b=l5coBxadtToBXHs7c9pwHOb4N2NcgGE8YyfKpP3V3u65QmLAJpUtajP+Dq0jXFNLpc
         SO/lPqbKSsvpUqWGaa6BjiHVML2fuWrvW6a9QNGHS/t6w8gZ3AKc8/9jRBodTG+8nWke
         muXrPsHSlpY0IXthL/1LJiZGaeFXqM2LyNUC8Oow5S0QFLmrxvqe1C9d8z4s6mFB80+W
         XYI9G8bdRoHNRTlbC63bH5llCyP7X7JC+CX5vOLWYPwyeulqwNE9W921hCgwdoOJTJtu
         /Ca6VOQncSonuOpHZgEZ5PHJfsTAlHtDcBKf4mD3vwrQx3VUyJ5uwhcYzvX05C28M1Ng
         6Pmw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id b20-20020a4a3414000000b0057bd230fee0si783431ooa.6.2023.10.06.11.44.16
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 06 Oct 2023 11:44:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 54149 invoked by uid 1000); 6 Oct 2023 14:44:15 -0400
Date: Fri, 6 Oct 2023 14:44:15 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Milan Broz <gmazyland@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-scsi@vger.kernel.org, linux-block@vger.kernel.org, oneukum@suse.com,
  jonathan.derrick@linux.dev
Subject: [usb-storage] Re: [RFC PATCH 4/6] usb-storage,uas: use host helper to
 generate driver info
Message-ID: <65bd429f-6740-4aa6-af00-e72d27074115@rowland.harvard.edu>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231006125445.122380-5-gmazyland@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231006125445.122380-5-gmazyland@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

Okay, this one is a bit of a mess.  Unavoidably so, I'm afraid.

On Fri, Oct 06, 2023 at 02:54:43PM +0200, Milan Broz wrote:
> The USB mass storage quirks flags are stored in driver_info,
> a 32-bit integer (unsigned long on 32-bit platforms).
> As this attribute cannot be enlarged, we need to use some form
> of translation of 64-bit quirk bits.
> 
> This problem was discussed on USB list
> https://lore.kernel.org/linux-usb/f9e8acb5-32d5-4a30-859f-d4336a86b31a@gmail.com/
> 
> The initial solution to use static array extensively increased the size
> of the kernel module, so I decided to try the second suggested solution:
> generate a table by host-compiled program and use bit 31 to indicate
> that the value is index and not actual value.
> 
> This patch adds a host-compiled program that processes unusual_devs.h
> (and unusual_uas.h) and generates files unusual-flags.c and unusual-flags-uas.c
> (for pre-processed USB device table with 32 bit device info) and unusual-flags.h
> with function to translate flags to 64-bits from device-info.
> 
> The separate generated header file is needed as storage and UAS drivers headers
> are tightly bound together and any ohter solution seems to be more pervasive.
> 
> Translation function is used only in usb-storage and uas modules; all other
> USB storage modules store flags directly, using only 32-bit integers.
> 
> This translation is unnecessary for a 64-bit system, but I keep it
> in place for simplicity.
> (Also, I did not find a reliable way a host-compiled program can detect
> that the target platform has 32-bit unsigned long (usual macros do not
> work here!).

How about testing CONFIG_64BIT?  Would that not do what you want?

However, I agree that it's better to keep things simple by using the 
same code base for 32-bit and 64-bit kernels.

> 
> Signed-off-by: Milan Broz <gmazyland@gmail.com>
> ---
> 
>  drivers/usb/storage/Makefile       |  25 ++++
>  drivers/usb/storage/mkflags.c      | 212 +++++++++++++++++++++++++++++
>  drivers/usb/storage/uas-detect.h   |   2 +-
>  drivers/usb/storage/uas.c          |  17 +--
>  drivers/usb/storage/usb.c          |   7 +-
>  drivers/usb/storage/usual-tables.c |  23 +---
>  6 files changed, 248 insertions(+), 38 deletions(-)
>  create mode 100644 drivers/usb/storage/mkflags.c
> 
> diff --git a/drivers/usb/storage/Makefile b/drivers/usb/storage/Makefile
> index 46635fa4a340..1eacdbb387cd 100644
> --- a/drivers/usb/storage/Makefile
> +++ b/drivers/usb/storage/Makefile
> @@ -45,3 +45,28 @@ ums-realtek-y		:= realtek_cr.o
>  ums-sddr09-y		:= sddr09.o
>  ums-sddr55-y		:= sddr55.o
>  ums-usbat-y		:= shuttle_usbat.o
> +

Suggestion: Add a comment here, explaining what the following code does 
and why it is necessary.

> +$(obj)/usb.o: $(obj)/unusual-flags.h
> +$(obj)/usual-tables.o: $(obj)/unusual-flags.c
> +$(obj)/uas.o: $(obj)/unusual-flags.h $(obj)/unusual-flags-uas.c
> +clean-files		:= unusual-flags.h unusual-flags.c unusual-flags-uas.c
> +HOSTCFLAGS_mkflags.o	:= -I $(srctree)/include/
> +hostprogs		+= mkflags
> +
> +quiet_cmd_mkflag_flags = FLAGS   $@
> +      cmd_mkflag_flags = $(obj)/mkflags flags > $@
> +
> +quiet_cmd_mkflag_storage = FLAGS   $@
> +      cmd_mkflag_storage = $(obj)/mkflags storage > $@
> +
> +quiet_cmd_mkflag_uas = FLAGS   $@
> +      cmd_mkflag_uas = $(obj)/mkflags uas > $@
> +
> +$(obj)/unusual-flags.h: $(obj)/mkflags FORCE
> +	$(call if_changed,mkflag_flags)
> +
> +$(obj)/unusual-flags.c: $(obj)/mkflags FORCE
> +	$(call if_changed,mkflag_storage)
> +
> +$(obj)/unusual-flags-uas.c: $(obj)/mkflags FORCE
> +	$(call if_changed,mkflag_uas)

My make-fu isn't so hot.  Do you really need to use this indirect way of 
specifying whether and how to rebuild the new files?

> diff --git a/drivers/usb/storage/mkflags.c b/drivers/usb/storage/mkflags.c
> new file mode 100644
> index 000000000000..11aa6579e7e1
> --- /dev/null
> +++ b/drivers/usb/storage/mkflags.c
> @@ -0,0 +1,212 @@
> +// SPDX-License-Identifier: GPL-2.0+

There needs to be a big comment here, explaining why this program is 
needed and exactly what it does.

> +
> +#include <stdio.h>
> +#include <string.h>
> +
> +/*
> + * Cannot use userspace <inttypes.h> as code below
> + * processes internal kernel headers
> + */
> +#include <linux/types.h>
> +
> +/*
> + * Silence warning for definitions in headers we do not use
> + */
> +struct usb_device_id {};
> +struct usb_interface;
> +
> +#include <linux/usb_usual.h>
> +
> +struct svals {
> +	unsigned int type;
> +
> +	/*interface */
> +	uint8_t bDeviceSubClass;
> +	uint8_t bDeviceProtocol;
> +
> +	/* device */
> +	uint16_t idVendor;
> +	uint16_t idProduct;
> +	uint16_t bcdDevice_lo;
> +	uint16_t bcdDevice_hi;
> +
> +	uint64_t flags;
> +	unsigned int set;
> +	unsigned int idx;
> +};
> +
> +enum { TYPE_DEVICE_STORAGE, TYPE_DEVICE_UAS, TYPE_CLASS };
> +enum { FLAGS_NOT_SET, FLAGS_SET, FLAGS_DUPLICATE };
> +#define FLAGS_END (uint64_t)-1
> +
> +#define IS_ENABLED(x) 0
> +
> +static struct svals vals[] = {
> +#define USUAL_DEV(useProto, useTrans) \
> +{ TYPE_CLASS, useProto, useTrans, 0, 0, 0, 0, 0, FLAGS_NOT_SET, 0 }
> +
> +#define COMPLIANT_DEV  UNUSUAL_DEV
> +#define UNUSUAL_DEV(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, \
> +		    vendorName, productName, useProtocol, useTransport, \
> +		    initFunction, flags) \
> +{ TYPE_DEVICE_STORAGE, 0, 0, id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, flags, FLAGS_NOT_SET, 0 }
> +
> +#include "unusual_devs.h"
> +
> +/* UAS */

If you're going to put this comment line here, why isn't there a similar 
comment line "/* Mass-Storage */" at the start of the structure 
initializer?

> +#undef UNUSUAL_DEV
> +#define UNUSUAL_DEV(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, \
> +		    vendorName, productName, useProtocol, useTransport, \
> +		    initFunction, flags) \
> +{ TYPE_DEVICE_UAS, 0, 0, id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, flags, FLAGS_NOT_SET, 0 }
> +
> +#include "unusual_uas.h"
> +
> +{ .flags = FLAGS_END }
> +};
> +#undef UNUSUAL_DEV
> +#undef USUAL_DEV
> +#undef COMPLIANT_DEV
> +#undef IS_ENABLED
> +
> +#define HI32 (uint32_t)0x80000000
> +
> +static unsigned long get_device_info(uint64_t flags, unsigned int idx)
> +{
> +	if (flags < HI32)
> +		return (unsigned long)flags;
> +
> +	/* Use index that will be processed in usb_stor_di2flags */
> +	return HI32 + idx;
> +}
> +
> +static void print_class(uint8_t bDeviceSubClass, uint8_t bDeviceProtocol)
> +{
> +	printf("\t{ .match_flags = USB_DEVICE_ID_MATCH_INT_INFO, ");
> +	printf(".bInterfaceClass = USB_CLASS_MASS_STORAGE, ");
> +	printf(".bInterfaceSubClass = 0x%x, .bInterfaceProtocol = 0x%x },\n",
> +		bDeviceSubClass, bDeviceProtocol);
> +}
> +static void print_type(unsigned int type)
> +{
> +	for (int i = 0; vals[i].flags != FLAGS_END; i++) {
> +		if (vals[i].type != type)
> +			continue;
> +
> +		if (type == TYPE_DEVICE_STORAGE || type == TYPE_DEVICE_UAS) {
> +			printf("\t{ .match_flags = USB_DEVICE_ID_MATCH_DEVICE_AND_VERSION, ");
> +			printf(".idVendor = 0x%x, .idProduct =0x%x, "
> +				".bcdDevice_lo = 0x%x, .bcdDevice_hi = 0x%x, .driver_info = 0x%lx },\n",
> +				vals[i].idVendor, vals[i].idProduct,
> +				vals[i].bcdDevice_lo, vals[i].bcdDevice_hi,
> +				get_device_info(vals[i].flags, vals[i].idx));
> +		} else if (type == TYPE_CLASS)
> +			print_class(vals[i].bDeviceSubClass, vals[i].bDeviceProtocol);
> +	}
> +}
> +
> +static void print_usb_flags(void)
> +{
> +	int i;
> +
> +	printf("#include <linux/types.h>\n\n");
> +
> +	/* usb_stor_di2flags */
> +	printf("static u64 usb_stor_di2flags(unsigned long idx)\n{\n");
> +	printf("\tu64 flags = 0;\n\n");
> +	printf("\tif (idx < 0x%x) \n\t\treturn idx;\n\n", HI32);
> +	printf("\tswitch(idx - 0x%x) {\n", HI32);
> +	for (i = 0; vals[i].flags != FLAGS_END; i++) {
> +		if (vals[i].set == FLAGS_SET)
> +			printf("\tcase %u: flags = 0x%llx; break;\n", vals[i].idx, vals[i].flags);
> +	}
> +	printf("\t}\n\n");
> +	printf("\treturn flags;\n");
> +	printf("}\n");
> +}

I suspect the usb_stor_di2flags() function doesn't have to be created by 
this preprocessor.  It ought to be possible to put a slightly altered 
version directly into uas-detect.h or some similar place (again, along 
with a comment explaining just what it does and why), and then generate 
here a simple array of 64-bit flags values which the function can index 
into rather than looking values up in a large "switch" statement.

> +static void print_usb_storage(void)
> +{
> +	printf("#include <linux/usb.h>\n\n");
> +
> +	/* usb_storage_usb_ids */
> +	printf("const struct usb_device_id usb_storage_usb_ids[] = {\n");
> +
> +	/* USB storage devices */
> +	print_type(TYPE_DEVICE_STORAGE);
> +
> +	/* UAS storage devices */
> +	printf("#if IS_ENABLED(CONFIG_USB_UAS)\n");
> +	print_type(TYPE_DEVICE_UAS);
> +	printf("#endif\n");
> +
> +	/* transport subclasses */
> +	print_type(TYPE_CLASS);
> +
> +	printf("\t{ }\t\t/* Terminating entry */\n};\n");
> +	printf("MODULE_DEVICE_TABLE(usb, usb_storage_usb_ids);\n");
> +}
> +
> +static void print_usb_uas(void)
> +{
> +	printf("#include <linux/usb.h>\n\n");
> +
> +	/* uas_usb_ids */
> +	printf("const struct usb_device_id uas_usb_ids[] = {\n");
> +
> +	/* UAS storage devices */
> +	print_type(TYPE_DEVICE_UAS);
> +
> +	/* transport subclasses */
> +	print_class(USB_SC_SCSI, USB_PR_BULK);
> +	print_class(USB_SC_SCSI, USB_PR_UAS);
> +
> +	printf("\t{ }\t\t/* Terminating entry */\n};\n");
> +	printf("MODULE_DEVICE_TABLE(usb, uas_usb_ids);\n");
> +}
> +
> +int main(int argc, char *argv[])
> +{
> +	int i, j, idx = 0, idx_old, skip = 0;
> +
> +	if (argc != 2 || (strcmp(argv[1], "flags") &&
> +	    strcmp(argv[1], "storage") && strcmp(argv[1], "uas"))) {
> +		printf("Please specify type: storage, uas or flags.\n");
> +		return 1;
> +	}
> +
> +	for (i = 0; vals[i].flags != FLAGS_END; i++) {
> +		if (vals[i].type == TYPE_CLASS)
> +			continue;
> +		skip = 0;
> +		if (vals[i].flags >= HI32) {
> +			for (j = 0; j < i; j++) {
> +				if (vals[j].flags == vals[i].flags &&
> +				    vals[j].set == FLAGS_SET) {
> +					skip = 1;
> +					idx_old = vals[j].idx;
> +					break;
> +				}
> +			}

This de-duplication may be a little premature.  But I guess it doesn't 
hurt.

> +			if (skip) {
> +				vals[i].idx = idx_old;
> +				vals[i].set = FLAGS_DUPLICATE;
> +			} else {
> +				vals[i].idx = idx;
> +				vals[i].set = FLAGS_SET;
> +				idx++;
> +			}
> +		}
> +	}
> +
> +	if (!strcmp(argv[1], "flags"))
> +		print_usb_flags();
> +	else if (!strcmp(argv[1], "storage"))
> +		print_usb_storage();
> +	else if (!strcmp(argv[1], "uas"))
> +		print_usb_uas();
> +	else
> +		return 1;
> +
> +	return 0;
> +}

The rest of the patch looks pretty straightforward.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/65bd429f-6740-4aa6-af00-e72d27074115%40rowland.harvard.edu.
