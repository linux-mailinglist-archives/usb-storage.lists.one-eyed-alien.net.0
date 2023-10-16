Return-Path: <usb-storage+bncBD6LRVPZ6YGRBTMLW2UQMGQEHTHRC3Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vk1-xa45.google.com (mail-vk1-xa45.google.com [IPv6:2607:f8b0:4864:20::a45])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD2E7CB2F7
	for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 20:49:51 +0200 (CEST)
Received: by mail-vk1-xa45.google.com with SMTP id 71dfb90a1353d-49da52a5356sf1427848e0c.2
        for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 11:49:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1697482190; cv=pass;
        d=google.com; s=arc-20160816;
        b=ST5j8NN+9cgoO28/P+PBumwJu7VXgmMxs4EL0YoSFNuxIBohwSfoyKNX6X5Z1fj0D9
         fYR5AM02suxVqVs7hFX4rW4NRkXP2/IQbMUsAS+mdCNi0IFWMgBeLJphmUNAjF6JYrLD
         5bF0BCPfxL8jQOtrDhjiUAta51AcCxvxOUrvoDHmuZINt9hKkRKbuFebdt3BZYc0S1tF
         q1L4R9a/a8vVv9a6xlplMKOuzU+tUj3f2nX2McY9MFsiYX0VEUH8OtzyKroFnBAcGS9V
         c8/MyHxgPG9WJy5i80vSnVeHOw3GkVLSb3uxGGm+hoKBVb/qXe/PDFwhxc6+7n28xy0G
         MRKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PvCV7dsE37035G8WVWJnl+pn+YaTv5mLcgaKw02EEaI=;
        fh=ldCGyavYp779X2ViOANHPzjiMm1aqt/1VlioTkK72aI=;
        b=K6Sqpbrty1mxI+SV83MWioDdFrszQiSEuTVyDoK9+bseqU72h3o6wytyXtgKwlFd7L
         hZkJ7IvVyeZxnmoeF8iq4U3PsXRNm56RJsj9C1eYPEP3HGrwNBJaKq084lNA0dpVxrnt
         YOScradqOnDJ91xI86JduRWejttkMAjz84C9LAm/Kdf+2EUu1e+ZSH/anQFzygQqteN8
         rmnXlDqr7OOqaWW90Kub5JVm+nysOUyFLDOR+ge4F0Un/LEWQz3uUVG0pYej1jJQ6Lwg
         3BS/scTPM5Wo66uhxGogqnlPOcvmWyfmNXT7EF/Knzu+3YxzqNbeppB7C+7ncpB5foaV
         je7Q==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1697482190; x=1698086990; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PvCV7dsE37035G8WVWJnl+pn+YaTv5mLcgaKw02EEaI=;
        b=PxwpLtaqWpX1s5qj0m05q8oPZHp3DbBtgQcdeytCrHnWQekN78RU94vFesD5QznCNR
         1/P/z/S3ytS3c7TU3L6KDRVXltPN4QTFDr2Do0mpibes/f4CLu7zd+9GTtzTBorcyn8D
         Sviz9C4Qd48ftmFm+VBvFc/fWqQsls0D6f6v0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697482190; x=1698086990;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PvCV7dsE37035G8WVWJnl+pn+YaTv5mLcgaKw02EEaI=;
        b=XpvT2yun+pK2Y99CO6xNTDyNp6lpvqMW5GNZn8DldVGVNEoBKtJ+f/GreKguQFODOI
         UmgB/YuN82Z5Q38B01QddysAL6iFXiR8A5O0uIJCvIPKLoC6rzL9xvAW78gekKoDyxdG
         U38yJG0N+FipV1VslLLR+KOzN9S5nfDYmO4bOk0z8ER0hd2tPjAr4KkNr6vbdPTOHNEF
         7DcpEN+n5HYizE95MH6CYNWWzh2bXonE/AmMLWCZyNsRwk86Jy8fDsBSbD48VuscG3S/
         rdXdENRRDVORuNKl8Meb6JtNjhePjstx9nk/S2k1L72Koj0z82aiceDJmcAZ9sLgAueO
         EmBw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YyyseI+EOJc+ogA3mqdPpqrwCsSIRtcxqswkU5J3wlVJwvLNIJD
	uCtU8uE4xJ1Of0CKgS31bmeP/Q==
