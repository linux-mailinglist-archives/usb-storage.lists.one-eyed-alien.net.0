Return-Path: <usb-storage+bncBC6MFJWO34DBBQ4SZSBAMGQEXGVTXYA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD05340096
	for <lists+usb-storage@lfdr.de>; Thu, 18 Mar 2021 09:03:17 +0100 (CET)
Received: by mail-qv1-xf45.google.com with SMTP id ev19sf12364521qvb.7
        for <lists+usb-storage@lfdr.de>; Thu, 18 Mar 2021 01:03:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616054595; cv=pass;
        d=google.com; s=arc-20160816;
        b=0MXM+W/iXtI7Zb8QEQqc+5blsurLJ5TATdjmBctypN1NOInwufiaoM+5gXxTEDdo3Q
         M1P/ll/pelMEGCHtNCWB3lGYdlt6YCn81B/QZff41rGKdyVTaPKatYF5UBiXvTgTmZJY
         7WPxAOcF7NgriyEZkrsXYth48ef17oifWaS1pvhDGRSi7GHhveyRCLrMHKALoVS8ti2B
         6uFiM5dJO/L4g3lCgDsNfSUBw2aP19BVeKJOqH0ZM39tovvBYWqygjRMEc6uRogIDR8Q
         dXWKGrmIV+pIcLdpNBTtXAa3NiXA4rRVen2XdhdH6x/7+RWfxP5Z897wcNEa2FEUzh0b
         kyaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition
         :content-transfer-encoding:mime-version:in-reply-to:references
         :subject:cc:to:from:date:message-id:sender:dkim-signature;
        bh=KKV9UmW+3tuj8ejLEt/5rPAAFtZTDC+RW3NV9ihBlo8=;
        b=HpPtAdVGSMixxjcv6FqJ0f4PKFuOjIjhbUErjck+CV6S0s7lLnRuV10ZXfl9ZABjCT
         Xscf1mCT9iKnwxUn/naRLQ+M8Uiy/55xKvLMVTMyGIeeKm/8N4t4vNYu9C94MgJ+vKFN
         gI8pXyao7/feyTVW8e0dsjkJChrI4ky5b0XCFu0U8xUg14YRgZRnAA+0ncupukCMaQbf
         hl3CL7nu7FYyM4PT1t+++iXK/OhPzUThBTmahLiNjVfKP0hKeaUlV+KvJEht5tLF2utm
         PYFOmwpoFkDgMSWN/ux89Az4ZeIyQ4uSueXuTtwZWDzUVhmfwVmMuFyjkxNno6V0dLSP
         6oOg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf7 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:date:from:to:cc:subject:references:in-reply-to
         :mime-version:content-transfer-encoding:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KKV9UmW+3tuj8ejLEt/5rPAAFtZTDC+RW3NV9ihBlo8=;
        b=eZDmrncoJR+EHiBA+vf18ppaIWBxQDeqBOsnJ8Do9rUGcvh1FE+VxilQbSGY/OpKdU
         YLtVQFHS3WC0eiy90PmXq4mOAto8QuH9ho7fwfRbaNj0JMTpuuXH+5Y9FLn/E2fIUlil
         V8ZS+CmEjq5jxUKyiQ7kcDb1dcD3aaBelqqeQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:in-reply-to:mime-version:content-transfer-encoding
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KKV9UmW+3tuj8ejLEt/5rPAAFtZTDC+RW3NV9ihBlo8=;
        b=MH3T0Iy2piL3zmtnoJQ9bKQ1u5enZ9RbyQ1VILRP57UW6zBK3x9+x3x/8QMkc8EkjY
         6O5G/FC0OvDyw4hijxrx6Ek8L9Iqx3p96DlP2H9Fj5phCzFT0WBx5D4zgdQwxJw+W2XV
         JTRhWWm3M1DX1FH7frUoE4xfSUC+fY5DcFsi2f9Kg9QJNbOR6srA2op7Gooqg6IoikD3
         jZb1UvLQKia576tqtiKsBzMCzTPb0CW7T7P+ABGdCIeVwAmf/46ZfbHEoSGaApMfnMVW
         nMegyXG0knauSzz1WyUtiFy3Hzl2LD63/kzhtMv5pIfbX/qU2AVUGkOh63LfZuUhGMgC
         XRHA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530EfBRNoNaDkjXUjtIxA1C5wgk990i/graHIsP+oBK6pOOr8S3K
	6v2LJXelv9yLuxEp81ZbNg79JA==
