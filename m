Return-Path: <usb-storage+bncBD6LRVPZ6YGRBJMLWOMAMGQEPHWAF3I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x748.google.com (mail-qk1-x748.google.com [IPv6:2607:f8b0:4864:20::748])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE875A4EA4
	for <lists+usb-storage@lfdr.de>; Mon, 29 Aug 2022 15:56:55 +0200 (CEST)
Received: by mail-qk1-x748.google.com with SMTP id bs43-20020a05620a472b00b006bb56276c94sf6659086qkb.10
        for <lists+usb-storage@lfdr.de>; Mon, 29 Aug 2022 06:56:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661781414; cv=pass;
        d=google.com; s=arc-20160816;
        b=e9iqc9AO9bneP6x/xkewVaNXaDGVzE6FOC6kBs0p9LXpq+yW0rsaWti5wX4bnWZ4EH
         se73Pd5MhWXeokbRVAywB1QCdUTQO7X8dVjNdcx4LWlESYU441hissomAxli3gYUgnUF
         194BJF10XwSEvdxM04s8gtTFK7qNW85EwB3ZdpM+FCTLqKYVFv6mjxuVFqq2epliG9+G
         xqtoszveIHn38oBtEF8OBrkvN4L+2UzpASmh0y58PoYwgZXEeNOTLCtIQuYwtcUK4DGB
         R104RoG9HztkX55ciNBscXFjO8eSRexcDLX2yNYSICoup49yYnWCUONPADYvCpucIw7X
         vn0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hSUAzgC+P5hZTQj1JziVdfWlSKlzqA+YfjjAl5yqLaI=;
        b=rp7di0LmAAXsXQ8PyERN/uMv9i/U/UeYMx7jNAQM3fgb5G6lSGsFZ2coI7mO7AfCmg
         cyYbrVyZQ9whFyeW8f7cqKlUV1gnAa7XM9cqqc0okKPaJ623Ap9TZ6tEsh6jtwyKHi06
         VISVxfKZUuHIPrt8hx2C4/3vU9ytGY/a+Ep0vhv3AtTXL7kTuWIq1fpofBaL0oAevDoi
         yETc441tijc8zTqUUFsLEbMUOc4afn6D70+mgWTrbn84ibjyJf1bOUOE4Pmdxn9Fde66
         3A5PNwmA5SlGgVXnVeq9IkIBWM41HvNGK0OYuONgPOVyyw+NcpAKtCwHmMz0r8Z0rPSU
         gRUg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=hSUAzgC+P5hZTQj1JziVdfWlSKlzqA+YfjjAl5yqLaI=;
        b=LqomrRrtyWJf1+avHnkbOcUUpOqBGXpvp51J49FD5F9T5cAvP0uUpGskpw3YXjVfSS
         uE/Smk1pvRzecBUv3n/kyW8uHvo7U0mUc0KN32xuxHBWlrFS+zqJ4XN+Cyid/pUOKiX/
         zjy0/d5hOMT+7T+QTKOZJhJQ/UxPVIZ5/NfN4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=hSUAzgC+P5hZTQj1JziVdfWlSKlzqA+YfjjAl5yqLaI=;
        b=Mpre3JBJw+FiPmiQen0PFoAmpvPw9vD4+jVUcEWXaHm62gcbGrVNURz/OPNILoM7ja
         fBfMmfRp6boWqG0qyKLbTdIs0WBpaObRYLOTMRdGmnM1AbiRiNL66w3Gb9wZX62opR3Y
         9CEPdhudCgg2zbw9witqznpk0tCOKloqMqlRO08jf35rzi2DhCOBvlFsDnsqcyy3JjdJ
         5F33ya4w8TxNn/bWbwFQD9YXtp8KghKzljHNzrqivCx0RpGZzX4zHKi0xoz8gBO9ZqHk
         etaKpXP2iuDfgpLnBBFVk+5Tj34TH9RtlkKoa5VHLUObLaIdJme+b3ZnR2ONBVr0L9ef
         8uqw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1zuoRnqdnW861XwEUIC+ylDDWaiVuz/EossUiClcod9GteqTaw
	H5NmHiFqPq13vOISluKZJBVRww==
X-Google-Smtp-Source: AA6agR7NmpG2Exuar7Eu2OcjsChkrQqHzA3B1JtjAbD1QopC/35jc/vf7wCfiOUUfRUAfLiDOcp9gg==
X-Received: by 2002:a05:6214:29ef:b0:477:388:cb50 with SMTP id jv15-20020a05621429ef00b004770388cb50mr10503839qvb.107.1661781413732;
        Mon, 29 Aug 2022 06:56:53 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:578e:0:b0:342:fb4f:7470 with SMTP id v14-20020ac8578e000000b00342fb4f7470ls4300113qta.4.-pod-prod-gmail;
 Mon, 29 Aug 2022 06:56:53 -0700 (PDT)
