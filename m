Return-Path: <usb-storage+bncBD6LRVPZ6YGRBBVJSOCAMGQE34P44PI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F1536A42D
	for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 04:31:36 +0200 (CEST)
Received: by mail-qk1-x746.google.com with SMTP id g76-20020a379d4f0000b02902e40532d832sf11551988qke.20
        for <lists+usb-storage@lfdr.de>; Sat, 24 Apr 2021 19:31:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619317895; cv=pass;
        d=google.com; s=arc-20160816;
        b=GMp32OUHUvcPemfCkh2trMtb7wefLoHFUpg03OBa6abzCf81f13vwAPfLG1BPhpRGz
         5wsuUK66DD/TPG24ZJaRSsHDSaSyTHn/JPZOslXTyZtq+Zh7W3+gdknGv2PXixEwO32F
         G2Wb7zccbn1eBlxu6R69k7g/W3vKJg53LKKd2jqZCcHKzieryqnBGPz5IHBlsRh6p9cc
         txpls09uSChSO2bqYvhX8FJMEZoxiHHtFD870SYleAFiwgjrjiMSQOajIQ4zz3BRUURH
         DFWyI5gvNKc/7e4Buk/jvu8Xm5pVCaK1EuX1qmJRTK95Nc6uiT8L7VbDvfHmR4AWJDYV
         B7LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=6h3OPXu+cy7QaOsvVy/9k8gEBbLOGrwgb7clIccKtPM=;
        b=gA1J+hT83KDVIIEJA3qFSCA2Iq3LgPKoyZHjh1xuT4YzDQpkoDw+cD3ksImIjTMYUT
         rpjZSxrIbgKpWPjr+udnHG0qOyLJEHxm3JGcqBqsDzodRH0neBYdGD3kvhBCo8jgsCf/
         gneynR6qd6D71HRFExULafMTM0FRbcrGQV2NXJouUK/YIsUKhHTiClq3xoPtJEceRZtx
         0jPVWuljSVGyTEJiheXX23Vig3bdGvG5MDLlWj7vHk/vVkMFwKLBbyvz8uv70sC32mJC
         ZvKyeX8OMDkUap6pf6Js1vEGXy+TOk9yJZX9zKqhPzdISw8JxikETgdiaXefm+8Kwym4
         XPJA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+60903034@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+60903034@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6h3OPXu+cy7QaOsvVy/9k8gEBbLOGrwgb7clIccKtPM=;
        b=esNHBO8hSaxTB7Cn54WI8zkEvAX3qfUpQ00YZkuIRJ9N/E0VV4xk4+uHFtSAvdXI6u
         AoZI1NvUiFSMGo5EfH1LklOpd01z1NYfkyPgkK85ErYxeA0EKXXJozgJ2MDsmU7xE4VF
         590/P8klAhM/yXqfzwDJzGZFVKpByh2DXV2XM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6h3OPXu+cy7QaOsvVy/9k8gEBbLOGrwgb7clIccKtPM=;
        b=T7dGACwoMTd9DjCyzwrNh/cpACU0t94K95f9YR0k4xw6xy2zOMMJ5tTp2XLsu14xCl
         rsTLCatjqaLWpWgDhmSkmKgPxsgIMH1Rnq59QZzAWc0+o5vBV22bOGj3ealeTvdRJDnz
         Hn56DkR/ZmKisc2+HIGo2LDIbYiH85dpvhMQCEPMIrlFTmghKGKdhvXqwXNMBjQs9JQm
         uxSua2fjmN8L9o8WXTLJqPyzy6fLnogTaL/V9lrLSMasCMct1iXH069ZeBOcl1uJFgO5
         HpvZQETFEhQTf4QKZg52IYATQrURu+PBkugx9nRBwKAYT5lNsi4oGANHBungjoddVG8x
         a7Yg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532xL2BpKv2+XW6lbGgN0y+5VpIRGTp2PX+/HK2cjvX9NxhenlPS
	xq4+LJOlzvNvYwWDCjGJTPABWA==
X-Google-Smtp-Source: ABdhPJy+NhCL/T+7byXAJoqy7bC0b4IjYlmBGS66tWvaEq7Og4IQwkb9rg7yL1gOoKVZFjTLEa6V/A==
X-Received: by 2002:a37:9f8f:: with SMTP id i137mr11857761qke.222.1619317894954;
        Sat, 24 Apr 2021 19:31:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:6387:: with SMTP id x129ls7337815qkb.1.gmail; Sat, 24
 Apr 2021 19:31:34 -0700 (PDT)
