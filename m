Return-Path: <usb-storage+bncBDBMLTW6VQDRBBFRSSCAMGQE6R37QGA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x347.google.com (mail-wm1-x347.google.com [IPv6:2a00:1450:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F2E36A57E
	for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 09:21:41 +0200 (CEST)
Received: by mail-wm1-x347.google.com with SMTP id n9-20020a1c40090000b02901401bf40f9dsf593176wma.0
        for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 00:21:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619335301; cv=pass;
        d=google.com; s=arc-20160816;
        b=aJMU3PXzOLNcAz1sKEWCtA8Bdm8oeXg4LOMhltNrxv2FiI6Zas3WaDEMqh+S4o5Sv8
         yymL4eoQTKQRxM6FsUPC11YXTuheJMOsyt7GY3tbd6RO5X+D2dzfmFBctPKDiv2SCSOt
         S0FikVkGbJ0pzwm0UnibhV4+kQtWq0Q4Jv0ZpGvSG8eo8r+jGC4KZWaQ9CYmclPq1gzA
         f73Wc8RKQFHLNd9dUnTCxoDQKRAPIKQzNK58dsVueReC/Vr7nAtGLTzjnY12LhPDJlIU
         qEVDI991cWCta5wE0Qk3JeSGO2rZffb7XmAm+chlJS974ZDx+8FflQ/mairijjl1cfFx
         CpMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id
         :content-transfer-encoding:cc:date:in-reply-to:from:subject
         :mime-version:sender:dkim-signature;
        bh=lcrPUDacPhZIjKbQKOPffGv3MkiTtAsY4kzhgKi7hQo=;
        b=D+DEPxOf3O1Zq18qRORRDHKouMPIcl10V/M5S9hxGBCGHKsEqjlV3lpzTrioy3zKIR
         DmWFULN7igJLIhun8m53y7T4Jc2boiC4JX8DX1nIrt9SsvTwqrb8g1PrwnyeRbcyJW0l
         LBb7RSaHmDVBZNrDAhvqI3bUU+dCrjfs7p/rwFMT/n24Pu8cNsxpFa7lxRJK79XVJU8h
         TkrEC80VcSFEEEyvQ+dDhn6ax8mxz5bwwYOHBjM3lI7KzU87zc6qsnihG7z9msjqmYGN
         qeDFyU/jHWX0j0y1a8fzOuZjlxOaDP9DGHTAKi3OVYY+PEi1Mip/BA1dboOYkWzoslAt
         IVUA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@exactco.de header.s=x header.b=latNAKBB;
       spf=pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) smtp.mailfrom=rene@exactcode.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lcrPUDacPhZIjKbQKOPffGv3MkiTtAsY4kzhgKi7hQo=;
        b=gr9UKciqEAVLeqBZCSx71xayostAZeSJmRdQ10KryBF+yZUn17ZKn/XoL2RL/icaUg
         T6jCT9wE5RZMsb7SfBICk59AMv13q+rgkHtiW+1ckYDQZAf1cWxvCf/+GfJQjOviDlb8
         G8bbEtiAyoNkHAK/gjRRxF3DddNZDl/BvMngo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lcrPUDacPhZIjKbQKOPffGv3MkiTtAsY4kzhgKi7hQo=;
        b=Pea+yry3OwisPFNgoamUS9G/APgX0pd4rKwdmvyW9acGTRfvmk5yTUzV1uaWpVKSjj
         24h7O8XGLwR2Fr0X0XPlEJ+qCYfQmdzp6tGYQhg1h/JdtHF3yrP+3LrClvyiofXBr4uM
         +sDzLIruAVSLCsJ1oewp21027X9VZr9Nf2OlLetObndw8JPPvQ8N6qb0bImvnmgeW0Wn
         9Y/vO2afTmWGqQ9jNecch0bc5z8qadbQxLyMmqzzyrkQaZCoNIglVRAxI6kDLbkauV6M
         1S5BI2s2COgl052hwX2qiU4H1Bv/WzqT0AiS0R/3c4yi1NTaNVTV+hl+4K/ZhD9XE1bX
         aqbw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530ADSQ3IAUpAvn6snqniYAU3d/aTPUE5RXZCS63BMGX48gjMMY3
	Kzz3fA6+WjICoWhudsNSMoPyMQ==
X-Google-Smtp-Source: ABdhPJysQEbUpawHnJV1teufLypDRm1TauPDfbo9GquK198nmQavakqAta0rYi3kc90iyNt7tGDpqA==
X-Received: by 2002:a1c:f313:: with SMTP id q19mr12846703wmq.142.1619335301398;
        Sun, 25 Apr 2021 00:21:41 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:4a04:: with SMTP id c4ls6068152wmp.1.gmail; Sun, 25
 Apr 2021 00:21:40 -0700 (PDT)
X-Received: by 2002:a05:600c:20d:: with SMTP id 13mr12935617wmi.29.1619335300100;
        Sun, 25 Apr 2021 00:21:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619335300; cv=none;
        d=google.com; s=arc-20160816;
        b=kox1fDFRVVCiJ9DlHbrBrW3NVZMXYgRLYjp4nHfutULdbIZv1TaBBZ4YmROSvLEXwj
         fDn8+BK6yG0thjX8aWWRHtdPQPYf+fmudfYiGlI10wfcPYSKy069tJnvD1wP9E2/m0pZ
         C2D8b7aUJbHYbjs7rZ1ceoogLliqj4VdlBEyB+JWWZHegBEz3hH6jr56Q76W3g0G6/qK
         jGO7SeEKn0wHHSxptHYFGHaEBOtOAkxsgxrjxXKZyXmrR4wtyV8Oh9TbwRadyWyZYq6r
         Q2ChGvXtujAcKpJD6dOcTcV7DqxCuVx8367owR+ulmXjrOwoA/Ub72tJbgyq9xc0i/hl
         xu9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=Chm0Okj7mdW2P7xH6lAP9Bg8PO6kd2ncy6mEEGrSIco=;
        b=boRkobJFcAygFTH4eQdUqyL99Dt/fm1uySTxflufQ18KO4tDdx+e9APU6UJZ7LOcpl
         DnfH+RHquqzpJrn/BDU7pklsf6C3AV61qWTjqxec479y5lL1Q7bZvSYgPNFXPcwZFZ7w
         zFqZSmfWNKerEP5o7fy0XNMN7irKX1TrWuKBAhmiPW4E8NkCb65hXZmNfwGxayrdD2IA
         61a3C17R+caiME8ztt7dtlbh3cm3aG3BHWjqP5I+rxmollls9xkAwDa7SiGBE76UEoBR
         nP5Kep2kG+P3cmbzumq9B0PZX5KwP2IsgFxOlagg+f6Tq8qbtaYcGhppuXAX/trlMu22
         hubQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@exactco.de header.s=x header.b=latNAKBB;
       spf=pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) smtp.mailfrom=rene@exactcode.com
