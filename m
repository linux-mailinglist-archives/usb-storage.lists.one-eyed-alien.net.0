Return-Path: <usb-storage+bncBCAONJUNQIGBBPE6S66QMGQE5ZR627Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id D7545A2BEF5
	for <lists+usb-storage@lfdr.de>; Fri,  7 Feb 2025 10:15:44 +0100 (CET)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-2f83e54432dsf6203579a91.2
        for <lists+usb-storage@lfdr.de>; Fri, 07 Feb 2025 01:15:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738919742; cv=pass;
        d=google.com; s=arc-20240605;
        b=DascorEjI//XS+1fz76G2Uy8ZFJbiM77RbmJiGrWc8XJJd+F8sS/NZOI2k7HTtfLM3
         Arc6TJtehibEA4eU0Ym0vIYINGHtoCEnzRJKAT5kZ6WqqVEcPtdyNSXxZ8/eyY5yzA1I
         kSOxXhbk6V3KEakmqTWk2c3Cm0ABodpBqORWF68HLxu8YILa4LD8oCEHNAYiweAMXPQT
         nt/iVBAH4sa3yUKI2fA14D9vO7j6OQnCCrAUjKLfG92v+RDhRLnr/XPdVNCGvl8SHjMr
         Q1orSt2KaZofVbh6u3KFTJI9xlLRC7+AF0uQ1xSOQOKLtZon0FNiUI4DyEr9/m2gTKcN
         y9iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:feedback-id:in-reply-to:autocrypt
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:sender:dkim-signature;
        bh=yC023sWWZLiVOS2znsul0S6sySScn73dqX6TppNcqvc=;
        fh=kTaSkm5xf2RxMNVNBNuF4JOTMjxO8YLuE6UxrOonPPk=;
        b=B7yDIqF875graZE87HxZXGoYYhBRVjfdvth1Kl3FrLwlGxF/bdrQkOZnenk09qVKAA
         JAJN2sYF60i2Haxy7RMphoxGeFGKync2G2KRDvVtNayQvfqfAgdSpReuj7eVVdwfh4Yw
         80U+4bZVrThxjrbuVrKqBgQU7yFICA2bfR81bKAQDicvPeLREp+vK4UPdPJCwv/EoSzT
         hGNLm5F3LlAcvNX5KAcn3XcA/gNUKVxVZgZuwjfkINYwFs+8UJZjeJQe8Z11mWFsCS7n
         FJfBxVC67o4lWYCS2vXYZ9vvn7juQ2qorjyROiFHoh8Zc8Lrnftwxi8HHzJPTE1HTicH
         sTsQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@uniontech.com header.s=onoh2408 header.b=T58RLupV;
       spf=pass (google.com: domain of wangyuli@uniontech.com designates 54.254.200.128 as permitted sender) smtp.mailfrom=wangyuli@uniontech.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=uniontech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1738919742; x=1739524542; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:feedback-id:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=yC023sWWZLiVOS2znsul0S6sySScn73dqX6TppNcqvc=;
        b=kK68oJnI3vennu1vUDar7K9nVt57wl+NPyxxYTCXvvH7V1jxif5YGS6BY6pLk/BOce
         Ovsu6XvsgVz07nqttIG93xBbUo6aEpitXiRxy1QT2apTQ9kkj9/pndEspePYmXdFAHTp
         MYGd4F8OFUXSSmib1+FDUcRSzA4AJUWa74JEU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738919742; x=1739524542;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:feedback-id
         :in-reply-to:autocrypt:from:content-language:references:cc:to
         :subject:user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yC023sWWZLiVOS2znsul0S6sySScn73dqX6TppNcqvc=;
        b=rE597UTYuA85LTQT8y4cQ7zvg0ns+0HShMpFfF10XlVEk6EZlcL3yEKFhVtDuwvDx1
         FQQpigUWnwN/1GvtJ/ijRw5N6bjgsG6+Q0fuEis+Vlz7NTOztOyvVVnDqDBjzgeAKGvF
         mNf5XV/PQaa/W3gbHoKrWlzmpQNw5Fh+1RKF7OxhqcjKXibzokzE9qOh3OxFE3NIOf0s
         OVNsZ9XzYyNMfHX4bM7udwx1y2QKZTkctCkcAc1qpT5zGb/FPClnsciC8C1QKBnwr/5a
         F2nN/11jkkU0UG1edicW3cbGgX/xKjOhFIBauJfg/1Q47o5Bes9nlbLOK396KMesVzzY
         TQ6g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXVuMO3iyENbsEjb8OM8+fO1bOiQJiV+fdyrz+mCPfWzg79zAx+hIuyTlGicLSWmzLYEK0Ejg==@lfdr.de
