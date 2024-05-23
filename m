Return-Path: <usb-storage+bncBCUJ7YGL3QFBBBPRXSZAMGQE5NP37GA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D9D8CD25B
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 14:37:27 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-1eec5aba2bdsf962805ad.0
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 05:37:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716467846; cv=pass;
        d=google.com; s=arc-20160816;
        b=WkuJurGbiNoBVAnF3ScIs4eZmweR8XJ8ZXrwem/RMXJhXz78EFI0SOeKZr5ZaGjNSt
         fPYjswKudizt/uJ3OtJaLT9Nr9zkMBUuOZ12CIFaQDih6SDxGoB1XoqCi25pFplc3cJf
         hQ4VLYcPfITB76TEDNw960WPtnpnv3Z+Ab+ya7i8Tw1f28W/gbKxw5u2va+ksUZDN/wf
         KbhSh7Nc+BeEFrvo172bldoIWdJ2QRR1exD96PFVteraFNWim66IxkUlp9CrGxi0aP0j
         dnvvMxsD0HyhDxQLfk8Fi+B04a5EmZIatQNFk0zjewVlVJlSZ3GFqvJCXudIc6vcBLWc
         uhUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=TNGLIGEEJ223mmTCAi8e23QVWAzhJkubdd2/VauFS04=;
        fh=s4e+QLiebyuy3YSg5ac6J8u0m+RPBcFbtJ40cbRAaG4=;
        b=pzytGZYjemdKN+AMiADi/h8IauaGe29YUfu8r9voik23Z+6DnT7ekEcArbxCHYpJGe
         44GNIUcysMcUGRUluJknnaX8PY3FEsoynsSdsvc22FawkWTzI9+jmcPZOWcJ1mwXcc5N
         L/dEkOXGW8aYyh1a0Ko1yJI35+WPeOjFDpOdXLUQ5iYsY0+8SM8AYUpcxH4peIa2kELd
         EySn78auAqNcEejDgBHFvICphjdreFGpqCpz1kyR/lXxv2TJNnfMCD5cOdN0fz3TYb5A
         3cD/xt2b95ZiTNK73vzoOUVfM70dDPdC8+XX9EowE9w4USPKVZxcy1DFV4sXZgUASjaX
         In8w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=KcGE+YTA;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716467846; x=1717072646; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=TNGLIGEEJ223mmTCAi8e23QVWAzhJkubdd2/VauFS04=;
        b=iBRoPNBzILtyYFK2iPHcAOwXeCOKN3zG75Fi0Z2cvJfQDj2oqole6n7KXopbRmk1Ah
         etMLULXlQjtpXWLZgL8kaThdUceRCgtAGmkod6IpKP4OQzzvfDl+nG0Qlqz2KPsAGL1P
         dod/zgz/0Qam6fO3FYcZ6wmtEgdU2t2COD5rs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716467846; x=1717072646;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TNGLIGEEJ223mmTCAi8e23QVWAzhJkubdd2/VauFS04=;
        b=I9LxbCVWw+b62iehek3pleOtluWt5xrRtToo1UyvdPN0HIVzx1bbIGIhLQ0DI+KfF9
         Fd3EYlAF+TPS8iamgr/1tJYnlcnHr4XWHXRsHmx1YhEhdUGd4I4I+iHI2gg7DFMsRw56
         jljXKHH5YTb+BVKBR4q46pYu9ghcbnySI/syoEw2w3D3mZn6lBERiAEfGDsBbeRwWHQg
         wAiZ1REioArcR99C4nlKa55RIjKLC2ApranY4C68rAtgauGjTmS4Uj9CoicDaBhbwMUv
         PFlXX62Z8wk9B49+hf/2Iap9dm3uD4223xXXfSJb7z0aNap2vmT4SqNjJw57nTJ2ty6p
         uivQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVJTD3KOE+f+7+1csQuWlIlTjWTpXO2HouYTNR+lFZKBT5EaArvoTtqHAkCfEnYT6TH84qvmzssmdA6C7TP42pKpOOMW7jAQAk/
X-Gm-Message-State: AOJu0YxqVwAwspnNHkDHKKto4gOpXKFkOTSkpzzONGUtzDmxjyj5s/Pa
	saUaXd2oUpUA5+MFTY/NcUsmOfJSzW26NjjhLKJPi0VP+2D2piJUdVyoHOc4hd0=
X-Google-Smtp-Source: AGHT+IFuBNoRQmof9bgSq0wbAznniBrGenggdn/CkPauqq0I/rMbYJEQiD669xVFuKlpP+cyH8JmWA==
X-Received: by 2002:a17:902:cec6:b0:1f3:f1b:32a8 with SMTP id d9443c01a7336-1f31c80309cmr58008855ad.0.1716467845763;
        Thu, 23 May 2024 05:37:25 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:e804:b0:1f3:465f:da8f with SMTP id
 d9443c01a7336-1f3465fddbcls6755ad.1.-pod-prod-03-us; Thu, 23 May 2024
 05:37:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXmLeDk63c3oxHgYONsqyVNCDGiBXgN4R3C9k2GUIECklN+4VsiBGfiOh7ZLDzzdQwjXJHFb2IuySpk5/uR0Y3YGv8o7Fyc+fZWIht5KrijA5Gy51g=
