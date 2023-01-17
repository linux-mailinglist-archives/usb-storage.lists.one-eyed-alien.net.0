Return-Path: <usb-storage+bncBDFKTTUNQMNRBSH2TCPAMGQEC4JN3SQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 861C466D621
	for <lists+usb-storage@lfdr.de>; Tue, 17 Jan 2023 07:16:41 +0100 (CET)
Received: by mail-ed1-x548.google.com with SMTP id z8-20020a056402274800b0048a31c1746asf20202654edd.0
        for <lists+usb-storage@lfdr.de>; Mon, 16 Jan 2023 22:16:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1673936201; cv=pass;
        d=google.com; s=arc-20160816;
        b=U+EEaP1VB8mrJkTKmTXTlb741HuuGGaH3QYRkILsLeI37yOF1rnkTGy8WaVdWipR7D
         P3SDkpBTFwQP7ar5eR/ynLluiwsOXIfU1sUmEvukcAGdQrl8sPUt+lUdYWMNhB1j2y15
         hnrqomOtWM/L8znHxZ6s0ShBRlc15d98WPsF392YLKbQuCo0qq+IyFbJZRhrVJDr8Did
         HZe+wVbymTFo5f/C4Ck8FzMPqqVec5YHQsSCQlDfjM7vEdvceiUwcZ1IQrm2KWWwkooO
         6oEtii9uC1eBYDtrF6HKS/77wxeveleBDkAZA80BMheBYxfumrtjMh1yU1i15V1+3Vbc
         JzOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=r45ZjkVIT7kQSBzLiMhURRrxo/3mrZG1c/7YNAK57b8=;
        b=Xi5QsoEFYPxv7jAQcXH8UTfrKN2/Bz0yEjWGm9CjxKZFLEMqoiLGur/J8ON9qXH9Lz
         0mh6688vmhuqZtN5YOvFb74XHK51FLgVtOpsNe56UYMw8733HXjvFt9LLpT1D82ruZEv
         rvFk72heKfS4i0tx8dc0xbIyKjItfobHT+TTgdp/goaA3/luSFIhVL43HmYg2CeFqVJy
         yvEvP8fL46Ie38zrpF6GjiCdMVpnjfEjv9J00AFPuz+vrb3BmO0pwAw+IF8JaaY+vOiH
         sVA0V91ikm39mcXkYpMNH0FKyxlG+ob/x+1phzT4K4rW+pm6FO3XKytx3Nnbs1c6l5H9
         7Zaw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=KITCxg0G;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r45ZjkVIT7kQSBzLiMhURRrxo/3mrZG1c/7YNAK57b8=;
        b=kz0iySNnYlSPi2hhzzSOkKaz9sCPKhs6YaIob99DxTPcEjO1163UjWhgCKL2MG1z6I
         2F7Blg7f8WO4aJ1+H97p9BKXT7gO6NRQb/fT5wqK/whEQV2WWtqR7Muqg0aEiIS3Vlvz
         6fE07IofTluwZLLWCsh+mQGxcGFjbNvZopOsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=r45ZjkVIT7kQSBzLiMhURRrxo/3mrZG1c/7YNAK57b8=;
        b=2oSRO+7aqlDDnGyt58238G+Y6QoUK1nIb9EpW2375P2Hgx4OkiE7jQpG+fD4EA0UTU
         5st1JZ4thKF8qgEZAG5eGJ715Rp21hztWJW25dwwAXO5cCWQaFC+8+OKByqeumMTwbM2
         q0+KPcsYQYFSXglI23M4ljtru1zNH8R1g+DTZeSQI5DTA+jeFIMGIGe5bC55kUum2JmU
         n/kdv+Tg71L8QQ40n+0KOVsmB+i3rmiUN0L4jRl6zsAJ/5mVtyWQv5G9HJknvYkoiYGq
         65sLtngF++sMZWI7T02XgRLU423C3U/8WKDaJf4NEaOVPHAkEaBLVUsapyYTEES8blhj
         rKdw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AFqh2kopAAkA8A5RPJQEGmTkW8wT24ECr87fIVAc0cvZYDHEJ60vXNR8
	e6yamIgPyyX5qreQxajX4vgf5A==