X-Google-Smtp-Source: ABdhPJxlVElro5DzhDKbmkD8QyeJLrdJc2Qau7cRxF0COXsa8kDXsZX9Mp/xgr2RuZY/sgxAV9qb5w==
X-Received: by 2002:a37:9c92:: with SMTP id f140mr2982170qke.415.1616054595671;
        Thu, 18 Mar 2021 01:03:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:7497:: with SMTP id v23ls595470qtq.5.gmail; Thu, 18 Mar
 2021 01:03:15 -0700 (PDT)
X-Received: by 2002:ac8:698f:: with SMTP id o15mr2689946qtq.39.1616054594935;
        Thu, 18 Mar 2021 01:03:14 -0700 (PDT)
Received: by 2002:a37:a60c:0:b029:271:6c16:8ab7 with SMTP id p12-20020a37a60c0000b02902716c168ab7msqke;
        Thu, 18 Mar 2021 00:10:59 -0700 (PDT)
X-Received: by 2002:adf:8562:: with SMTP id 89mr8059525wrh.101.1616051458761;
        Thu, 18 Mar 2021 00:10:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616051458; cv=none;
        d=google.com; s=arc-20160816;
        b=zPi79Itt7I93D8GKOiwETa8L3byBWwP7QxfyzqBTfhnV/kJG9FkUvZuKdrGIKGhIks
         79ABgcnfhcmg2325LT+GSM1LzHQRU96Rri5Kzb0lX1r17HDDPZroIGmOMtuRz+Tw2Q8h
         MbW/cOoolucbV1YXEqY+m5rqOhl1TNT+yVQKU2TFL/EnpP/w0yTVy6Fk/m/2F8Vy0Ap5
         z82MzzwoZe8bSsTcJcr8xQnsMU0LDYLbHkLV1O4bzvjMx4TOQdLK4gDGsQjDt/hc5w1D
         iBGrhbuQFMCNgAN03BcOjr4wGq+Mq/ajX9Fa/L61cW5t7EJhKrVvA4wIYc0hfNEVz7re
         sJBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:to:from:date:message-id;
        bh=Mp2lMjkvRD6jzJlRwk1sHMmN0UBc92kmTlydwOyQNM4=;
        b=rkVNGRmDPeJ+sr4tYcovSQfSLRBkF8wu2ha9n11Z3jH5bYnc2VMHdadlqqSVJURLCC
         d9AnSHxdx1n0wWhY1TjXVFXkTPGs1moBgAAHcDePyxRlPalLeGSmEYjzI2Anfi3/Daag
         s691DwSLQsvgV4WxoDvMvYMlwBQsTmQl7+rAShpD67f4qdDY135yau1pNjF9QX6lcz61
         GGoY1pxbBhIje9m4O8gQuUXUpn4xii8R5bjEgs6zwR7JkZNFyFrNWn9EtxnAXsEvZmvy
         LsH9G0ttXfjCrEi4xWw6M2XgeYRKDRrdwkd7XJRKOX/H30leVaDsK8B4z/SHZhUpa02a
         3zpw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf7 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx1.uni-regensburg.de (mx1.uni-regensburg.de. [2001:638:a05:137:165:0:3:bdf7])
        by mx.google.com with ESMTPS id g14si982470wrm.19.2021.03.18.00.10.58
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Mar 2021 00:10:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf7 as permitted sender) client-ip=2001:638:a05:137:165:0:3:bdf7;
Received: from mx1.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id CD31F6000058
	for <usb-storage@lists.one-eyed-alien.net>; Thu, 18 Mar 2021 08:10:57 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx1.uni-regensburg.de (Postfix) with ESMTP id A53226000050
	for <usb-storage@lists.one-eyed-alien.net>; Thu, 18 Mar 2021 08:10:57 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Thu, 18 Mar 2021 08:10:57 +0100