X-Received: by 2002:a37:7c87:: with SMTP id x129mr11109273qkc.293.1619317894309;
        Sat, 24 Apr 2021 19:31:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619317894; cv=none;
        d=google.com; s=arc-20160816;
        b=fzVI7QkW72jI1m4ONMsJxGU9d1EhlS2hKxYQ0aPO7zmx3/hABn61nrMfax78NUcDdv
         yDn3oh+6ZKtPkalZ8ip3n8BAAXCMXvzvwF8xr/ppQmGawZw0O99cr8moYGDw8QDzCuc2
         WEbdzQtHw2bJLLzbROhFgvSfoE2kuOfz4pambSISWxyADKLilSbIeTwRkz6jwcdHwf3+
         tcknAKeE4Nr13FhYUCnjX9KmhcCpYyySKjMDn939aiVHzeuybfqoLHzV+m3E2WQBBpTk
         iYFmL09jvccUJWawBokEz59nUD5cvHPep1aiKvh//xh+DHZQhoIKCFyiOvU7zbMdTOCB
         240w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=Z6wneLPofASgve0Fgup5K2Nw8opmPvq9ooEr8fGgGD0=;
        b=tEYnzx9Nt0LpBNUcD5tNan3yUTlT5mzxVtbMsKd3MlCapEcfUXvypDWkyFDyJvFTSV
         HVGtCoA6O4cwtkNoXRF1ceD2/uvNUbQKZUbkSpQhHxRxpg/SIwuQjQ8UYbJdcatIbNWc
         CH5l6GkDOYXDZNooNLBs5sy/jCAq6TFx7obWHXrrIo49QbECTyXaAv7zPoPB4VFzeDSf
         AU3SM1ykeoTlRT4NKQWGy+f+/cMvXTDPLw1V8Dbd1moz0YTPfcfitut7JlONAKdcmadt
         514UY/iaiQjKz3u+biEmHiWrz97aEN8Hk7Bz6Cv3IY0c+lDBAzihZtB+G2FiGkOOmmUO
         bZrg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+60903034@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+60903034@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id g1si8520374qtx.120.2021.04.24.19.31.34
        for <usb-storage@lists.one-eyed-alien.net>;
        Sat, 24 Apr 2021 19:31:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+60903034@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 324925 invoked by uid 1000); 24 Apr 2021 22:31:33 -0400
Date: Sat, 24 Apr 2021 22:31:33 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Rene Rebe <rene@exactcode.com>, Hans de Goede <hdegoede@redhat.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
Message-ID: <20210425023133.GC324386@rowland.harvard.edu>
References: <20210424.220316.855336714119430355.rene@exactcode.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210424.220316.855336714119430355.rene@exactcode.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+60903034@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+60903034@netrider.rowland.org
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

On Sat, Apr 24, 2021 at 10:03:16PM +0200, Rene Rebe wrote:
> Hi there,
>=20
> for some time I already wondered why my external USB Seagate Seven
> drive does not report any SMART status. Only recently did I take a
> look and it turns out ATA pass-through was explicitly disabed for all
> Seagate drives with 7fee72 "uas: Always apply US_FL_NO_ATA_1X quirk to

The kernel now uses >=3D 12-digit SHA1 values.  7fee72 is ambiguous.

> Seagate devices" in 2017. Apparently some early ones where buggy, ...
>=20
> However, fast forward a couple of years and this is no longer true,
> this Segate Seven even is already from 2016, and apparently first
> available in 2015. I suggest removing this rather drastic global
> measure, and instead only add very old broken ones with individual
> quirks, should any of them still be alive ;-)
>=20
> Signed-off-by: Ren=C3=A9 Rebe <rene@exactcode.com>
>=20
> --- linux-5.11/drivers/usb/storage/uas-detect.h.backup	2021-03-05 11:36:0=
0.517423726 +0100
> +++ linux-5.11/drivers/usb/storage/uas-detect.h	2021-03-05 11:36:16.37342=
4544 +0100
> @@ -113,8 +113,4 @@
>  	}
> =20
> -	/* All Seagate disk enclosures have broken ATA pass-through support */
> -	if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
> -		flags |=3D US_FL_NO_ATA_1X;
> -
>  	usb_stor_adjust_quirks(udev, &flags);

I don't want to do this unless you can suggest an approach that won't=20
suddenly break all those old buggy drives.  Just because they are now=20
five years old or more doesn't mean they are no longer in use.

Alan Stern

PS: As a matter of good form, you should have CC'ed the person whose=20
commit you are proposing to revert.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20210425023133.GC324386%40rowland.ha=
rvard.edu.