X-Gm-Message-State: AOJu0YyvkLOo+41J3fuN3O3GULRn37lZX4R5C4AamTDInjIBHhkXQKR4
	FY6DUrFgTUe51IS2zVHQ8qk/NP3er428TxdxLTX3B2NOj5w45zLRj6US9irx9qg=
X-Google-Smtp-Source: AGHT+IG3udomXfd0TG8jASI2Zs3xLv+LStHzLWJTd6NgQQM2OOOs5Q4vdkmHiG3ZKiyc7PfQuTke2g==
X-Received: by 2002:a17:90b:3e8a:b0:2f4:4003:f3d4 with SMTP id 98e67ed59e1d1-2fa243ee6bcmr3818581a91.30.1738919741623;
        Fri, 07 Feb 2025 01:15:41 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:1e4e:b0:2ef:703f:6f3 with SMTP id
 98e67ed59e1d1-2fa20ea39eels936677a91.1.-pod-prod-08-us; Fri, 07 Feb 2025
 01:15:39 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUxlY90tcQC262Zq9jTMdFsEk66cf8I1eS63Quu3a4gKmIsWCgS4NWilnuphXSMhflulhzKanK7VtQo+Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:394c:b0:1e0:cadd:f670 with SMTP id adf61e73a8af0-1ee03a2432amr4371079637.5.1738919738816;
        Fri, 07 Feb 2025 01:15:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738919738; cv=none;
        d=google.com; s=arc-20240605;
        b=j9A5Kl4vkxqqTQiasSxRLceu6Z5iVDxK2ozCoXMx2ir+KHMIiHNLElxxsAC4dvzl/m
         A7roV8RgCVCe7pLYfWfVIjAkIxQAycDZ6HdGxDWoKqQwFNsQ4deXFhAG90Aoa9oODLPL
         9o+m3YTUzsLVJXciQkAebPlLyGtUdfHsAe0l0SURnREHwvM6UwAUmZQYxW+099MwPo66
         EBO3phOt+WcO7qE8LvIEw0USAplJxHMcBEmNuomeczjmfiC+3hMnPOi0JEOnY5wBrQam
         rQrmbdB+z5GLIrDCuOiLS5z3+zcNhf/Pj6y5+WSylOcSgHacaRZdX8us7NDffX2egW15
         1D1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=feedback-id:in-reply-to:autocrypt:from:content-language:references
         :cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=FnhuBKnr3UPx3oDD4aZB2Xgx9ZgtLCLsyYkmUWkUX1s=;
        fh=2ON+I2J0XPXzFf/6jPWOBq53ijffzFXrblXcz8dZVM0=;
        b=REefxc/Dd/yuPFW0Gic/POzBART7NXlPEumqPgz9Flf8V/rywz/37ZK0ulryF4YxQI
         9USo/g1tK1Rd6Vo1zY2CFr8O8/9vVO6yEN74tpsbjJPpRyuDkpMi4LCG1LJiyWKVsYOG
         1POtTwA99n/qNnBRiX3BFzm2ybyxGdZd/dJQ4eQWQDG6MBHS4qllge0x4q6dbTsoqI50
         zAMFLjCifT2bKQCsz4ATdLbSk3BgimsyNvRLszDhUdByDv5EMA2i5Wlqi2I1IJckX2RM
         FOf1V6vRPIus+XBxN6a50/U/lUCMNAPclrpjcs3awaJogUUuLNhs49fMgM6tPuU/fxo/
         i1xA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@uniontech.com header.s=onoh2408 header.b=T58RLupV;
       spf=pass (google.com: domain of wangyuli@uniontech.com designates 54.254.200.128 as permitted sender) smtp.mailfrom=wangyuli@uniontech.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=uniontech.com