X-Google-Smtp-Source: AGHT+IHerB/yZyjIT8T1NaXM+kVZL5tQoobzazKCQfDAn5qUKgTal1Ov03eYURwSyE3aDYSeC7rg6g==
X-Received: by 2002:a1f:7d09:0:b0:49d:611:a8e3 with SMTP id y9-20020a1f7d09000000b0049d0611a8e3mr235496vkc.10.1697482189760;
        Mon, 16 Oct 2023 11:49:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:1483:0:b0:418:f20:220a with SMTP id l3-20020ac81483000000b004180f20220als720226qtj.1.-pod-prod-03-us;
 Mon, 16 Oct 2023 11:49:47 -0700 (PDT)
X-Received: by 2002:a05:622a:180c:b0:418:d14:1cc2 with SMTP id t12-20020a05622a180c00b004180d141cc2mr164601qtc.55.1697482187502;
        Mon, 16 Oct 2023 11:49:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1697482187; cv=none;
        d=google.com; s=arc-20160816;
        b=ooJlj0pwjPi6m/UXvGT+mDq/L8k9DYoIHcM8sOnY4FvnPifwq3hgNLGUbDcuRAenEY
         7x6N+nAK9uExajtjJL45r7aY2NpSDIK44bJlkfv9IF3fwEyPeA591OPHq0lyvln/tVxM
         y7uvmDKIdMGXth+B4+OGVDn48x6Vdr9ihucg01Oenb/RIe7mxSikcT1mXNbr1vgmi5An
         EeYSmr5K943SnItK/nmCo58uLJQ+Vis74jYHoMYX7fi3Lu/5t+SIv2UlEndI1IhSgUOr
         8EicQ/qSLEmX44tTlR1yK7P7BTY/Q9mkyf1QKi1QiId4IrRj4MGdm+8mxgbEtaVRDZTo
         N+Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=LaC9GCHo6fn+q7KkgJIAdavx2Nk4Y9lWgcBln3ncXGI=;
        fh=ldCGyavYp779X2ViOANHPzjiMm1aqt/1VlioTkK72aI=;
        b=uUQ/t9ouDo4OphnFZkBTgiWV+axZ/GCSpa24B+XJObEZcUUqCmOTt0yYllSvN5/kcl
         MkkVeNlios6WXPn9D25RlxChEfj6/YRH3fKk1LxbYfuBfI+hwnNnLbxsr4TzJu9GAeab
         y11IeNuH68FYQnuJwWX4ByyUnqBD8AqJkKsVfyDDlDPBVGEJxrRrujPjAxlsmg5v1aZw
         T9X/YdcXpFO2ozNMJ8g/J5904iJ8lO3HiWOys+Gz6zKfykS1JP3gdGye+T4+lZ+oQ/1/
         l49WZaIWqmGjPFMWemGBmPlZIxSEehAOm2ITX4ZNVeAbeJ+LJX/LpQXc61UtWnJXcB9v
         k64A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id l20-20020a05622a175400b004197105b96csi5823031qtk.191.2023.10.16.11.49.47
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 16 Oct 2023 11:49:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 153226 invoked by uid 1000); 16 Oct 2023 14:49:46 -0400
Date: Mon, 16 Oct 2023 14:49:46 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Milan Broz <gmazyland@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-scsi@vger.kernel.org, gregkh@linuxfoundation.org, oneukum@suse.com
Subject: [usb-storage] Re: [PATCH 4/7] usb-storage,uas: use host helper to
 generate driver info
Message-ID: <787eea9f-240b-493b-a719-bcec972589e4@rowland.harvard.edu>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231016072604.40179-1-gmazyland@gmail.com>
 <20231016072604.40179-5-gmazyland@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231016072604.40179-5-gmazyland@gmail.com>
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