X-Google-Smtp-Source: AMrXdXtD2mmVv7gDUIfSfDwmevYFF+QOdjdD4wSzBy18Ke5KYvxuN+S0LbOTtmv6zoIbzxebZncqXg==
X-Received: by 2002:a17:906:a288:b0:871:6de4:fb7e with SMTP id i8-20020a170906a28800b008716de4fb7emr115838ejz.758.1673936200979;
        Mon, 16 Jan 2023 22:16:40 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:37cd:b0:7c1:381b:406d with SMTP id
 o13-20020a17090637cd00b007c1381b406dls8379985ejc.11.-pod-prod-gmail; Mon, 16
 Jan 2023 22:16:39 -0800 (PST)
X-Received: by 2002:a17:906:a09:b0:7af:1139:de77 with SMTP id w9-20020a1709060a0900b007af1139de77mr2260347ejf.4.1673936199363;
        Mon, 16 Jan 2023 22:16:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1673936199; cv=none;
        d=google.com; s=arc-20160816;
        b=0oQ1q/UIsgdEOREh3u0DpJ7I/W4Wu077U6N2ZxFKnf7T++vclunhQe2W3Guvr4xRpn
         RfW+ygW5zFSLQRt0Uudchwyl8U7l9xO76zdyXnCX4JGtkA8kL/0irFz8HB0u3feJUcyt
         Iq3/bys14Zf6ZoRhKyoX0wZQ2cFsWh/eOoyHqSdEfNcPdRR5Cq3Z3/04h2u7ua+DvWSi
         E/lgzYCjMYUuJQ/6rNli33NCWwuj0g/n0IfT6i0iaVYZZI3UnQihPIXhQAxnrEzIRksk
         LCwyDf0fp3r8bHvzNGQbLMaP4yrxYViSzFeyWNwAUfgdgAxguXcHnqoZybuHRbPK3+lK
         RafA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=V290PZKZo0xScmAvbrHz36kqe7A8S78iWYh1amMNxkw=;
        b=EBaWQWevqDefbs2gfdogW8uRxlF4Xcf8cnun4Elp5m+XxVutwb2M5vkRPFixEEFPT6
         P5A6nIzvkJnt3mPs5LNDOexpv6WSgfCNZURHqIUwQYJ/XE9uCzSsqJ8LemRAQkDdhUqR
         GzFXZwv8oK5k4YKBRyfuyHBL67RX//lXdMMNvxhL1v+C/nSeRUJE/w9ynpqnCGwLn/OG
         pT6Vc/Ha1oz3fCHME1SrlmKniBYwi+BYiCN2QCQhDC99WXumopJX6rxEjlDzXNi0gZe3
         DxtUOO3hWqvlaNgOGQjyw9H0hKSx/lbTUP81uo92Sfq7LV8MGMaJyBcHH7/ixtsGCLcZ
         BMBw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=KITCxg0G;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id s13-20020a170906960d00b0086d57b49207sor3433120ejx.95.2023.01.16.22.16.39
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 16 Jan 2023 22:16:39 -0800 (PST)
Received-SPF: pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:906:264f:b0:85c:f3cd:66ec with SMTP id
 i15-20020a170906264f00b0085cf3cd66ecmr97854ejc.479.1673936198807; Mon, 16 Jan
 2023 22:16:38 -0800 (PST)
MIME-Version: 1.0
References: <2mw02fh6hzd-2mw3w8xfngq@nsmail7.0.0--kylin--1>
 <CAD14+f1p3j3WJUYshneH7A38b8JsiXjtScESB2uOQ-ZyBi57tg@mail.gmail.com> <CAD14+f1ebzviMF-pi0ryKU8cRPWp2BqV2dwiXOFjeM30eqrwOg@mail.gmail.com>