X-Received: by 2002:ac8:5a8e:0:b0:344:69b2:1307 with SMTP id c14-20020ac85a8e000000b0034469b21307mr10247598qtc.57.1661781413070;
        Mon, 29 Aug 2022 06:56:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661781413; cv=none;
        d=google.com; s=arc-20160816;
        b=Mt1BGCeey9AnHrF9oDyrACMkom6MSlaLL+XI8Y6wTP955DX444ifFTGexkhbZ1einh
         T7znL4BLVoMBS4r2b/DgNWgDh7BxGU+IuJ6mqu35Sn9dxx/RU3fgnATbomhOla10q1gf
         Mk5zaugMjifRgBA4Cu0Eky+lLGOOqTNkGt0bs4doi/I86M/Dpmn+kLH9E6yPZ1GCG4sN
         QQ9Nuojm+RD7b6mkiReTZz2AhcFneAJv6I6EORv2brMrx0YDHOyL+p+43RXql6ZzaV2f
         ZjcNrHDGPNuuOVKKfCGAAizZph3z6hc6XpSoCqoZuoM7MYc2baa5t9Slu25Gzfg92K0F
         cIzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=gmwnWejJzleJ/9gwHKEED7lrJrwXYOo/84H2OtBYiKE=;
        b=awSSRO4r14fpXL4CGzgopwFG8aulhSUeUPxLmbAA1cQ9wumfh9DBuCLPxnYdK3xG1A
         YI1MdB1hz6wYdfjnJDucrQ/xl688xeZ/2F7fBix39V2iltQWr9wEjMZ/H0LUOgTKEd3Q
         WWbxYixPWjhfFJkqD484D/z7rUd2ndtQ4pblmQCXbYQN1Oxk6Eou1MZ+Mmr0vzd126xd
         aejTRzkwQt6lXmVfunOCdY4OejTL0rNFOYwcgTYQafjJVa570wsCCO+dYixyn7KVa22H
         jTM6yUlT917aULSKPmLQ8BnlOCrdcD2/MXVOpKFhAnwNpHTFisZxYfBHpkNLDDfUpVoS
         PDLw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id jp8-20020ad45f88000000b00498ff1cac52si2152250qvb.479.2022.08.29.06.56.52
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 29 Aug 2022 06:56:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 122685 invoked by uid 1000); 29 Aug 2022 09:56:52 -0400
Date: Mon, 29 Aug 2022 09:56:52 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Hu Xiaoying <huxiaoying2008@gmail.com>
Cc: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
  gregkh@linuxfoundation.org
Subject: [usb-storage] Re: [PATCH v2] usb: Improves USB2.0 write performance
Message-ID: <YwzFpJeoIPjOS8K7@rowland.harvard.edu>
References: <CABd4UjYS4QDozv-RKp3_9XhQec=LO+z9U8+=Oa8=MEFyaeXYhA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABd4UjYS4QDozv-RKp3_9XhQec=LO+z9U8+=Oa8=MEFyaeXYhA@mail.gmail.com>
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

On Mon, Aug 29, 2022 at 04:58:57PM +0800, Hu Xiaoying wrote:
> From: Hu Xiaoying <huxiaoying@gmail.com>
> 
> USB external storage device(0x0b05:1932), use gnome-disk-utility tools
> to test usb write  < 30MB/s.
> Then, igoned to load module of uas for this device.
--------^^^^^^

"igoned" is not a word in English.

> ===============================================

Why did you put this line here?

> Write speed: Improves form 27MB/s to 40MB/s+
------------------------^^^^
---------------------------------------^^^^^^^
"from", not "form".
"> 40MB/s", not "40MB/s+".

> 
> Signed-off-by: Hu Xiaoying <huxiaoying@gmail.com>
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
>                 "External HDD",
>                 USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>                 US_FL_ALWAYS_SYNC),
> +
> +/* Reported-by: Tom Hu <huxiaoying@gmail.com> */
> +UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x9999,
> +               "ASUS",
> +               "External HDD",
> +               USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +               US_FL_IGNORE_UAS),

Entries should be sorted by vendor ID and product ID.  This entry is 
added in the wrong place (0x0b05 comes before 0x4971, not after).

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YwzFpJeoIPjOS8K7%40rowland.harvard.edu.
