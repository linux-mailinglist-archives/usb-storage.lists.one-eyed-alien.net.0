Return-Path: <usb-storage+bncBC5J7HGFV4DBB2XKXSZAMGQEQMNKEMY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D94D8CD23B
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 14:24:11 +0200 (CEST)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-6ab8e73bc89sf822806d6.0
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 05:24:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716467050; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y982B0/WbcqKAVcxRcEwKe1S3Nvx9Gg9Q8ey7PQcBe2+RTPdf8FWmu49gb/HlyIn/f
         H7fG84uYEHhOYLdqe+JX5/iB6zH6o7TapOTGyWhUWnTghk80gX4M89kWrdxgZcFn8jpU
         r6jmKgtAtMWzjxZSOPUJVGOb6zJuSMIyv7tVquIMsreRrGRuzPOrx1iaESMQiccUMzMe
         l5olUB80GEAEUXoBn/IBCYbKrvM5axOFVtPiDFJbLsyjxio6Akerkrx9b3kPvVrY+IBQ
         Bd57CIlp7kevI038pu7yu8iyWxfNAsMbkaVuMEPfkLLXNDU7caoghPe659yrfglWegP4
         rrHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=QSvEqpHdY/FztL4CnMp0pVYuTJKpDetsuSQlfvjn44M=;
        fh=TIOwjo647ADVlul3dDL3bNWlblummLOWTf1h9akj4GQ=;
        b=L4fwNisXSIUvY4H6bcmEBNN41cK5lcsCOeWs6ATYg0sxu5QCLojkGde2zz+iftQm6Q
         ei72800k6Mb81cu639PfYB8a1g1LrhnFjrYBtgFiSC4oaS/gYr/Wo+g8LHkJePrU1Nca
         WVAqmM2O6R1/R7fCCgm1VlJlvrXQ3ukRVaiXdkW1gZscmMzYLmrkoUU1kh8gkZduEVW9
         25CgnLEQXbo+2HO8Bp7FRBYOpJHye17MuKZrmOS9ER2SieWjq4xWv/NUDCsMvG9oXOlq
         kWryj/DGM6wzKGhcNx/zsdAGGqTMaKYlFdGMz+tJh1LetdEas54HjkMLyvRqJYZLora3
         RICA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=ltzqEAX9;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716467050; x=1717071850; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QSvEqpHdY/FztL4CnMp0pVYuTJKpDetsuSQlfvjn44M=;
        b=DrvSx/7JiyG+CiGJ72pRBQLOvHENvuTOEUT9fCGbYX1Zzt2QXE8niUsKBxPlnXbG29
         X5Ob4WyrFGZpn2tkL/iggtxACdbCYizJRpX5QKGFQ34xzWQporzZXGTRTFoNRBzTbxoI
         85MOLiD0aD16GMtVn3J9/AbmlC0uM8+n+tAf4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716467050; x=1717071850;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=QSvEqpHdY/FztL4CnMp0pVYuTJKpDetsuSQlfvjn44M=;
        b=H3He6B27CtjJJvem6ZPPfmP5LOmjTvhJ+CDKZ0QhGhmNs+UwbUT1dPTtNcIw/dBXg2
         D+ntzbJzkxe4rLbulFcjDglqedamHenydgk0m8cmdAdD7S8iG/odwMbgUb6CqsNqFKN/
         /0Usds61yCJYUoEkfsGvTzLj2NRpTWJU1fncqo/EaRjjc0j8JpfpRRQKOvqaTLYnFYU/
         Db/dJxpZGofgqmXOlybx7HX+EmWechZR73oBH1K4fnjXgX7NBgZc7sacgdj8TsshwyNh
         10P+qGxUx/ETo6U2P/EKuuYR6KgNAWEROVc36yYEWaubyrXVG1hdPx58zG4/0gV69GmH
         gV6A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUsl9+gE80E/lstB66vtA8RAEGZ/aPT5OGRQLJ5tgB/d9rBbcsyzfNpFYlpk6apum/fjHF7T7tBHUdmS3rNeARt0VrUa2AUFhU1
X-Gm-Message-State: AOJu0YzeDLzKghQ5WQZKy8Q+L3nOhRVUj4QPf3vq88hU08QIRWR+aq8k
	0t4ro8EAYwsLa5YiEQchhP5yxbgHGQB92eZJZNzoE+jI0ZOreQ4cv3FxUE41a9U=
X-Google-Smtp-Source: AGHT+IFw4BvG8UTgPbuUrtxjmDKYEryDukgfLxzqv1m1zHi2u0KLAXMEzDk1NyeRE3HqPyrIs1eNPQ==
X-Received: by 2002:a05:6214:2d41:b0:6ab:86de:5491 with SMTP id 6a1803df08f44-6ab8f5b8d0amr35402546d6.13.1716467050300;
        Thu, 23 May 2024 05:24:10 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:cc3:b0:6ab:6f66:3c17 with SMTP id
 6a1803df08f44-6ab7cbfa4d8ls4258716d6.2.-pod-prod-00-us; Thu, 23 May 2024
 05:24:09 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWCvFGcMMqKQFz/BZzx6nSN7D2JFzvm3p1LKb/VZyPiF14d0jrvoAC80b4uHI7d54PCcKmKawORLwJHutcuece2MtH2lWkdJFu0hcMbFNRqX/x8RDg=
