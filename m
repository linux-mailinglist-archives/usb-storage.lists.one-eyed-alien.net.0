Return-Path: <usb-storage+bncBD6LRVPZ6YGRB7MBQGUQMGQEK4VERXA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 618C37BBD85
	for <lists+usb-storage@lfdr.de>; Fri,  6 Oct 2023 19:16:46 +0200 (CEST)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-57be2b0e95csf2988352eaf.1
        for <lists+usb-storage@lfdr.de>; Fri, 06 Oct 2023 10:16:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696612605; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZWA4AYbSs8ZYp3bWxzYttaa4CdWf7BUF/YvrnqtMqLVOxCeAwKMRFakWpCIFHPl8f8
         Udy4/TkW1xmNthr8dMW2Bg2GpQnfAUSfR04sGPQeWBI+FCGokgDGaH3oqzwoxZ21gmMW
         I6A4pDKYNi6YH9BVtZR9k+C1+6zGrkOcPQCc4X1A/llRZUxm9qzUPnyM/8WVgH8L4tIv
         ScFaLRPgf/ALQps9McF1UC7XyBE1Y9OX2PcEWDdoI55y7PKCweQNfRpcYK7OJThAdiaz
         Ce7s3OnXrG384ctVTlWT2YjInqNyEK6zyH1Bbco0P3/6Jyt8gYGwYCBVE6rc9gzrWoer
         eB0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=OkVDad0Ml1h4knnvxCZ4+NNt8Y5jAOyEnFc91Wnno0A=;
        fh=kvpULo+2AZq4Wqdduw5izQWSbOSxdORzDRc3JwUeeX4=;
        b=svmraQcUsNIMIAVaBqC0vEYy0GLWAq+MpXNeojpG8NUaro0ajsjFE/IvRV5MEh8brc
         t+BP2yjNbuj8dAGOW8O0j33f7Zn3Z6r/gcjQAUDZfh31peiC1d/a+LuqcQWy5C2exoY9
         cPikiDgUn4b/W8FPWSoxrtPTMnITv6DyeoxGwulyuXVN2+i4Zr5u8G8UWPUjwcgbKFs5
         2hl/CMBYaZvdnmRGV0W527FG+lazYrTTPyspLjJQ5aIfZD1G0SPbRQcPvk9WuhLVt/AI
         AOXfMK8GePwRQMLKtkfuZGjXzQrkbsGImS8SNXB8uH+zczSRDzU8fvHQmF80UPCu/AhC
         mnoA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1696612605; x=1697217405; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OkVDad0Ml1h4knnvxCZ4+NNt8Y5jAOyEnFc91Wnno0A=;
        b=jfphlkpIOFIizfCMLhv8w7aJXVnyDtVfeuToHQ6KjSdXZwfbGKr6gkfC5nR1GuumTc
         Sk+0W8wZ1/jBWPC1+DKqfMTmsRLtod0GNtxR8yVArDd0ZIvU0zaDg1MzFjnkQk43UsZZ
         7C1Cq0jDe8+XjioFEn6yffa3x157WobSxHjPg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696612605; x=1697217405;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OkVDad0Ml1h4knnvxCZ4+NNt8Y5jAOyEnFc91Wnno0A=;
        b=CCOdduYck1FTG1r42+PwvtaQMNGMXRulqbgW6K6iz3Qn02SmPA1MhuWEyDP5hbv4F8
         9ywxL10nAc1fsxafTGlfPGb4Fc6qKWgF7jt4RtO6LWJrVAgLPq/vBzKkF6c8TZLZvQYm
         MXhQLurHyy8Vf/cF3uaLyCBSMk8d2UhFptFMXKtiAA3XdBwH6MWQ4XzKhuQLQaYEJ4pM
         zOm6E5yamIEzYwehgXborT9QcBb4cOycwJDAAzkutWF6ZXg4uFbLHt3pwEHLp1ZjO1cS
         7GELGj+LmxkwnMBx+/kaDJXgtfIeiclSz1Zqa4V8vV7YN+ZRmixWWsbfRnagpCzGh9dk
         PZUQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YzYBxAz7RXDU9IZgRDCRK7bRZwLXZSIsYZtm0agdZ+2AxkXnvV1
	4qWSeEZOnr+lXsFT0V201UQ2pQ==
