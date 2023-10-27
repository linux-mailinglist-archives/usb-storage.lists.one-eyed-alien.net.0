Return-Path: <usb-storage+bncBD6LRVPZ6YGRBM5W56UQMGQEZBGKXMY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F69A7D9D43
	for <lists+usb-storage@lfdr.de>; Fri, 27 Oct 2023 17:45:57 +0200 (CEST)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-67049a2c8b3sf1634536d6.0
        for <lists+usb-storage@lfdr.de>; Fri, 27 Oct 2023 08:45:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698421556; cv=pass;
        d=google.com; s=arc-20160816;
        b=FbKte+FfMliEWrIWvuFkd0YyZg8CvepdwFDQfNXQ+HGZga7oKaDeAt4hThzeUnDrYT
         91X7w1bmDH+AOOkH9JADAO+E6FZIhVwFGlmLX7WKVVz3NCIuOurjT+fRuZsjSUv2z3E0
         L3tVO+SzZxynSJIYLXWbKzgG2WIVsprsD749U5W/wYCYO2hQYu7pv69SzFtwDzwpYvBC
         Oa0dQ8nnBh0LrQmnpTVLfu1QIJ+czKGQ26m1v7qQECpVkOMEAJc/XpF02TN4wQseR2aC
         drmY7BZtsvS8v6hT72e3HFOTlukfqJSVwY+hDC6APpZ826oDqO6U0Czz+JRdjdZKs5tK
         EtNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FI7WdTZja4Zif7ATlxZMJyIbM5ORQsZWUGQDI58O/F0=;
        fh=ldCGyavYp779X2ViOANHPzjiMm1aqt/1VlioTkK72aI=;
        b=hIy/9DYuHdGw8+pyDGlA2pvxhur39Ew3HyAxuMiV4RRZkpY5e5Dn3LIYriRHDnhN0d
         UplChQxefSDmVDs91Vk5cmWkbfOJtr2jaGNpo4DtE5X7XG2NqdA5CiFy3pHzPiVd1vI4
         Jc3Xr638QsBBB6WT7TBgIpBiFBL1xmc9wwLNZ1OygSAxN+Urx1jj5/Ice3z8trsqBqfL
         K5YrDQoRoSn32Me86jWX++JpdQ3ypM8jdyehrdDQUJhcMdq5HhmDjIw08FbTfA1NmoXa
         CC5B5tXf29qbiEu3QBovy1nhCfY8uelWGFouWxAHDMq4qP6u+22CNCL6NwP7r2Apuf8w
         50Rw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698421556; x=1699026356; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FI7WdTZja4Zif7ATlxZMJyIbM5ORQsZWUGQDI58O/F0=;
        b=VvkatNINXZWKWGzVP4SnLidsVPsHZpX+Z/0oacBjuAxZXz5Fv1NNxwVg7AnI8MxL0b
         ElSPJbTxgawdo5dxV+vmLV8lAgPGoXErel5Wkqnj2785XgV3FSmlbzSs17lCTvSFedPv
         HdVy+JPmDgZperVjqkz+KU0pSl+qPi/XiQH3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698421556; x=1699026356;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FI7WdTZja4Zif7ATlxZMJyIbM5ORQsZWUGQDI58O/F0=;
        b=wa5JElmyLPnHL61yzXsRtsSKBJTvinHsQcldWuCAE640z2hbMiOjdj2U68hgHzXyLP
         sHZN/tSi7PEk+EFzliEnepK21B65COoBlWiRY1Ceb2G9jbRFA4ugbnR5YeVcrkJAs7MN
         ka4ls9PtHzcBE5Pvo0spL5xHxCbCTG9bMHUGMgymTOu38FeoBPNXYKiap5+S+QLpKjbY
         1Xmyx6BQv6X9cBRAyrDwEpsGjfIWkDl3CO66kQX8KNVsunTGx7I4yU2TriAfX+LpcCDo
         QCpSIbwZO8DaPdCdno6KcR5BTrTyZf7LClBWS48PlHDNDomgyBo+Di2RUxLY8yQZWfpJ
         Nd3w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YyeHVgsTBg+yYMGA5A6BO341U5mbxHH9Z8LK212qORLRlLxhP3a
	pS83sNCyUbDKMUOD9gBSDFBMYQ==
