Return-Path: <usb-storage+bncBD6LRVPZ6YGRBQNX5KMAMGQE2YMCHZI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C725B2BD1
	for <lists+usb-storage@lfdr.de>; Fri,  9 Sep 2022 03:49:55 +0200 (CEST)
Received: by mail-qv1-xf45.google.com with SMTP id o6-20020ad443c6000000b00495d04028a6sf159352qvs.18
        for <lists+usb-storage@lfdr.de>; Thu, 08 Sep 2022 18:49:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662688194; cv=pass;
        d=google.com; s=arc-20160816;
        b=dplF/HntCSZgJ98U0NMGynfq6oRRJf1+dofA9vpmDKugGOJeyIU3AESTYxfxcpUBeT
         56QAAIJVfTyWi50dt3tE/5Oj2sYpxyjhcnXjzsUl1/MBtqAmmUjRcbtffNQzswef9Prl
         1SNRhbXJAjmTTMp0fKEgnFw4W2VQYKNKpt6PXqdRl0QOf3W5dk6eX5HQ6oHq6a3M30lf
         iLSTI1iuK560V3RCb0CY0lqgwDA/Zq0D2DG4iG1uXJicerO168iYS0Nqp31b0vQZAdiQ
         WKLkQ4vezjx84yVXS5k4gXTWuifBAMUDnuZHYGtJZIu8Jp3lficcevMaWzSLoBMo8JTc
         qWvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=79kvaZuIWC+WeDeuxYqWXotSrurkJ3atsuVzx6qZXbM=;
        b=xXv06OoH/ntSK16WCZ2pKNzcgErKTqXywiOI16SxGikOyvB/LbUYDKxzqTZigqhUgm
         z50jsagNgXunESEpi1H8moK26Vj5MqROvIKWXHYG9Br9FLzC3EASYPnMxTSD33MDsbt4
         6URvSDcZmkUVVpEaj9zXY6lBAnQo7Fgj92mhwOCl6BHEgz7UQZbwVpWLiOkQ4TzMXUkM
         d7KR+9a2uQJGw43vakPLunZylPQSbEsUJEZ4n+9dgM0jZWk0deKIAirssE/ddhPzjTqU
         OByb+EPVqn65aha4kbQBY2vP6uJNwWLODH1jJrulmiHlGLXazBwwh+Gkt7BbIz35dhU0
         6U3w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date;
        bh=79kvaZuIWC+WeDeuxYqWXotSrurkJ3atsuVzx6qZXbM=;
        b=bt6o1uZ8ohwHb8bxXRruqVxLDIVoWrgBIxG4ut7lizMv3zec7LDN8khqpkYsGiq+s8
         1PeomaR41O7aOlDg6tzeQJ0uvz7m/QLwvvOU+NHaDW2G0A+zXBzIu76shqU2ovKYFzfw
         xbaR9fZg5DD3AuEMQU/3fNcd3r+vpE2K5nU5c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date;
        bh=79kvaZuIWC+WeDeuxYqWXotSrurkJ3atsuVzx6qZXbM=;
        b=Nnnrgm5nQqFEZaUBrKFKdC5igK70fegaDon0likbqonxjRKCxjD5v5aVbbM0jGy7J6
         4jciTO09AMqhLeIEy/3yZUoCwywyhCr3ZaGvYG2x7UuodwCyxAOREd4XXqFqbNspPrjG
         0H1AQyDy+ag7IojDWrVY5vmUKLmivCTiSAMDNwHDNGm4lVhjX4ZA1k+rLzaLe7NhvmwM
         UWgXoX1rq7dP1hgRJupZ71ZXNAc6OeVqnmSSWVwyN8a6XkAVvFGkCsSrSTu+KF7na4Vx
         MtRdx/MJYKMA/3lkF2VcnZTTz3BIVxhF6ykY32K4LUnRXnG8pH+nvC1BjVFBuQnju1JR
         AhOw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo3hrsV68zLfV0pX86W9mNL9qRsutbPGJ2d3bI0ivnqyfONWARo/
	Wo3VRGvixIxDRxY8lSYAugOyYQ==