Received: from smtpbgsg2.qq.com (smtpbgsg2.qq.com. [54.254.200.128])
        by mx.google.com with ESMTPS id d2e1a72fcca58-73048c01cfcsi4563960b3a.229.2025.02.07.01.15.38
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Feb 2025 01:15:38 -0800 (PST)
Received-SPF: pass (google.com: domain of wangyuli@uniontech.com designates 54.254.200.128 as permitted sender) client-ip=54.254.200.128;
X-QQ-mid: bizesmtpip3t1738919714tejrn72
X-QQ-Originating-IP: QwTkD2YBFi5SRxw8p9iahH0GQ7wR1HvLJWHQR4jQhG8=
Received: from [IPV6:240e:668:120a::253:10f] ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 07 Feb 2025 17:15:13 +0800 (CST)
X-QQ-SSF: 0002000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 12361163828868944340
Message-ID: <137902FEE03CCB3B+6130227f-9ddc-4043-9945-da465c28d9d1@uniontech.com>
Date: Fri, 7 Feb 2025 17:15:12 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] usb-storage: Bypass certain SCSI commands
 on disks with "use_192_bytes_for_3f" attribute
To: Alan Stern <stern@rowland.harvard.edu>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
 zhanjun@uniontech.com, guanwentao@uniontech.com, chenlinxuan@uniontech.com,
 Xinwei Zhou <zhouxinwei@uniontech.com>, Xu Rao <raoxu@uniontech.com>,
 Yujing Ming <mingyujing@uniontech.com>
References: <AC1BB7F0327EFB9C+20250206054107.9085-1-wangyuli@uniontech.com>
 <80ef917b-3680-4f85-93ba-c92d2b69ebaa@rowland.harvard.edu>
Content-Language: en-US
From: WangYuli <wangyuli@uniontech.com>
Autocrypt: addr=wangyuli@uniontech.com; keydata=
 xjMEZoEsiBYJKwYBBAHaRw8BAQdAyDPzcbPnchbIhweThfNK1tg1imM+5kgDBJSKP+nX39DN
 IVdhbmdZdWxpIDx3YW5neXVsaUB1bmlvbnRlY2guY29tPsKJBBMWCAAxFiEEa1GMzYeuKPkg
 qDuvxdofMEb0C+4FAmaBLIgCGwMECwkIBwUVCAkKCwUWAgMBAAAKCRDF2h8wRvQL7g0UAQCH
 3mrGM0HzOaARhBeA/Q3AIVfhS010a0MZmPTRGVfPbwD/SrncJwwPAL4GiLPEC4XssV6FPUAY
 0rA68eNNI9cJLArOOARmgSyJEgorBgEEAZdVAQUBAQdA88W4CTLDD9fKwW9PB5yurCNdWNS7
 VTL0dvPDofBTjFYDAQgHwngEGBYIACAWIQRrUYzNh64o+SCoO6/F2h8wRvQL7gUCZoEsiQIb
 DAAKCRDF2h8wRvQL7sKvAP4mBvm7Zn1OUjFViwkma8IGRGosXAvMUFyOHVcl1RTgFQEAuJkU
 o9ERi7qS/hbUdUgtitI89efbY0TVetgDsyeQiwU=
