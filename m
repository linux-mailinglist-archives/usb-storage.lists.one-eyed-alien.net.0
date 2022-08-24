Return-Path: <usb-storage+bncBCUJ7YGL3QFBB3NATCMAMGQEKNWSO4Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 173A359F8D2
	for <lists+usb-storage@lfdr.de>; Wed, 24 Aug 2022 13:50:06 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id x3-20020a05640226c300b00446ad76aeb5sf5962911edd.8
        for <lists+usb-storage@lfdr.de>; Wed, 24 Aug 2022 04:50:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661341805; cv=pass;
        d=google.com; s=arc-20160816;
        b=e3XEaKNTlPp6E/Wrs6SdXprM22Tfw4rJYkDZ3qUo54/YiSAqhrQuvIaIDHI4ZAschP
         95bMvUH73b7IBMcx17vLE3OIVaO2pOGvQ0s6OHtE7K63BpKPoYYVuGYCQ6ffwXdqIRKH
         EWBOx1E+S+H7AfXaXaioCInDZUyjULX186TTK+oF7ctGZBJ0yWpIXybDbCSNLBJGob2u
         OAEc3GwQvmDtDXbXh4IBolnPa64gGseKMfQI+ESKMUxb80wyWlOj2P5zCr2UQAFhhg+c
         2mcfsdMqDm9GRzq0AYTYOAXFIdupNFc1osmaO23rm1BeukyoCgQ2SWVmhvIemIxnvmaT
         HlmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Kt9hxqxOyWR3kuL2J8xT4K0cyvBqJ6Jz4TC0m92BApk=;
        b=lskv1rDJMpl0FT91YNP6sWd6i1QtbcjzbCPIUc9t2dWg75NDKxhvjrjzfTBMkuqf9R
         zfiFOcFKx+H3P8Md0nWg0rQQwzbWy7o73w7EwWALGcuX6SWZ2yvILWPFbATEaY01DNXW
         vrlAzLRMGI845yEm83mn7fy0aDi9/YkGmMxL1raIVCjHa2J2cYG13vUBHpm9yuaP7gZL
         ASy/iZq5a/rc7V1tJdkVbKYzsx+PWtGOMpn9UVFLy4EslbAzpM3mQ9oscuVthJ4Xrsnm
         c7us+Lf5ySZ74WOgMcv6dRs5HlVLLMmFyDij9rXZosRF/aAjOIfH0qsnywNouOg9UCOM
         BwBQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=lBFVFtpE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=Kt9hxqxOyWR3kuL2J8xT4K0cyvBqJ6Jz4TC0m92BApk=;
        b=LPnM/QwPVO8MYNAT+bqlomT8QE2b9IZYnsOT/3ro6NhFVeoNjIs6HvbpQwkjaQD9TT
         R8AU/wAb39HOCwj4GJAts6xBUuweLSCCU0quH/0D0zT6zj5dYmzOakgwfXMByF+anPLJ
         dBVHj/zQX/DaQtB2PNc2zftpOBrQM1p2IhrI0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=Kt9hxqxOyWR3kuL2J8xT4K0cyvBqJ6Jz4TC0m92BApk=;
        b=AFTKlHWeY3ywjlPi25L+Fy7QgEGy04UKFDHi8WxmxpYUziNQvQD0dFLNkdEqPLcrfD
         vSn+OQpom5N6ntyGCn6N4J8tqALwskIyTQT54an2OdiGO5kWu36QYuX/WEjIuhlzvTYv
         tFE8Ik2ZAgFDONZX3MbANBikfWgwTV1GmBOtU8pOhewsYUcnZ8aRrkfh0idZ45c2lTpr
         pWkpUpTc5l6nSJC3mdbTuoPSOFCs/8tCdytmTrM7cRKJp+E4hJafT5C7aEQR5rU7TL8Y
         VKpExMf6gdcXhUUQIbVLZc4v03twWtQUQM5d0EV6/9XKdMxm0WTrJJpaBvExHUeacSfn
         4QCA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0IHAijKq95npYuIB9CS/ks1HY3TV4YsHO8OwxtFOEKHqDxtnxZ
	4tJA7ASCTCmqWH4BIFf3efbQJA==
X-Google-Smtp-Source: AA6agR7n4VCVGmb0y+C6XHEDkVeZbKOC5tgHdQDBZrFPDMha6nOubZuFc+dWr0wfMISj1bPxxAj5aQ==
X-Received: by 2002:a17:907:6295:b0:703:92b8:e113 with SMTP id nd21-20020a170907629500b0070392b8e113mr2688186ejc.594.1661341805508;
        Wed, 24 Aug 2022 04:50:05 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:358e:b0:43a:77a6:b0d with SMTP id
 y14-20020a056402358e00b0043a77a60b0dls4675450edc.3.-pod-prod-gmail; Wed, 24
 Aug 2022 04:50:04 -0700 (PDT)
