Return-Path: <usb-storage+bncBDTPNYNWQEIBBUVIV3BQMGQEDHAIUUI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 20448AFAFC4
	for <lists+usb-storage@lfdr.de>; Mon,  7 Jul 2025 11:33:09 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id d2e1a72fcca58-74ce2491c0fsf4600515b3a.0
        for <lists+usb-storage@lfdr.de>; Mon, 07 Jul 2025 02:33:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751880787; cv=pass;
        d=google.com; s=arc-20240605;
        b=bBnibwNo3jDzt4ob7SsYf33/pJQOif/88dpucqjWVcDoWIYq9z+BQ9wcuKZ32LdmWs
         KrrfHLc4WfRcN5dHhAT1lr+HXHbgfEp3z83svDsBECm8nJ5Sf9qH9xhOuYJvFvXHgdzD
         /ZPdTdkyPz2sgIvXHF5lTJBIYrejaKtyNA/gn+crGYJA9LwWdoprSTXEXd8YTW0RCj/t
         vAdAwO2OIAoGez4SjTp4AjCntzW7q1JceOkMzwI5JwETV0Y/wV61fsUnwXD8pVkoYvK+
         ZdBmIiZPWRPUBww58OjDcHLiE2bN78U240sXx8DhlxLTPvgQVrsKkrGwG8oFr8SahJL1
         CvVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :date:cc:to:subject:from:sender:dkim-signature;
        bh=Llf330lOM4Ci0Ulq6kdtdAZKVui/0LslI+PIXxT8gTE=;
        fh=hI5G20uROOTceNjarleCnHXP/bj2Kd4y1q1ctico3Rw=;
        b=SdDH1ee0/x7w+w8EJ0bqwUAaT30KZyEcEar/I1AQ6sBmWGZfcwr/M0EE844x9km9J3
         r+DRAKdPx3/CZdXMGRniupqFaB7M1gCWUx9eOtlQAlVejRcAgmxbMAlt7CwO0cHzE/4y
         y9EuoI5oS+wU0uDJmBRijeFZ9xJ0jJDwl2NqVSHEA8zowlWFS8hDU16IF2/q5YZq4CP2
         VJH9uIc38c0CcP6KVgcaHHni+gWytA2D2KHIKbJ4/ZKA8R5DPjfbFoHteEWRbCxxPq1B
         wvP099Lv/o3lTSBiWhchiRU+HZVI1m3POAQfiHCjZXu4Xr9CYPyRz6Cy0VfCbsadHQte
         MHZQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1751880787; x=1752485587; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:message-id:date:cc:to
         :subject:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Llf330lOM4Ci0Ulq6kdtdAZKVui/0LslI+PIXxT8gTE=;
        b=cEQbCaRNhXSBaPKTv0P0Nq2W53Sy8uSAOO8+hBKjv33FVYpMS0y7Eaf1h/V51qWIZX
         K2BqRvSiQ2a7OszqBfrr7l4BTGlTwwjD2V8a7RceM6W04f5TTXBPoZnXKlcvEnNpWGmu
         omMAet7QUV2nOhOd8M2884fFXDEq1WQTCF/3g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751880787; x=1752485587;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:date:cc:to:subject:from:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Llf330lOM4Ci0Ulq6kdtdAZKVui/0LslI+PIXxT8gTE=;
        b=HojX+71+mk89xQom0Flq7wkVAwf1QVR23QSdrcITbHU6hdYsOjFq0YqU9fsr0wGlsM
         jeWpaVOelhPid4AD5i3LhJiegmL/FLYiofxTFSOBuH4O22TFRetDmNLxy8wgaolkU5Vg
         Tbm3302pXXteaR+9qT0X216xcZJwous7F/h9Fc3BgodWxJjOqrSabFHV8JNWw6+5aFVp
         fvEmLIJ3GFlAvRY9PRxTOplIgCVL2PXrNFGHsydL7+k/m+WShjfO4sfmFwRmAnc09vk0
         C8jbzZD0o/GnAhFx2m0h4Bilt5hiIPFtAx/uxddZncx0abdwtU7AJucmJFwwArpH5Av7
         M46w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVjwSE/HNN6rux17lNByrwEqO3VxbOPLHS6GnjdGlrV+CW7J0EG2C5162dt2262UhIvYfKOEA==@lfdr.de