In-Reply-To: <CAD14+f1ebzviMF-pi0ryKU8cRPWp2BqV2dwiXOFjeM30eqrwOg@mail.gmail.com>
From: Juhyung Park <qkrwngud825@gmail.com>
Date: Tue, 17 Jan 2023 15:16:27 +0900
Message-ID: <CAD14+f3De+0oPaq0hOo0D+siTvZDNnBXg7Qg6fKNDh63zVh8Lg@mail.gmail.com>
Subject: [usb-storage] Re: Re: [PATCH] Revert "usb-storage: Add Hiksemi
 USB3-FW to IGNORE_UAS"
To: =?UTF-8?B?5pu+57qi546y?= <zenghongling@kylinos.cn>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	oneukum <oneukum@suse.com>, gregkh <gregkh@linuxfoundation.org>, 
	stern <stern@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: qkrwngud825@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=KITCxg0G;       spf=pass
 (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;       dmarc=pass
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

Posted a new patch:
https://lore.kernel.org/all/20230117061046.114145-1-qkrwngud825@gmail.com/T=
/#u

This issue has been stalled for way too long. If string-based
comparisons are too ugly, we can improve it later when Hongling is
more active towards this issue.

ps) More Linux users on RTL9210 here:
https://github.com/raspberrypi/linux/issues/4130#issuecomment-1320988449

On Tue, Jan 10, 2023 at 2:37 PM Juhyung Park <qkrwngud825@gmail.com> wrote:
>
> And please leave all the mail addresses, especially the mailing list
> addresses intact.
>
> It makes it really hard to track this down later in the public domain.
>
> On Tue, Jan 10, 2023 at 2:34 PM Juhyung Park <qkrwngud825@gmail.com> wrot=
e:
> >
> > Thanks for the log, we're getting somewhere.
> >
> > Thankfully, it seems to report "HIKSEMI" as the manufacturer and "MD202=
" as the product name.
> >
> > Please post `sudo lsusb -v` for the product as well, and please determi=
ne whether UAS works on Windows by checking TRIM functionality.
> > I assume you're using an SSD with that enclosure.
> > Check this for how: https://www.anandtech.com/show/13953/plugable-usbcn=
vme-toolless-nvme-ssd-enclosure-capsule-review
> >
> > > the firmware of rtl9210 is contantly updating and fixing problem
> >
> > IMHO, this is just them maintaining the product well. USB to SATA/NVMe =
enclosures are notorious for having firmware problems unfixed for the entir=
e lifespan of the device.
> >
> > > but continuous high speed read/write can cause kernel panic
> >
> > This leads me to believe that the device itself having problems with so=
me power management (weak regulator, etc).
> >
> > I have multiple RTL9210 drives, some connected to a server running 24/7=
 and not one has ever given me a problem, unlike some ASMedia or JMicron pr=
oducts I've tried.
> >
> > On Tue, Jan 10, 2023 at 2:26 PM =E6=9B=BE=E7=BA=A2=E7=8E=B2 <zenghongli=
ng@kylinos.cn> wrote:
> >>
> >> Hi:
> >>
> >>    The screenshot information and error log.
> >>
> >>    I don't think this version of firmware is stable,normal loading of =
uas driver is fine,but continuous high speed read/write
> >>
> >> can cause kernel panic,I have researched a lot about rtl9210, this is =
no relevant better support for uas driver, the firmware
> >>
> >> of rtl9210 is contantly updating and fixing problem,self-updating firm=
ware is not an effective management method,I suggest you fixed
> >>
> >> with regenerate PID/VID like other product.
> >>
> >>
> >>
> >>
> >>
> >> [   39.510571] usb 2-2: new SuperSpeed USB device number 2 using xhci_=
hcd
> >> [   39.546117] usb 2-2: New USB device found, idVendor=3D0bda, idProdu=
ct=3D9210
> >> [   39.553989] usb 2-2: New USB device strings: Mfr=3D1, Product=3D2, =
SerialNumber=3D3
> >> [   39.562354] usb 2-2: Product: MD202
> >> [   39.566641] usb 2-2: Manufacturer: HIKSEMI
> >> [   39.571606] usb 2-2: SerialNumber: 012345680663
> >> [   39.609717] calling  usb_storage_driver_init+0x0/0x1000 [usb_storag=
e] @ 2635
> >> [   39.618026] usbcore: registered new interface driver usb-storage
> >> [   39.625132] initcall usb_storage_driver_init+0x0/0x1000 [usb_storag=
e] returned 0 after 6981 usecs
> >> [   39.636463] calling  uas_driver_init+0x0/0x1000 [uas] @ 2635
> >> [   39.674761] scsi host8: uas
> >> [   39.678333] usbcore: registered new interface driver uas
> >> [   39.681043] scsi 8:0:0:0: Direct-Access     HIKSEMI  MD202         =
   1.00 PQ: 0 ANSI: 6