X-Received: by 2002:a17:902:c94b:b0:1f2:fb86:5cc5 with SMTP id d9443c01a7336-1f31c966f6emr62539775ad.10.1716467843950;
        Thu, 23 May 2024 05:37:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716467843; cv=none;
        d=google.com; s=arc-20160816;
        b=aekFQcUNuWrtUWQo/TFww4X5RrC/RjG9863n2hRwNfdGbSGzDI0ATEsGK6POrk3Ehf
         SQBpVtCtDIua0nV/B1+sFCfoGqAddzZ0ANi846OMLtAzapVLDeYutYO0xaRWC5GMl69c
         lM1cv1LxZbuIv4eQRfMnKdz3Gs8YGUv5UkcvZgNryxlTGh1cITypaIHwMibdw+OKR1fG
         DRnv8c2A/0TswSVFBhdEaaDxxM4PaWGo+r3M0/5RKQFKsP0wi8fT0tlTEQosVp5se2K3
         nRSBT4LffDdAjTqlXSYKV5ZZnFCI8EZkWjqRo5kT0z367LcNjaHbA7VQkHSkOlJMxV9b
         WnlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=+Z+76Zjf1MMqUEDjvv9RqlpTJW6mr9cbNbPJ0OSNGKA=;
        fh=MNyjG2TuEBZmmkieg/sH1SELA4sUEBqf6v/R6fxeyGs=;
        b=rRQy4ZAxzV2VR5MQert6QHXi1r+StHlaXu8xK6EbWKYTASDZ+bsmBMAxJ960fNoJs9
         5kI2Q7Sa7GoJoC2pfxCM8CV+3Pd93kRksKyFyRlTIZuxfr5vcvkOZDWPnihjP3RIXNlz
         wnQyJR/KgEJSq3cHGDm4J6FjGbnjRJkQAwaZMUOnDdKvKvo2oWFQChJXdH0OSIMU2A9k
         emUAmI8hbYpNxfBgKY2dzPBcza20cZyOOClgvxbZNEl/8CX7mCU598445Vtg+Z2Iy6Vb
         pRBShbXpG/yB517ClmFdrHCP5eX2W7nG2/IIjETpGysFh+WNnn5R9ZN2QdyEdj+sYX8e
         azPQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=KcGE+YTA;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id d9443c01a7336-1f30a715e3fsi56338355ad.228.2024.05.23.05.37.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 05:37:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4F43FCE1686;
	Thu, 23 May 2024 12:37:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B9ECC2BD10;
	Thu, 23 May 2024 12:37:20 +0000 (UTC)
Date: Thu, 23 May 2024 14:37:18 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: shichao lai <shichaorai@gmail.com>
Cc: oneukum@suse.com, stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	xingwei lee <xrivendell7@gmail.com>,
	yue sun <samsun1006219@gmail.com>
Subject: [usb-storage] Re: [PATCH v2] usb-storage: Check whether divisor is
 non-zero before division
Message-ID: <2024052354-snorkel-drainer-d328@gregkh>
References: <20240523113410.983875-1-shichaorai@gmail.com>
 <2024052351-demote-gangly-74b0@gregkh>
 <CACjpba7k2+GS3c+NGgOeP=9=DU8Mh1DFEGUB_WAkX_VFKBBtrA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CACjpba7k2+GS3c+NGgOeP=9=DU8Mh1DFEGUB_WAkX_VFKBBtrA@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=KcGE+YTA;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Thu, May 23, 2024 at 08:23:57PM +0800, shichao lai wrote:
> On Thu, May 23, 2024 at 7:47=E2=80=AFPM Greg KH <gregkh@linuxfoundation.o=
rg> wrote:
> >
> > On Thu, May 23, 2024 at 07:34:10PM +0800, Shichao Lai wrote:
> > > Since uzonesize may be zero, so judgements for non-zero
> > > are necessary in both place.
> > >
> > > Changes since v1:
> > > - Add one more check in alauda_write_lba().
> > > - Move check ahead of loop in alauda_read_data().
> >
> > Nit, this changes list should go below the --- line, as the
> > documentation asks for.
>=20
> Sorry for my inexperience. I have read the document and found some
> examples but I am still a little confused about this.
> I guess this is what you mean?
>=20
> Since uzonesize may be zero ... (context)
>=20
> Reported-by: xingwei lee <xrivendell7@gmail.com>
> Reported-by: yue sun <samsun1006219@gmail.com>
> Signed-off-by: Shichao Lai <shichaorai@gmail.com>
> ---
> Changes since v1:
> - Add one more check in alauda_write_lba().
> - Move check ahead of loop in alauda_read_data().

Yes.

>=20
>  drivers/usb/storage/alauda.c | 4 ++++
>  1 file changed, 4 insertions(+)
> ...
>=20
>=20
>=20
> > Check after the list of variables please, not in the middle of them.  I
> > think checkpatch will complain about this, right?
>=20
> In fact this script doesn't warn about these problems, but I will
> adjust my code style later.
> But the check in alauda_write_lba() is due to some variable like
> lba_offset and zone will perform modulo and divide operations,
> which may throw divide errors when uzonesize is 0.
> So I think I prefer to adjust the order of the variable list later.
> Changes like this.
> ```c
> unsigned int uzonesize =3D MEDIA_INFO(us).uzonesize;
> unsigned int zonesize =3D MEDIA_INFO(us).zonesize;
> unsigned int pagesize =3D MEDIA_INFO(us).pagesize;
> unsigned int blocksize =3D MEDIA_INFO(us).blocksize;
> unsigned int new_pba_offset;
> if (!uzonesize)
>     return USB_STOR_TRANSPORT_ERROR;
> unsigned int lba_offset =3D lba % uzonesize;
> unsigned int zone =3D lba / uzonesize;
> ```
> If it's ok, I will post the patch v3 soon.

That works, thanks!

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/2024052354-snorkel-drainer-d328%40gr=
egkh.
