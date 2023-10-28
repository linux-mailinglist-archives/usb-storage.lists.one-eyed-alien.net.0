Return-Path: <usb-storage+bncBCJ455VFUALBBFHE6KUQMGQE4N6DAJI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD5E7DA563
	for <lists+usb-storage@lfdr.de>; Sat, 28 Oct 2023 09:02:47 +0200 (CEST)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-2802c0b610dsf202199a91.1
        for <lists+usb-storage@lfdr.de>; Sat, 28 Oct 2023 00:02:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698476565; cv=pass;
        d=google.com; s=arc-20160816;
        b=M6Mqk9WYA0FDolNKyVgTcripjzVzcPzYJdu/guZ0aX+O8xGAIVU/kDuYy0q/Yoi7Pl
         0EMligcy6HrzDjNjO1oE35SzOEHoR7jFVzPyhowt4oxY7IFFmKzBsaoX5DQdaOXoU7tg
         QxBWLuXeAyse1RbgQ4CraoQ5oh1mk2bL46A6eVHcGq+wrrbTCZyrj29e/1KGByXAPW5o
         Ai7rglnxrIqnuhuaAULmjCg3ghj4zDIkn9FFUVdUDFS/f21MmKj9D1qCFze0OrNArXBe
         oKaMWZY0FCkj2OTCFSx8njGndCSsbZUWzFO0GOnKbv/vpWdsgPmy+DptkR6smhdj90F2
         r4/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=82NrMmAEpJ6ia07uhJdvkp/b6keI1fT3olADb1+2MR0=;
        fh=DAdGqbSFCAGAaTkC0d+AztHudGxkfTAIAn/St00CZbA=;
        b=huzcNsbNTxsKwssCtjDxzddlktQN0V3TfUioPqKJwXDDXrSmbR8sGKk6fMbW89spU9
         ocTObf6OvvnnxruZZK+0wAAt/swqqX0JTQKkutN0oJe6z2+L93UDxSlom8h1camtNofU
         nMMyL1+CwoMCrTRojTI/fXfyo5ZQfJpyjapg9J8KLrL2KSo/L15HY7VMyFlHNUDkgQhm
         GfSe6hZ4HwwnTtBtPM3tiNgriKmEEzFFT/ZoCVoyODIdcKTL+Zh/GfU09ta/LjRuKK+N
         Jwi6OhkEVc8Oe3k3oET8IHm6JiEed/ET1TiatAnYZqG4PzeRgkDVFOFlSaUl2lGdrhn9
         Kpow==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=VRVxgVtx;
       spf=pass (google.com: domain of bagasdotme@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698476565; x=1699081365; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=82NrMmAEpJ6ia07uhJdvkp/b6keI1fT3olADb1+2MR0=;
        b=YQCUlW40gW0JDDiFgE7OtV2vQytUiSKlwrywLZL0PorUTLV3/Vd1f1MAfCyvVxEJ84
         doUWKCv5tkjDmv5tooXISj1Ek8R4oo9QGKBw0d488fvSD9y7iCOKMC/PMqDy42pGdg7X
         lOVhJ7xLBvD5BR5rwrbbawnOIjT88xPHVX/2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698476565; x=1699081365;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=82NrMmAEpJ6ia07uhJdvkp/b6keI1fT3olADb1+2MR0=;
        b=LwRA/X2qCLLmNBiEgu0gRZbYqFL1S8RcQ7hzhhoiOokwZrFyzq3vgNfDMMCSoGqITO
         pRlLt+4+6bv2OH6YcVHR72xURwDBVz19CujaJ+kg2QoRXuy89Mi+DzhoF8CjT+t2Y5yv
         Iq3X2mYs5zL27A9Xflk4r/qhqSbfUAXzboCpZXJngFV0usmKz89dTsVaGTqkfvVoTfZn
         WB+A7ovGn9Tqpd6I7nEc+hISKWWrom2FsZcnYvCkkSh+UKct4EGT7xnsyI0lWlJYmMqn
         LF9HVGZVpB2G3a6YGIhkrnO1F8xwrSvOCG0xvp5Ra7t843aVwoAZLOVnw0Y94WrHsYEC
         Qllw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YzmfJTu2ULJhSxh0O3GYDDG21hLeeXZzd3Xgbo9C/JOE5g+AKNV
	Z/gJotM6TCtoC93YVYMlpHMHig==
X-Google-Smtp-Source: AGHT+IFuoOKGwxHK3huBignIbAx7XOBWRS12K3VwUBMxG0lhCRJTKv8ikQT9CYouEBopBvsY44voKg==
X-Received: by 2002:a17:90b:3508:b0:280:2b31:dac5 with SMTP id ls8-20020a17090b350800b002802b31dac5mr461825pjb.22.1698476565480;
        Sat, 28 Oct 2023 00:02:45 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:1647:b0:277:5642:ec00 with SMTP id
 il7-20020a17090b164700b002775642ec00ls679147pjb.2.-pod-prod-06-us; Sat, 28
 Oct 2023 00:02:44 -0700 (PDT)
X-Received: by 2002:a17:903:750:b0:1c7:2697:ec0a with SMTP id kl16-20020a170903075000b001c72697ec0amr4730687plb.30.1698476563393;
        Sat, 28 Oct 2023 00:02:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698476563; cv=none;
        d=google.com; s=arc-20160816;
        b=Yq/b0BHAWNdlgccmZ7Y8J8CiSY1avBbLNy+82704xDUx9AH8wobhyU1AzsfV2foBbI
         rhqDuEs8TZANt2ZURodRGcUIy4p/8yKV+OnuBaEkWRG26Q6poE9lOuyV8sNyBbINSxrA
         qJYbSiErqCPw0XTavkpmPgW81TJI/Gyf2hyNsp/8V+/weEXPeRUe2vv/L83WlmBr3G1m
         dqHvA5V6M91eVS5zhChTCPpUcg1zYaooULD++UaUf5KwvQBGk2uGuZInRWgn3BdvwUGe
         Ct1BpxKWTHN91J+v/16pVeJVY4MDW2CbcjyxG+peonx8hmbSxXnVFkvEOfbTgoGfdtJz
         pqGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3swEum9c3xS2G6bitOJ9Q/SoUIKvRIQ+YpGFc6w8sw4=;
        fh=DAdGqbSFCAGAaTkC0d+AztHudGxkfTAIAn/St00CZbA=;
        b=iY0EndgdbGGz28YrIH6ruHgOF6L2HKWgeL3ayPEm2V/Pb1Jgrd3fPitz7fzpj/cg6V
         KMV62byEpie5eOoyZP63ugkYerk46L/fasU1i7omjppUhsecUvFUetRyAK2xiGRGXaBy
         MxahdLuE6BbMNT8ln1A80sZyM4ykJtnIHTZOTkqA5BpCEQAO2dwrfXtQTEvSVx5wDWGF
         2GuGtE4QKc6iT9wnMdY0g3AY+sWYvTL3bHwybkiBfA9APnkRLGssbg+Egg5Rv+Hv0kE+
         UTOUUATm7810RmF/2ve3F5YCzIrC5NbwNnrZMCrwo7UOnzcGW4TZDh05WzkcY1i9tiI0
         bFdw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=VRVxgVtx;
       spf=pass (google.com: domain of bagasdotme@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id b1-20020a170902d30100b001cc168637c0sor1278613plc.15.2023.10.28.00.02.43
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 28 Oct 2023 00:02:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of bagasdotme@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:903:2301:b0:1c9:d940:78ea with SMTP id d1-20020a170903230100b001c9d94078eamr5581884plh.22.1698476562930;
        Sat, 28 Oct 2023 00:02:42 -0700 (PDT)
Received: from debian.me ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id l9-20020a170902d34900b001c55db80b14sm958148plk.221.2023.10.28.00.02.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 00:02:42 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 4BB61819CFF3; Sat, 28 Oct 2023 14:02:38 +0700 (WIB)
Date: Sat, 28 Oct 2023 14:02:37 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: LihaSika <lihasika@gmail.com>, Linux USB <linux-usb@vger.kernel.org>,
	Linux USB Storage <usb-storage@lists.one-eyed-alien.net>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Milan Svoboda <milan.svoboda@centrum.cz>,
	Matthieu Castet <castet.matthieu@free.fr>
Subject: [usb-storage] Re: [PATCH] usb: storage: set 1.50 as the lower
 bcdDevice for older "Super Top" compatibility
Message-ID: <ZTyyDXYR4f6WKdLM@debian.me>
References: <ZTsR-RhhjxSpqrsz@debian.me>
 <055de764-c422-4c22-a79b-dd4db56122ce@gmail.com>
 <2023102704-stable-lid-c86a@gregkh>
 <7484f7c8-a49c-4111-83f0-bb6db2906fae@gmail.com>
 <2023102729-spent-ninja-7e39@gregkh>
 <037e5af2-3afd-4a37-a4d7-6dc87af605c7@gmail.com>
 <21c2b8ee-7753-413e-98f9-d1401edf5c73@gmail.com>
 <2023102720-emotion-overlying-9bb4@gregkh>
 <ccf7d12a-8362-4916-b3e0-f4150f54affd@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LBqHn0zx6pxC/YW3"
Content-Disposition: inline
In-Reply-To: <ccf7d12a-8362-4916-b3e0-f4150f54affd@gmail.com>
X-Original-Sender: bagasdotme@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=VRVxgVtx;       spf=pass
 (google.com: domain of bagasdotme@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=bagasdotme@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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


--LBqHn0zx6pxC/YW3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Fri, Oct 27, 2023 at 08:28:04PM +0300, LihaSika wrote:
> Change lower bcdDevice value for "Super Top USB 2.0  SATA BRIDGE" to match
> 1.50. I have such an older device with bcdDevice=1.50 and it will not work
> otherwise.

What about below description?

```
Some old USB hard drives using Super Top USB 2.0 SATA bridge have lower
minimum bcdDevice value than currently allowed (1.60). Such devices
cannot be used by ums-cypress driver since their bcdDevice is out of range.

Lower minimum bcdDevice to fix that. 
```

> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Liha Sikanen <lihasika@gmail.com>

Is your intended author name in your From: header or Signed-off-by: trailer?

Also, don't forget to add Fixes: tag; that is:

Fixes: a9c143c82608 ("usb-storage: restrict bcdDevice range for Super Top in Cypress ATACB")

When above reviews are addressed, resend as v2. Make sure that the patch
subject begins with `[PATCH v2]`.

> ---
> 
> diff --git a/drivers/usb/storage/unusual_cypress.h b/drivers/usb/storage/unusual_cypress.h
> index 0547daf..5df4075 100644
> --- a/drivers/usb/storage/unusual_cypress.h
> +++ b/drivers/usb/storage/unusual_cypress.h
> @@ -19,7 +19,7 @@ UNUSUAL_DEV(  0x04b4, 0x6831, 0x0000, 0x9999,
>  		"Cypress ISD-300LP",
>  		USB_SC_CYP_ATACB, USB_PR_DEVICE, NULL, 0),
>  
> -UNUSUAL_DEV( 0x14cd, 0x6116, 0x0160, 0x0160,
> +UNUSUAL_DEV( 0x14cd, 0x6116, 0x0150, 0x0160,
>  		"Super Top",
>  		"USB 2.0  SATA BRIDGE",
>  		USB_SC_CYP_ATACB, USB_PR_DEVICE, NULL, 0),
> 

The diff itself is LGTM.

Thanks.

-- 
An old man doll... just what I always wanted! - Clara

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ZTyyDXYR4f6WKdLM%40debian.me.

--LBqHn0zx6pxC/YW3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZTyyCQAKCRD2uYlJVVFO
o5dIAQDECVFDQwsCIiuYkCORuUPpHseb/kWe2suzrMmWG0ohGAD+OjIHq9yEOFzd
R2wA63Yr4JeUOyk4cEwGK5v0lrL98Ac=
=3N1E
-----END PGP SIGNATURE-----

--LBqHn0zx6pxC/YW3--