X-Gm-Message-State: AOJu0Yw8CLMGNFffUvH4b3TCQCDYJUmY/QNJC0waaHnyvVb16IyexSnz
	vfHRKUuIAQc18dSh4RzQPc7BoudxRCiadrM2RsFe1dOijUjt8nJy0SaB59lUibbseJg=
X-Google-Smtp-Source: AGHT+IFcbkAiw+KidnOebar6j7i8qF0cQYk619l58oGFli+fFdZS6IZ2rgRp8+UdblCPSCj8//r0Zg==
X-Received: by 2002:a05:6a00:198a:b0:748:f406:b09 with SMTP id d2e1a72fcca58-74cf6fdb203mr9975428b3a.23.1751880786657;
        Mon, 07 Jul 2025 02:33:06 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZdHQapu87wakx2EzmW6His0gcfGJxE/714/lSz0/s+Y6w==
Received: by 2002:a05:6a00:39a8:b0:730:762a:e8a with SMTP id
 d2e1a72fcca58-74ceb9fe42fls3106276b3a.2.-pod-prod-03-us; Mon, 07 Jul 2025
 02:33:05 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVJ8DxwGd2xvtlQxChGOg0djXmRHd7zYcGw+TSoADKOBt6wieLKEDPLpy9FToyvC9fUCLwXZ4QcG2HIFw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a00:4b10:b0:748:f1ba:9aff with SMTP id d2e1a72fcca58-74cf6ef79aemr9563433b3a.5.1751880785163;
        Mon, 07 Jul 2025 02:33:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1751880785; cv=none;
        d=google.com; s=arc-20240605;
        b=PHin1BT+gOKp63vnw+SCbgY+m8IIlUxkoaK8nyAzHtYDZsQ8vqpuQAY2h16x20XF5B
         WxmZnpYEcnXTpSgJd8II3EcpRW/QEDI4ChvyYAi8tKTja/nIvQ26QbObdfC87YOM2abJ
         lb7asKGPyUBHccdYTWOZ9m0Pqi0EU8PQx+XFwTT6oTTBgHrCIRnA1SozVgZKC8169KHg
         mrvSkZy0kU7KEVJUcVI9WdVdRC/Gss51c3Ji9FDFydoWOyRfcwW0TS33kvDc6WILzkT4
         m/MkinlGkz9+0fYa/h00gRwZKk0wiy8jJxqESvPT/HiKK5LzOlXoGC40hut6KDWIoL++
         0i/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:date:cc:to:subject:from;
        bh=sljwZqqMmdRqQ2BExZ6tqrO/gV9+hjoy/WYRmxd+9Zo=;
        fh=sL2XCEwsXJKtExeYqNPmUqye7xY+oaxvHOXg5Pj60VM=;
        b=g7SM9eoBYlGWzYNdAMUbToaB3q8wDwUVlYSkKTtYno82hI8KqlnqNJuuIhWIL/KN59
         6/X0XvkJaCheb0pR7incpbroleY2zfgwID94Y+GhKau061wZ+vGKu1xo0XHMzoRLn3GH
         Ezm2ibspFcI34mSa6L84g5qmQmkYTI28sVzAFFORJ66J9LjLxxF7ck5R+VEcWfwbgmyS
         DhF/ZFxyEMqAniUiDZ8XLjunokQJzd6YpsjjUl/ifKpxCA+OWnihS1cZs4f1cttG8lkc
         ES8HWs1Ybm6SiRqiEEL2Gz6TImssQRDkjQzaNqXlLpMfKhaZsBMOwcQQX+gbv48cTght
         KgpA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id d2e1a72fcca58-74ce4156573si10750858b3a.263.2025.07.07.02.33.03
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 02:33:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: 5f03840c5b1511f0b29709d653e92f7d-20250707
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:33617028-8527-4551-8fb2-5c6d775983d4,IP:0,U
	RL:0,TC:53,Content:-20,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTI
	ON:release,TS:33
X-CID-META: VersionHash:6493067,CLOUDID:f587e619f24542156914fdb6737be2ac,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:81|83|102|801,TC:4,Content:1|52,EDM:-3,I
	P:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0
	,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 3,NGT|BAP