Received: from mx.exactcode.de (mx.exactcode.de. [144.76.154.42])
        by mx.google.com with ESMTPS id e16si14805388wmk.173.2021.04.25.00.21.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Apr 2021 00:21:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) client-ip=144.76.154.42;
Received: from exactco.de ([90.187.5.221])
	by mx.exactcode.de with esmtp (Exim 4.82)
	(envelope-from <rene@exactcode.com>)
	id 1laZ5N-0002B0-KO; Sun, 25 Apr 2021 07:21:45 +0000
Received: from ip5f5bd0cf.dynamic.kabel-deutschland.de ([95.91.208.207] helo=[192.168.0.14])
	by exactco.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.86_2)
	(envelope-from <rene@exactcode.com>)
	id 1laZ1g-0000OU-Uk; Sun, 25 Apr 2021 07:17:57 +0000
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
From: =?utf-8?Q?Ren=C3=A9_Rebe?= <rene@exactcode.com>
In-Reply-To: <20210425023133.GC324386@rowland.harvard.edu>
Date: Sun, 25 Apr 2021 09:20:59 +0200
Cc: Hans de Goede <hdegoede@redhat.com>,
 linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
Content-Transfer-Encoding: quoted-printable
Message-Id: <883AF188-7817-42E2-84E8-F1DD7A5F3C08@exactcode.com>
References: <20210424.220316.855336714119430355.rene@exactcode.com>
 <20210425023133.GC324386@rowland.harvard.edu>
To: Alan Stern <stern@rowland.harvard.edu>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
X-Spam-Score: -0.7 (/)
X-Original-Sender: rene@exactcode.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@exactco.de header.s=x header.b=latNAKBB;       spf=pass
 (google.com: domain of rene@exactcode.com designates 144.76.154.42 as
 permitted sender) smtp.mailfrom=rene@exactcode.com
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

Hey,

> On 25. Apr 2021, at 04:31, Alan Stern <stern@rowland.harvard.edu> wrote:
>> Seagate devices" in 2017. Apparently some early ones where buggy, ...
>>=20
>> However, fast forward a couple of years and this is no longer true,
>> this Segate Seven even is already from 2016, and apparently first
>> available in 2015. I suggest removing this rather drastic global
>> measure, and instead only add very old broken ones with individual
>> quirks, should any of them still be alive ;-)
>>=20
>> Signed-off-by: Ren=C3=A9 Rebe <rene@exactcode.com>
>>=20
>> --- linux-5.11/drivers/usb/storage/uas-detect.h.backup	2021-03-05 11:36:=
00.517423726 +0100
>> +++ linux-5.11/drivers/usb/storage/uas-detect.h	2021-03-05 11:36:16.3734=
24544 +0100
>> @@ -113,8 +113,4 @@
>> 	}
>>=20
>> -	/* All Seagate disk enclosures have broken ATA pass-through support */
>> -	if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
>> -		flags |=3D US_FL_NO_ATA_1X;
>> -
>> 	usb_stor_adjust_quirks(udev, &flags);
>=20
> I don't want to do this unless you can suggest an approach that won't=20
> suddenly break all those old buggy drives.  Just because they are now=20
> five years old or more doesn't mean they are no longer in use.

Well, what do you propose then? A allow quirk for all new devices going for=
ward?
Given that the user usually needs to actively run something like smartctl
manually on the drive I don=E2=80=99t see that this should cause too many i=
ssues.
I don=E2=80=99t have any non-supporting device - can we not just add them t=
o the
quirk list when someone reports one?

> Alan Stern
>=20
> PS: As a matter of good form, you should have CC'ed the person whose=20
> commit you are proposing to revert.

Thanks, forgot to paste them ;-)

	Ren=C3=A9

--=20
 ExactCODE GmbH, Lietzenburger Str. 42, DE-10789 Berlin, https://exactcode.=
com
 https://exactscan.com | https://ocrkit.com | https://t2sde.org | https://r=
ene.rebe.de

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/883AF188-7817-42E2-84E8-F1DD7A5F3C08=
%40exactcode.com.