X-Google-Smtp-Source: AA6agR5VzFz8Dm2SyZL37UYGbyWf2bNsrx41fSrR+YAbbCx9emxi3RpoJaH2XIt2dhAZj8PJWjMqHw==
X-Received: by 2002:ac8:5a09:0:b0:344:69c7:d405 with SMTP id n9-20020ac85a09000000b0034469c7d405mr10886915qta.158.1662688194117;
        Thu, 08 Sep 2022 18:49:54 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:5646:0:b0:33b:7974:adc with SMTP id 6-20020ac85646000000b0033b79740adcls2400706qtt.2.-pod-prod-gmail;
 Thu, 08 Sep 2022 18:49:53 -0700 (PDT)
X-Received: by 2002:a05:622a:1ba9:b0:343:786c:3bb1 with SMTP id bp41-20020a05622a1ba900b00343786c3bb1mr10390667qtb.125.1662688193360;
        Thu, 08 Sep 2022 18:49:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662688193; cv=none;
        d=google.com; s=arc-20160816;
        b=Keo4E8cEGE6c6iXxghreixjUCJh5H7duCR2kFat+p4JkR3t+IkGAKuUnvetEg/kWEO
         9cU9nxc8RtJ/FReCpXnDEYu617I5zRg/wGFeGEheNmgR/CKIQ3nIeT64vgqpnWL399Rm
         y2ZhbOWb9cZIRkTEGvAOcSoCwTltTHht4QhbM35HeEyFalsQ/yThqsKAhMU0Q9+lKwtW
         EOP7RzcaqZQG7fGSe2cpCYbGMPOE81GF5Vhcz9viaDyFJ55z8JWzME/AG6hkLC4nRt/U
         vqy+bCkbkCgWr9mYN732PVaDhzVgm4UrPN9IBZEe0gCh024uwoWYt1trediHx8lW/4of
         h/xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=81UrQzoPvvStRHo9dmYLFGAJdxZmOu7348FwokJaoL0=;
        b=PmqNyrPoTg9F/SHWn0b4GDpvXg6RAI+mweRx6Sv53COYUNA3yhPAsjbI+1ZViCFeDE
         vpWWXYe53GupuhQXh5NxHNdt/Q+v8QHOy+X3g/O3+GJ5DgJhCSSWnULmP0PxHGRzeAp+
         EyWD7c30Z03sc7uOwq2XMHYL6yA0rJdj4cDKIihNItYOMQ3muE2GN1CwHjSCyXtBA0VU
         t65myD4kBlyysZytEC4Su/8npV7pe8JwFLDSP7kuB6VSBPiU0GnpSYTrxU3O9t9cBYnd
         68u0r4eDcyIUO7ihZQx1B2RTwA62ZX5dJEnWLQYq/MTrkf6+/IycsMwE8LcqKycS5vMt
         0ffg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id v4-20020ac85784000000b0031f2a4b508esi529521qta.128.2022.09.08.18.49.53
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 08 Sep 2022 18:49:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 475028 invoked by uid 1000); 8 Sep 2022 21:49:52 -0400
Date: Thu, 8 Sep 2022 21:49:52 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Hongling Zeng <zenghongling@kylinos.cn>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, zhongling0719@126.com
Subject: [usb-storage] Re: [PATCH v2 2/3] usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS
Message-ID: <YxqbwFNPa8X9X5zR@rowland.harvard.edu>
References: <1662604981055928.8.seg@mailgw>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1662604981055928.8.seg@mailgw>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
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

On Wed, Sep 07, 2022 at 10:54:16AM +0800, Hongling Zeng wrote:
> The UAS mode of Hiksemi USB_HDD is reported to fail to work on several
> platforms with the following error message, then after re-connecting the
> device will be offlined and not working at all.
> 
> [  592.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18
>                    inflight: CMD
> [  592.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00
>                    04 00 00
> [  592.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1
>                    inflight: CMD
> [  592.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88 00
>                    00 08 00
> 
> These disks have a broken uas implementation, the tag field of the status
> iu-s is not set properly,so we need to fall-back to usb-storage.
> 
> Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
> ---
> Change for v1
>  - Change the email real name and the code worng place.
> 
> Change for v2
>  -Change spelling error.
> 
> ---
>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index a6bf87a..8a18d58 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -149,6 +149,13 @@ UNUSUAL_DEV(0x0bc2, 0xab2a, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_NO_ATA_1X),
>  
> +/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
> +UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
> +		"Hiksemi",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),
> +
>  /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
>  UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
>  		"Initio Corporation",

Acked-by: Alan Stern <stern@rowland.harvard.edu>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YxqbwFNPa8X9X5zR%40rowland.harvard.edu.
