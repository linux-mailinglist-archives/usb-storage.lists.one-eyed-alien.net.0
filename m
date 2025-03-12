Return-Path: <usb-storage+bncBDT33UHK6EMBBPF5YO7AMGQEWKEODFA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x348.google.com (mail-wm1-x348.google.com [IPv6:2a00:1450:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A95DA5D3D8
	for <lists+usb-storage@lfdr.de>; Wed, 12 Mar 2025 02:09:18 +0100 (CET)
Received: by mail-wm1-x348.google.com with SMTP id 5b1f17b1804b1-43cf3168b87sf16246925e9.2
        for <lists+usb-storage@lfdr.de>; Tue, 11 Mar 2025 18:09:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1741741757; cv=pass;
        d=google.com; s=arc-20240605;
        b=F2ilG4p+gozZCDFY+29Q3L0nsQn9/JMFRf/aAyg678sY1yXESze+LLfwqixOz49tqi
         eOFzfTQ6KNFX8j0xwpkd5cpKRpLIqnf9VYxBkns7Zr8ZvYwWuVJaYLywUYSApzFFsLUp
         nDVm1C1D/f7wHLdFmWtyFagY+vxwhLUJlqmwxqogtXghXC6znviufqGm1IjB3BqgROdB
         B8+v/I4ubwK538RIF8WtzXnQuZerfcwWZmh+hagCVYqr9fxppKrZ3m6b4qlQVL6LgVk4
         Mz6NfVunBFA267/VBlgmVLb1Xf0mjjj+gHt9PbnUjEO+RskYXPTJlBfc8yi01hJwyxK2
         d5KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=xJDdXAVhrL9f99RRhy5LbXiFHYkcIyAGrMMKR/vLIKk=;
        fh=EKyWRGNVFvrVC4RKo2j7BIvAy48LD14qAufF1HOkEdI=;
        b=Alo5xVtpYjn2Cm/FPeD+RQxi6zbESESdbLJjqGcs9AEilNgE9nz4GvDLgXF1RA7FkM
         +6bM7KUZuUqD84qaKRpEHaQugupyPRhf8MfgF+mHPyN5Sqccl2wEhe7PhovSOG3+bUTS
         vWl7gbWAt+LA0FkfeF2lkeZsPyFBiR+bEDj1q8iepxVrLmUrXcwVXXoGBCqfa5AF+qAx
         4SaT3OKXCN/Pja30+G9SMsFZ+56Zmlif9sm5/FW+xEZYC/IecHBmMyFja09EdzdC8Kr2
         pasI8+v8Uu12n+IXcOyqU4JUiVLzbFKlNa/kMAM0TXA0i9Ep47oSn9pgyZLUnlHG75BO
         ZFiA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@one-eyed-alien.net header.s=google header.b=JzLJ8uuk;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.41 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1741741757; x=1742346557; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xJDdXAVhrL9f99RRhy5LbXiFHYkcIyAGrMMKR/vLIKk=;
        b=ViWR8ZwkenS1ThbeTy7BiRuIdboBIRib7E1mTQfjKA9wvIwuXhxksfr1Sp/inYfQFF
         fnQL7eiy+oC9nW0+z71u8/pgNwmycCHpr0EE9J8wjVQSzI53znj4jJNya9iyHigJmkgS
         ae8Du/FdWHObb/+lFl3fcNf0jx13V4DV/a0NQ=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=one-eyed-alien.net; s=google; t=1741741757; x=1742346557; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xJDdXAVhrL9f99RRhy5LbXiFHYkcIyAGrMMKR/vLIKk=;
        b=HvIpLNEJaF//GfzwleuHdOnWoFkNhCjKuYCR5kzw8I+9TalkaiSnJ9xhF3FRz2SsNh
         zcNldjxcBKq001ojJW19KUEelA+F92528iIvjsbH2hzIme7oh4r4rnY4MOrwntubGy+T
         i/jfAlGd0HCNTXYCSVWK/vsGVexjAMzaDczYU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741741757; x=1742346557;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=xJDdXAVhrL9f99RRhy5LbXiFHYkcIyAGrMMKR/vLIKk=;
        b=smzwyQB/p4Vu/FlafP7A6WAfQbJjMS7cVeGvWw16GAD3RHaB9sn5Ypty+4pNM0KNT+
         WNshhZkS1VXXm5D7iKqhlT9om5gujwBIWStzI2TjpCIsYH7XQm4IVcJRJYWSEF6enHkt
         HWpXx5EEpNIaYO+C/TnMGhhcEqTbHeCpq5fOK5TSngXrdLycx/Q7u7cdV3i2u2/41PVj
         JwawJ8yUmQkx5kigg7n3BMZ8TbxaYQAHN/2qH81sx3buQLzvST/oxpf26dv/Ii+ohnkE
         zOYyG8Xs37VorZ5EcQos+302ajii2YwTUTqja3whxvm0ZpjvSLl5VW7/zyS2EjJZYphK
         OXcw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVkBsXPUzp7R4bIHYPgly8p6Z19EiO8RRoZSDOAjULBbrHiW32Jk4uDAh01RkaD3O2mRBkBwg==@lfdr.de
X-Gm-Message-State: AOJu0YzMeUSPuoKsOeTHI4AwJ/CW2jkXIsw4z9HJmbtDsbKH5XFbQlgR
	RrGjUGDgol+VXP27VUuACWdrS9w/SKmh9lk6re7SEqoVjfvlKbnckVqOBhXzM5g=
X-Google-Smtp-Source: AGHT+IHCLnkktMQw9UHKuI73k8oKoYwRhYlc6uFqjJxyu3vQl9VOR0w0NE7icJkB/NgWFAnDvUOukA==
X-Received: by 2002:a05:600c:1548:b0:43c:f81d:34 with SMTP id 5b1f17b1804b1-43d01bdbc0cmr52787065e9.9.1741741756948;
        Tue, 11 Mar 2025 18:09:16 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVHpIZie+aBbk1GnjFhQiGy6qigreQaZtUrsoa5CZPMXgw==
Received: by 2002:a05:600c:358a:b0:43c:fa9f:fbbf with SMTP id
 5b1f17b1804b1-43cfa9ffd63ls12230785e9.0.-pod-prod-01-eu; Tue, 11 Mar 2025
 18:09:14 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXsKxG4QnMny2HQ18QPKCLohcuwUPdb7sS1lm/hXWLD9he+qoKJ9ZapTl4HZ1TiY0RzRaxTu/yUTmwHpw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:3b15:b0:43c:fcbc:9686 with SMTP id 5b1f17b1804b1-43d01bd1cd8mr51574455e9.1.1741741754019;
        Tue, 11 Mar 2025 18:09:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1741741754; cv=none;
        d=google.com; s=arc-20240605;
        b=TvZP0P6+rAENqjL495T1RFSJ/YVcY+3U5uf+RiTSosiQZPsaZBaL6V43RVqOD9zMsS
         vFC4Eybaz6MSjMYQAJG40homrMRawL9MoA5KM46kH8iNLcEl6LGYOq1xdiklhvMgVoUe
         xRcCqOKY8mM0eeHQwdEVwOgRaW7BtXIMW2CjIwgCfDZ6wgjAGk0ztjRA98FV0wb3Eaau
         ZAZGSZfBPoEStOPRCL5l+Ncac/HV/BhgC9JCGn7vhlwizNyoZ23UHcKpRZzaH4/k7JbA
         dwwJOY7vlmCknIzKmXmFAeeMJAD2+ZgllZuvvPK7qQxYvbDEnBMeMgARwVW72QseSrsB
         0MQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=MA1s+CFJcoptHGHTr4whY7uZy+Mb8KOq82ve4XvNd6U=;
        fh=dk6tuQTpphbGLJj0HOoEIGJwkfxZ+YiacEr81WgBS3s=;
        b=WjkMbGMPQB4GEVAKu99uXOE/1K7/eMgG9acMCXEhT0AVoQD7A37xa+BYCMIVusAiot
         fi8x9XbXYQcuu9/sn+pHkPUsSkZO842l83vInyUjKNVcfUFWJ+gPuqtF4otHO8DcKgFh
         VkpP06iZIk3z7JaRmx2e+LD/Tf4kB1J/DXq4iexjLUg2T5RxTt4+SLBfIaPXyYiuufzR
         2/eA8Nu9IQU4clEA1XSwuUU5NT4C2zP52sNNQ+6U3UGF3JzP2azTmQD0vpTYo3OZjk0T
         /Fp5guGV5NyJv5tNyWjwfUy28gTqiLK52sLn2JrBcbElkO9ZDITkTGmmqyjy6GcmLbec
         SU0A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@one-eyed-alien.net header.s=google header.b=JzLJ8uuk;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.41 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 5b1f17b1804b1-43cf1a2ef30sor21553305e9.7.2025.03.11.18.09.13
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 11 Mar 2025 18:09:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCV//gtopuMgDBuCA6WjBJPbNQ5OHmxN0IUZaRmQiRv4W901NxsA9hfDIEUhuB+wnV9omHmODpO/xm8+2Q==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncvCZe9duskyJkgzwp8pl7Nht0igrBKHAJpMYL8dEfGo3mrj3VU3NhoLr5iLz34
	fqoTUovk3p9cAhBNfzySlaT29PiZuWQ9JB+xOkxnvCxAstA0ePUG3/tDT6Ef6/RmZIw6YTmC3jf
	pfOLTvS8q7Og3vPkoqyEVtCkM=
X-Received: by 2002:a05:600c:198e:b0:43c:e478:889 with SMTP id
 5b1f17b1804b1-43d01b85209mr71117685e9.0.1741741753407; Tue, 11 Mar 2025
 18:09:13 -0700 (PDT)
MIME-Version: 1.0
References: <20250311084111.322351-1-daixin_tkzc@163.com> <6a266eb7-0150-43e9-a712-b9e6fe8c71ea@rowland.harvard.edu>
In-Reply-To: <6a266eb7-0150-43e9-a712-b9e6fe8c71ea@rowland.harvard.edu>
From: Matthew Dharm <mdharm-usb@one-eyed-alien.net>
Date: Tue, 11 Mar 2025 18:09:02 -0700
X-Gm-Features: AQ5f1JrKnODlP4cRLeJ-QLQyz0b3tuL4cGZxHXaD9UPY5m6VAbrBbZF7y7QAN1A
Message-ID: <CAA6KcBDjRPjrfQpYYHtqc6tnpFoLz9QAESqkaOLK5Hi1HbpQHw@mail.gmail.com>
Subject: Re: [usb-storage] Re: [PATCH] usb: storage: Fix `us->iobuf` size for
 BOT transmission to prevent memory overflow
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Xin Dai <daixin_tkzc@163.com>, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mdharm-usb@one-eyed-alien.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@one-eyed-alien.net header.s=google header.b=JzLJ8uuk;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates
 209.85.220.41 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net;
       dara=pass header.i=@lists.one-eyed-alien.net
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

On Tue, Mar 11, 2025 at 7:12=E2=80=AFAM Alan Stern <stern@rowland.harvard.e=
du> wrote:
>
> On Tue, Mar 11, 2025 at 04:41:11PM +0800, Xin Dai wrote:
> > When the DWC2 controller detects a packet Babble Error, where a device
> > transmits more data over USB than the host controller anticipates for a
> > transaction. It follows this process:
> >
> There is no risk of memory overflow.  The length of the transfer for the
> CSW is limited to US_BULK_CS_WRAP_LEN, which is 13.  And the length of a
> CBW transfer is limited to US_BULK_CB_WRAP_LEN, which is 31 (or to 32
> if the US_FL_BULK32 quirk flag is set).  Therefore a 64-byte buffer is
> more than enough.

There is no risk of memory overflow *unless* the DWC controller
doesn't respect the buffer length as given in the URB.  If there is an
overflow issue here, it is an issue with the controller level.
Matt


--=20
Matthew Dharm
Former Maintainer, USB Mass Storage driver for Linux

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/CAA6KcBDjRPjrfQpYYHtqc6tnpFoLz9QAESqkaOLK5Hi1Hb=
pQHw%40mail.gmail.com.