X-Received: by 2002:a05:6122:1078:b0:4da:ddb4:feca with SMTP id 71dfb90a1353d-4e4e4d30f9amr1392025e0c.8.1716467049178;
        Thu, 23 May 2024 05:24:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716467049; cv=none;
        d=google.com; s=arc-20160816;
        b=sTdQwjBNdAleZQiTbsoGBlfTEWTUpoq/RrGZNjXOxtBNv0R95DqMIwVWeF22guiwzs
         G6b4wt4dXHbrLQ5qZ+ngTvcpdsncM0OX2eqdFxqtQ2zpMDOoVEtgQIJpKfBfnN6MaW4d
         f0oXNrD7fBRU4FELdxe/AHPS83rEpBRQQejul2LxGbdzgTpcPyYB0+r/top0uYCgic1i
         alhbr2lXjEIk1qHBerT8ZIa5gN8gpPiai2iDipKj50Zt7e2R6rHutTfWiZzpGqGNFRsu
         zL0WqHzsUIghxpmtwdqzswnTcZNokHTyVGTwrXK9VDaH17x+kwRj1TS4Hb5tlFHmjfv2
         xJIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=iGInZ8XJKUbjr8yafmcP//JVQaWFhcuQkEdM0iAp5Tw=;
        fh=Zm9Fp04gtvfC/rbauv6n4cd/toVJwvIzbWE8uLqltPk=;
        b=SEERuHIWeuNZfb0FdV/FVuuav1OY3WRBygfW4QnNJdzoDB6jc9l1x28g6+ETCCyTgc
         WYqFErxEBXEEm9uBBWyLuMhBLj7sDptzyfMIL8XEKv11JOAPMWM/yqb3rTjBP+OMvR6k
         mgZ7Lt71F1s8C+DeatyvZmhjocOfcT/fQxKkZrCeKVoB9AL9fUZZQKAz2iutaUko2LsL
         n58ku+v8dLWKCC/4UwumTOVDrSMWeTtlycG9lvx/fgMihMhiA9wkbteZiCQ0tAakAdpj
         H/FkqvUB86tWDDaEtz7YAT91VT6iTAT2gqTwRCRZPsYv0QM8AyLltauSn7ycw115ojLN
         PEMA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=ltzqEAX9;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a1e0cc1a2514c-803269255f4sor1192469241.4.2024.05.23.05.24.09
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 23 May 2024 05:24:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCV2zH5PMrFjqOmYbccLA+kamsx2nZxiDOHchLz4WvwuhZ8Xp3vQULXZ1/fehTf1hoiB3QHe1UOMthDbbLKBpPRaox3k2D8UVK5hZb/kX9TybmJHjR8=
X-Received: by 2002:a05:6122:a01:b0:4ce:96b7:c2f6 with SMTP id
 71dfb90a1353d-4e4e4d15e1dmr1647042e0c.5.1716467048796; Thu, 23 May 2024
 05:24:08 -0700 (PDT)
MIME-Version: 1.0
References: <20240523113410.983875-1-shichaorai@gmail.com> <2024052351-demote-gangly-74b0@gregkh>
In-Reply-To: <2024052351-demote-gangly-74b0@gregkh>
From: shichao lai <shichaorai@gmail.com>
Date: Thu, 23 May 2024 20:23:57 +0800
Message-ID: <CACjpba7k2+GS3c+NGgOeP=9=DU8Mh1DFEGUB_WAkX_VFKBBtrA@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH v2] usb-storage: Check whether divisor is
 non-zero before division
To: Greg KH <gregkh@linuxfoundation.org>
Cc: oneukum@suse.com, stern@rowland.harvard.edu, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org, 
	xingwei lee <xrivendell7@gmail.com>, yue sun <samsun1006219@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: shichaorai@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=ltzqEAX9;       spf=pass
 (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=shichaorai@gmail.com;       dmarc=pass
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

On Thu, May 23, 2024 at 7:47=E2=80=AFPM Greg KH <gregkh@linuxfoundation.org=
> wrote:
>
> On Thu, May 23, 2024 at 07:34:10PM +0800, Shichao Lai wrote:
> > Since uzonesize may be zero, so judgements for non-zero
> > are necessary in both place.
> >
> > Changes since v1:
> > - Add one more check in alauda_write_lba().
> > - Move check ahead of loop in alauda_read_data().
>
> Nit, this changes list should go below the --- line, as the
> documentation asks for.

Sorry for my inexperience. I have read the document and found some
examples but I am still a little confused about this.
I guess this is what you mean?

Since uzonesize may be zero ... (context)

Reported-by: xingwei lee <xrivendell7@gmail.com>
Reported-by: yue sun <samsun1006219@gmail.com>
Signed-off-by: Shichao Lai <shichaorai@gmail.com>
---
Changes since v1:
- Add one more check in alauda_write_lba().
- Move check ahead of loop in alauda_read_data().

 drivers/usb/storage/alauda.c | 4 ++++
 1 file changed, 4 insertions(+)
...



> Check after the list of variables please, not in the middle of them.  I
> think checkpatch will complain about this, right?

In fact this script doesn't warn about these problems, but I will
adjust my code style later.
But the check in alauda_write_lba() is due to some variable like
lba_offset and zone will perform modulo and divide operations,
which may throw divide errors when uzonesize is 0.
So I think I prefer to adjust the order of the variable list later.
Changes like this.
```c
unsigned int uzonesize =3D MEDIA_INFO(us).uzonesize;
unsigned int zonesize =3D MEDIA_INFO(us).zonesize;
unsigned int pagesize =3D MEDIA_INFO(us).pagesize;
unsigned int blocksize =3D MEDIA_INFO(us).blocksize;
unsigned int new_pba_offset;
if (!uzonesize)
    return USB_STOR_TRANSPORT_ERROR;
unsigned int lba_offset =3D lba % uzonesize;
unsigned int zone =3D lba / uzonesize;
```
If it's ok, I will post the patch v3 soon.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CACjpba7k2%2BGS3c%2BNGgOeP%3D9%3DDU8=
Mh1DFEGUB_WAkX_VFKBBtrA%40mail.gmail.com.