X-CID-BAS: 3,NGT|BAP,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 5f03840c5b1511f0b29709d653e92f7d-20250707
Received: from node4.com.cn [(10.44.16.170)] by mailgw.kylinos.cn
	(envelope-from <dengjie03@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1831040693; Mon, 07 Jul 2025 17:32:59 +0800
Received: from node4.com.cn (localhost [127.0.0.1])
	by node4.com.cn (NSMail) with SMTP id 4ACDB16001A04;
	Mon,  7 Jul 2025 17:32:59 +0800 (CST)
Received: by node4.com.cn (NSMail, from userid 0)
	id 3992216001A03; Mon,  7 Jul 2025 17:32:59 +0800 (CST)
From: =?UTF-8?B?6YKT5p2w?= <dengjie03@kylinos.cn>
Subject: =?UTF-8?Q?=5Busb=2Dstorage=5D_=E5=9B=9E=E5=A4=8D=3A_Re=3A_=5BPATCH_v2=5D_usb=3A_storage=3A_I?=
	=?UTF-8?Q?gnore_UAS_driver_for_SanDisk_Extreme_Pro_55AF_storage_device?=
To: =?UTF-8?B?R3JlZyBLSA==?= <gregkh@linuxfoundation.org>,
Cc: =?UTF-8?B?c3Rlcm4=?= <stern@rowland.harvard.edu>,
	=?UTF-8?B?bGludXgta2VybmVs?= <linux-kernel@vger.kernel.org>,
	=?UTF-8?B?bGludXgtdXNi?= <linux-usb@vger.kernel.org>,
	=?UTF-8?B?dXNiLXN0b3JhZ2U=?= <usb-storage@lists.one-eyed-alien.net>,
Date: Mon, 07 Jul 2025 17:32:58 +0800
X-Mailer: NSMAIL 7.0.0
Message-ID: <215xmk9u7l1-21606fwob8m@nsmail7.0.0--kylin--1>
References: 2025070725-circle-recite-bc04@gregkh
X-Israising: 0
X-Seclevel-1: 0
X-Seclevel: 0
X-Delaysendtime: Mon, 07 Jul 2025 17:32:58 +0800
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary=nsmail-249wt0pjjl4-249zcwcdn8p
X-ns-mid: webmail-686b944a-2422sf45
X-ope-from: <dengjie03@kylinos.cn>
X-Original-Sender: dengjie03@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted
 sender) smtp.mailfrom=dengjie03@kylinos.cn
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

This message is in MIME format.

--nsmail-249wt0pjjl4-249zcwcdn8p
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p><br><br><br><br><br><br>----</p>
<div id=3D"cs2c_mail_sigature"></div>
<p>&nbsp;</p>
<div id=3D"re" style=3D"margin-left: 0.5em; padding-left: 0.5em; border-lef=
t: 1px solid green;"><br><br><br>
<div style=3D"background-color: #f5f7fa;"><strong>=E4=B8=BB=E3=80=80=E9=A2=
=98=EF=BC=9A</strong><span id=3D"subject">Re: [PATCH v2] usb: storage: Igno=
re UAS driver for SanDisk Extreme Pro 55AF storage device</span> <br><stron=
g>=E6=97=A5=E3=80=80=E6=9C=9F=EF=BC=9A</strong><span id=3D"date">2025-07-07=
 16:47</span> <br><strong>=E5=8F=91=E4=BB=B6=E4=BA=BA=EF=BC=9A</strong><spa=
n id=3D"from">Greg KH</span> <br><strong>=E6=94=B6=E4=BB=B6=E4=BA=BA=EF=BC=
=9A</strong><span id=3D"to" style=3D"word-break: break-all;">=E9=82=93=E6=
=9D=B0;</span></div>
<br>
<div id=3D"content">
<div class=3D"viewer_part" style=3D"position: relative;">
<div>On Mon, Jul 07, 2025 at 02:25:07PM +0800, Jie Deng wrote:<br>&gt; The =
SanDisk Extreme Pro 55AF storage device(0781:55af) has poor compatibility w=
ith UAS drivers.<br>&gt; The logs:<br>&gt; [ 1.359859][ 0] [ T163] usb 2-1:=
 new SuperSpeed Gen 1 USB device number 2 using xhci_hcd<br>&gt; [ 1.385708=
][ 0] [ T163] usb 2-1: New USB device found, idVendor=3D0781, idProduct=3D5=
5af, bcdDevice=3D10.85<br>&gt; [ 1.385709][ 0] [ T163] usb 2-1: New USB dev=
ice strings: Mfr=3D2, Product=3D3, SerialNumber=3D1<br>&gt; [ 1.385710][ 0]=
 [ T163] usb 2-1: Product: Extreme Pro 55AF<br>&gt; [ 1.385711][ 0] [ T163]=
 usb 2-1: Manufacturer: SanDisk<br>&gt; [ 1.385711][ 0] [ T163] usb 2-1: Se=