> >> [   39.686646] sd 8:0:0:0: Attached scsi generic sg1 type 0
> >> [   39.689021] sd 8:0:0:0: [sda] 250069680 512-byte logical blocks: (1=
28 GB/119 GiB)
> >> [   39.698524] sd 8:0:0:0: [sda] Write Protect is off
> >> [   39.698526] sd 8:0:0:0: [sda] Mode Sense: 37 00 00 08
> >> [   39.701341] sd 8:0:0:0: [sda] Write cache: enabled, read cache: ena=
bled, doesn't support DPO or FUA
> >> [   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disable=
d endpoint or incorrect stream ring
> >> [   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 00000=
000 1b000000 05038000
> >> [   39.720357]  sda: sda1
> >> [   39.737829] sd 8:0:0:0: [sda] Attached SCSI disk
> >> [   39.760140] initcall uas_driver_init+0x0/0x1000 [uas] returned 0 af=
ter 114228 usecs
> >> [   39.923773] EXT4-fs (sda1): mounted filesystem with ordered data mo=
de. Opts: (null)
> >> [  587.113528] sd 8:0:0:0: [sda] tag#27 uas_eh_abort_handler 0 uas-tag=
 28 inflight: CMD OUT
> >> [  587.123050] sd 8:0:0:0: [sda] tag#27 CDB: Write(10) 2a 00 03 6f b0 =
00 00 04 00 00
> >> [  587.131819] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disable=
d endpoint or incorrect stream ring
> >> [  587.142599] xhci_hcd 0000:0c:00.3: @000000026c61f1a0 00000000 00000=
000 1b000000 05048000
> >> [  587.152037] sd 8:0:0:0: [sda] tag#26 uas_eh_abort_handler 0 uas-tag=
 27 inflight: CMD OUT
> >> [  587.161557] sd 8:0:0:0: [sda] tag#26 CDB: Write(10) 2a 00 03 6f ac =
00 00 04 00 00
> >> [  587.170317] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disable=
d endpoint or incorrect stream ring
> >> [  587.181095] xhci_hcd 0000:0c:00.3: @000000026c61f1c0 00000000 00000=
000 1b000000 05048000
> >> [  587.190530] sd 8:0:0:0: [sda] tag#25 uas_eh_abort_handler 0 uas-tag=
 26 inflight: CMD OUT
> >> [  587.200046] sd 8:0:0:0: [sda] tag#25 CDB: Write(10) 2a 00 03 6f a8 =
00 00 04 00 00
> >> [  587.208804] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disable=
d endpoint or incorrect stream ring
> >> [  587.219574] xhci_hcd 0000:0c:00.3: @000000026c61f1e0 00000000 00000=
000 1b000000 05048000
> >> [  587.229006] sd 8:0:0:0: [sda] tag#24 uas_eh_abort_handler 0 uas-tag=
 25 inflight: CMD OUT
> >> [  587.238523] sd 8:0:0:0: [sda] tag#24 CDB: Write(10) 2a 00 03 6f a4 =
00 00 04 00 00
> >> [  587.247270] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disable=
d endpoint or incorrect stream ring
> >> [  587.258047] xhci_hcd 0000:0c:00.3: @000000026c61f200 00000000 00000=
000 1b000000 05048000
> >> [  587.267471] sd 8:0:0:0: [sda] tag#23 uas_eh_abort_handler 0 uas-tag=
 24 inflight: CMD OUT
> >> [  587.276988] sd 8:0:0:0: [sda] tag#23 CDB: Write(10) 2a 00 03 6f a0 =
00 00 04 00 00
> >> [  587.285745] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disable=
d endpoint or incorrect stream ring
> >> [  587.296522] xhci_hcd 0000:0c:00.3: @000000026c61f220 00000000 00000=
000 1b000000 05048000
> >> [  587.305955] sd 8:0:0:0: [sda] tag#22 uas_eh_abort_handler 0 uas-tag=
 23 inflight: CMD OUT
> >> [  587.315473] sd 8:0:0:0: [sda] tag#22 CDB: Write(10) 2a 00 03 6f 9c =
00 00 04 00 00
> >> ...........................
> >>
> >>   592.553969] sd 8:0:0:0: [sda] tag#1 uas_eh_abort_handler 0 uas-tag 2=
 inflight: CMD
> >> [  592.553971] sd 8:0:0:0: [sda] tag#1 CDB: Write(10) 2a 00 03 6f 48 0=
0 00 04 00 00
> >> [  592.553983] scsi host8: uas_eh_bus_reset_handler start
> >> [  592.553987] usb 2-2: cmd cmplt err -2
> >> [  592.852532] xhci_hcd 0000:0c:00.3: HC died; cleaning up
> >> [  592.858832] usb 1-1: USB disconnect, device number 2
> >> [  592.864765] usb 1-1.3: USB disconnect, device number 4
> >> [  592.870979] usb 2-2: USB disconnect, device number 0
> >> [  592.973600] usb 1-3: USB disconnect, device number 3
> >> [  593.021342] usb 1-4: USB disconnect, device number 5
> >> [  593.073210] usb 2-2: device not accepting address 2, error -22
> >> [  720.510582] INFO: task kworker/1:2:154 blocked for more than 120 se=
conds.
> >> [  720.518551]       Tainted: G         C  E   4.4.131-20210120.kylin.=
x86-generic #kylin-KylinOS
> >> [  720.528466] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disa=
bles this message.
> >> [  720.537601] kworker/1:2     D ffff88026c143c38     0   154      2 0=
x00000000
> >> [  720.545894] Workqueue: usb_hub_wq hub_event
> >> [  720.550971]  ffff88026c143c38 0000000000016300 ffff8802755bb900 fff=
f88026cb80000
> >> [  720.559673]  ffff88026c144000 ffff88026ca88100 0000000000000000 fff=
f88026cb80000
> >> [  720.568374]  ffff88026cb80000 ffff88026c143c50 ffffffff8186ae25 fff=
f88026ca880f8
> >> [  720.577076] Call Trace:
> >> [  720.580201]  [<ffffffff8186ae25>] schedule+0x35/0x80
> >> [  720.586137]  [<ffffffff8186b0ce>] schedule_preempt_disabled+0xe/0x1=
0
> >> [  720.593623]  [<ffffffff8186cb94>] __mutex_lock_slowpath+0x164/0x1e0
> >> [  720.601012]  [<ffffffff8186cc3f>] mutex_lock+0x2f/0x40
> >> [  720.607141]  [<ffffffff8162b8e9>] usb_disconnect+0x59/0x290
> >> [  720.613757]  [<ffffffff8162bb68>] hub_quiesce+0x48/0xa0
> >> [  720.619983]  [<ffffffff8162e06e>] hub_event+0x16e/0xb10
> >> [  720.626209]  [<ffffffff810af0f9>] ? ttwu_do_wakeup+0x19/0xf0
> >> [  720.632921]  [<ffffffff810af26d>] ? ttwu_do_activate.constprop.91+0=
x5d/0x70
> >> [  720.641086]  [<ffffffff810afd19>] ? try_to_wake_up+0x49/0x400
> >> [  720.647896]  [<ffffffff810f2445>] ? lock_timer_base+0x55/0x70
> >> [  720.654704]  [<ffffffff8109d70b>] process_one_work+0x16b/0x4b0
> >> [  720.661609]  [<ffffffff8109da9b>] worker_thread+0x4b/0x4d0
> >> [  720.668124]  [<ffffffff8109da50>] ? process_one_work+0x4b0/0x4b0
> >> [  720.675224]  [<ffffffff810a3ee7>] kthread+0xe7/0x100
> >> [  720.681162]  [<ffffffff810a3e00>] ? kthread_create_on_node+0x1e0/0x=
1e0
> >> [  720.688845]  [<ffffffff818700b5>] ret_from_fork+0x55/0x80
> >> [  720.695263]  [<ffffffff810a3e00>] ? kthread_create_on_node+0x1e0/0x=
1e0
> >> [  720.702947] INFO: task kworker/u32:6:254 blocked for more than 120 =
seconds.
> >> [  720.711112]       Tainted: G         C  E   4.4.131-20210120.kylin.=
x86-generic #kylin-KylinOS
> >> [  720.721021] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disa=
bles this message.
> >> [  720.730153] kworker/u32:6   D ffff88026bb475e8     0   254      2 0=
x00000000
> >> [  720.738438] Workqueue: writeback wb_workfn (flush-8:0)
> >> [  720.744593]  ffff88026bb475e8 0000000000000200 ffff88026ab81c80 fff=
f880275318000
> >> [  720.753297]  ffff88026bb48000 ffff88027ec56300 7fffffffffffffff fff=
f8801c0b48060
> >> [  720.762001]  ffff8801c0b48000 ffff88026bb47600 ffffffff8186ae25 000=
0000000000000
> >> [  720.770705] Call Trace:
> >> [  720.773823]  [<ffffffff8186ae25>] schedule+0x35/0x80
> >> [  720.779762]  [<ffffffff8186e446>] schedule_timeout+0x1b6/0x270
> >> [  720.786670]  [<ffffffff810fc2ee>] ? ktime_get+0x3e/0xb0
> >> [  720.792897]  [<ffffffff8186a594>] io_schedule_timeout+0xa4/0x110
> >> [  720.799995]  [<ffffffff813c4971>] get_request+0x411/0x7a0
> >>
> >>   TKS!
> >>
> >>
> >> ----
> >>
> >>
> >>
> >>
> >>
> >>
> >> =E4=B8=BB=E3=80=80=E9=A2=98=EF=BC=9ARe: [PATCH] Revert "usb-storage: A=
dd Hiksemi USB3-FW to IGNORE_UAS"
> >> =E6=97=A5=E3=80=80=E6=9C=9F=EF=BC=9A2023-01-09 20:16
> >> =E5=8F=91=E4=BB=B6=E4=BA=BA=EF=BC=9Aqkrwngud825
> >> =E6=94=B6=E4=BB=B6=E4=BA=BA=EF=BC=9Aoneukum;
> >>
> >> Hi Oliver,
> >>
> >> On Mon, Jan 9, 2023 at 9:02 PM Oliver Neukum wrote:
> >> >
> >> >
> >> >
> >> > On 09.01.23 12:55, Juhyung Park wrote:
> >> > > This reverts commit e00b488e813f0f1ad9f778e771b7cd2fe2877023.
> >> > >
> >> > > The commit e00b488e813f ("usb-storage: Add Hiksemi USB3-FW to IGNO=
RE_UAS")
> >> > > blacklists UAS for the entire RTL9210 enclosures. Realtek's Vendor=
Id is 0x0bda
> >> > > and RTL9210 enclosures reports 0x9210 for its ProductId.
> >> > >
> >> > > The RTL9210 controller was advertised with UAS since its release b=
ack in 2019
> >> > > and was shipped with a lot of enclosure products with different fi=
rmware
> >> > > combinations.
> >> > >
> >> > > If UAS blacklisting is really required said product (Hiksemi USB3-=
FW), it
> >> > > should be done without blacklisting the entire RTL9210 products.
> >> >
> >> > Hi,
> >> >
> >> > I see this the issue. Do you have an idea how to limit the scope.
> >>
> >> Unfortunately, no.
> >>
> >> This might be the ugly case where, if a proper workaround could be
> >> found (if the original report is valid at all), it may change the code
> >> logic itself with some if branch rather than just unusual_uas.h.
> >>
> >> With my RTL9210 enclosure, using multiple different firmware versions
> >> still reports the same bcdDevice.
> >>
> >> Note that, despite Hongling reporting that Windows doesn't use UAS in
> >> https://lore.kernel.org/all/fbeffee7-3ac5-4798-14b0-724e0ed01947@126.c=
om/
> >> , Windows uses it on mine and respectively trim works.
> >>
> >> >
> >> > Hongling Zeng, do you have an idea, respectively if not, could
> >> > you provide "lsusb -v" for the defective device?
> >> >
> >>
> >> Hongling didn't respond to Greg when he asked the same question back
> >> in November: https://lore.kernel.org/all/Y29RtXGcey6V9iTY@kroah.com/
> >>
> >> Anyways, here's my lsusb -v output. Hope it helps:
> >> Bus 004 Device 002: ID 0bda:9210 Realtek Semiconductor Corp. RTL9210
> >> M.2 NVME Adapter
> >> Device Descriptor:
> >> bLength 18
> >> bDescriptorType 1
> >> bcdUSB 3.20
> >> bDeviceClass 0
> >> bDeviceSubClass 0
> >> bDeviceProtocol 0
> >> bMaxPacketSize0 9
> >> idVendor 0x0bda Realtek Semiconductor Corp.
> >> idProduct 0x9210 RTL9210 M.2 NVME Adapter
> >> bcdDevice 20.01
> >> iManufacturer 1 Realtek
> >> iProduct 2 RTL9210
> >> iSerial 3 012345678906
> >> bNumConfigurations 1
> >> Configuration Descriptor:
> >> bLength 9
> >> bDescriptorType 2
> >> wTotalLength 0x0079
> >> bNumInterfaces 1
> >> bConfigurationValue 1
> >> iConfiguration 0
> >> bmAttributes 0x80
> >> (Bus Powered)
> >> MaxPower 896mA
> >> Interface Descriptor:
> >> bLength 9
> >> bDescriptorType 4
> >> bInterfaceNumber 0
> >> bAlternateSetting 0
> >> bNumEndpoints 2
> >> bInterfaceClass 8 Mass Storage
> >> bInterfaceSubClass 6 SCSI
> >> bInterfaceProtocol 80 Bulk-Only
> >> iInterface 0
> >> Endpoint Descriptor:
> >> bLength 7
> >> bDescriptorType 5
> >> bEndpointAddress 0x81 EP 1 IN
> >> bmAttributes 2
> >> Transfer Type Bulk
> >> Synch Type None
> >> Usage Type Data
> >> wMaxPacketSize 0x0400 1x 1024 bytes
> >> bInterval 0
> >> bMaxBurst 15
> >> Endpoint Descriptor:
> >> bLength 7
> >> bDescriptorType 5
> >> bEndpointAddress 0x02 EP 2 OUT
> >> bmAttributes 2
> >> Transfer Type Bulk
> >> Synch Type None
> >> Usage Type Data
> >> wMaxPacketSize 0x0400 1x 1024 bytes
> >> bInterval 0
> >> bMaxBurst 15
> >> Interface Descriptor:
> >> bLength 9
> >> bDescriptorType 4
> >> bInterfaceNumber 0
> >> bAlternateSetting 1
> >> bNumEndpoints 4
> >> bInterfaceClass 8 Mass Storage
> >> bInterfaceSubClass 6 SCSI
> >> bInterfaceProtocol 98
> >> iInterface 0
> >> Endpoint Descriptor:
> >> bLength 7
> >> bDescriptorType 5
> >> bEndpointAddress 0x81 EP 1 IN
> >> bmAttributes 2
> >> Transfer Type Bulk
> >> Synch Type None
> >> Usage Type Data
> >> wMaxPacketSize 0x0400 1x 1024 bytes
> >> bInterval 0
> >> bMaxBurst 15
> >> MaxStreams 32
> >> Data-in pipe (0x03)
> >> Endpoint Descriptor:
> >> bLength 7
> >> bDescriptorType 5
> >> bEndpointAddress 0x02 EP 2 OUT
> >> bmAttributes 2
> >> Transfer Type Bulk
> >> Synch Type None
> >> Usage Type Data
> >> wMaxPacketSize 0x0400 1x 1024 bytes
> >> bInterval 0
> >> bMaxBurst 15
> >> MaxStreams 32
> >> Data-out pipe (0x04)
> >> Endpoint Descriptor:
> >> bLength 7
> >> bDescriptorType 5
> >> bEndpointAddress 0x83 EP 3 IN
> >> bmAttributes 2
> >> Transfer Type Bulk
> >> Synch Type None
> >> Usage Type Data
> >> wMaxPacketSize 0x0400 1x 1024 bytes
> >> bInterval 0
> >> bMaxBurst 15
> >> MaxStreams 32
> >> Status pipe (0x02)
> >> Endpoint Descriptor:
> >> bLength 7
> >> bDescriptorType 5
> >> bEndpointAddress 0x04 EP 4 OUT
> >> bmAttributes 2
> >> Transfer Type Bulk
> >> Synch Type None
> >> Usage Type Data
> >> wMaxPacketSize 0x0400 1x 1024 bytes
> >> bInterval 0
> >> bMaxBurst 0
> >> Command pipe (0x01)
> >> Binary Object Store Descriptor:
> >> bLength 5
> >> bDescriptorType 15
> >> wTotalLength 0x003e
> >> bNumDeviceCaps 4
> >> USB 2.0 Extension Device Capability:
> >> bLength 7
> >> bDescriptorType 16
> >> bDevCapabilityType 2
> >> bmAttributes 0x00000006
> >> BESL Link Power Management (LPM) Supported
> >> SuperSpeed USB Device Capability:
> >> bLength 10
> >> bDescriptorType 16
> >> bDevCapabilityType 3
> >> bmAttributes 0x00
> >> wSpeedsSupported 0x000e
> >> Device can operate at Full Speed (12Mbps)
> >> Device can operate at High Speed (480Mbps)
> >> Device can operate at SuperSpeed (5Gbps)
> >> bFunctionalitySupport 1
> >> Lowest fully-functional device speed is Full Speed (12Mbps)
> >> bU1DevExitLat 10 micro seconds
> >> bU2DevExitLat 2047 micro seconds
> >> SuperSpeedPlus USB Device Capability:
> >> bLength 20
> >> bDescriptorType 16
> >> bDevCapabilityType 10
> >> bmAttributes 0x00000001
> >> Sublink Speed Attribute count 1
> >> Sublink Speed ID count 0
> >> wFunctionalitySupport 0x1100
> >> bmSublinkSpeedAttr[0] 0x000a4030
> >> Speed Attribute ID: 0 10Gb/s Symmetric RX SuperSpeedPlus
> >> bmSublinkSpeedAttr[1] 0x000a40b0
> >> Speed Attribute ID: 0 10Gb/s Symmetric TX SuperSpeedPlus
> >> Container ID Device Capability:
> >> bLength 20
> >> bDescriptorType 16
> >> bDevCapabilityType 4
> >> bReserved 0
> >> ContainerID {03020100-0504-0706-0002-020200020202}
> >> Device Status: 0x0000
> >> (Bus Powered)
> >>
> >>
> >> > Regards
> >> > Oliver

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CAD14%2Bf3De%2B0oPaq0hOo0D%2BsiTvZDN=
nBXg7Qg6fKNDh63zVh8Lg%40mail.gmail.com.