On Mon, Oct 16, 2023 at 09:26:01AM +0200, Milan Broz wrote:
> The USB mass storage quirks flags can be stored in driver_info in
> a 32-bit integer (unsigned long on 32-bit platforms).
> As this attribute cannot be enlarged, we need to use some form
> of translation of 64-bit quirk bits.
> 
> This problem was discussed on the USB list
> https://lore.kernel.org/linux-usb/f9e8acb5-32d5-4a30-859f-d4336a86b31a@gmail.com/
> 
> The initial solution to use a static array extensively increased the size
> of the kernel module, so I decided to try the second suggested solution:
> generate a table by host-compiled program and use bit 31 to indicate
> that the value is an index, not the actual value.
> 
> This patch adds a host-compiled program that processes unusual_devs.h
> (and unusual_uas.h) and generates files usb-ids.c and usb-ids-uas.c
> (for pre-processed USB device table with 32-bit device info).
> These files also contain a generated translation table for device_info
> to 64-bit values.
> 
> The translation function is used only in usb-storage and uas modules; all
> other USB storage modules store flags directly, using only 32-bit integers.
> 
> This translation is unnecessary for a 64-bit system, but I keep it
> in place for simplicity in this patch.
> 
> Signed-off-by: Milan Broz <gmazyland@gmail.com>
> ---
>  drivers/usb/storage/Makefile       |  25 ++++
>  drivers/usb/storage/mkflags.c      | 226 +++++++++++++++++++++++++++++
>  drivers/usb/storage/uas-detect.h   |   4 +-
>  drivers/usb/storage/uas.c          |  20 +--
>  drivers/usb/storage/usb-ids.h      |  33 +++++
>  drivers/usb/storage/usb.c          |  10 +-
>  drivers/usb/storage/usual-tables.c |  23 +--
>  7 files changed, 301 insertions(+), 40 deletions(-)
>  create mode 100644 drivers/usb/storage/mkflags.c
>  create mode 100644 drivers/usb/storage/usb-ids.h
> 
> diff --git a/drivers/usb/storage/Makefile b/drivers/usb/storage/Makefile
> index 46635fa4a340..612678f108d0 100644
> --- a/drivers/usb/storage/Makefile
> +++ b/drivers/usb/storage/Makefile
> @@ -45,3 +45,28 @@ ums-realtek-y		:= realtek_cr.o
>  ums-sddr09-y		:= sddr09.o
>  ums-sddr55-y		:= sddr55.o
>  ums-usbat-y		:= shuttle_usbat.o
> +
> +# The mkflags host-compiled generator produces usb-ids.c (usb-storage)
> +# and usb-ids-uas.c (uas) with USB device tables.
> +# These tables include pre-computed 32-bit flags as USB driver device_info

s/flags as/flags, as/

Otherwise this seems to say that the 32-bit flags are converted to USB 
driver device_info values -- an incorrect parsing that makes no sense 
and will confuse readers.  (It confused me at first.)

Also, don't you really mean "driver_info" rather than "driver
device_info"?  That's the name of the field in struct usb_device_id.

Same comments apply to each place you used this text.

> +# (where the value is stored) can be only 32-bit.
> +# The most significant bit means it is index to 64-bit flags table pre-computed
> +# by mkflags. Currently used only by mass-storage and UAS driver.
> +
> +$(obj)/usual-tables.o: $(obj)/usb-ids.c
> +$(obj)/uas.o: $(obj)/usb-ids-uas.c
> +clean-files		:= usb-ids.c usb-ids-uas.c
> +HOSTCFLAGS_mkflags.o	:= -I $(srctree)/include/
> +hostprogs		+= mkflags
> +
> +quiet_cmd_mkflag_storage = FLAGS   $@
> +cmd_mkflag_storage = $(obj)/mkflags storage > $@
> +
> +quiet_cmd_mkflag_uas = FLAGS   $@
> +cmd_mkflag_uas = $(obj)/mkflags uas > $@
> +
> +$(obj)/usb-ids.c: $(obj)/mkflags FORCE
> +	$(call if_changed,mkflag_storage)
> +
> +$(obj)/usb-ids-uas.c: $(obj)/mkflags FORCE
> +	$(call if_changed,mkflag_uas)

Hmmm...  Where does this say that usb-ids.c and usb-ids-uas.c depend
on unusual_devs.h and unusual_uas.h?  Is the kbuild system smart enough
to figure that out on its own (this seems unlikely)?

And do the FORCE things need to be there?  After all, the .c files
don't need to be rebuilt if nothing has changed since the last build.

> diff --git a/drivers/usb/storage/mkflags.c b/drivers/usb/storage/mkflags.c
> new file mode 100644
> index 000000000000..2514ffef0154
> --- /dev/null
> +++ b/drivers/usb/storage/mkflags.c
> @@ -0,0 +1,226 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +
> +/*
> + * This is host-compiled generator for usb-ids.c (usb-storage)
> + * and usb-ids-uas.c (uas).
> + *
> + * Generated files contain pre-computed 32-bit flags as USB driver
> + * device_info (where the value is stored) can be only 32-bit.
> + * The most significant bit means that it is index to 64-bit flags table
> + * named usb_stor_di_to_u64 with size stored in usb_stor_di_idx_size
> + * (for sanity check).
> + *
> + * Note that usb-storage driver contains also UAS devices, while UAS
> + * driver contains only UAS entries (so there can be duplicities).

"duplicates", not "duplicities".  ("duplicity" means something else --
basically it means "lying".)

> + */
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