X-Google-Smtp-Source: AGHT+IHBhxH8Aw1fSMYYQJOFi+AP8BX0IPQPNS0/mxgmGY3+AfORtk1o0tazbG2yd/OKPS+h26jVow==
X-Received: by 2002:a05:6214:4013:b0:66f:b009:fc3b with SMTP id kd19-20020a056214401300b0066fb009fc3bmr3415891qvb.5.1698421556104;
        Fri, 27 Oct 2023 08:45:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:2129:b0:62f:e5ab:e5f4 with SMTP id
 r9-20020a056214212900b0062fe5abe5f4ls687760qvc.0.-pod-prod-05-us; Fri, 27 Oct
 2023 08:45:55 -0700 (PDT)
X-Received: by 2002:ad4:596d:0:b0:655:d82d:2fd0 with SMTP id eq13-20020ad4596d000000b00655d82d2fd0mr2632731qvb.21.1698421555227;
        Fri, 27 Oct 2023 08:45:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698421555; cv=none;
        d=google.com; s=arc-20160816;
        b=Ca2X3iyP2a7ImWvuEUIJRdqrBfNSWey5w+pFQEr0iEcQl+DC+pHQFPez6O+Emb7Dd0
         XsitNL91DskT0AJ269miRe67XXoz5R1cLoAweew4j1fn4Vh0rIVMYijfG6PF1geY7obi
         PrD2QzHLwQnh6N7QP5Fx/21OWHVQt51X32q3y1kQTHmTPs+98OptOOzytyZYBNzi3JDS
         My/dLRdu/RjnExvscdxj+U/5tb84EDIr1lVU2mkpWCuJRs39FcFk/on61hqf40ZIAXIA
         Izz3rQcCXl0qNC35duMg25ZayWW2yXPMnP1+uMrrXVNaYFmQza2WdduHXGuzE4VYnODR
         PO6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=8BZ0miwaFJPvMrM1MvrEMQZyo46cBE1u38zevsg9LFw=;
        fh=ldCGyavYp779X2ViOANHPzjiMm1aqt/1VlioTkK72aI=;
        b=xbrH5P3WBXvv8DqDydcOx58moE2563pXeNBHq1f7Nt4TfiK4kX4RxptI75R56wENg+
         YJ+jhoGcIe8UquroPIm1DwpL/Q7F+EjzFsvro5CFOZkQHWMtVmzU25BhgcZ1KbzLMReW
         /4R14lXPoYk3RaNDIp/YjA7gTliQS/MAtOweltXRPcIF74407lMtk9s8GmeIfm1pwaLr
         bhXbuk8Ykx9FumlvY88wjbOFPj43etOx7twdU0X7UTVc7cjgCc+qoOq3C9ujyTbbuo51
         BQl/Ej8pDSahXq/ciiQnAvKvsQqvHoBfcPy3FFKmKTC/4xgZbQAdgzlHPgRNtaAKqIrw
         yDZA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id oh6-20020a056214438600b0065b2cca41a2si935756qvb.110.2023.10.27.08.45.55
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 27 Oct 2023 08:45:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 573168 invoked by uid 1000); 27 Oct 2023 11:45:54 -0400
Date: Fri, 27 Oct 2023 11:45:54 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Milan Broz <gmazyland@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-scsi@vger.kernel.org, gregkh@linuxfoundation.org, oneukum@suse.com
Subject: [usb-storage] Re: [PATCH v3] usb-storage,uas: use host helper to
 generate driver info
Message-ID: <083755b2-7d02-45f2-8ce5-a8102cf6911c@rowland.harvard.edu>
References: <20231016072604.40179-5-gmazyland@gmail.com>
 <20231026101615.395113-1-gmazyland@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231026101615.395113-1-gmazyland@gmail.com>
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

On Thu, Oct 26, 2023 at 12:16:15PM +0200, Milan Broz wrote:
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
> These files also contain a generated translation table for driver_info
> to 64-bit values.
> 
> The translation function is used only in usb-storage and uas modules; all
> other USB storage modules store flags directly, using only 32-bit flags.
> 
> For 64-bit platforms, where unsigned long is 64-bit, we do not need to
> convert quirk flags to 32-bit index; the translation function there uses
> flags directly.
> 
> Signed-off-by: Milan Broz <gmazyland@gmail.com>
> ---

Just a few minor comments.

> diff --git a/drivers/usb/storage/Makefile b/drivers/usb/storage/Makefile
> index 46635fa4a340..9c09d83769e3 100644
> --- a/drivers/usb/storage/Makefile
> +++ b/drivers/usb/storage/Makefile
> @@ -45,3 +45,35 @@ ums-realtek-y		:= realtek_cr.o
>  ums-sddr09-y		:= sddr09.o
>  ums-sddr55-y		:= sddr55.o
>  ums-usbat-y		:= shuttle_usbat.o
> +
> +# The mkflags host-compiled generator produces usb-ids.c (usb-storage)
> +# and usb-ids-uas.c (uas) with USB device tables.
> +# These tables include pre-computed 32-bit values, as USB driver_info
> +# (where the value is stored) can be only 32-bit.
> +# The most significant bit means it is index to 64-bit pre-computed table
> +# generated by mkflags host-compiled program.
> +# Currently used only by mass-storage and uas driver.
> +
> +$(obj)/usual-tables.o: $(obj)/usb-ids.c
> +$(obj)/uas.o: $(obj)/usb-ids-uas.c