rialNumber: 323234323935343030343636<br>&gt; [ 1.927603][ 0] [ T306] usbcor=
e: registered new interface driver usb-storage<br>&gt; [ 1.940511][ 0] [ T3=
06] scsi host3: uas<br>&gt; [ 1.940584][ 0] [ T306] usbcore: registered new=
 interface driver uas<br>&gt; [ 1.940843][ 0] [ T188] scsi 3:0:0:0: Direct-=
Access SanDisk Extreme Pro 55AF 1085 PQ: 0 ANSI: 6<br>&gt; [ 1.941363][ 0] =
[ T188] scsi 3:0:0:1: Enclosure SanDisk SES Device 1085 PQ: 0 ANSI: 6<br>&g=
t; [ 1.941697][ 0] [ T188] sd 3:0:0:0: Attached scsi generic sg0 type 0<br>=
&gt; [ 1.941783][ 0] [ T188] scsi 3:0:0:1: Attached scsi generic sg1 type 1=
3<br>&gt; [ 1.942296][ 0] [ T189] sd 3:0:0:0: [sda] 1953459617 512-byte log=
ical blocks: (1.00 TB/931 GiB)<br>&gt; [ 1.942373][ 0] [ T189] sd 3:0:0:0: =
[sda] Write Protect is off<br>&gt; [ 1.942374][ 0] [ T189] sd 3:0:0:0: [sda=
] Mode Sense: 37 00 10 00<br>&gt; [ 1.942534][ 0] [ T189] sd 3:0:0:0: [sda]=
 Write cache: enabled, read cache: enabled, supports DPO and FUA<br>&gt; [ =
1.943586][ 0] [ T189] sd 3:0:0:0: [sda] Optimal transfer size 2097152 bytes=
<br>&gt; [ 1.976797][ 0] [ T189] sda: sda1<br>&gt; [ 1.977898][ 0] [ T189] =
sd 3:0:0:0: [sda] Attached SCSI disk<br>&gt; [ 1.980406][ 0] [ T267] scsi 3=
:0:0:1: Failed to get diagnostic page 0x1<br>&gt; [ 1.980408][ 0] [ T267] s=
csi 3:0:0:1: Failed to bind enclosure -19<br>&gt; [ 1.980414][ 0] [ T267] s=
es 3:0:0:1: Attached Enclosure device<br>&gt; [ 1.981068][ 0] [ C0] sd 3:0:=
0:0: [sda] tag#10 data cmplt err -75 uas-tag 1 inflight: CMD<br>&gt; [ 1.98=
1071][ 0] [ C0] sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00 74 6f 6d 00 00=
 00 08 00<br>&gt; [ 33.819186][ 0] [ T188] sd 3:0:0:0: [sda] tag#10 uas_eh_=
abort_handler 0 uas-tag 1 inflight: CMD<br>&gt; [ 33.819188][ 0] [ T188] sd=
 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00 74 6f 6d 00 00 00 08 00<br>&gt; =
[ 33.843186][ 0] [ T309] scsi host3: uas_eh_device_reset_handler start<br>&=
gt; <br>&gt; Device decriptor is below:<br>&gt; Bus 002 Device 003: ID 0781=
:55af SanDisk Corp. Extreme Pro 55AF<br>&gt; Device Descriptor:<br>&gt; bLe=
ngth 18<br>&gt; bDescriptorType 1<br>&gt; bcdUSB 3.20<br>&gt; bDeviceClass =
0<br>&gt; bDeviceSubClass 0<br>&gt; bDeviceProtocol 0<br>&gt; bMaxPacketSiz=
e0 9<br>&gt; idVendor 0x0781 SanDisk Corp.<br>&gt; idProduct 0x55af<br>&gt;=
 bcdDevice 10.85<br>&gt; iManufacturer 2 SanDisk<br>&gt; iProduct 3 Extreme=
 Pro 55AF<br>&gt; iSerial 1 323234323935343030343636<br>&gt; bNumConfigurat=