"svals" is a rather generic and uninformative name.  How about calling 
it "unusual_dev_entry" or something like that, instead?

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

If you give names to these enums and move their definitions up above
definition of svals, then you can declare the .type and .set fields to
be of the enumerated types instead of just integers.

> +#define FLAGS_END (uint64_t)-1
> +
> +#define IS_ENABLED(x) 0
> +
> +static struct svals vals[] = {
> +#define USUAL_DEV(useProto, useTrans) \
> +{ TYPE_CLASS, useProto, useTrans, 0, 0, 0, 0, 0, FLAGS_NOT_SET, 0 }
> +
> +#define COMPLIANT_DEV  UNUSUAL_DEV
> +
> +/* USB-atached mass storage */

Spelling error.  Also, considering that "UAS" stands for "USB-Attached 
Storage", you might want to change this to "USB Mass Storage" to make 
the distinction clearer.  Or even change both comments to 
"usb-storage" and "uas", since the driver names are more distinct than 
the protocol names.

> +#define UNUSUAL_DEV(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, \
> +		    vendorName, productName, useProtocol, useTransport, \
> +		    initFunction, flags) \
> +{ TYPE_DEVICE_STORAGE, 0, 0, id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, flags, FLAGS_NOT_SET, 0 }
> +#include "unusual_devs.h"
> +#undef UNUSUAL_DEV
> +
> +/* UAS */
> +#define UNUSUAL_DEV(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, \
> +		    vendorName, productName, useProtocol, useTransport, \
> +		    initFunction, flags) \
> +{ TYPE_DEVICE_UAS, 0, 0, id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, flags, FLAGS_NOT_SET, 0 }
> +#include "unusual_uas.h"
> +#undef UNUSUAL_DEV
> +
> +/* Terminating entry */
> +{ .flags = FLAGS_END }
> +};
> +#undef USUAL_DEV
> +#undef COMPLIANT_DEV
> +#undef IS_ENABLED
> +
> +/* Highest bit indicates it is index to usb_stor_di_to_u64 table */
> +#define HI32 (uint32_t)(1UL << 31)
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
> +			printf(".idVendor = 0x%04x, .idProduct =0x%04x, "
> +				".bcdDevice_lo = 0x%04x, .bcdDevice_hi = 0x%04x, .driver_info = 0x%lx },\n",
> +				vals[i].idVendor, vals[i].idProduct,
> +				vals[i].bcdDevice_lo, vals[i].bcdDevice_hi,
> +				get_device_info(vals[i].flags, vals[i].idx));
> +		} else if (type == TYPE_CLASS)
> +			print_class(vals[i].bDeviceSubClass, vals[i].bDeviceProtocol);
> +	}
> +}
> +
> +static void print_usb_flags(const char *type)
> +{
> +	int i, count;
> +
> +	printf("const u64 usb_%s_di_to_u64[] = {\n", type);
> +	for (i = 0, count = 0; vals[i].flags != FLAGS_END; i++) {
> +		if (vals[i].set == FLAGS_SET) {
> +			printf("\t/* 0x%02x */ 0x%llx,\n", vals[i].idx, vals[i].flags);
> +			count++;
> +		}
> +	}
> +	printf("};\n\n");
> +	printf("const unsigned long usb_%s_di_idx_size = %i;\n\n", type, count);
> +}
> +
> +static void print_usb_storage(void)
> +{
> +	printf("#include <linux/usb.h>\n\n");
> +
> +	/* conversion table from 32-bit device_flags to 64-bit flags */
> +	print_usb_flags("stor");
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
> +	printf("\t{ } /* Terminating entry */\n};\n");
> +	printf("MODULE_DEVICE_TABLE(usb, usb_storage_usb_ids);\n");
> +}
> +
> +static void print_usb_uas(void)
> +{
> +	printf("#include <linux/usb.h>\n\n");
> +
> +	/* conversion table from 32-bit device_flags to 64-bit flags */
> +	print_usb_flags("uas");
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
> +	printf("\t{ } /* Terminating entry */\n};\n");
> +	printf("MODULE_DEVICE_TABLE(usb, uas_usb_ids);\n");
> +}
> +
> +int main(int argc, char *argv[])
> +{
> +	int i, j, idx = 0, idx_old, skip = 0;
> +
> +	if (argc != 2 || (strcmp(argv[1], "storage") && strcmp(argv[1], "uas"))) {
> +		printf("Please specify output type: storage or uas.\n");
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
> +	if (!strcmp(argv[1], "storage"))
> +		print_usb_storage();
> +	else if (!strcmp(argv[1], "uas"))
> +		print_usb_uas();
> +	else
> +		return 1;
> +
> +	return 0;
> +}
> diff --git a/drivers/usb/storage/uas-detect.h b/drivers/usb/storage/uas-detect.h
> index 4d3b49e5b87a..fbe068b138c4 100644
> --- a/drivers/usb/storage/uas-detect.h
> +++ b/drivers/usb/storage/uas-detect.h
> @@ -54,12 +54,14 @@ static int uas_find_endpoints(struct usb_host_interface *alt,
>  
>  static int uas_use_uas_driver(struct usb_interface *intf,
>  			      const struct usb_device_id *id,
> +			      const u64 *di_to_u64,
> +			      unsigned long di_idx_size,
>  			      u64 *flags_ret)
>  {
>  	struct usb_host_endpoint *eps[4] = { };
>  	struct usb_device *udev = interface_to_usbdev(intf);
>  	struct usb_hcd *hcd = bus_to_hcd(udev->bus);
> -	u64 flags = id->driver_info;
> +	u64 flags = usb_stor_di2flags(di_to_u64, di_idx_size, id->driver_info);
>  	struct usb_host_interface *alt;
>  	int r;
>  
> diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
> index 696bb0b23599..8a1c4449dcc9 100644
> --- a/drivers/usb/storage/uas.c
> +++ b/drivers/usb/storage/uas.c
> @@ -26,6 +26,7 @@
>  #include <scsi/scsi_host.h>
>  #include <scsi/scsi_tcq.h>
>  
> +#include "usb-ids.h"
>  #include "uas-detect.h"
>  #include "scsiglue.h"
>  
> @@ -909,21 +910,7 @@ static const struct scsi_host_template uas_host_template = {
>  	.cmd_size = sizeof(struct uas_cmd_info),
>  };
>  
> -#define UNUSUAL_DEV(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, \
> -		    vendorName, productName, useProtocol, useTransport, \
> -		    initFunction, flags) \
> -{ USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
> -	.driver_info = (flags) }
> -
> -static struct usb_device_id uas_usb_ids[] = {
> -#	include "unusual_uas.h"
> -	{ USB_INTERFACE_INFO(USB_CLASS_MASS_STORAGE, USB_SC_SCSI, USB_PR_BULK) },
> -	{ USB_INTERFACE_INFO(USB_CLASS_MASS_STORAGE, USB_SC_SCSI, USB_PR_UAS) },
> -	{ }
> -};
> -MODULE_DEVICE_TABLE(usb, uas_usb_ids);
> -
> -#undef UNUSUAL_DEV
> +#include "usb-ids-uas.c"

I think it would make more sense to put this #include immediately
after the "usb-ids.h" line.  After all, the two are so similar.

>  
>  static int uas_switch_interface(struct usb_device *udev,
>  				struct usb_interface *intf)
> @@ -990,7 +977,8 @@ static int uas_probe(struct usb_interface *intf, const struct usb_device_id *id)
>  	struct usb_device *udev = interface_to_usbdev(intf);
>  	u64 dev_flags;
>  
> -	if (!uas_use_uas_driver(intf, id, &dev_flags))
> +	if (!uas_use_uas_driver(intf, id, usb_uas_di_to_u64, usb_uas_di_idx_size,
> +				&dev_flags))
>  		return -ENODEV;
>  
>  	if (uas_switch_interface(udev, intf))
> diff --git a/drivers/usb/storage/usb-ids.h b/drivers/usb/storage/usb-ids.h
> new file mode 100644
> index 000000000000..8bfd84e07f96
> --- /dev/null
> +++ b/drivers/usb/storage/usb-ids.h
> @@ -0,0 +1,33 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +
> +#ifndef _USB_STOR_IDS_H_
> +#define _USB_STOR_IDS_H_
> +
> +#include <linux/types.h>
> +#include <linux/bug.h>
> +
> +/* Conversion of 32-bit quirks flags for 32-bit platforms */
> +extern const unsigned long usb_stor_di_idx_size;
> +extern const unsigned long usb_uas_di_idx_size;
> +extern const u64 usb_stor_di_to_u64[];
> +extern const u64 usb_uas_di_to_u64[];
> +
> +static u64 usb_stor_di2flags(const u64 *di_to_u64,
> +		unsigned long idx_size, unsigned long idx)

I really dislike all the places you've used "di", such as here in
"di2flags".  Something a little more explicit would be much better,
such as "drv_info".

Also, idx_size refers to the size of the table, not the size of the
index.  So a better name would be "table_size".  Similarly,
"di_to_u64" sounds like a function name, not an array name.  You could
call it "drv_info_u64_table".

> +{
> +	u64 flags = 0;
> +
> +	if (idx < (1UL << 31))
> +		return idx;
> +
> +	idx -= (1UL << 31);
> +
> +	if (idx < idx_size)
> +		flags = di_to_u64[idx];
> +	else
> +		WARN_ONCE(true, "usb_stor_di_to_u64 table not updated");

I think Greg KH is against introducing new usages of
WARN/WARN_ON/WARN_ONCE.  You can change this to pr_warn().

> +
> +	return flags;
> +}
> +
> +#endif
> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> index db8c4d2c8d11..bb48ab1bd461 100644
> --- a/drivers/usb/storage/usb.c
> +++ b/drivers/usb/storage/usb.c
> @@ -56,6 +56,7 @@
>  #include "sierra_ms.h"
>  #include "option_ms.h"
>  
> +#include "usb-ids.h"
>  #if IS_ENABLED(CONFIG_USB_UAS)
>  #include "uas-detect.h"
>  #endif
> @@ -589,7 +590,11 @@ static int get_device_info(struct us_data *us, const struct usb_device_id *id,
>  	us->protocol = (unusual_dev->useTransport == USB_PR_DEVICE) ?
>  			idesc->bInterfaceProtocol :
>  			unusual_dev->useTransport;
> -	us->fflags = id->driver_info;
> +	if (fflags_use_index)
> +		us->fflags = usb_stor_di2flags(usb_stor_di_to_u64, usb_stor_di_idx_size,
> +			id->driver_info);
> +	else
> +		us->fflags = id->driver_info;
>  	usb_stor_adjust_quirks(us->pusb_dev, &us->fflags);
>  
>  	if (us->fflags & US_FL_IGNORE_DEVICE) {
> @@ -1091,7 +1096,8 @@ static int storage_probe(struct usb_interface *intf,
>  
>  	/* If uas is enabled and this device can do uas then ignore it. */
>  #if IS_ENABLED(CONFIG_USB_UAS)
> -	if (uas_use_uas_driver(intf, id, NULL))
> +	if (uas_use_uas_driver(intf, id, usb_stor_di_to_u64,
> +			       usb_stor_di_idx_size, NULL))
>  		return -ENXIO;
>  #endif
>  
> diff --git a/drivers/usb/storage/usual-tables.c b/drivers/usb/storage/usual-tables.c
> index a26029e43dfd..40ef861dbd08 100644
> --- a/drivers/usb/storage/usual-tables.c
> +++ b/drivers/usb/storage/usual-tables.c
> @@ -13,28 +13,9 @@
>  
>  
>  /*
> - * The table of devices
> + * The table of devices is pre-generated in usb-ids.c
>   */
> -#define UNUSUAL_DEV(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, \
> -		    vendorName, productName, useProtocol, useTransport, \
> -		    initFunction, flags) \
> -{ USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
> -  .driver_info = (kernel_ulong_t)(flags) }
> -
> -#define COMPLIANT_DEV	UNUSUAL_DEV
> -
> -#define USUAL_DEV(useProto, useTrans) \
> -{ USB_INTERFACE_INFO(USB_CLASS_MASS_STORAGE, useProto, useTrans) }
> -
> -const struct usb_device_id usb_storage_usb_ids[] = {
> -#	include "unusual_devs.h"
> -	{ }		/* Terminating entry */
> -};
> -MODULE_DEVICE_TABLE(usb, usb_storage_usb_ids);
> -
> -#undef UNUSUAL_DEV
> -#undef COMPLIANT_DEV
> -#undef USUAL_DEV
> +#include "usb-ids.c"
>  
>  /*
>   * The table of devices to ignore
> -- 
> 2.42.0

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/787eea9f-240b-493b-a719-bcec972589e4%40rowland.harvard.edu.