It would look better to put tabs after the ':'s in these two lines, so 
that the second field aligns with the lines below.

> +clean-files		:= usb-ids.c usb-ids-uas.c
> +HOSTCFLAGS_mkflags.o	:= -I $(srctree)/include/
> +ifdef CONFIG_64BIT
> +HOSTCFLAGS_mkflags.o	+= -D CONFIG_64BIT=1
> +else
> +HOSTCFLAGS_mkflags.o	+= -D CONFIG_64BIT=0
> +endif
> +hostprogs		+= mkflags
> +
> +quiet_cmd_mkflag_storage = FLAGS   $@
> +cmd_mkflag_storage = $(obj)/mkflags storage > $@
> +
> +quiet_cmd_mkflag_uas = FLAGS   $@
> +cmd_mkflag_uas = $(obj)/mkflags uas > $@
> +
> +# mkflags always need to include unusual_devs.h and unusual_uas.h
> +$(obj)/usb-ids.c: $(obj)/mkflags $(obj)/unusual_devs.h $(obj)/unusual_uas.h
> +	$(call cmd,mkflag_storage)
> +
> +$(obj)/usb-ids-uas.c: $(obj)/mkflags $(obj)/unusual_devs.h $(obj)/unusual_uas.h
> +	$(call cmd,mkflag_uas)

I don't think these dependencies are quite right.  usb-ids.c and 
usb-ids-uas.c don't depend directly on unusual_devs.h or unusual_uas.h 
-- that is, the mkflags program doesn't read those header files when it 
runs.  Rather, mkflags itself depends on those headers, and the compiler 
can figure this out by itself so the Makefile doesn't need to mention 
it.

So instead you should say:

$(obj)/usb-ids.c:	$(obj)/mkflags
	$(call cmd,mkflag_storage)

$(obj)/usb-ids-uas.c:	$(obj)/mkflags
	$(call cmd,mkflag_uas)

> diff --git a/drivers/usb/storage/usb-ids.h b/drivers/usb/storage/usb-ids.h
> new file mode 100644
> index 000000000000..d0359c572f33
> --- /dev/null
> +++ b/drivers/usb/storage/usb-ids.h
> @@ -0,0 +1,37 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +
> +#ifndef _USB_STOR_IDS_H_
> +#define _USB_STOR_IDS_H_
> +
> +#include <linux/types.h>
> +#include <linux/bug.h>
> +
> +/* Conversion of 32-bit quirks flags for 32-bit platforms */
> +extern const unsigned long usb_stor_drv_info_u64_table_size;
> +extern const unsigned long usb_uas_drv_info_u64_table_size;
> +extern const u64 usb_stor_drv_info_u64_table[];
> +extern const u64 usb_uas_drv_info_u64_table[];
> +
> +static u64 usb_stor_drv_info_to_flags(const u64 *drv_info_u64_table,
> +		unsigned long table_size, unsigned long idx)
> +{
> +#if IS_ENABLED(CONFIG_64BIT)
> +	return idx;
> +#else
> +	u64 flags = 0;
> +
> +	if (idx < (1UL << 31))
> +		return idx;
> +
> +	idx -= (1UL << 31);
> +
> +	if (idx < table_size)
> +		flags = drv_info_u64_table[idx];
> +	else
> +		pr_warn_once("usb_stor_drv_info_u64_table not updated");
> +
> +	return flags;
> +#endif
> +}

In order to avoid conditional macros within a function definition, this 
can be rewritten as:

#if IS_ENABLED(CONFIG_64BIT)
/* 64-bit systems don't need to use the drv_info_64_table */
static u64 usb_stor_drv_info_to_flags(const u64 *drv_info_u64_table,
		unsigned long table_size, unsigned long idx)
{
	return idx;
}

#else
/* 32-bit systems need to look up flags if bits 31 or beyond are used */
static u64 usb_stor_drv_info_to_flags(const u64 *drv_info_u64_table,
		unsigned long table_size, unsigned long idx)
{
...
}
#endif

Everything else looks okay.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/083755b2-7d02-45f2-8ce5-a8102cf6911c%40rowland.harvard.edu.