In-Reply-To: <80ef917b-3680-4f85-93ba-c92d2b69ebaa@rowland.harvard.edu>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wYi0xWPVNlgKOarWw2xg8X0O"
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:uniontech.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: N6q0R5dJw6D8wj24iitX/5VlCG69hTV0dNnZol/banBj3ZDNAz/OZULh
	VZAXXOhrS+VAJEsjHOUFGoR/3og881BJhB2ABiMH0N9kbsRDXHg0VAQJ8Kt9LReZUiUS10G
	VOYBYH2xlsml1loyvVszhYJMfNRRKJwnf7EN1gSylDlO/8jGcgYa/SzAJCSTiFfBB0cVuyW
	o3g172TZzJI5Py+9332EEjw1ZZVqx8q1wYsO3/X2MxjJ33Wzw33h+TXw1WbswRsQKkDo8oL
	lVJr6ZLRad3evmkYzD9DgZOJXwfJWibOgnvuahYBU1/Czhr7kICXhhpw11Q1fht3z7ICXuV
	svv0vPylkZi9OySZm3GQfrfT4D5Xh0WbrcTIoWq++lb/jHQZoDF5WyH59KkygIx4jhZ1nfw
	z6ZpFj3dDbWaTM4D1UDeFaqjMNV9KQPwThmVvIkMBdYP7E3eY9Hs9TZ+kZxCbdJzC4kVXX6
	ZaBxl1VhMz/zQyV/Aw/3BkMGK5Uw+KW6SmFmP0mdmpP7H1RFAwiFcxqBsWnU2D4hGnvsvHX
	48Cufs8MkAhG83Gu4hRlDPwZBVc/hrXK4y4gz+FLztEW3k/uhx4yWPofCUo3nnh9rVYYV8j
	6pITGPSJUcYmCeRn8T9ENXs5Lxb+4lgninZM1RbCVSEb/BN+Au7wd5osyLRsrOXGoLCvf6h
	Czdk77VLWcmJ0PCoMxrrLHI1vFz1YLLi1kQkS63c3BVAyyEmoohvFj9XdZi+Lrfx9DwuVgh
	5zU32JuCEYrNTUqOXonH4iSXUDOuTtfCQkG5m/Fhxq2jf4nReWQhWkFCCq9kXQrTURha77P
	BdfuK16AvWkC7tIHn7FdNvJpcWgWLx8a7I1wqrLskKBo2dlzELUAoL8BIl+Iam034AzLvEO
	6v+ftlSrZetaUfXPT8RWDhtiMiwD9xrabgLpdAboPVl4jWwvRXZalla7QRZo4yg4zuFvfZV
	UAT00D83dCZldXNQRxtkdtEaDZGSUaQhcpWNaJdsVjqC1AjdFkqyatqCHuBHOWr2JQG5q13
	IjepFlkX03TrKqS7GBByYMalFn1grbhOA3u0EyS3wOKZ5M2JslypDxauwf6OSQ1f5BUfoYY
	a2CcN9XBnsaT8djJ78HWTnSlUrt019dUrdFzM9OtF0wWdcHc7g59Sc=
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0
X-Original-Sender: wangyuli@uniontech.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@uniontech.com header.s=onoh2408 header.b=T58RLupV;       spf=pass
 (google.com: domain of wangyuli@uniontech.com designates 54.254.200.128 as
 permitted sender) smtp.mailfrom=wangyuli@uniontech.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=uniontech.com
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

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------wYi0xWPVNlgKOarWw2xg8X0O
Content-Type: multipart/mixed; boundary="------------00DVJbwb2kF9isK0Tmh6IUcl";
 protected-headers="v1"
From: WangYuli <wangyuli@uniontech.com>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
 zhanjun@uniontech.com, guanwentao@uniontech.com, chenlinxuan@uniontech.com,
 Xinwei Zhou <zhouxinwei@uniontech.com>, Xu Rao <raoxu@uniontech.com>,
 Yujing Ming <mingyujing@uniontech.com>
Message-ID: <6130227f-9ddc-4043-9945-da465c28d9d1@uniontech.com>
Subject: Re: [PATCH] usb-storage: Bypass certain SCSI commands on disks with
 "use_192_bytes_for_3f" attribute
References: <AC1BB7F0327EFB9C+20250206054107.9085-1-wangyuli@uniontech.com>
 <80ef917b-3680-4f85-93ba-c92d2b69ebaa@rowland.harvard.edu>
In-Reply-To: <80ef917b-3680-4f85-93ba-c92d2b69ebaa@rowland.harvard.edu>

--------------00DVJbwb2kF9isK0Tmh6IUcl
Content-Type: multipart/mixed; boundary="------------a7R0l3PzP40LN4cwqAJBJShb"

--------------a7R0l3PzP40LN4cwqAJBJShb
Content-Type: multipart/alternative;
 boundary="------------RcICTjQaqUL3ygfZqerEMV2G"

--------------RcICTjQaqUL3ygfZqerEMV2G
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable


On 2025/2/6 22:58, Alan Stern wrote:
> Is usb-storage really the right place to put this test?  Wouldn't it
> be better to put it in the SCSI layer where the ioctl is converted to
> a SCSI command?  That way it would affect all SCSI devices with the
> use_192_bytes_for_3f flag, not just USB devices.
Yes, yes...=20
This=C2=A0problem=C2=A0may=C2=A0occur=C2=A0not=C2=A0only=C2=A0in=C2=A0USB=
=C2=A0devices.=C2=A0It=C2=A0is=C2=A0more=C2=A0appropriate=C2=A0to=C2=A0modi=
fy=C2=A0it=C2=A0at=C2=A0the=C2=A0SCSI=C2=A0layer.=C2=A0I'll=20
send the patch v2 soon.
>
> Also, instead of making the command fail completely, wouldn't it be
> better to change the transfer length to 192 if the original value was
> larger?