Message-Id: <6052FD00020000A10003FE36@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.3.1
Date: Thu, 18 Mar 2021 08:10:56 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "Greg KH" <greg@kroah.com>,<stern@rowland.harvard.edu>
Cc: <zzam@gentoo.org>,
 "systemd-devel@lists.freedesktop.org" <systemd-devel@lists.freedesktop.org>,
 <usb-storage@lists.one-eyed-alien.net>,<hirofumi@mail.parknet.co.jp>,
 <linux-usb@vger.kernel.org>
Subject: [usb-storage] Antw: [EXT] [systemd-devel] [PATCH] usb-storage: Add
 quirk to defeat Kindle's automatic unload
References: <20210310214648.GA236329@rowland.harvard.edu>
 <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
 <20210311143912.GA257360@rowland.harvard.edu>
 <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
 <20210316162650.GB448722@rowland.harvard.edu>
 <031a20c5-27c3-cc13-6e0b-a308644abce4@redhat.com>
 <20210316170433.GD448722@rowland.harvard.edu>
 <1d9f059e-8b21-0895-9a50-39b6b1a5cc5c@redhat.com>
 <20210317151746.GB488655@rowland.harvard.edu>
 <5f8c0755-0884-f505-c4e8-3a5e89001d58@gentoo.org>
 <20210317190654.GA497856@rowland.harvard.edu>
 <F279F9BC020000F5AE14D9EC@gwsmtp.uni-regensburg.de>
 <C63C44570200006665972EEF@gwsmtp.uni-regensburg.de>
 <B960C12A020000A667ECE9F9@gwsmtp.uni-regensburg.de>
 <B72C58530200001565972EEF@gwsmtp.uni-regensburg.de>
 <0F2319EB020000F567ECE9F9@gwsmtp.uni-regensburg.de>
 <DE3F57520200009E65972EEF@gwsmtp.uni-regensburg.de>
 <474C42CD02000091AE14D9EC@gwsmtp.uni-regensburg.de>
 <D43A6F56020000F865972EEF@gwsmtp.uni-regensburg.de>
In-Reply-To: <D43A6F56020000F865972EEF@gwsmtp.uni-regensburg.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf7
 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

>>> Alan Stern <stern@rowland.harvard.edu> schrieb am 17.03.2021 um 20:06 i=
n
Nachricht <20210317190654.GA497856@rowland.harvard.edu>:
> Matthias reports that the Amazon Kindle automatically removes its
> emulated media if it doesn't receive another SCSI command within about
> one second after a SYNCHRONIZE CACHE.  It does so even when the host
> has sent a PREVENT MEDIUM REMOVAL command.  The reason for this
> behavior isn't clear, although it's not hard to make some guesses.

Actually I think Amazon should fix the firmware.
It seems the main goal was to prevent the use of open software to manage th=
e
content.