ions 1<br>&gt; Configuration Descriptor:<br>&gt; bLength 9<br>&gt; bDescrip=
torType 2<br>&gt; wTotalLength 0x0079<br>&gt; bNumInterfaces 1<br>&gt; bCon=
figurationValue 1<br>&gt; iConfiguration 0<br>&gt; bmAttributes 0x80<br>&gt=
; (Bus Powered)<br>&gt; MaxPower 896mA<br>&gt; Interface Descriptor:<br>&gt=
; bLength 9<br>&gt; bDescriptorType 4<br>&gt; bInterfaceNumber 0<br>&gt; bA=
lternateSetting 0<br>&gt; bNumEndpoints 2<br>&gt; bInterfaceClass 8 Mass St=
orage<br>&gt; bInterfaceSubClass 6 SCSI<br>&gt; bInterfaceProtocol 80 Bulk-=
Only<br>&gt; iInterface 0<br>&gt; Endpoint Descriptor:<br>&gt; bLength 7<br=
>&gt; bDescriptorType 5<br>&gt; bEndpointAddress 0x81 EP 1 IN<br>&gt; bmAtt=
ributes 2<br>&gt; Transfer Type Bulk<br>&gt; Synch Type None<br>&gt; Usage =
Type Data<br>&gt; wMaxPacketSize 0x0400 1x 1024 bytes<br>&gt; bInterval 0<b=
r>&gt; bMaxBurst 15<br>&gt; Endpoint Descriptor:<br>&gt; bLength 7<br>&gt; =
bDescriptorType 5<br>&gt; bEndpointAddress 0x02 EP 2 OUT<br>&gt; bmAttribut=
es 2<br>&gt; Transfer Type Bulk<br>&gt; Synch Type None<br>&gt; Usage Type =
Data<br>&gt; wMaxPacketSize 0x0400 1x 1024 bytes<br>&gt; bInterval 0<br>&gt=
; bMaxBurst 15<br>&gt; Interface Descriptor:<br>&gt; bLength 9<br>&gt; bDes=
criptorType 4<br>&gt; bInterfaceNumber 0<br>&gt; bAlternateSetting 1<br>&gt=
; bNumEndpoints 4<br>&gt; bInterfaceClass 8 Mass Storage<br>&gt; bInterface=
SubClass 6 SCSI<br>&gt; bInterfaceProtocol 98<br>&gt; iInterface 0<br>&gt; =
Endpoint Descriptor:<br>&gt; bLength 7<br>&gt; bDescriptorType 5<br>&gt; bE=
ndpointAddress 0x81 EP 1 IN<br>&gt; bmAttributes 2<br>&gt; Transfer Type Bu=
lk<br>&gt; Synch Type None<br>&gt; Usage Type Data<br>&gt; wMaxPacketSize 0=
x0400 1x 1024 bytes<br>&gt; bInterval 0<br>&gt; bMaxBurst 15<br>&gt; MaxStr=
eams 32<br>&gt; Data-in pipe (0x03)<br>&gt; Endpoint Descriptor:<br>&gt; bL=
ength 7<br>&gt; bDescriptorType 5<br>&gt; bEndpointAddress 0x02 EP 2 OUT<br=
>&gt; bmAttributes 2<br>&gt; Transfer Type Bulk<br>&gt; Synch Type None<br>=
&gt; Usage Type Data<br>&gt; wMaxPacketSize 0x0400 1x 1024 bytes<br>&gt; bI=
nterval 0<br>&gt; bMaxBurst 15<br>&gt; MaxStreams 32<br>&gt; Data-out pipe =
(0x04)<br>&gt; Endpoint Descriptor:<br>&gt; bLength 7<br>&gt; bDescriptorTy=
pe 5<br>&gt; bEndpointAddress 0x83 EP 3 IN<br>&gt; bmAttributes 2<br>&gt; T=
ransfer Type Bulk<br>&gt; Synch Type None<br>&gt; Usage Type Data<br>&gt; w=
MaxPacketSize 0x0400 1x 1024 bytes<br>&gt; bInterval 0<br>&gt; bMaxBurst 15=
<br>&gt; MaxStreams 32<br>&gt; Status pipe (0x02)<br>&gt; Endpoint Descript=
or:<br>&gt; bLength 7<br>&gt; bDescriptorType 5<br>&gt; bEndpointAddress 0x=
04 EP 4 OUT<br>&gt; bmAttributes 2<br>&gt; Transfer Type Bulk<br>&gt; Synch=
 Type None<br>&gt; Usage Type Data<br>&gt; wMaxPacketSize 0x0400 1x 1024 by=