X-Received: by 2002:a50:fd83:0:b0:446:665f:f500 with SMTP id o3-20020a50fd83000000b00446665ff500mr3636466edt.407.1661341804256;
        Wed, 24 Aug 2022 04:50:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661341804; cv=none;
        d=google.com; s=arc-20160816;
        b=fOLc1fkKqVLQtDRf/YjzLvnqQmmKTUiEc+3VNz9OamrV8alYvHuAgvJQkC0ii1kmAb
         0vcCfHvPeqv9WM4LoAtYok9TqFbNM73GzMvcU9v+S0xrWvE5LIIzwvdc4sjgwgLytwZL
         cg7gCvABNElZgSKWDQvrBxGmUU5vzuQzT0bqUc+Edv+Vj2XJNCetFzC5fwtDxoQliZ0d
         tA93HR6gyHJ/sLnoUEKE9xXTRJ4Ap1jIpP4sWjl0ShxeTnFfRiE4Ya1AbvggqnDTnuzb
         ntEWo1GRbogC+keW+A7MEtYDIyO2xtXnNkMKvZjJMLxjnHe9cJwjx5ZQ5S8VmwyZED/L
         fZXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bpX0tIjFNHPhv3UusnN+4pDc0FG2JYVYqiT+dGZgsAQ=;
        b=o5Ulq0WAteQhPEetg7oLZ/xrBqmm9Ur/7zGmctp4Pl1MjoDQYuvkvE8w/qwMyHy5Py
         nkywldVzUYPyhSds2NGzL6iWlTDs4FHU41O1mW/Ew+iuY2NksJOtyL7KgxDfpTVZAASa
         gbHw3tqtkRAUqSinLKimZW63OPHUP9gib6neeCNb3v+UIeqiQvc4ww3aquGivK5E/nNM
         eyad3s30fqxt+qSQfsu7QDMn0MMMovyMYQhMBCNz+YMBKKqU9F0HDNgTo4PNb1Cllu0N
         apY2H2NeYmwuzoqhPXuCfLNam0YwUfmGH9c8d8t0ZJjU3iajHG9VRLOFLkdePaQoDDvg
         C/6g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=lBFVFtpE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by mx.google.com with ESMTPS id a13-20020a50858d000000b0043cc3404d7dsi3685222edh.84.2022.08.24.04.50.04
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Aug 2022 04:50:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E27A1B823B7;
	Wed, 24 Aug 2022 11:50:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 385A6C433C1;
	Wed, 24 Aug 2022 11:50:02 +0000 (UTC)
Date: Wed, 24 Aug 2022 13:49:59 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Hu Xiaoying <huxiaoying2008@gmail.com>
Cc: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
	stern@rowland.harvard.edu
Subject: [usb-storage] Re: Confirmation for subscribe linux-usb
Message-ID: <YwYQZ/3Nf2hMKcHO@kroah.com>
References: <S240916AbiHWHMh/20220823071237Z+20120@vger.kernel.org>
 <CABd4Uja9SoHpiMr2gDFcEP2Cudp7dcWJ_2i+KTEse9CU=KMtzw@mail.gmail.com>
 <CABd4UjYB=nzha=eoogNJU4pFwW9+4PQ65bC5u=R-gCE_ZLSQXw@mail.gmail.com>
 <CABd4UjaBog_VVcYjc2YDTq3Q-cfSWVzVbRbffJr8i_YE8dh-nQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABd4UjaBog_VVcYjc2YDTq3Q-cfSWVzVbRbffJr8i_YE8dh-nQ@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=lBFVFtpE;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Aug 24, 2022 at 05:45:49PM +0800, Hu Xiaoying wrote:
> >From 040e7ed7e6e9ed850575ed075e02d960a5ffe191 Mon Sep 17 00:00:00 2001

Please stop and take a break for a day.

Look at the subject line of your email, is that what the other subject
lines for this mailing list look like?  You can see all of the prior
emails on the list on lore.kernel.org if you want some examples.

> From: Hu Xiaoying <huxiaoying@kylinos.cn>

Ok, but this does not match your signed-off-by line, as my bot told you
to fix, why not?

> Date: Wed, 22 Jun 2022 16:35:59 +0800
> Subject: [PATCH -next] KYLIN: usb: Improves USB2.0 write performance for
>  External HDD device (VID:PID = 0x0b05:0x1932)

That is a very long subject line, your editor told you to only use 50 or
so characters, please follow that rule.

> 
> CVE: NA

Why is this even here at all?  We don't track CVE numbers for kernel
patches, that's crazy and insane and even MITRE agrees that CVEs do not
make any sense at all for the Linux kernel.  So don't even attempt to
classify something as "no CVE here" as that makes no sense.

> 
> USB external storage device(0x0b05:1932), use gnome-disk-utility tools
> to test usb write  < 30MB/s.
> then, igoned to load module of uas for this device.
> ===============================================
> Write speed: Improves form 27MB/s to 40MB/s+

That seems very odd, what about the USB 3 connection for this device?
Why is UAS so slow for this specific device?

> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Hu Xiaoying <huxiaoying2008@gmail.cn>
> ---
>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h
> b/drivers/usb/storage/unusual_uas.h
> index 4051c8cd0cd8..abaf4ea8138b 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -157,3 +157,10 @@ UNUSUAL_DEV(0x4971, 0x8024, 0x0000, 0x9999,
>   "External HDD",
>   USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>   US_FL_ALWAYS_SYNC),
> +
> +/* Reported-by: Tom Hu <huxiaoying@kylinos.cn> */
> +UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x9999,

Why all versions?  Why not just your one specific one?

Also, your patch is corrupted and can not be applied at all :(

Please take a day off, relax, and come back in a few days and resubmit a
fixed up commit after reading our documentation for how to properly
write and submit a kernel change.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YwYQZ/3Nf2hMKcHO%40kroah.com.