>=20
> At any rate, the results can be unexpected for anyone who tries to
> access the Kindle in an unusual fashion, and in theory they can lead
> to data loss (for example, if one file is closed and synchronized
> while other files are still in the middle of being written).
>=20
> To avoid such problems, this patch creates a new usb=E2=80=91storage quir=
ks
> flag telling the driver always to issue a REQUEST SENSE following a
> SYNCHRONIZE CACHE command, and adds an unusual_devs entry for the
> Kindle with the flag set.  This is sufficient to prevent the Kindle
> from doing its automatic unload, without interfering with proper
> operation.
>=20
> Another possible way to deal with this would be to increase the
> frequency of TEST UNIT READY polling that the kernel normally carries
> out for removable=E2=80=91media storage devices.  However that would incr=
ease
> the overall load on the system and it is not as reliable, because the
> user can override the polling interval.  Changing the driver's
> behavior is safer and has minimal overhead.
>=20
> Reported=E2=80=91and=E2=80=91tested=E2=80=91by: Matthias Schwarzott <zzam=
@gentoo.org>
> Signed=E2=80=91off=E2=80=91by: Alan Stern <stern@rowland.harvard.edu>
> CC: <stable@vger.kernel.org>
>=20
> =E2=80=91=E2=80=91=E2=80=91
>=20
>=20
> [as1953]
>=20
>=20
>  drivers/usb/storage/transport.c    |    7 +++++++
>  drivers/usb/storage/unusual_devs.h |   12 ++++++++++++
>  include/linux/usb_usual.h          |    2 ++
>  3 files changed, 21 insertions(+)
>=20
> Index: usb=E2=80=91devel/drivers/usb/storage/transport.c
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =E2=80=91=E2=80=91=E2=80=91 usb=E2=80=91devel.orig/drivers/usb/storage/tr=
ansport.c
> +++ usb=E2=80=91devel/drivers/usb/storage/transport.c
> @@ =E2=80=91656,6 +656,13 @@ void usb_stor_invoke_transport(struct sc
>  		need_auto_sense =3D 1;
>  	}
> =20
> +	/* Some devices (Kindle) require another command after SYNC CACHE */
> +	if ((us=E2=80=91>fflags & US_FL_SENSE_AFTER_SYNC) &&
> +			srb=E2=80=91>cmnd[0] =3D=3D SYNCHRONIZE_CACHE) {
> +		usb_stor_dbg(us, "=E2=80=91=E2=80=91 sense after SYNC CACHE\n");
> +		need_auto_sense =3D 1;
> +	}
> +
>  	/*
>  	 * If we have a failure, we're going to do a REQUEST_SENSE=20
>  	 * automatically.  Note that we differentiate between a command
> Index: usb=E2=80=91devel/drivers/usb/storage/unusual_devs.h
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =E2=80=91=E2=80=91=E2=80=91 usb=E2=80=91devel.orig/drivers/usb/storage/un=
usual_devs.h
> +++ usb=E2=80=91devel/drivers/usb/storage/unusual_devs.h
> @@ =E2=80=912212,6 +2212,18 @@ UNUSUAL_DEV( 0x1908, 0x3335, 0x0200, 0x0
>  		US_FL_NO_READ_DISC_INFO ),
> =20
>  /*
> + * Reported by Matthias Schwarzott <zzam@gentoo.org>
> + * The Amazon Kindle treats SYNCHRONIZE CACHE as an indication that
> + * the host may be finished with it, and automatically ejects its
> + * emulated media unless it receives another command within one second.
> + */
> +UNUSUAL_DEV( 0x1949, 0x0004, 0x0000, 0x9999,
> +		"Amazon",
> +		"Kindle",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_SENSE_AFTER_SYNC ),
> +
> +/*
>   * Reported by Oliver Neukum <oneukum@suse.com>
>   * This device morphes spontaneously into another device if the access
>   * pattern of Windows isn't followed. Thus writable media would be dirty
> Index: usb=E2=80=91devel/include/linux/usb_usual.h
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =E2=80=91=E2=80=91=E2=80=91 usb=E2=80=91devel.orig/include/linux/usb_usua=
l.h
> +++ usb=E2=80=91devel/include/linux/usb_usual.h
> @@ =E2=80=9186,6 +86,8 @@
>  		/* lies about caching, so always sync */	\
>  	US_FLAG(NO_SAME, 0x40000000)				\
>  		/* Cannot handle WRITE_SAME */			\
> +	US_FLAG(SENSE_AFTER_SYNC, 0x80000000)			\
> +		/* Do REQUEST_SENSE after SYNCHRONIZE_CACHE */	\
> =20
>  #define US_FLAG(name, value)	US_FL_##name =3D value ,
>  enum { US_DO_ALL_FLAGS };
> _______________________________________________
> systemd=E2=80=91devel mailing list
> systemd=E2=80=91devel@lists.freedesktop.org=20
> https://lists.freedesktop.org/mailman/listinfo/systemd=E2=80=91devel=20



--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/6052FD00020000A10003FE36%40gwsmtp.un=
i-regensburg.de.