tes<br>&gt; bInterval 0<br>&gt; bMaxBurst 0<br>&gt; Command pipe (0x01)<br>=
&gt; <br>&gt; So ignore UAS driver for this device.<br>&gt; <br>&gt; Signed=
-off-by: Jie Deng <br>&gt; ---<br>&gt; v2:<br>&gt; * According to the file =
modification rules (sort by VendorID <br>&gt; first, then by ProductID.) Ad=
d the newly added "UNUSUAL_DEV" <br>&gt; in the correct position.<br>&gt; v=
1:<br>&gt; * The newly added "UNUSUAL_DEV" was directly added to the end <b=
r>&gt; without modifying the format according to the file.<br>&gt; <br>&gt;=
 ---<br>&gt; drivers/usb/storage/unusual_uas.h | 7 +++++++<br>&gt; 1 file c=
hanged, 7 insertions(+)<br>&gt; <br>&gt; diff --git a/drivers/usb/storage/u=
nusual_uas.h b/drivers/usb/storage/unusual_uas.h<br>&gt; index 1477e31d7763=
..6b1a08e2e724 100644<br>&gt; --- a/drivers/usb/storage/unusual_uas.h<br>&g=
t; +++ b/drivers/usb/storage/unusual_uas.h<br>&gt; @@ -52,6 +52,13 @@ UNUSU=
AL_DEV(0x059f, 0x1061, 0x0000, 0x9999,<br>&gt; USB_SC_DEVICE, USB_PR_DEVICE=
, NULL,<br>&gt; US_FL_NO_REPORT_OPCODES | US_FL_NO_SAME),<br>&gt; <br>&gt; =
+/* Reported-by: Jie Deng */<br>&gt; +UNUSUAL_DEV(0x0781, 0x55af, 0x0000, 0=
x9999,<br>&gt; + "SanDisk",<br>&gt; + "Extreme Pro 55AF",<br>&gt; + USB_SC_=
DEVICE, USB_PR_DEVICE, NULL,<br>&gt; + US_FL_IGNORE_UAS),<br>&gt; +<br>&gt;=
 /* Reported-by: Zhihong Zhou */<br>&gt; UNUSUAL_DEV(0x0781, 0x55e8, 0x0000=
, 0x9999,<br>&gt; "SanDisk",<br>&gt; -- <br>&gt; 2.25.1<br><br>Why is there=
 two "v2" patches sent here? Shouldn't this be "v3"?<br><br>confused,<br><b=
r>greg k-h</div>
</div>
</div>
</div>
<div>&nbsp;</div>
<div>The first sent V2 patch was missing the description of the differences=
</div>
<div>between V1 and V2 patches. The V2 patch sent for the second time only<=
/div>
<div>adds a description of the differences from the V1 patch compared to th=
e</div>
<div>V2 patch sent for the first time. There is no modification to the code=
.</div>
<div>So it is rashly believed that it does not need to be defined as a V3 p=
atch.</div>
<div>&nbsp;</div>
<div id=3D"re" style=3D"margin-left: 0.5em; padding-left: 0.5em; border-lef=
t: 1px solid green;"></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion visit <a href=3D"https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/215xmk9u7l1-21606fwob8m%40nsmail7.0.=
0--kylin--1?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/215xmk9u7l1-21606fwob8m%4=
0nsmail7.0.0--kylin--1</a>.<br />

--nsmail-249wt0pjjl4-249zcwcdn8p--