X-Google-Smtp-Source: AGHT+IELP7YfOBQ7z5yPnOJ1DsPP3n8qETQ+aAh5FYfrRBbWoqGU3nyZJyvDYX7MRfZs4VSB9hq1mw==
X-Received: by 2002:a4a:385c:0:b0:57b:91ef:76df with SMTP id o28-20020a4a385c000000b0057b91ef76dfmr9051314oof.0.1696612605123;
        Fri, 06 Oct 2023 10:16:45 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:5846:0:b0:57e:909b:5a13 with SMTP id f67-20020a4a5846000000b0057e909b5a13ls3309577oob.1.-pod-prod-05-us;
 Fri, 06 Oct 2023 10:16:44 -0700 (PDT)
X-Received: by 2002:a54:4398:0:b0:3a7:96e5:6a58 with SMTP id u24-20020a544398000000b003a796e56a58mr7903047oiv.18.1696612604296;
        Fri, 06 Oct 2023 10:16:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696612604; cv=none;
        d=google.com; s=arc-20160816;
        b=pPnnmhssDroAjVWLyLXzzVzlSgBzCglr0fj5hP79zENys1jF7j41seHVTtjZpm7Om7
         e7LF/7lzvpn5VLFLSxCEAnuvjCR1wTI2I7ZeYqT/iadYEvfU7jvH/qA+n31xU2BWKQpb
         lyKGlIay6fa14J9BCg7vTUjHSIunyP644EfY1EZxjk+LW2YJvhIRlD6JjrIYzbcmwTRo
         Kzpq0yas3oLjiSFukeD5Prs5ijJOd0aHryQif4YNJ7KKhu0bSqJsgqh/GS00SMA0XepH
         /vgaGu6n0ii/n7qng8V86wVhAH5dX8XSustlYzsOErl9nJfkl14ECxBIx2zPptivlmLL
         iuow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=wf9MJ/UGbG8nFIF0HKb2i64Tr7b3AqZkETtDeDkBKI4=;
        fh=kvpULo+2AZq4Wqdduw5izQWSbOSxdORzDRc3JwUeeX4=;
        b=ry9R/jaMWa4V58qm/48IRBZm3WMDFKAiFt4v8Pvc66X7WGiWCmiqBQYB65iN3MrKvw
         D3y0w3Ern2lpkowHqdgqI548nzcdbDAn2qTTsU5UlT+Kxjj21VYS0GGIBrzMJ1KLUD7b
         sSBvSjGvF0A/if68cDwFAhg0nvC+Rah3b+va9R362U/WHp9W6yy8kfS93yfjrtjor5b2
         lMgPx8ilM52epd6d9neRWdxu11QolYgc1OgHWALHzKlqENx+1H0yKihf6U2tr7U3Of6Q
         4Rb6bPZo7UkRB+AiOvZjLAvz80p3eP5alSK/O0fVHeAzObs7VpNISUu2fx8Ov/5Xpw4X
         mP5w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id t25-20020a9d7f99000000b006c0f2ac556bsi1380433otp.235.2023.10.06.10.16.44
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 06 Oct 2023 10:16:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 51731 invoked by uid 1000); 6 Oct 2023 13:16:43 -0400
Date: Fri, 6 Oct 2023 13:16:43 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Milan Broz <gmazyland@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-scsi@vger.kernel.org, linux-block@vger.kernel.org, oneukum@suse.com,
  jonathan.derrick@linux.dev
Subject: [usb-storage] Re: [RFC PATCH 1/6] usb-storage: remove
 UNUSUAL_VENDOR_INTF macro
Message-ID: <691010ef-d388-4ce0-b6a0-427bf77bea95@rowland.harvard.edu>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231006125445.122380-2-gmazyland@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231006125445.122380-2-gmazyland@gmail.com>
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

