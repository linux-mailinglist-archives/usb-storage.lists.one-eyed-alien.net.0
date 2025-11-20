Return-Path: <usb-storage+bncBC62T3XQVUKBBEHQ7LEAMGQEFHMP2UY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id CE37CC725C3
	for <lists+usb-storage@lfdr.de>; Thu, 20 Nov 2025 07:41:21 +0100 (CET)
Received: by mail-qk1-x746.google.com with SMTP id af79cd13be357-8b234bae2a7sf171315385a.3
        for <lists+usb-storage@lfdr.de>; Wed, 19 Nov 2025 22:41:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1763620880; cv=pass;
        d=google.com; s=arc-20240605;
        b=NVNsVd0eU3tireAp2CJlHbO//tFNyUSr3/Zi9rTuoIvRkgAyZjFakBkD3vO8PapPID
         rdfI1uB2FpGFs6NsQq41fV/LmmUJ+JzH8OCr42GTfSsmsj2ciKMo9+heNq2wVtqcUHI0
         63lDlQds9sq130IQ1ME2vCC/h6AYbUGaww9OVyo2AHmLaXupJHwCNAn9mR9E3POyqkec
         2so4tiwWNjlv9hMnHCG8fAiMnS8AYq4RAaQNQvR0Xcjbaw6K53iZv3o22g4LaAC76edm
         wpabdHBw2o9qrFUAaogWGxda5gOWQ5pcpLh79Q3/31U9hFluU5B+0YJeaVE3aQsdH8ok
         jU1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=Dz5FvPjY6o336zAjSg3QLgsGCNE7BbH9vXQUYcoYNmY=;
        fh=wxvCcR7Xm6kqCpeX50Bt7NN/tXlX+G2gKF3hLrA1iCg=;
        b=Qs3x4UQUMc1bNNOYgyLprixK6Ulf7UG87EQyFc5anye3exST5zsHNTxNOJo0Ardb+5
         JumJ1RjGfQBpe70xFztXEXXcFGMVXzccLp8+Wt1YFsltts3PHofVyXoX+li4Aj8qpBeE
         RXqUloQCCGfClOb95bIv935tGY6KRNib5yWpZuVB0Dm+kzy6u997ZB5Q8EpCwHjiq6tl
         h7kb/dgFKWuSraOO3Z8h3hG4fzUURYwTl4nVqDpaWdGtOUODkq+ji+GPor7YFZ2vtFOi
         filNp8auKGmtk4ambVUPC3Ad4xiUD/ff3pjz4K7ZyLG5JLBIz9Dhd+TEhW2cvDcoQDkf
         hKUQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Qc9ytNbi;
       spf=pass (google.com: domain of oleg.smirnov.1988@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oleg.smirnov.1988@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=neutral header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1763620880; x=1764225680; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Dz5FvPjY6o336zAjSg3QLgsGCNE7BbH9vXQUYcoYNmY=;
        b=j1Al/gQwZ6mCLBbtxkyF6+kATlzCYuKCZkh/OAIzX+uqheR/eviPhIOMAPcUBayEbi
         PJCs+Mo4qflQzz0yXxGp+rhPs7uWE1sh7iFvG5/cPa9xFdPuZTe/lTqTgmjkhTyENCXl
         zftKvU8gxci3VueMzRrWHSOB6+R28mAh3meEM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763620880; x=1764225680;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-beenthere:x-gm-message-state:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Dz5FvPjY6o336zAjSg3QLgsGCNE7BbH9vXQUYcoYNmY=;
        b=b72KgBrqCvZwy4Vj7fyLm75AaRiMYX49XnFJC8WNNOiv6nSsUejCjyoBzKJqWkxJNb
         exbpJMpZb9uHafJyIl9GbGgmt9FvXHnL62gIUVxuV1ZTr1ycsgYlCGklPyA6LdNiuMzC
         OW/nKD1gACSzGnaom4E7VX73gQAP/QZLSMvlhqqSMAZQhhO1xDgq6xuO2U+SZdovWFFu
         y+mkubyt4gwfrX+KoD4pxUD193QrGBj4DC7MqKKEZQC9Fi/ZnKc5CF9W5FDU2XCPztxP
         Wyi7YFfL1BA2gZMwmYm9V1VZrxGq4v3ewmb1yRRdbgYux3EiBPKeIaSUl+FH58UVAV+2
         HRQA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVJDUdidZccXqOiuOQa81/sEcrR54AVskVLXLnq/MN+55jlkYRPlSKCTIdp0cl8KQdgkhc6FQ==@lfdr.de
X-Gm-Message-State: AOJu0YxAufgX+j7Bg1WUWCp1ULIBnY0rn3l9xvp5CFJO0Q7Wv1dZKpsR
	KggNUefyQN8/EshkGcNFjnfIgMcwf/LwKDH9hAlEaLV/9kK20Oa+566LezSrYnvUwXo=
X-Google-Smtp-Source: AGHT+IG7PrJhmkuuWasItRcHiFCZz9BMcZVZKnFmIvOKn5bb5LepIWoaZK+/awiZndHUXtPEyvLvAQ==
X-Received: by 2002:a05:622a:c1:b0:4ee:228d:d6b8 with SMTP id d75a77b69052e-4ee4d828f95mr8610221cf.70.1763620880415;
        Wed, 19 Nov 2025 22:41:20 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+aoWU/bfI/Ypmzz6wvisUpGkDURwyblgJTsGlYtkFAIxQ=="
Received: by 2002:a05:622a:244:b0:4ed:3036:f1ac with SMTP id
 d75a77b69052e-4ee48fabdf1ls11070381cf.0.-pod-prod-01-us; Wed, 19 Nov 2025
 22:41:19 -0800 (PST)
X-Received: by 2002:a05:620a:7114:b0:8b2:dcde:b670 with SMTP id af79cd13be357-8b32f382449mr77174685a.70.1763620879819;
        Wed, 19 Nov 2025 22:41:19 -0800 (PST)
Received: by 2002:a05:6808:a89:b0:44f:fe66:38a2 with SMTP id 5614622812f47-450ee99fb15msb6e;
        Wed, 19 Nov 2025 22:19:09 -0800 (PST)
X-Received: by 2002:a17:903:1b03:b0:298:3aa6:c034 with SMTP id d9443c01a7336-29b5ec568b3mr14097155ad.32.1763619544093;
        Wed, 19 Nov 2025 22:19:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1763619544; cv=none;
        d=google.com; s=arc-20240605;
        b=JCF0Jc7HQB1dnRyMqfDayPm7/744BlXMRHZe6Q/wVHXGcog2fK2vHeY2qvI4PDdeCT
         uez9x7NhTkv/39zb+TIP5T3Hz6MiYbh/cMexbDJJjKkOANX3CjUQB6HFHNNKwYYmh+SM
         ncLW2VlsF5HeY+15dBSRIDsYGEdx+6VTkJVrjqEGHoC1AI9LHRgxCReRzcp39URecJEz
         kY+rsDEzyU0QYV5svDUsXgMmyHcaWBu9PyJ6YWsKcDyQI7WL2XM2yE8XG1tKxDGh7/rf
         J3NNCL3pZZdWykqHauwlrFNrSdtNH/yo4OxF5PeMG4+RnIhHBc/TOdnePfbZebKquGUq
         eHiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=cl9rP1woisns0/LQqmU2zVofPtIhfEJEBPoiDwsUsNw=;
        fh=7s0HV1N0mKHLv1qXeiyQbV/0U2AvbE/PBV6lzQ1IHWc=;
        b=dlWrt5Dut5vG1Ny93hcG8QQiIvw+peDWhVRNl7T7M9Il2i4WPl4PN4txz/GwqCmN+W
         QFLT7XoE4JLKcBPxLqzybICovgN3Y+if/rWdn8mY28HwkJo/bf9lLMhPQNZmF5JyjM3b
         z8KKAWVFOehjQX1zbtjq6HiVRvslCFq5sCJ4Ned4hKesLr58ZXiLzVy3u99LzvBjkR2j
         UIUpi7tGfGWdUTxZN02Amc5ZOMj+m9bTs3Dgg30pe/5Bis+4Ry7oz4ZEFW7Mie83XF9o
         0tBzjfKtO3Djx41BJnTWWe7Tk/qulWmIa/gy4CNHXQYzR9V5zYfc7pTwXC/CH2OF8o7l
         0Ajw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Qc9ytNbi;
       spf=pass (google.com: domain of oleg.smirnov.1988@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oleg.smirnov.1988@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=neutral header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d9443c01a7336-29b5b011e6bsor7235885ad.0.2025.11.19.22.19.04
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 19 Nov 2025 22:19:04 -0800 (PST)
Received-SPF: pass (google.com: domain of oleg.smirnov.1988@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Gm-Gg: ASbGncsoPuGdrmmymu4GY0rm338CIb2k8djL/jKbPzf6ux93zcU7jw9eYcjOUsk1KQc
	RuTNxArR33Kq4YwCpvaGuyRQab35yiar8LIsOcrwm7koZBySv9Y1Qcn3tr12vLxQuVjUw4E8Kko
	2YQuwwL3Vf1pKpwSD/3DUouiPyaMQL143W+MzChX1rGY+2kl1VwoaRSJu4JzT6fclzRHALHUJ9N
	aNeWZHW0pItim8I3zPSUmMLIog957hQLSr654WQSRqTb9retQpJBX2253K5SMGnxeq0fRw=
X-Received: by 2002:a17:903:166e:b0:297:fbff:fab8 with SMTP id
 d9443c01a7336-29b5ebc027fmr15895385ad.21.1763619543279; Wed, 19 Nov 2025
 22:19:03 -0800 (PST)
MIME-Version: 1.0
From: stealth <oleg.smirnov.1988@gmail.com>
Date: Thu, 20 Nov 2025 08:18:26 +0200
X-Gm-Features: AWmQ_bnG4oshh-18OoT0FpUuyodVC2CbmMyHqa87yo3PHRgoAfVIRke-jC3YAtk
Message-ID: <CAKxjRRzF-5aPwYUWVX+=SfRUsR+kyyi3gWK00hfY93TAqJAnMA@mail.gmail.com>
Subject: [usb-storage] 
To: usb-storage@lists.one-eyed-alien.net
Content-Type: multipart/alternative; boundary="000000000000656b25064400ac8e"
X-Original-Sender: Oleg.Smirnov.1988@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=Qc9ytNbi;       spf=pass
 (google.com: domain of oleg.smirnov.1988@gmail.com designates 209.85.220.41
 as permitted sender) smtp.mailfrom=oleg.smirnov.1988@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=neutral header.i=@lists.one-eyed-alien.net
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

--000000000000656b25064400ac8e
Content-Type: text/plain; charset="UTF-8"

[3266355.209532] usb 1-3: new high-speed USB device number 10 using xhci_hcd
[3266355.333031] usb 1-3: New USB device found, idVendor=0603,
idProduct=8611, bcdDevice= 1.00
[3266355.333040] usb 1-3: New USB device strings: Mfr=1, Product=2,
SerialNumber=3
[3266355.333043] usb 1-3: Product: YICARCAM
[3266355.333045] usb 1-3: Manufacturer: XIAO-YI
[3266355.333047] usb 1-3: SerialNumber: 966110000000100
[3266355.338621] usb-storage 1-3:1.0: USB Mass Storage device detected
[3266355.338817] usb-storage 1-3:1.0: Quirks match for vid 0603 pid 8611:
4000
[3266355.338821] usb-storage 1-3:1.0: This device (0603,8611,0100 S 06 P
50) has unneeded SubClass and Protocol entries in unusual_devs.h (kernel
6.16.10-arch1-1)
                    Please send a copy of this message to <
linux-usb@vger.kernel.org> and <usb-storage@lists.one-eyed-alien.net>
[3266355.339525] scsi host6: usb-storage 1-3:1.0
[3266356.351895] scsi 6:0:0:0: Direct-Access     XIAO-YI  YICarCam
     PQ: 0 ANSI: 5
[3266356.364249] sd 6:0:0:0: [sdd] 61071360 512-byte logical blocks: (31.3
GB/29.1 GiB)
[3266356.364423] sd 6:0:0:0: [sdd] Write Protect is off
[3266356.364427] sd 6:0:0:0: [sdd] Mode Sense: 2b 00 00 08
[3266356.366194] sd 6:0:0:0: [sdd] Write cache: disabled, read cache:
disabled, doesn't support DPO or FUA
[3266356.388784]  sdd: sdd1
[3266356.388962] sd 6:0:0:0: [sdd] Attached SCSI removable disk
[3266357.036652] usb 1-3: USB disconnect, device number 10
[3266357.036891] sd 6:0:0:0: [sdd] tag#0 FAILED Result: hostbyte=DID_ERROR
driverbyte=DRIVER_OK cmd_age=0s
[3266357.036899] sd 6:0:0:0: [sdd] tag#0 CDB: Read(10) 28 00 03 a3 df fa 00
00 01 00
[3266357.036902] I/O error, dev sdd, sector 61071354 op 0x0:(READ) flags
0x80700 phys_seg 1 prio class 2
[3266357.042515] Buffer I/O error on dev sdd, logical block 7633919, async
page read

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAKxjRRzF-5aPwYUWVX%2B%3DSfRUsR%2Bkyyi3gWK00hfY93TAqJAnMA%40mail.gmail.com.

--000000000000656b25064400ac8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">[3266355.209532] usb 1-3: new high-speed USB device number=
 10 using xhci_hcd<br>[3266355.333031] usb 1-3: New USB device found, idVen=
dor=3D0603, idProduct=3D8611, bcdDevice=3D 1.00<br>[3266355.333040] usb 1-3=
: New USB device strings: Mfr=3D1, Product=3D2, SerialNumber=3D3<br>[326635=
5.333043] usb 1-3: Product: YICARCAM <br>[3266355.333045] usb 1-3: Manufact=
urer: XIAO-YI <br>[3266355.333047] usb 1-3: SerialNumber: 966110000000100<b=
r>[3266355.338621] usb-storage 1-3:1.0: USB Mass Storage device detected<br=
>[3266355.338817] usb-storage 1-3:1.0: Quirks match for vid 0603 pid 8611: =
4000<br>[3266355.338821] usb-storage 1-3:1.0: This device (0603,8611,0100 S=
 06 P 50) has unneeded SubClass and Protocol entries in unusual_devs.h (ker=
nel 6.16.10-arch1-1)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Please send a copy of this message to &lt;<a href=3D"m=
ailto:linux-usb@vger.kernel.org">linux-usb@vger.kernel.org</a>&gt; and &lt;=
<a href=3D"mailto:usb-storage@lists.one-eyed-alien.net">usb-storage@lists.o=
ne-eyed-alien.net</a>&gt;<br>[3266355.339525] scsi host6: usb-storage 1-3:1=
.0<br>[3266356.351895] scsi 6:0:0:0: Direct-Access =C2=A0 =C2=A0 XIAO-YI =
=C2=A0YICarCam =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PQ: 0 ANSI: =
5<br>[3266356.364249] sd 6:0:0:0: [sdd] 61071360 512-byte logical blocks: (=
31.3 GB/29.1 GiB)<br>[3266356.364423] sd 6:0:0:0: [sdd] Write Protect is of=
f<br>[3266356.364427] sd 6:0:0:0: [sdd] Mode Sense: 2b 00 00 08<br>[3266356=
.366194] sd 6:0:0:0: [sdd] Write cache: disabled, read cache: disabled, doe=
sn&#39;t support DPO or FUA<br>[3266356.388784] =C2=A0sdd: sdd1<br>[3266356=
.388962] sd 6:0:0:0: [sdd] Attached SCSI removable disk<br>[3266357.036652]=
 usb 1-3: USB disconnect, device number 10<br>[3266357.036891] sd 6:0:0:0: =
[sdd] tag#0 FAILED Result: hostbyte=3DDID_ERROR driverbyte=3DDRIVER_OK cmd_=
age=3D0s<br>[3266357.036899] sd 6:0:0:0: [sdd] tag#0 CDB: Read(10) 28 00 03=
 a3 df fa 00 00 01 00<br>[3266357.036902] I/O error, dev sdd, sector 610713=
54 op 0x0:(READ) flags 0x80700 phys_seg 1 prio class 2<br>[3266357.042515] =
Buffer I/O error on dev sdd, logical block 7633919, async page read<br></di=
v>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion visit <a href=3D"https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CAKxjRRzF-5aPwYUWVX%2B%3DSfRUsR%2Bky=
yi3gWK00hfY93TAqJAnMA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfoot=
er">https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storag=
e/CAKxjRRzF-5aPwYUWVX%2B%3DSfRUsR%2Bkyyi3gWK00hfY93TAqJAnMA%40mail.gmail.co=
m</a>.<br />

--000000000000656b25064400ac8e--
