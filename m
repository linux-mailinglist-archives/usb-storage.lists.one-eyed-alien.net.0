Return-Path: <usb-storage+bncBCVNPMX3XYOBBBEF6XCAMGQEEK6HQDQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5D1B25950
	for <lists+usb-storage@lfdr.de>; Thu, 14 Aug 2025 03:57:26 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-24457ef983fsf7835985ad.0
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 18:57:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755136645; cv=pass;
        d=google.com; s=arc-20240605;
        b=UApmzE6mHOmpegFVLb+HNG+kwzIXnB3ru0C1DWFzN2C0TGiKF6PTFmKWWuO5TG/sKQ
         sNFrnx9e8YqGSL+x5jTztZjKoRb1cuqxg27LOQAX8rAXqucycSNl6twa340rOKB/BBG6
         Fxp9eEHGrmMAEfs3njzoJXl4AXdG8wiYLSFhD6cFgRUu8rVVAQwannpG+teIywREw6y6
         yqyRqfpyZkLFd+tkyqgmLe1Jz5a0pybjRBLagcYvQ5tIeeuVy5k1zbLWus7m+CrMC01A
         oXSBcr5XKCubz+T9IemfX0I0Er2HhRGN8DZRpQa2MoJY3E2b1d2ouFU6lGFx8SvkNvdo
         k8kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=pM0mWI1Drnf9XpG+puGU2WLebokvV1q+shiLoTofTD4=;
        fh=auAEeNgUVGI3jsP1w2bX2Ygi1Rsa+pPXo1atgFmiw2U=;
        b=CvBt5Z8bpSEcsjAiqmu1iXoa132fjCJ8AczY0vNF1aPtvKp80wrnF8V35mdbUxEHI9
         DT/0yOtsUHVIG/nzY699rDvUL41ekHTbmXlNhV7Y1p9hghsrXkGHYjsSMU3VAfF0xSjt
         refe5RpKsavFOeXUDBTS+Gi+A8UzVm15vvpXAN36DC3lEL0jhtW26vao1Clc8jiYWU6z
         5GNTEZ0xZwa2FvxxqMD+7JjzqSEJs8pdIy+lsqfDZ1MiWGs6NXYIHJNQFI/PKwTB1U6e
         ywi/sR/chLiYkvP0ZSkRaslcbowWVzhyoYxTPm2XfOgWmPXW7x5BFyyk7UINj9BeAthg
         crog==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=hFO8u+i6;
       spf=pass (google.com: domain of larsm17@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=larsm17@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755136645; x=1755741445; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=pM0mWI1Drnf9XpG+puGU2WLebokvV1q+shiLoTofTD4=;
        b=G61BLjGmjDJ1mRqJEbO9gEdcIKbY4VtaM593OFcye3Y6f8cBy2Br+YGFlVKqUJwrNl
         M9+7vsK10zBc06R7cbSawd09/wEHPAHRadrTrYNc6UCfOBo1fO2Xak8qTmiq751FE+Qq
         hMmhrgHjYDcQNLSCIrTpJEa7rkwHpV+f1pg+I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755136645; x=1755741445;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pM0mWI1Drnf9XpG+puGU2WLebokvV1q+shiLoTofTD4=;
        b=jl8TLfMtlZyrsbDRzGGepXjg5xJ5PRSomeTpR0oKjz8axlpBD2OWMaW8hKtp7dwhFT
         28EoEwezxT+DjmEqrEvM12iaKaEYGEtdCEIZVC4mhxx4KMEguedQ56NIJVPypc01PznY
         viHDe5U3tK3cNcaSlxFTVYjRzB5d6S3Ixtbpa75gYxU+qh7GxeIHIB2eOLve0GF5/fpw
         9N2USIjOfaZGRee61kIiHC6oMjiPXgH6CjiMaYLrMpAtvfrny+w82wUlf4pSHJsHhR+s
         SSj5cITtoiub1PI+5dq1pBwOA6c6oXgZid36PuZU54h0pnSvxPJLJNrS2Y+O/FjZQuZ2
         Tquw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUpf6tAFZxQe+KVwkabEy9I1s6krupBx9OH1rS0dPjz8DzqYP4K/Vp0arxfo1OcNuqDAeXSVQ==@lfdr.de
X-Gm-Message-State: AOJu0YzFTClBmodrVlJlRi5qhvQzfCzExif3oV5TBqY/b3tbr1u+6q0w
	27JytzJtl7qRfTWmZhZeEcQ6yyj72jucMZLL2zvJSxxNHQEdlCvNr0DKMAMQyWiJM1I=
X-Google-Smtp-Source: AGHT+IHwXgOwlYxD85FuqAuQaQ6YrhqGDNDvs1rP2BGysD2ijA91kVLCVA9dHzOFF1E1grV/IGBIiw==
X-Received: by 2002:a17:902:f691:b0:240:80f:a4b6 with SMTP id d9443c01a7336-244584b49c4mr15966235ad.4.1755136645199;
        Wed, 13 Aug 2025 18:57:25 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZc13bssBt/G6oqbRQKHMagf2svgtLQjY/phTO+jeKTXXw==
Received: by 2002:a17:903:40cb:b0:23f:ed15:442b with SMTP id
 d9443c01a7336-2445741983cls4598565ad.0.-pod-prod-06-us; Wed, 13 Aug 2025
 18:57:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU6CkPgpzZYePQJ095qQzNVMquQmKDkEw96nCRpYk1IjTNZn2nSePfA9fzTGFRSIY1qIqQy4czM3xvEZw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:22c4:b0:240:4fbf:cd29 with SMTP id d9443c01a7336-244584dc1a9mr14232935ad.18.1755136643707;
        Wed, 13 Aug 2025 18:57:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755136643; cv=none;
        d=google.com; s=arc-20240605;
        b=CWgsWHoS6NjwpRAUPjldQpewpHY56LXmtocEueRAKHYeeGrIxk40Q2qPnVdAiV4mUN
         llgrkPmRSGja+Iq2/iuOO/6jEJ65WVl3dxlKKIpW0WE6yMV27EnMV8Q3yhGeikghsN4V
         7oA1OZzvDL6s1Ee5EYRUhKHOIFFsoxU+pi1yMf0GoWcA3pb/c2ysLnlC7rpYP497EYPr
         YjMiXXt7MRrPJh0+CMj7gW5oPONYAfCxKp0rk7xooAmdBt00/F4Y15PbdQ+Hz+IA4rEv
         2wxQ8LAraIPVNydKvVX9Th3QPO8eJX9VWktK7wpTT+Iz7ww3GHDD5MulAkxMIA0Vz7UL
         TGsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=y+kWqLLyePNycR+JiNLWQPriOMjue0Fgv8ycdj0wX2A=;
        fh=f+K0DJBQuau41N3TllcONM2OM/zm1qmjzi500111AZg=;
        b=OFYzRqhTqpSBCT/PflzniF4GAz5Rt22U0mzNOhSUHb46RmaIcNSPZkfTqzBUDoitPu
         rB4sQ6WYTv1p8s4jkFddlniCcF+5EqcXGt34kpN7gIv469Wpg+Mb0O8aMxZ2F+zQ7NjQ
         QG8aNm+1xsP9uggMRMlcSGl9sGpwKQvnW3DIa2f9UGCUfyEFvUbyFJKcOAT31/moXcG0
         a56WfWIdsmHAXthEz+YDvELA+etfM4y89tzIl3BjTgHh6QzMux0WvidMq3ZGHNurhI0a
         QpVUbBlQWdYvX5dSSi8UYvNpHHdwgTajgNrODVK90DjQp/Af2Ff5fUKg7Dabz7R28N0v
         KB0Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=hFO8u+i6;
       spf=pass (google.com: domain of larsm17@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=larsm17@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 41be03b00d2f7-b46ff70514fsor1228067a12.1.2025.08.13.18.57.23
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 13 Aug 2025 18:57:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of larsm17@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWgNMsCwQHsw/O55dE3izpeGtd24YVmPL4Z8LWF+mYt675Ami/HG2LlDdO+1uFaZS/qTFLIy+RX03dPkw==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncvEEU5gu+/JHwuaux+u4KDUfsgCxS8grmQyWsl3MnpoGunNP/pq0Hsc8CRmovc
	lz9yneSa9VMoi+MZcupythcmZUA12wm5s7NwigpCQ0C3waeAD3F9fSnjdFmeVGc3ezq+CX6wMKb
	m8o4MM4lFsGGwoYDm9Wy6ypo3+WMl2jD31yUUd6+CFIs6o6tWxhrGWuZ+Q5twTLKcyrJNYICXSz
	1n/aTZBsOpIaCeqc/x1i2EG9IArwruY/G6nS8ZZ+xw/lgDiSI5hpgwKir8OlT21zFbA9CB2MJu+
	sml9/fg7LXg3TNXd20VQztKbe9sProIbAYGVjYXPij5JpaYJvGsNxUlUiKJCm+qO55g6tG577OP
	NKmK97ptSLuJgL0nOR3uaFWxzfFyDYes=
X-Received: by 2002:a05:6a20:734f:b0:240:25cf:8548 with SMTP id adf61e73a8af0-240bd296dccmr784167637.6.1755136642967;
        Wed, 13 Aug 2025 18:57:22 -0700 (PDT)
Received: from [192.168.1.7] ([110.78.157.89])
        by smtp.googlemail.com with ESMTPSA id 41be03b00d2f7-b435a19a01asm10970743a12.17.2025.08.13.18.57.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 18:57:22 -0700 (PDT)
Message-ID: <8e9066d4-1b04-4423-869d-2bac0a3385a2@gmail.com>
Date: Thu, 14 Aug 2025 08:57:16 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] USB: storage: Ignore driver CD mode for
 Realtek multi-mode Wi-Fi dongles
To: Zenm Chen <zenmchen@gmail.com>, stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, pkshih@realtek.com, rtl8821cerfe2@gmail.com,
 stable@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 usbwifi2024@gmail.com
References: <03d4c721-f96d-4ace-b01e-c7adef150209@rowland.harvard.edu>
 <20250813225417.4792-1-zenmchen@gmail.com>
Content-Language: en-US
From: Lars Melin <larsm17@gmail.com>
In-Reply-To: <20250813225417.4792-1-zenmchen@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: larsm17@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=hFO8u+i6;       spf=pass
 (google.com: domain of larsm17@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=larsm17@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
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

On 2025-08-14 05:54, Zenm Chen wrote:
> Alan Stern <stern@rowland.harvard.edu> =E6=96=BC 2025=E5=B9=B48=E6=9C=881=
4=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8A=E5=8D=882:19=E5=AF=AB=E9=81=93=EF=
=BC=9A
>>
>> On Thu, Aug 14, 2025 at 01:53:12AM +0800, Zenm Chen wrote:
>>> Alan Stern <stern@rowland.harvard.edu> =E6=96=BC 2025=E5=B9=B48=E6=9C=
=8814=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8A=E5=8D=8812:58=E5=AF=AB=E9=81=93=
=EF=BC=9A
>>>>
>>>> On Thu, Aug 14, 2025 at 12:24:15AM +0800, Zenm Chen wrote:
>>>>> Many Realtek USB Wi-Fi dongles released in recent years have two mode=
s:
>>>>> one is driver CD mode which has Windows driver onboard, another one i=
s
>>>>> Wi-Fi mode. Add the US_FL_IGNORE_DEVICE quirk for these multi-mode de=
vices.
>>>>> Otherwise, usb_modeswitch may fail to switch them to Wi-Fi mode.
>>>>
>>>> There are several other entries like this already in the unusual_devs.=
h
>>>> file.  But I wonder if we really still need them.  Shouldn't the
>>>> usb_modeswitch program be smart enough by now to know how to handle
>>>> these things?
>>>
>>> Hi Alan,
>>>
>>> Thanks for your review and reply.
>>>
>>> Without this patch applied, usb_modeswitch cannot switch my Mercury MW3=
10UH
>>> into Wi-Fi mode [1].
>>
>> Don't post a link to a video; it's not very helpful.  Instead, copy the
>> output from the usb_modeswitch program and include it in an email
>> message.
>=20
> Sorry about that.
>=20
>>
>>> I also ran into a similar problem like [2] with D-Link
>>> AX9U, so I believe this patch is needed.
>>
>> Maybe it is and maybe not.  It depends on where the underlying problem
>> is.  If the problem is in the device then yes, the patch probably is
>> needed.  But if the problem is in usb_modeswitch then the patch probably
>> is not needed.
>>
>>>> In theory, someone might want to access the Windows driver on the
>>>> emulated CD.  With this quirk, they wouldn't be able to.
>>>>
>>>
>>> Actually an emulated CD doesn't appear when I insert these 2 Wi-Fi dong=
les into
>>> my Linux PC, so users cannot access that Windows driver even if this pa=
tch is not
>>> applied.
>>
>> What does happen when you insert the WiFi dongle?  That is, what
>> messages appear in the dmesg log?
>=20
> OS: Arch Linux
> Kernel version: 6.15.9-arch1-1
>=20
> These are the messages shown in the kernel log when the dongles were inse=
rted.
>=20
> Mercury MW310UH:
> [ 4405.000985] usb 3-2: new high-speed USB device number 31 using ehci-pc=
i
> [ 4405.126736] usb 3-2: New USB device found, idVendor=3D0bda, idProduct=
=3Da192, bcdDevice=3D 2.00
> [ 4405.126750] usb 3-2: New USB device strings: Mfr=3D1, Product=3D2, Ser=
ialNumber=3D0
> [ 4405.126756] usb 3-2: Product: DISK
> [ 4405.126760] usb 3-2: Manufacturer: Realtek
> [ 4405.127200] usb-storage 3-2:1.0: USB Mass Storage device detected
> [ 4405.127632] scsi host8: usb-storage 3-2:1.0
> [ 4406.155867] scsi 8:0:0:0: CD-ROM            Realtek  USB Disk autorun =
1.00 PQ: 0 ANSI: 0 CCS
> [ 4406.164982] sr 8:0:0:0: [sr0] scsi-1 drive
> [ 4406.169602] sr 8:0:0:0: [sr0] Hmm, seems the drive doesn't support mul=
tisession CD's
> [ 4406.282981] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4406.530027] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4406.776991] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4407.023992] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4407.263927] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4407.510987] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4407.757988] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4408.004967] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4408.244989] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4408.491971] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4408.738973] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4408.985967] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4409.225847] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4409.473012] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4409.719978] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4409.966958] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4410.206962] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4410.453952] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4410.700965] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4410.947959] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4411.187950] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4411.434956] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4411.681959] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4411.928970] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4412.054904] sr 8:0:0:0: Attached scsi CD-ROM sr0
> [ 4412.055122] sr 8:0:0:0: Attached scsi generic sg3 type 5
> [ 4412.168955] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4412.416956] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4412.663960] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4412.910947] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4413.150951] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4413.397994] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4413.645959] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4413.892990] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4414.133942] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4414.380798] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4414.621191] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4414.867934] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4415.117949] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4415.364797] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
>=20
> ... Countless "usb 3-2: reset high-speed USB device number 31 using ehci-=
pci" appearred here.
>=20
> [ 4854.437661] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4854.684646] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4856.951643] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4857.198641] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4857.445642] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4857.692644] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4859.959629] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4860.207512] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4860.454675] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4860.701628] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4862.968616] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4863.215613] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4863.462670] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4863.709608] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4865.975479] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4866.224610] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4866.471590] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4866.718605] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4868.983453] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4869.230624] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4869.477582] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
> [ 4869.724579] usb 3-2: reset high-speed USB device number 31 using ehci-=
pci
>=20
>=20
>=20
> D-Link AX9U:
> [ 6400.069566] usb 3-2: new high-speed USB device number 38 using ehci-pc=
i
> [ 6400.195236] usb 3-2: New USB device found, idVendor=3D0bda, idProduct=
=3D1a2b, bcdDevice=3D 0.00
> [ 6400.195250] usb 3-2: New USB device strings: Mfr=3D1, Product=3D2, Ser=
ialNumber=3D0
> [ 6400.195256] usb 3-2: Product: DISK
> [ 6400.195261] usb 3-2: Manufacturer: Realtek
> [ 6400.197475] usb-storage 3-2:1.0: USB Mass Storage device detected
> [ 6400.197768] scsi host8: usb-storage 3-2:1.0
> [ 6401.481648] scsi 8:0:0:0: CD-ROM            RTK      Driver Storage   =
2.04 PQ: 0 ANSI: 0 CCS
> [ 6401.483955] sr 8:0:0:0: [sr0] scsi3-mmc drive: 0x/0x caddy
> [ 6401.487626] sr 8:0:0:0: Attached scsi CD-ROM sr0
> [ 6401.487828] sr 8:0:0:0: Attached scsi generic sg3 type 5
> [ 6432.007456] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6462.723317] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6493.447105] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6524.163962] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6554.882745] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6565.190684] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6595.846508] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6626.562333] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6657.283170] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6688.002984] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6718.721814] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6749.445506] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6759.549662] INFO: task (udev-worker):2838 blocked for more than 122 se=
conds.
> [ 6759.549677]       Not tainted 6.15.9-arch1-1 #1
> [ 6759.549682] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disable=
s this message.
> [ 6759.549685] task:(udev-worker)   state:D stack:0     pid:2838  tgid:28=
38  ppid:329    task_flags:0x400140 flags:0x00004002
> [ 6759.549697] Call Trace:
> [ 6759.549701]  <TASK>
> [ 6759.549709]  __schedule+0x409/0x1330
> [ 6759.549727]  schedule+0x27/0xd0
> [ 6759.549735]  schedule_preempt_disabled+0x15/0x30
> [ 6759.549743]  __mutex_lock.constprop.0+0x481/0x880
> [ 6759.549754]  ? __pfx_blkdev_open+0x10/0x10
> [ 6759.549763]  bdev_open+0x2a0/0x3d0
> [ 6759.549771]  ? __pfx_blkdev_open+0x10/0x10
> [ 6759.549777]  blkdev_open+0xa5/0x100
> [ 6759.549785]  do_dentry_open+0x170/0x5d0
> [ 6759.549794]  vfs_open+0x30/0x100
> [ 6759.549804]  path_openat+0x717/0x1300
> [ 6759.549813]  ? path_openat+0x98c/0x1300
> [ 6759.549821]  do_filp_open+0xd8/0x180
> [ 6759.549834]  do_sys_openat2+0x88/0xe0
> [ 6759.549841]  __x64_sys_openat+0x61/0xa0
> [ 6759.549847]  do_syscall_64+0x7b/0x810
> [ 6759.549856]  ? do_syscall_64+0x87/0x810
> [ 6759.549863]  ? do_syscall_64+0x87/0x810
> [ 6759.549869]  ? set_pte_range+0xe2/0x200
> [ 6759.549879]  ? set_ptes.isra.0+0x36/0x80
> [ 6759.549886]  ? finish_fault+0x22f/0x460
> [ 6759.549895]  ? do_fault+0x3a7/0x5b0
> [ 6759.549903]  ? ___pte_offset_map+0x1b/0x180
> [ 6759.549912]  ? __handle_mm_fault+0x7de/0xfd0
> [ 6759.549918]  ? do_epoll_ctl+0xa80/0xdd0
> [ 6759.549926]  ? __count_memcg_events+0xb0/0x150
> [ 6759.549934]  ? count_memcg_events.constprop.0+0x1a/0x30
> [ 6759.549941]  ? handle_mm_fault+0x1d2/0x2d0
> [ 6759.549948]  ? do_user_addr_fault+0x181/0x690
> [ 6759.549957]  ? irqentry_exit_to_user_mode+0x2c/0x1b0
> [ 6759.549966]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [ 6759.549974] RIP: 0033:0x7fc19fe931ce
> [ 6759.549995] RSP: 002b:00007ffe87a741b0 EFLAGS: 00000202 ORIG_RAX: 0000=
000000000101
> [ 6759.550003] RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007fc19=
fe931ce
> [ 6759.550008] RDX: 0000000000080900 RSI: 00007ffe87a74270 RDI: fffffffff=
fffff9c
> [ 6759.550012] RBP: 00007ffe87a741c0 R08: 0000000000000000 R09: 000000000=
0000000
> [ 6759.550017] R10: 0000000000000000 R11: 0000000000000202 R12: 000055eaf=
18c4470
> [ 6759.550021] R13: 00007ffe87a74500 R14: 0000000000080900 R15: 000000000=
0000015
> [ 6759.550030]  </TASK>
> [ 6759.550054] INFO: task (udev-worker):2838 is blocked on a mutex likely=
 owned by task udisksd:706.
