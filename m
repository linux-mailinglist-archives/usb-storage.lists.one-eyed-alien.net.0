Return-Path: <usb-storage+bncBCUJ7YGL3QFBBHMBTOPAMGQE4PGR6LQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x645.google.com (mail-ej1-x645.google.com [IPv6:2a00:1450:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id A74AD66E25C
	for <lists+usb-storage@lfdr.de>; Tue, 17 Jan 2023 16:37:02 +0100 (CET)
Received: by mail-ej1-x645.google.com with SMTP id xh12-20020a170906da8c00b007413144e87fsf21956350ejb.14
        for <lists+usb-storage@lfdr.de>; Tue, 17 Jan 2023 07:37:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1673969822; cv=pass;
        d=google.com; s=arc-20160816;
        b=HK8HGATNMxhbFP0zCIf0Z6RKMppWAtQvNOqxwbK1bL45FE+pw0gWKIfxvWQRKWn1Lb
         NeyMbY6R+zHgSOlYCL4Glw0Geqni6a2U7pUqKCjgKy3wxOACBhOFTR38ZSSlsmASpPcH
         DRRT7Clq4CT6mu+Z37gelG/vdhxhQGij/meUbN4UwwVgPipsPzYGNV3SEWoJ26soQywx
         aAtW1THkVBt3O9NaPB+UyKSAInz710yPW9k0aVKMb5pO26rJ0NpwYH/9uAxqMXoFS8F6
         DilkUuufHpTo5bAnqmr5vfkOJLooS+z8WuIg/N8cbMAqKZ9xuIs3FSLLBCLWhJP3epVQ
         KzMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=g+WwA69QNXyhc6Sm/gUDcdNk2ToHtiF7rXoHenQ7R2w=;
        b=zFApXNz0R2L91j6K67uvGSS+75h6uEzAKMkmwVPbg+z992o60X2KjziEQ8muOP9asD
         QWYMtguIesgqkWqYnXMfvriFPGyhfROGFRdsSm52+PLcLp3AEKoslwOQJkDvU0PeTuOK
         OkgniTy+xKfeGE9sKYybmDQ2eCCugTREufEKvbTwCa9y5dItSi8Ub2Enzq+oYgsCtmBU
         /FvquZAPoGJPktMySG/PxWWVFLYrYgglxz4shkZ8iZm+1I2+zKXQizFsq+rMjq2YS3tH
         PVbpXDJ7FihzQNmsrAUf7FC5GM5EAp3LZX7F+1L1oRHqmeyX3Z/JUgXXTKh8xRlElkXp
         gcmg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=c5bw1jY6;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g+WwA69QNXyhc6Sm/gUDcdNk2ToHtiF7rXoHenQ7R2w=;
        b=BDpxdHMMOnbY7yrUgzCm8CU4zyI5x4PBRylet8g801Tmn91e/vOmhlqUYeWmnp3E5R
         QqWf+RSDKzvEhp2iNpXSj2MGXFfKMiwAw75wcxRKbfFehc8VoaNQGxiM7xkh9H72r6yi
         gU0149HZfyFN/NnMW8X0axQXxbHPv1iIdvBKY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g+WwA69QNXyhc6Sm/gUDcdNk2ToHtiF7rXoHenQ7R2w=;
        b=xTV2yuKCLFeyjYP+D+l9SRnp8d67IVmmNgRrmxCM8cY5qUDuzoj2n92anPSg9NrqDa
         ixi3m2RE6ykYIdY2FynUbsha0pdTFv/FIyabgsohaMLcMkklrBc4Fwc2dEZcJeuHPpdI
         8MAkwLahRohL2dPn0zF+XRoxoabV62zq36fA+npAUUWm8YWyHR6x1ZrzPiQMAKt0KU97
         W99Cm2ZiXGr7PX7CQElgv6NryIBZ81k8TyADRGSPn/AzQ44xdjSqEMv+QvGuDE3zCHqo
         UJ96/UNkfX6G3sg5Y/WBx+eksjeBjP1la1s675+RvC7jTsbhuJm9TI0kGy276NNQyxDC
         sxSA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AFqh2koNYLqdpP3cQagRf3MjjQGeV4ETSV+fwZ1Pe1DrBgXFtkKXzA/+
	OIrC3n9kwTmLddHQaRDxW1rx+g==
X-Google-Smtp-Source: AMrXdXt2/ivWEMFflui0PtMA+1wR/Ba+CK5L0gjZ0gWy7aE+VVfxKA8AsuGmzIPJyumGvJcVVMG0Fw==
X-Received: by 2002:a17:906:1dc9:b0:7c1:1f28:afed with SMTP id v9-20020a1709061dc900b007c11f28afedmr308063ejh.678.1673969822179;
        Tue, 17 Jan 2023 07:37:02 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:26cd:b0:45c:bfd9:fb45 with SMTP id
 x13-20020a05640226cd00b0045cbfd9fb45ls2128415edd.3.-pod-prod-gmail; Tue, 17
 Jan 2023 07:37:00 -0800 (PST)
X-Received: by 2002:a05:6402:cf:b0:45c:835c:1ecc with SMTP id i15-20020a05640200cf00b0045c835c1eccmr14664122edu.26.1673969820619;
        Tue, 17 Jan 2023 07:37:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1673969820; cv=none;
        d=google.com; s=arc-20160816;
        b=vQDwxOY9+xKrx4QPK8lwGrlE6NqjQThSucnuOGZRMgPZwmbT+a/4rCzSMo+O4t5Fg1
         4LY8ZZZrhss7NjZS1aJMBB/A9Z2rPv67fTUcEj1EIzTmjbCD+OExrTMHqYYhqDSR4pFQ
         M2BlGEPIV3L41kqUXLkS3PFCOsb6XknS9l/bX90khwGnM9UYBjFPYeAWtxY/M4BoUavG
         v6Uki6DgaUgdWU9OavaMkhqwMRUWR8uyB8O0uNRXy1ZqP2uSXAC0QtZ5qKmL984ernfo
         IWpRTPpAt4QO43BAXEtXjqWOmt0KqLzPn30xir6DtByp6bkuPhPJPhG+qvt0k+k1ioNi
         R5Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8x0IpnuletHFhzwsp8xmd+30SiOz3nYglXK93rBR1zA=;
        b=us706jobrzGvUlLDoRqqlRe5epZvSdVdoOZ734bhfuUiGQDgt5I4I/v1BcAkEbuZ/G
         zcxjSmKdtGNn3AlQfSS5WlP9xBnIQf6j3+qFOtsuSH32RGOr8653UmF9AWettZiz6i7P
         jpqBogabzRBU8U87/wzkoQuGsL0ohreGzz5PfZwUVDhKxd5v24e2m9DtmXUQlfniIZEu
         9aBHIuOG7iJ22ZH7Obkb59zlM5usyRGCusmgFS9zpOn31YzOkHE7rHImyePG6H9QG7Mg
         vtznaIY90JgXISygHMav/UkAqQqTRhUeFojPkqs0DdTqAcDm1ipGnCQ4+EPDOu9upKr7
         BMZQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=c5bw1jY6;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by mx.google.com with ESMTPS id g16-20020a1709065d1000b00872c15a159csi2043497ejt.263.2023.01.17.07.37.00
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Jan 2023 07:37:00 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 3D535B81670;
	Tue, 17 Jan 2023 15:37:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90933C433D2;
	Tue, 17 Jan 2023 15:36:58 +0000 (UTC)
Date: Tue, 17 Jan 2023 16:36:56 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Juhyung Park <qkrwngud825@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	stern@rowland.harvard.edu, zenghongling@kylinos.cn,
	zhongling0719@126.com, stable@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v2] usb-storage: apply IGNORE_UAS only for
 HIKSEMI MD202 on RTL9210
Message-ID: <Y8bAmH+zRBThjwSJ@kroah.com>
References: <20230117085154.123301-1-qkrwngud825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20230117085154.123301-1-qkrwngud825@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=c5bw1jY6;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Jan 17, 2023 at 05:51:54PM +0900, Juhyung Park wrote:
> The commit e00b488e813f ("usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS")
> blacklists UAS for all of RTL9210 enclosures.
> 
> The RTL9210 controller was advertised with UAS since its release back in
> 2019 and was shipped with a lot of enclosure products with different
> firmware combinations.
> 
> Blacklist UAS only for HIKSEMI MD202.
> 
> This should hopefully be replaced with more robust method than just
> comparing strings.  But with limited information [1] provided thus far
> (dmesg when the device is plugged in, which includes manufacturer and
> product, but no lsusb -v to compare against), this is the best we can do
> for now.
> 
> [1] https://lore.kernel.org/all/20230109115550.71688-1-qkrwngud825@gmail.com
> 
> Fixes: e00b488e813f ("usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS")
> Cc: Alan Stern <stern@rowland.harvard.edu>
> Cc: Hongling Zeng <zenghongling@kylinos.cn>
> Cc: stable@vger.kernel.org
> Signed-off-by: Juhyung Park <qkrwngud825@gmail.com>
> ---
>  drivers/usb/storage/uas-detect.h  | 13 +++++++++++++
>  drivers/usb/storage/unusual_uas.h |  7 -------
>  2 files changed, 13 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/usb/storage/uas-detect.h b/drivers/usb/storage/uas-detect.h
> index 3f720faa6f97..d73282c0ec50 100644
> --- a/drivers/usb/storage/uas-detect.h
> +++ b/drivers/usb/storage/uas-detect.h
> @@ -116,6 +116,19 @@ static int uas_use_uas_driver(struct usb_interface *intf,
>  	if (le16_to_cpu(udev->descriptor.idVendor) == 0x0bc2)
>  		flags |= US_FL_NO_ATA_1X;
>  
> +	/*
> +	 * RTL9210-based enclosure from HIKSEMI, MD202 reportedly have issues
> +	 * with UAS.  This isn't distinguishable with just idVendor and
> +	 * idProduct, use manufacturer and product too.
> +	 *
> +	 * Reported-by: Hongling Zeng <zenghongling@kylinos.cn>
> +	 */
> +	if (le16_to_cpu(udev->descriptor.idVendor) == 0x0bda &&
> +			le16_to_cpu(udev->descriptor.idProduct) == 0x9210 &&
> +			(udev->manufacturer && !strcmp(udev->manufacturer, "HIKSEMI")) &&
> +			(udev->product && !strcmp(udev->product, "MD202")))
> +		flags |= US_FL_IGNORE_UAS;
> +
>  	usb_stor_adjust_quirks(udev, &flags);
>  
>  	if (flags & US_FL_IGNORE_UAS) {
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 251778d14e2d..c7b763d6d102 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -83,13 +83,6 @@ UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_NO_REPORT_LUNS),
>  
> -/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
> -UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
> -		"Hiksemi",
> -		"External HDD",
> -		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> -		US_FL_IGNORE_UAS),
> -
>  /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
>  UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
>  		"Initio Corporation",
> -- 
> 2.39.0
> 

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/process/submitting-patches.rst for what
  needs to be done here to properly describe this.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Y8bAmH%2BzRBThjwSJ%40kroah.com.