But I personally think that it is not appropriate to modify it directly=20
to 192. After all, it is called by the user through ioctl, and the=20
kernel itself will not construct such a data frame. As shown in the=20
following code:

sd_read_write_protect_flag(struct=C2=A0scsi_disk=C2=A0*sdkp,=C2=A0unsigned=
=C2=A0char=C2=A0*buffer)
 =C2=A0=C2=A0=C2=A0=C2=A0 {
 =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int=C2=A0res=
;
 =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct=C2=A0=
scsi_device=C2=A0*sdp=C2=A0=3D=C2=A0sdkp->device;
 =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct=C2=A0=
scsi_mode_data=C2=A0data;
 =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int=C2=A0old=
_wp=C2=A0=3D=C2=A0sdkp->write_prot;

 =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 set_disk_ro(=
sdkp->disk,=C2=A00);
 =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=C2=A0(sdp=
->skip_ms_page_3f)=C2=A0{
sd_first_printk(KERN_NOTICE,=C2=A0sdkp,=C2=A0"Assuming=C2=A0Write=C2=A0Enab=
led\n");
 =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return;
 =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }

 =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=C2=A0(sdp=
->use_192_bytes_for_3f)=C2=A0{
res=C2=A0=3D=C2=A0sd_do_mode_sense(sdp,=C2=A00,=C2=A00x3F,=C2=A0buffer,=C2=
=A0192,=C2=A0&data,=C2=A0NULL);

>
--=20
WangYuli

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/137902FEE03CCB3B%2B6130227f-9ddc-4043-9945-da46=
5c28d9d1%40uniontech.com.

--------------RcICTjQaqUL3ygfZqerEMV2G
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 2025/2/6 22:58, Alan Stern wrote:<spa=
n
      style=3D"white-space: pre-wrap">
</span></div>
    <blockquote type=3D"cite"
cite=3D"mid:80ef917b-3680-4f85-93ba-c92d2b69ebaa@rowland.harvard.edu">
      <pre wrap=3D"" class=3D"moz-quote-pre">Is usb-storage really the righ=
t place to put this test?  Wouldn't it
be better to put it in the SCSI layer where the ioctl is converted to
a SCSI command?  That way it would affect all SCSI devices with the
use_192_bytes_for_3f flag, not just USB devices.</pre>
    </blockquote>
    Yes, yes...
This=C2=A0problem=C2=A0may=C2=A0occur=C2=A0not=C2=A0only=C2=A0in=C2=A0USB=
=C2=A0devices.=C2=A0It=C2=A0is=C2=A0more=C2=A0appropriate=C2=A0to=C2=A0modi=
fy=C2=A0it=C2=A0at=C2=A0the=C2=A0SCSI=C2=A0layer.=C2=A0I'll
    send the patch v2 soon.<br>
    <blockquote type=3D"cite"
cite=3D"mid:80ef917b-3680-4f85-93ba-c92d2b69ebaa@rowland.harvard.edu">
      <pre wrap=3D"" class=3D"moz-quote-pre">

Also, instead of making the command fail completely, wouldn't it be
better to change the transfer length to 192 if the original value was
larger?
</pre>
    </blockquote>
    <p>But I personally think that it is not appropriate to modify it
      directly to 192. After all, it is called by the user through
      ioctl, and the kernel itself will not construct such a data frame.
      As shown in the following code:</p>
    <p>=C2=A0=C2=A0=C2=A0
sd_read_write_protect_flag(struct=C2=A0scsi_disk=C2=A0*sdkp,=C2=A0unsigned=
=C2=A0char=C2=A0*buffer)<br>
      =C2=A0=C2=A0=C2=A0=C2=A0 {<br>
      =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int=C2=
=A0res;<br>
      =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct=
=C2=A0scsi_device=C2=A0*sdp=C2=A0=3D=C2=A0sdkp-&gt;device;=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<br>
      =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct=
=C2=A0scsi_mode_data=C2=A0data;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<br>
      =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int=C2=
=A0old_wp=C2=A0=3D=C2=A0sdkp-&gt;write_prot;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0<br>
      =C2=A0=C2=A0=C2=A0 <br>
      =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 set_dis=
k_ro(sdkp-&gt;disk,=C2=A00);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<br>
      =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=C2=
=A0(sdp-&gt;skip_ms_page_3f)=C2=A0{=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<br>
      =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
      sd_first_printk(KERN_NOTICE,=C2=A0sdkp,=C2=A0"Assuming=C2=A0Write=C2=
=A0Enabled\n");<br>
      =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return;<br>
      =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }<br>
      <br>
      =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=C2=
=A0(sdp-&gt;use_192_bytes_for_3f)=C2=A0{=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<br>
      =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
      res=C2=A0=3D=C2=A0sd_do_mode_sense(sdp,=C2=A00,=C2=A00x3F,=C2=A0buffe=
r,=C2=A0192,=C2=A0&amp;data,=C2=A0NULL);</p>
    <blockquote type=3D"cite"
cite=3D"mid:80ef917b-3680-4f85-93ba-c92d2b69ebaa@rowland.harvard.edu">
      <pre wrap=3D"" class=3D"moz-quote-pre">

</pre>
    </blockquote>
    <div class=3D"moz-signature">-- <br>
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
      WangYuli</div>
  </body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion visit <a href=3D"https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/137902FEE03CCB3B%2B6130227f-9ddc-404=
3-9945-da465c28d9d1%40uniontech.com?utm_medium=3Demail&utm_source=3Dfooter"=
>https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1=
37902FEE03CCB3B%2B6130227f-9ddc-4043-9945-da465c28d9d1%40uniontech.com</a>.=
<br />

--------------RcICTjQaqUL3ygfZqerEMV2G--

--------------a7R0l3PzP40LN4cwqAJBJShb
Content-Type: application/pgp-keys; name="OpenPGP_0xC5DA1F3046F40BEE.asc"
Content-Disposition: attachment; filename="OpenPGP_0xC5DA1F3046F40BEE.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

xjMEZoEsiBYJKwYBBAHaRw8BAQdAyDPzcbPnchbIhweThfNK1tg1imM+5kgDBJSK
P+nX39DNIVdhbmdZdWxpIDx3YW5neXVsaUB1bmlvbnRlY2guY29tPsKJBBMWCAAx
FiEEa1GMzYeuKPkgqDuvxdofMEb0C+4FAmaBLIgCGwMECwkIBwUVCAkKCwUWAgMB
AAAKCRDF2h8wRvQL7g0UAQCH3mrGM0HzOaARhBeA/Q3AIVfhS010a0MZmPTRGVfP
bwD/SrncJwwPAL4GiLPEC4XssV6FPUAY0rA68eNNI9cJLArOOARmgSyJEgorBgEE
AZdVAQUBAQdA88W4CTLDD9fKwW9PB5yurCNdWNS7VTL0dvPDofBTjFYDAQgHwngE
GBYIACAWIQRrUYzNh64o+SCoO6/F2h8wRvQL7gUCZoEsiQIbDAAKCRDF2h8wRvQL
7sKvAP4mBvm7Zn1OUjFViwkma8IGRGosXAvMUFyOHVcl1RTgFQEAuJkUo9ERi7qS
/hbUdUgtitI89efbY0TVetgDsyeQiwU=3D
=3DBlkq
-----END PGP PUBLIC KEY BLOCK-----

--------------a7R0l3PzP40LN4cwqAJBJShb--

--------------00DVJbwb2kF9isK0Tmh6IUcl--

--------------wYi0xWPVNlgKOarWw2xg8X0O
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQRrUYzNh64o+SCoO6/F2h8wRvQL7gUCZ6XPIAUDAAAAAAAKCRDF2h8wRvQL7iHf
AP47oSDImC+cCEm7asNUy/AYRN3XmrIAKY0gbbjtCNlwRQEAkQ+bhqk2D9IMB/KrI7LEkGxR2ts9
bsbrwzoIY4DudgM=
=19Zz
-----END PGP SIGNATURE-----

--------------wYi0xWPVNlgKOarWw2xg8X0O--