> [ 6759.550059] task:udisksd         state:D stack:0     pid:706   tgid:70=
6   ppid:1      task_flags:0x400100 flags:0x00004002
> [ 6759.550068] Call Trace:
> [ 6759.550071]  <TASK>
> [ 6759.550075]  __schedule+0x409/0x1330
> [ 6759.550084]  ? lock_timer_base+0x70/0x90
> [ 6759.550094]  schedule+0x27/0xd0
> [ 6759.550101]  schedule_timeout+0x83/0x100
> [ 6759.550109]  ? __pfx_process_timeout+0x10/0x10
> [ 6759.550117]  io_schedule_timeout+0x5b/0x90
> [ 6759.550124]  wait_for_completion_io_timeout+0x7f/0x1a0
> [ 6759.550134]  blk_execute_rq+0xee/0x170
> [ 6759.550145]  scsi_execute_cmd+0x100/0x420
> [ 6759.550157]  scsi_test_unit_ready+0x6f/0xf0
> [ 6759.550172]  sr_drive_status+0x57/0x120 [sr_mod de25504f195c3fb7b76d16=
3270dae636af6d4152]
> [ 6759.550187]  cdrom_open+0xd4/0xab0 [cdrom ff26b01442b014534657abb98fa7=
fb688822fb56]
> [ 6759.550208]  ? __disk_unblock_events+0x26/0xc0
> [ 6759.550219]  ? disk_check_media_change+0x96/0xe0
> [ 6759.550229]  sr_block_open+0x71/0x110 [sr_mod de25504f195c3fb7b76d1632=
70dae636af6d4152]
> [ 6759.550239]  ? __pfx_blkdev_open+0x10/0x10
> [ 6759.550246]  blkdev_get_whole+0x2c/0xe0
> [ 6759.550253]  ? __pfx_blkdev_open+0x10/0x10
> [ 6759.550259]  bdev_open+0x201/0x3d0
> [ 6759.550266]  ? __pfx_blkdev_open+0x10/0x10
> [ 6759.550272]  blkdev_open+0xa5/0x100
> [ 6759.550279]  do_dentry_open+0x170/0x5d0
> [ 6759.550287]  vfs_open+0x30/0x100
> [ 6759.550296]  path_openat+0x717/0x1300
> [ 6759.550304]  ? __memcg_slab_free_hook+0xf7/0x140
> [ 6759.550312]  do_filp_open+0xd8/0x180
> [ 6759.550325]  do_sys_openat2+0x88/0xe0
> [ 6759.550386]  __x64_sys_openat+0x61/0xa0
> [ 6759.550397]  do_syscall_64+0x7b/0x810
> [ 6759.550406]  ? vfs_read+0x2af/0x390
> [ 6759.550419]  ? ksys_read+0xa8/0xe0
> [ 6759.550429]  ? syscall_exit_to_user_mode+0x37/0x1c0
> [ 6759.550439]  ? do_syscall_64+0x87/0x810
> [ 6759.550448]  ? irqentry_exit_to_user_mode+0x2c/0x1b0
> [ 6759.550458]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [ 6759.550466] RIP: 0033:0x7f3ced89f042
> [ 6759.550479] RSP: 002b:00007fff0e8d04f8 EFLAGS: 00000246 ORIG_RAX: 0000=
000000000101
> [ 6759.550488] RAX: ffffffffffffffda RBX: 0000562237bedca0 RCX: 00007f3ce=
d89f042
> [ 6759.550494] RDX: 0000000000000000 RSI: 0000562237bbc6e0 RDI: fffffffff=
fffff9c
> [ 6759.550499] RBP: 00007fff0e8d0520 R08: 0000000000000000 R09: 000000000=
0000000
> [ 6759.550504] R10: 0000000000000000 R11: 0000000000000246 R12: 00007fff0=
e8d0650
> [ 6759.550509] R13: 00007fff0e8d0654 R14: 0000562237bf1b80 R15: 000056223=
7bb0fe0
> [ 6759.550520]  </TASK>
> [ 6780.163423] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6787.459425] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6797.765312] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6828.289146] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6859.013081] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6889.732859] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6900.036820] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6930.692665] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6961.412477] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 6992.132215] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 7022.852189] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
> [ 7030.145050] usb 3-2: reset high-speed USB device number 38 using ehci-=
pci
>=20
>=20
> When trying to mount these two Wi-Fi dongles' driver CD, I got this error=
.
> $ sudo mount /dev/sr0 /mnt/tmp
> mount: /mnt/tmp: fsconfig() failed: /dev/sr0: Can't open blockdev.
>         dmesg(1) may have more information after failed mount system call=
.
>=20
>=20
> usb_modeswitch can switch D-Link AX9U into Wi-Fi mode successfully, but i=
t took a
> very long time (about 40 seconds).
>=20
> $ lsusb
> Bus 001 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
> Bus 001 Device 002: ID 0bda:5852 Realtek Semiconductor Corp. Bluetooth Ra=
dio
> Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 003 Device 002: ID 2717:4106 Xiaomi Inc. MediaTek MT7601U [MI WiFi]
> Bus 003 Device 035: ID 0bda:1a2b Realtek Semiconductor Corp. RTL8188GU 80=
2.11n WLAN Adapter (Driver CDROM Mode)
> Bus 004 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
> Bus 004 Device 002: ID 046d:c077 Logitech, Inc. Mouse
> Bus 004 Device 003: ID 05af:1023 Jing-Mold Enterprise Co., Ltd Ghost Key =
Elimiantion Keyboard
> Bus 005 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 006 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
> Bus 007 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 008 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
>=20
> $ sudo  usb_modeswitch -v 0bda -p 1a2b -KW
> Take all parameters from the command line
>=20
>=20
>   * usb_modeswitch: handle USB devices with multiple modes
>   * Version 2.6.2 (C) Josua Dietze 2017
>   * Based on libusb1/libusbx
>=20
>   ! PLEASE REPORT NEW CONFIGURATIONS !
>=20
> DefaultVendor=3D  0x0bda
> DefaultProduct=3D 0x1a2b
>=20
> StandardEject=3D1
>=20
> Look for default devices ...
>    found USB ID 2717:4106
>    found USB ID 0bda:1a2b
>     vendor ID matched
>     product ID matched
>    found USB ID 1d6b:0002
>    found USB ID 05af:1023
>    found USB ID 046d:c077
>    found USB ID 1d6b:0001
>    found USB ID 1d6b:0002
>    found USB ID 0bda:5852
>     vendor ID matched
>    found USB ID 1d6b:0001
>    found USB ID 1d6b:0003
>    found USB ID 1d6b:0002
>    found USB ID 1d6b:0003
>    found USB ID 1d6b:0002
>   Found devices in default mode (1)
> Access device 035 on bus 003
> Get the current device configuration ...
> Current configuration number is 1
> Use interface number 0
>   with class 8
> Use endpoints 0x05 (out) and 0x84 (in)
>=20
> USB description data (for identification)
> -------------------------
> Manufacturer: Realtek
>       Product: DISK
>    Serial No.: not provided
> -------------------------
> Sending standard EJECT sequence
> Looking for active drivers ...
>   OK, driver detached
> Set up interface 0
> Use endpoint 0x05 for message sending ...
> Trying to send message 1 to endpoint 0x05 ...
>   Sending the message returned error -7. Try to continue
> Read the response to message 1 (CSW) ...
>   Response successfully read (13 bytes), status 1
> Trying to send message 2 to endpoint 0x05 ...
>   OK, message successfully sent
> Read the response to message 2 (CSW) ...
>   Response successfully read (13 bytes), status 0
> Trying to send message 3 to endpoint 0x05 ...
> libusb: error [submit_bulk_transfer] submiturb failed, errno=3D113
>   Sending the message returned error -1. Try to continue
> Read the response to message 3 (CSW) ...
>   Device seems to have vanished after reading. Good.
>   Device is gone, skip any further commands
> -> Run lsusb to note any changes. Bye!
>=20
> $ lsusb
> Bus 001 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
> Bus 001 Device 002: ID 0bda:5852 Realtek Semiconductor Corp. Bluetooth Ra=
dio
> Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 003 Device 002: ID 2717:4106 Xiaomi Inc. MediaTek MT7601U [MI WiFi]
> Bus 003 Device 036: ID 2001:332a D-Link Corp. 802.11ax WLAN Adapter
> Bus 004 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
> Bus 004 Device 002: ID 046d:c077 Logitech, Inc. Mouse
> Bus 004 Device 003: ID 05af:1023 Jing-Mold Enterprise Co., Ltd Ghost Key =
Elimiantion Keyboard
> Bus 005 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 006 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
> Bus 007 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 008 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
>=20
>=20
> On the other side, Mercury MW310UH cannot be switched successfully.
>=20
> $ sudo  usb_modeswitch -v 0bda -p a192 -KW
> Take all parameters from the command line
>=20
>=20
>   * usb_modeswitch: handle USB devices with multiple modes
>   * Version 2.6.2 (C) Josua Dietze 2017
>   * Based on libusb1/libusbx
>=20
>   ! PLEASE REPORT NEW CONFIGURATIONS !
>=20
> DefaultVendor=3D  0x0bda
> DefaultProduct=3D 0xa192
>=20
> StandardEject=3D1
>=20
> Look for default devices ...
>    found USB ID 2717:4106
>    found USB ID 0bda:a192
>     vendor ID matched
>     product ID matched
>    found USB ID 1d6b:0002
>    found USB ID 05af:1023
>    found USB ID 046d:c077
>    found USB ID 1d6b:0001
>    found USB ID 1d6b:0002
>    found USB ID 0bda:5852
>     vendor ID matched
>    found USB ID 1d6b:0001
>    found USB ID 1d6b:0003
>    found USB ID 1d6b:0002
>    found USB ID 1d6b:0003
>    found USB ID 1d6b:0002
>   Found devices in default mode (1)
> Access device 033 on bus 003
> Get the current device configuration ...
> Current configuration number is 1
> Use interface number 0
>   with class 8
> Use endpoints 0x0b (out) and 0x8a (in)
>=20
> USB description data (for identification)
> -------------------------
> Manufacturer: Realtek
>       Product: DISK
>    Serial No.: not provided
> -------------------------
> Sending standard EJECT sequence
> Looking for active drivers ...
>   OK, driver detached
> Set up interface 0
> Use endpoint 0x0b for message sending ...
> Trying to send message 1 to endpoint 0x0b ...
>   OK, message successfully sent
> Read the response to message 1 (CSW) ...
>   Response reading failed (error -8)
>   Device is gone, skip any further commands
> -> Run lsusb to note any changes. Bye!
>=20
> $ lsusb
> Bus 001 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
> Bus 001 Device 002: ID 0bda:5852 Realtek Semiconductor Corp. Bluetooth Ra=
dio
> Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 003 Device 002: ID 2717:4106 Xiaomi Inc. MediaTek MT7601U [MI WiFi]
> Bus 003 Device 033: ID 0bda:a192 Realtek Semiconductor Corp. DISK
> Bus 004 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
> Bus 004 Device 002: ID 046d:c077 Logitech, Inc. Mouse
> Bus 004 Device 003: ID 05af:1023 Jing-Mold Enterprise Co., Ltd Ghost Key =
Elimiantion Keyboard
> Bus 005 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 006 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
> Bus 007 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 008 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
>=20
>>
>> Also, can you collect a usbmon trace showing what happens when the
>> dongle is plugged in?
>=20
> I am not familiar with this, but I will try these days, thank you!
>=20
>>
>> Alan Stern
>=20

Hi Zenm,

0bda:1a2b
It is a USB Id supported by usb-modeswitch, I suspect that you would not=20
had got all the error messages for the device if you had let=20
usb-modeswitch access the device early (through udev) before the linux=20
storage driver tried to access it. The long time to switch when running=20
usb-modeswitch manually is likely also caused by clashes with=20
communication by the storage driver.

0bda:a192
This USB Id is not yet supported by usb-modeswitch and it probably has a=20
different method than ejecting the virtual CD drive, the failure to=20
switch it when manually running usb-modeswitch is an indication of that.
If you are a representative of Realtek or if you know how to switch the=20
device then contact the usb-modeswitch maintainer (Joshua Dietze) and=20
ask him to add switch support for it.

thanks
Lars

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/8e9066d4-1b04-4423-869d-2bac0a3385a2%40gmail.co=
m.