On Fri, Oct 06, 2023 at 02:54:40PM +0200, Milan Broz wrote:
> This patch removes macro that was used only
> by commit that was reverted in
>  commit ab4b71644a26d1ab92b987b2fd30e17c25e89f85
>  USB: storage: fix Huawei mode switching regression

The standard format for referring to commits in patch descriptions is 
like this:

commit ab4b71644a26 ("USB: storage: fix Huawei mode switching regression")

That is, the commit hash is abbreviated to its first 12 hex digits and 
is followed by the commit title enclosed in parentheses and quotation 
marks.

Apart from that minor issue,

Reviewed-by: Alan Stern <stern@rowland.harvard.edu>

Alan Stern

> 
> Signed-off-by: Milan Broz <gmazyland@gmail.com>
> ---
>  drivers/usb/storage/usb.c          | 12 ------------
>  drivers/usb/storage/usual-tables.c | 15 ---------------
>  2 files changed, 27 deletions(-)
> 
> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> index 7b36a3334fb3..bb1fbeddc5aa 100644
> --- a/drivers/usb/storage/usb.c
> +++ b/drivers/usb/storage/usb.c
> @@ -110,17 +110,6 @@ MODULE_PARM_DESC(quirks, "supplemental list of device IDs and their quirks");
>  	.useTransport = use_transport,	\
>  }
>  
> -#define UNUSUAL_VENDOR_INTF(idVendor, cl, sc, pr, \
> -		vendor_name, product_name, use_protocol, use_transport, \
> -		init_function, Flags) \
> -{ \
> -	.vendorName = vendor_name,	\
> -	.productName = product_name,	\
> -	.useProtocol = use_protocol,	\
> -	.useTransport = use_transport,	\
> -	.initFunction = init_function,	\
> -}
> -
>  static const struct us_unusual_dev us_unusual_dev_list[] = {
>  #	include "unusual_devs.h"
>  	{ }		/* Terminating entry */
> @@ -132,7 +121,6 @@ static const struct us_unusual_dev for_dynamic_ids =
>  #undef UNUSUAL_DEV
>  #undef COMPLIANT_DEV
>  #undef USUAL_DEV
> -#undef UNUSUAL_VENDOR_INTF
>  
>  #ifdef CONFIG_LOCKDEP
>  
> diff --git a/drivers/usb/storage/usual-tables.c b/drivers/usb/storage/usual-tables.c
> index 529512827d8f..b3c3ea04c11c 100644
> --- a/drivers/usb/storage/usual-tables.c
> +++ b/drivers/usb/storage/usual-tables.c
> @@ -26,20 +26,6 @@
>  #define USUAL_DEV(useProto, useTrans) \
>  { USB_INTERFACE_INFO(USB_CLASS_MASS_STORAGE, useProto, useTrans) }
>  
> -/* Define the device is matched with Vendor ID and interface descriptors */
> -#define UNUSUAL_VENDOR_INTF(id_vendor, cl, sc, pr, \
> -			vendorName, productName, useProtocol, useTransport, \
> -			initFunction, flags) \
> -{ \
> -	.match_flags = USB_DEVICE_ID_MATCH_INT_INFO \
> -				| USB_DEVICE_ID_MATCH_VENDOR, \
> -	.idVendor    = (id_vendor), \
> -	.bInterfaceClass = (cl), \
> -	.bInterfaceSubClass = (sc), \
> -	.bInterfaceProtocol = (pr), \
> -	.driver_info = (flags) \
> -}
> -
>  const struct usb_device_id usb_storage_usb_ids[] = {
>  #	include "unusual_devs.h"
>  	{ }		/* Terminating entry */
> @@ -49,7 +35,6 @@ MODULE_DEVICE_TABLE(usb, usb_storage_usb_ids);
>  #undef UNUSUAL_DEV
>  #undef COMPLIANT_DEV
>  #undef USUAL_DEV
> -#undef UNUSUAL_VENDOR_INTF
>  
>  /*
>   * The table of devices to ignore
> -- 
> 2.42.0
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/691010ef-d388-4ce0-b6a0-427bf77bea95%40rowland.harvard.edu.
