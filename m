Return-Path: <usb-storage+bncBCENHXXO3EBRBH5P6TCAMGQEHS7N5CY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF26B25701
	for <lists+usb-storage@lfdr.de>; Thu, 14 Aug 2025 00:54:25 +0200 (CEST)
Received: by mail-pf1-x445.google.com with SMTP id d2e1a72fcca58-76e2eb9bb19sf566743b3a.3
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 15:54:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755125664; cv=pass;
        d=google.com; s=arc-20240605;
        b=kphS1w7EUcMps5h4Iocc1Q7kdziMpMWrckKTpfLJXyda/QKs3Hbxq5iZcLbGs/TXOQ
         BTlIO42g/LIIpSdOD8zuuhLQV40+CXZSEPYbSN5iMpTZR5S36GCf1zWjuYMwf6+cB9FV
         4KJSqP3TDiDT6dThMgKp2/EGOK1pmCHU8d0a5bnPmkXLDaXdVX3IR6oQlaKVBHymC6Yn
         dIZmMPC668mxaToLzmnvyxjgMzfslZn2550ruSW0USZ1cX0MWY3Q9DxRENUkf2JAs5Eu
         2PgcXSCvL+WjYvqVu8Ac20wMttY3k9J8Zybb/JCwb3+jpdACcQ4av/F8LHTPwogQcacr
         SqNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=axdysFaZQvWVhTn70UtE1wyc+CsfLH7cifCwPwdWdXs=;
        fh=IMG1WKTGwXi2oo5SYEumafQzRhJVMSDvykNUsPS4SrA=;
        b=NnLg1Pt95DqpWwNcR6b8kNSCMgXbSukGGshRmVZRH7C0+7dM4Wb5BH+9KVBzuB5zha
         rV8aJ89+Vx1pnfZWv5NSJfvd9VpShKAZsUZaVTdCvMFujPL0KB0T1cl4v6LAHu2Katw1
         4bHIkfAAJEVc0S4QypgmsKH960saC/3AQvfIcspYfzsT7szCL19l5dZXpkRfqa/RVe10
         IHvLzus5X3NYeSBP4SsfVnboKUEelHQpJLoCsWeMOWyFJdjHPAaZeHcdpaBPWBPRWoV2
         YegfYDOyMDyJzwtbaFQZuOwjp9DuWu4al/KvnicdGwb/qT2AewRsfGb4jwAIUKKXqECv
         LyWg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=UDMqoUDP;
       spf=pass (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=zenmchen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755125664; x=1755730464; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=axdysFaZQvWVhTn70UtE1wyc+CsfLH7cifCwPwdWdXs=;
        b=hn2y5AsG4qgU4PCspblUsS6D69jAycaLpkgNiwJbCIybrzetBNV5gnvfo6NKfrOktE
         08ME9CZrQdIp10jBwDlZxf/UiDRxa/maBT4qH0K8DuYSuX7ZY66ohqYwVcYx/kpySdBj
         ppDULsruJQnC03AFdc+W2EHIBXvUXHk6BwAnM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755125664; x=1755730464;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=axdysFaZQvWVhTn70UtE1wyc+CsfLH7cifCwPwdWdXs=;
        b=V0Io4eeuT7mVzVBOcatUj0WG0Q2TJdPOxZbe7PFTBEbnSlU6ttZZCTyKHghusjVxSD
         5naAWaAdOlnc90+aKB1OlM0OPDwj8N2W5G+Bqqu1lEqdmgaVH9BtacHHA7y4NRmdC1mY
         5wGWemRGPK4ZWo+ONPAnpR3gNTKbmGcF+gfppFsnCWBKi/Zo5wo7nYMA7OSE2Oc/Bg8G
         8V5ulu2O4hgylAYgZLEQPQnn7AsxmVcZ5ZI2HiQpjTWGInqbMOcD0gmdvotBqRTu6R+N
         BB5N9Pf8cX4SHXH8hpULfNpYPxrWVJZfXsoeDL1Z9Vz2YNh1f7vN5xVmAVzZnqaveaId
         L41g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXTuJ9QiFG3pEy/vqhLOEphxmkeAgXAzRvbkDxdAV/CFkCtOaoGpSjOmIg69Xu3LzBEXCmF6w==@lfdr.de
X-Gm-Message-State: AOJu0YwgqjtNo1qGxgwQq3hcA9PEeHQ4C+L2UOczrRleNb1NJYhlVliy
	uZLg1UnyjRSwhs2SI9S06zv2VEahLQ/CM2kyedki7e9tk9IvmS8MXNpWQpkbr8r6jQA=
X-Google-Smtp-Source: AGHT+IFg6chRS/wmnlnmdRV7bvgrg9jviBLQnafBQECcpcyNDwME4FqCyTbXcu0Lv5917fcnnxPubA==
X-Received: by 2002:a05:6a00:9285:b0:76b:fbf4:b9d8 with SMTP id d2e1a72fcca58-76e2fbd995bmr1300126b3a.22.1755125663984;
        Wed, 13 Aug 2025 15:54:23 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZeU5cs25nD5X6OkudN3IQpBvb7r6PvzwskNQjq14cvRdw==
Received: by 2002:a05:6a00:1c89:b0:742:8b2f:6e98 with SMTP id
 d2e1a72fcca58-76e2e1d2990ls332772b3a.0.-pod-prod-08-us; Wed, 13 Aug 2025
 15:54:22 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXuR4Vkyu1D0vejXvusfgt+ML2kLZ9ciDWMjZ9Q4174mFAhqR84hbX1mv46GEoUvQF9hZp8CFG8KhBXYw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:7f96:b0:240:9126:2bde with SMTP id adf61e73a8af0-240bd2e0206mr1135861637.46.1755125662594;
        Wed, 13 Aug 2025 15:54:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755125662; cv=none;
        d=google.com; s=arc-20240605;
        b=K0kl87Nxd9htx+rcqnS31iCTMWvWtpplAWvrXqc/tDCXwaHVDl+Z6dvufOrsESMa96
         3cDIQ4cHq4WMirIR8EusBrRbgPccS15v4m4b16KiQJWLkFVNSuf/i9dQhvHgLYEi7Dxt
         ZT1Ddk5cKuPNagJ8rQ7pKBiSyS/siLUhZChC/4olOAU4z7JnwxR/2V79DSsTWozOObR3
         ChkvRsLg3sagty1qY9+q0gWWgsTYLXd2OeSSATEWXdgUbraqUvttG5DxNx07chT4EYD5
         lt6VyIFk73itEWPul2ZJrHV+/54ze6lxz7xyVvSTImqCmEvIWDXKXHgcILXqcZ4DwkOj
         zO6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3rDHn+oYNmStnVa6tSsk6HXiPZMflUf1Vr6xx73S8mY=;
        fh=xDhCU+hHyalYZO/tuHf0i6OHa6idxbVJvCLk/a5y8rQ=;
        b=MLThQ0vSbyE6eAr212yLzUQMno+EIILmgwUx5xc00i6gk2zaNfLM/N2qIk5lan/fvV
         UsG9V72Rsm/EAxQNOSEBfMqBRHpYRY8AeluI9AdZaqRATfc8vbTstiF6cuycQ7ARAJ6X
         02ekXte5jZ1jX6USHJs5yeS6Zs8LFT8qx4Z8RNwHV9CLV9HIptcr5PGlLi7Z5pKis4VH
         kBeRbFqIGa2KIox85syi4XLqHcv/ozu2J3g6r+R7rTS0E02hG/zkWjIjVlJu8KZW+mu+
         iser9Hun5obY+TUAtsiGECgldtVS4KSQ2u/dF4wQ9pEzc0Zp5dImAgwPRkAFCJ0Wrrgf
         Q53Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=UDMqoUDP;
       spf=pass (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=zenmchen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d2e1a72fcca58-76c2b0772f0sor14049526b3a.1.2025.08.13.15.54.22
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 13 Aug 2025 15:54:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXuBVo7BFU8rcQqtPuBJhrEyEmDepJKLDbwOqu1oZ6+D7qgvaVNYfJs3Dus6Ugb7BzAFgGel4bCRyc4zg==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncuajCoVxeAcCKIAk3M/ru7H1yR5PnqwGCyd3pzWtCpzPL4MxZw24Mfo/HjzlKZ
	wDinsWGlfrMFOx0ax+MtSEpgK79TG62QCoCbjblJ6KQGFOvuqRK5PsgDbq0B5V/dtAw/ZpzTxvJ
	yUUupxdE1P9cjNwC+6WQQgJzZd34wfWMCZ/M8ypxW0yHVHI4T7zZ2XeRyv2vG7Zl4RAnGcKi/qg
	w7CXQ0S+sc2lifB7qq/E9sdHNHU66+EbNbHO2ihMTJ0BydiwUx50G08owjCR5FP0OkzhTR2cBbh
	ZC+cb1I3rQCMa7ZamQN+kpg7bQxuIP774LoVmw6sObioaVfnDqirNH47in+LOHx8MCCY6ywgP0+
	d0Gdfd8ehuxdwuHINvWl9K2rq+L87LkW9gxYuPJ2lO8s9+3NRHoix
X-Received: by 2002:a05:6a00:124f:b0:76b:42e5:fa84 with SMTP id d2e1a72fcca58-76e2fa5b419mr1534613b3a.7.1755125661758;
        Wed, 13 Aug 2025 15:54:21 -0700 (PDT)
Received: from BM5220 (118-232-8-190.dynamic.kbronet.com.tw. [118.232.8.190])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-76bccfd1d8csm32813848b3a.101.2025.08.13.15.54.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 15:54:21 -0700 (PDT)
From: Zenm Chen <zenmchen@gmail.com>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	pkshih@realtek.com,
	rtl8821cerfe2@gmail.com,
	stable@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	usbwifi2024@gmail.com,
	zenmchen@gmail.com
Subject: [usb-storage] Re: [PATCH] USB: storage: Ignore driver CD mode for
 Realtek multi-mode Wi-Fi dongles
Date: Thu, 14 Aug 2025 06:54:15 +0800
Message-ID: <20250813225417.4792-1-zenmchen@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <03d4c721-f96d-4ace-b01e-c7adef150209@rowland.harvard.edu>
References: <03d4c721-f96d-4ace-b01e-c7adef150209@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ZenmChen@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=UDMqoUDP;       spf=pass
 (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=zenmchen@gmail.com;       dmarc=pass (p=NONE
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

Alan Stern <stern@rowland.harvard.edu> =E6=96=BC 2025=E5=B9=B48=E6=9C=8814=
=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8A=E5=8D=882:19=E5=AF=AB=E9=81=93=EF=BC=
=9A
>
> On Thu, Aug 14, 2025 at 01:53:12AM +0800, Zenm Chen wrote:
> > Alan Stern <stern@rowland.harvard.edu> =E6=96=BC 2025=E5=B9=B48=E6=9C=
=8814=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8A=E5=8D=8812:58=E5=AF=AB=E9=81=93=
=EF=BC=9A
> > >
> > > On Thu, Aug 14, 2025 at 12:24:15AM +0800, Zenm Chen wrote:
> > > > Many Realtek USB Wi-Fi dongles released in recent years have two mo=
des:
> > > > one is driver CD mode which has Windows driver onboard, another one=
 is
> > > > Wi-Fi mode. Add the US_FL_IGNORE_DEVICE quirk for these multi-mode =
devices.
> > > > Otherwise, usb_modeswitch may fail to switch them to Wi-Fi mode.
> > >
> > > There are several other entries like this already in the unusual_devs=
.h
> > > file.  But I wonder if we really still need them.  Shouldn't the
> > > usb_modeswitch program be smart enough by now to know how to handle
> > > these things?
> >
> > Hi Alan,
> >
> > Thanks for your review and reply.
> >
> > Without this patch applied, usb_modeswitch cannot switch my Mercury MW3=
10UH
> > into Wi-Fi mode [1].
>
> Don't post a link to a video; it's not very helpful.  Instead, copy the
> output from the usb_modeswitch program and include it in an email
> message.

Sorry about that.

>
> > I also ran into a similar problem like [2] with D-Link
> > AX9U, so I believe this patch is needed.
>
> Maybe it is and maybe not.  It depends on where the underlying problem
> is.  If the problem is in the device then yes, the patch probably is
> needed.  But if the problem is in usb_modeswitch then the patch probably
> is not needed.
>
> > > In theory, someone might want to access the Windows driver on the
> > > emulated CD.  With this quirk, they wouldn't be able to.
> > >
> >
> > Actually an emulated CD doesn't appear when I insert these 2 Wi-Fi dong=
les into
> > my Linux PC, so users cannot access that Windows driver even if this pa=
tch is not
> > applied.
>
> What does happen when you insert the WiFi dongle?  That is, what
> messages appear in the dmesg log?

OS: Arch Linux
Kernel version: 6.15.9-arch1-1

These are the messages shown in the kernel log when the dongles were insert=
ed.

Mercury MW310UH:=20
[ 4405.000985] usb 3-2: new high-speed USB device number 31 using ehci-pci
[ 4405.126736] usb 3-2: New USB device found, idVendor=3D0bda, idProduct=3D=
a192, bcdDevice=3D 2.00
[ 4405.126750] usb 3-2: New USB device strings: Mfr=3D1, Product=3D2, Seria=
lNumber=3D0
[ 4405.126756] usb 3-2: Product: DISK
[ 4405.126760] usb 3-2: Manufacturer: Realtek
[ 4405.127200] usb-storage 3-2:1.0: USB Mass Storage device detected
[ 4405.127632] scsi host8: usb-storage 3-2:1.0
[ 4406.155867] scsi 8:0:0:0: CD-ROM            Realtek  USB Disk autorun 1.=
00 PQ: 0 ANSI: 0 CCS
[ 4406.164982] sr 8:0:0:0: [sr0] scsi-1 drive
[ 4406.169602] sr 8:0:0:0: [sr0] Hmm, seems the drive doesn't support multi=
session CD's
[ 4406.282981] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4406.530027] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4406.776991] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4407.023992] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4407.263927] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4407.510987] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4407.757988] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4408.004967] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4408.244989] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4408.491971] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4408.738973] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4408.985967] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4409.225847] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4409.473012] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4409.719978] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4409.966958] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4410.206962] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4410.453952] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4410.700965] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4410.947959] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4411.187950] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4411.434956] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4411.681959] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4411.928970] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4412.054904] sr 8:0:0:0: Attached scsi CD-ROM sr0
[ 4412.055122] sr 8:0:0:0: Attached scsi generic sg3 type 5
[ 4412.168955] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4412.416956] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4412.663960] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4412.910947] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4413.150951] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4413.397994] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4413.645959] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4413.892990] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4414.133942] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4414.380798] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4414.621191] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4414.867934] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4415.117949] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4415.364797] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i

... Countless "usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i" appearred here.

[ 4854.437661] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4854.684646] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4856.951643] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4857.198641] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4857.445642] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4857.692644] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4859.959629] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4860.207512] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4860.454675] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4860.701628] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4862.968616] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4863.215613] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4863.462670] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4863.709608] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4865.975479] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4866.224610] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4866.471590] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4866.718605] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4868.983453] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4869.230624] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4869.477582] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i
[ 4869.724579] usb 3-2: reset high-speed USB device number 31 using ehci-pc=
i



D-Link AX9U:
[ 6400.069566] usb 3-2: new high-speed USB device number 38 using ehci-pci
[ 6400.195236] usb 3-2: New USB device found, idVendor=3D0bda, idProduct=3D=
1a2b, bcdDevice=3D 0.00
[ 6400.195250] usb 3-2: New USB device strings: Mfr=3D1, Product=3D2, Seria=
lNumber=3D0
[ 6400.195256] usb 3-2: Product: DISK
[ 6400.195261] usb 3-2: Manufacturer: Realtek
[ 6400.197475] usb-storage 3-2:1.0: USB Mass Storage device detected
[ 6400.197768] scsi host8: usb-storage 3-2:1.0
[ 6401.481648] scsi 8:0:0:0: CD-ROM            RTK      Driver Storage   2.=
04 PQ: 0 ANSI: 0 CCS
[ 6401.483955] sr 8:0:0:0: [sr0] scsi3-mmc drive: 0x/0x caddy
[ 6401.487626] sr 8:0:0:0: Attached scsi CD-ROM sr0
[ 6401.487828] sr 8:0:0:0: Attached scsi generic sg3 type 5
[ 6432.007456] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6462.723317] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6493.447105] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6524.163962] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6554.882745] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6565.190684] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6595.846508] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6626.562333] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6657.283170] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6688.002984] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6718.721814] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6749.445506] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6759.549662] INFO: task (udev-worker):2838 blocked for more than 122 seco=
nds.
[ 6759.549677]       Not tainted 6.15.9-arch1-1 #1
[ 6759.549682] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables =
this message.
[ 6759.549685] task:(udev-worker)   state:D stack:0     pid:2838  tgid:2838=
  ppid:329    task_flags:0x400140 flags:0x00004002
[ 6759.549697] Call Trace:
[ 6759.549701]  <TASK>
[ 6759.549709]  __schedule+0x409/0x1330
[ 6759.549727]  schedule+0x27/0xd0
[ 6759.549735]  schedule_preempt_disabled+0x15/0x30
[ 6759.549743]  __mutex_lock.constprop.0+0x481/0x880
[ 6759.549754]  ? __pfx_blkdev_open+0x10/0x10
[ 6759.549763]  bdev_open+0x2a0/0x3d0
[ 6759.549771]  ? __pfx_blkdev_open+0x10/0x10
[ 6759.549777]  blkdev_open+0xa5/0x100
[ 6759.549785]  do_dentry_open+0x170/0x5d0
[ 6759.549794]  vfs_open+0x30/0x100
[ 6759.549804]  path_openat+0x717/0x1300
[ 6759.549813]  ? path_openat+0x98c/0x1300
[ 6759.549821]  do_filp_open+0xd8/0x180
[ 6759.549834]  do_sys_openat2+0x88/0xe0
[ 6759.549841]  __x64_sys_openat+0x61/0xa0
[ 6759.549847]  do_syscall_64+0x7b/0x810
[ 6759.549856]  ? do_syscall_64+0x87/0x810
[ 6759.549863]  ? do_syscall_64+0x87/0x810
[ 6759.549869]  ? set_pte_range+0xe2/0x200
[ 6759.549879]  ? set_ptes.isra.0+0x36/0x80
[ 6759.549886]  ? finish_fault+0x22f/0x460
[ 6759.549895]  ? do_fault+0x3a7/0x5b0
[ 6759.549903]  ? ___pte_offset_map+0x1b/0x180
[ 6759.549912]  ? __handle_mm_fault+0x7de/0xfd0
[ 6759.549918]  ? do_epoll_ctl+0xa80/0xdd0
[ 6759.549926]  ? __count_memcg_events+0xb0/0x150
[ 6759.549934]  ? count_memcg_events.constprop.0+0x1a/0x30
[ 6759.549941]  ? handle_mm_fault+0x1d2/0x2d0
[ 6759.549948]  ? do_user_addr_fault+0x181/0x690
[ 6759.549957]  ? irqentry_exit_to_user_mode+0x2c/0x1b0
[ 6759.549966]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[ 6759.549974] RIP: 0033:0x7fc19fe931ce
[ 6759.549995] RSP: 002b:00007ffe87a741b0 EFLAGS: 00000202 ORIG_RAX: 000000=
0000000101
[ 6759.550003] RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007fc19fe=
931ce
[ 6759.550008] RDX: 0000000000080900 RSI: 00007ffe87a74270 RDI: fffffffffff=
fff9c
[ 6759.550012] RBP: 00007ffe87a741c0 R08: 0000000000000000 R09: 00000000000=
00000
[ 6759.550017] R10: 0000000000000000 R11: 0000000000000202 R12: 000055eaf18=
c4470
[ 6759.550021] R13: 00007ffe87a74500 R14: 0000000000080900 R15: 00000000000=
00015
[ 6759.550030]  </TASK>
[ 6759.550054] INFO: task (udev-worker):2838 is blocked on a mutex likely o=
wned by task udisksd:706.
[ 6759.550059] task:udisksd         state:D stack:0     pid:706   tgid:706 =
  ppid:1      task_flags:0x400100 flags:0x00004002
[ 6759.550068] Call Trace:
[ 6759.550071]  <TASK>
[ 6759.550075]  __schedule+0x409/0x1330
[ 6759.550084]  ? lock_timer_base+0x70/0x90
[ 6759.550094]  schedule+0x27/0xd0
[ 6759.550101]  schedule_timeout+0x83/0x100
[ 6759.550109]  ? __pfx_process_timeout+0x10/0x10
[ 6759.550117]  io_schedule_timeout+0x5b/0x90
[ 6759.550124]  wait_for_completion_io_timeout+0x7f/0x1a0
[ 6759.550134]  blk_execute_rq+0xee/0x170
[ 6759.550145]  scsi_execute_cmd+0x100/0x420
[ 6759.550157]  scsi_test_unit_ready+0x6f/0xf0
[ 6759.550172]  sr_drive_status+0x57/0x120 [sr_mod de25504f195c3fb7b76d1632=
70dae636af6d4152]
[ 6759.550187]  cdrom_open+0xd4/0xab0 [cdrom ff26b01442b014534657abb98fa7fb=
688822fb56]
[ 6759.550208]  ? __disk_unblock_events+0x26/0xc0
[ 6759.550219]  ? disk_check_media_change+0x96/0xe0
[ 6759.550229]  sr_block_open+0x71/0x110 [sr_mod de25504f195c3fb7b76d163270=
dae636af6d4152]
[ 6759.550239]  ? __pfx_blkdev_open+0x10/0x10
[ 6759.550246]  blkdev_get_whole+0x2c/0xe0
[ 6759.550253]  ? __pfx_blkdev_open+0x10/0x10
[ 6759.550259]  bdev_open+0x201/0x3d0
[ 6759.550266]  ? __pfx_blkdev_open+0x10/0x10
[ 6759.550272]  blkdev_open+0xa5/0x100
[ 6759.550279]  do_dentry_open+0x170/0x5d0
[ 6759.550287]  vfs_open+0x30/0x100
[ 6759.550296]  path_openat+0x717/0x1300
[ 6759.550304]  ? __memcg_slab_free_hook+0xf7/0x140
[ 6759.550312]  do_filp_open+0xd8/0x180
[ 6759.550325]  do_sys_openat2+0x88/0xe0
[ 6759.550386]  __x64_sys_openat+0x61/0xa0
[ 6759.550397]  do_syscall_64+0x7b/0x810
[ 6759.550406]  ? vfs_read+0x2af/0x390
[ 6759.550419]  ? ksys_read+0xa8/0xe0
[ 6759.550429]  ? syscall_exit_to_user_mode+0x37/0x1c0
[ 6759.550439]  ? do_syscall_64+0x87/0x810
[ 6759.550448]  ? irqentry_exit_to_user_mode+0x2c/0x1b0
[ 6759.550458]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[ 6759.550466] RIP: 0033:0x7f3ced89f042
[ 6759.550479] RSP: 002b:00007fff0e8d04f8 EFLAGS: 00000246 ORIG_RAX: 000000=
0000000101
[ 6759.550488] RAX: ffffffffffffffda RBX: 0000562237bedca0 RCX: 00007f3ced8=
9f042
[ 6759.550494] RDX: 0000000000000000 RSI: 0000562237bbc6e0 RDI: fffffffffff=
fff9c
[ 6759.550499] RBP: 00007fff0e8d0520 R08: 0000000000000000 R09: 00000000000=
00000
[ 6759.550504] R10: 0000000000000000 R11: 0000000000000246 R12: 00007fff0e8=
d0650
[ 6759.550509] R13: 00007fff0e8d0654 R14: 0000562237bf1b80 R15: 0000562237b=
b0fe0
[ 6759.550520]  </TASK>
[ 6780.163423] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6787.459425] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6797.765312] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6828.289146] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6859.013081] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6889.732859] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6900.036820] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6930.692665] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6961.412477] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 6992.132215] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 7022.852189] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i
[ 7030.145050] usb 3-2: reset high-speed USB device number 38 using ehci-pc=
i


When trying to mount these two Wi-Fi dongles' driver CD, I got this error.
$ sudo mount /dev/sr0 /mnt/tmp
mount: /mnt/tmp: fsconfig() failed: /dev/sr0: Can't open blockdev.
       dmesg(1) may have more information after failed mount system call.


usb_modeswitch can switch D-Link AX9U into Wi-Fi mode successfully, but it =
took a=20
very long time (about 40 seconds).

$ lsusb
Bus 001 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 001 Device 002: ID 0bda:5852 Realtek Semiconductor Corp. Bluetooth Radi=
o
Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 003 Device 002: ID 2717:4106 Xiaomi Inc. MediaTek MT7601U [MI WiFi]
Bus 003 Device 035: ID 0bda:1a2b Realtek Semiconductor Corp. RTL8188GU 802.=
11n WLAN Adapter (Driver CDROM Mode)
Bus 004 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 004 Device 002: ID 046d:c077 Logitech, Inc. Mouse
Bus 004 Device 003: ID 05af:1023 Jing-Mold Enterprise Co., Ltd Ghost Key El=
imiantion Keyboard
Bus 005 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 006 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 007 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 008 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub

$ sudo  usb_modeswitch -v 0bda -p 1a2b -KW
Take all parameters from the command line


 * usb_modeswitch: handle USB devices with multiple modes
 * Version 2.6.2 (C) Josua Dietze 2017
 * Based on libusb1/libusbx

 ! PLEASE REPORT NEW CONFIGURATIONS !

DefaultVendor=3D  0x0bda
DefaultProduct=3D 0x1a2b

StandardEject=3D1

Look for default devices ...
  found USB ID 2717:4106
  found USB ID 0bda:1a2b
   vendor ID matched
   product ID matched
  found USB ID 1d6b:0002
  found USB ID 05af:1023
  found USB ID 046d:c077
  found USB ID 1d6b:0001
  found USB ID 1d6b:0002
  found USB ID 0bda:5852
   vendor ID matched
  found USB ID 1d6b:0001
  found USB ID 1d6b:0003
  found USB ID 1d6b:0002
  found USB ID 1d6b:0003
  found USB ID 1d6b:0002
 Found devices in default mode (1)
Access device 035 on bus 003
Get the current device configuration ...
Current configuration number is 1
Use interface number 0
 with class 8
Use endpoints 0x05 (out) and 0x84 (in)

USB description data (for identification)
-------------------------
Manufacturer: Realtek
     Product: DISK
  Serial No.: not provided
-------------------------
Sending standard EJECT sequence
Looking for active drivers ...
 OK, driver detached
Set up interface 0
Use endpoint 0x05 for message sending ...
Trying to send message 1 to endpoint 0x05 ...
 Sending the message returned error -7. Try to continue
Read the response to message 1 (CSW) ...
 Response successfully read (13 bytes), status 1
Trying to send message 2 to endpoint 0x05 ...
 OK, message successfully sent
Read the response to message 2 (CSW) ...
 Response successfully read (13 bytes), status 0
Trying to send message 3 to endpoint 0x05 ...
libusb: error [submit_bulk_transfer] submiturb failed, errno=3D113
 Sending the message returned error -1. Try to continue
Read the response to message 3 (CSW) ...
 Device seems to have vanished after reading. Good.
 Device is gone, skip any further commands
-> Run lsusb to note any changes. Bye!

$ lsusb
Bus 001 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 001 Device 002: ID 0bda:5852 Realtek Semiconductor Corp. Bluetooth Radi=
o
Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 003 Device 002: ID 2717:4106 Xiaomi Inc. MediaTek MT7601U [MI WiFi]
Bus 003 Device 036: ID 2001:332a D-Link Corp. 802.11ax WLAN Adapter
Bus 004 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 004 Device 002: ID 046d:c077 Logitech, Inc. Mouse
Bus 004 Device 003: ID 05af:1023 Jing-Mold Enterprise Co., Ltd Ghost Key El=
imiantion Keyboard
Bus 005 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 006 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 007 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 008 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub


On the other side, Mercury MW310UH cannot be switched successfully.

$ sudo  usb_modeswitch -v 0bda -p a192 -KW
Take all parameters from the command line


 * usb_modeswitch: handle USB devices with multiple modes
 * Version 2.6.2 (C) Josua Dietze 2017
 * Based on libusb1/libusbx

 ! PLEASE REPORT NEW CONFIGURATIONS !

DefaultVendor=3D  0x0bda
DefaultProduct=3D 0xa192

StandardEject=3D1

Look for default devices ...
  found USB ID 2717:4106
  found USB ID 0bda:a192
   vendor ID matched
   product ID matched
  found USB ID 1d6b:0002
  found USB ID 05af:1023
  found USB ID 046d:c077
  found USB ID 1d6b:0001
  found USB ID 1d6b:0002
  found USB ID 0bda:5852
   vendor ID matched
  found USB ID 1d6b:0001
  found USB ID 1d6b:0003
  found USB ID 1d6b:0002
  found USB ID 1d6b:0003
  found USB ID 1d6b:0002
 Found devices in default mode (1)
Access device 033 on bus 003
Get the current device configuration ...
Current configuration number is 1
Use interface number 0
 with class 8
Use endpoints 0x0b (out) and 0x8a (in)

USB description data (for identification)
-------------------------
Manufacturer: Realtek
     Product: DISK
  Serial No.: not provided
-------------------------
Sending standard EJECT sequence
Looking for active drivers ...
 OK, driver detached
Set up interface 0
Use endpoint 0x0b for message sending ...
Trying to send message 1 to endpoint 0x0b ...
 OK, message successfully sent
Read the response to message 1 (CSW) ...
 Response reading failed (error -8)
 Device is gone, skip any further commands
-> Run lsusb to note any changes. Bye!

$ lsusb
Bus 001 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 001 Device 002: ID 0bda:5852 Realtek Semiconductor Corp. Bluetooth Radi=
o
Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 003 Device 002: ID 2717:4106 Xiaomi Inc. MediaTek MT7601U [MI WiFi]
Bus 003 Device 033: ID 0bda:a192 Realtek Semiconductor Corp. DISK
Bus 004 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 004 Device 002: ID 046d:c077 Logitech, Inc. Mouse
Bus 004 Device 003: ID 05af:1023 Jing-Mold Enterprise Co., Ltd Ghost Key El=
imiantion Keyboard
Bus 005 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 006 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 007 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 008 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub

>
> Also, can you collect a usbmon trace showing what happens when the
> dongle is plugged in?

I am not familiar with this, but I will try these days, thank you!

>
> Alan Stern

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250813225417.4792-1-zenmchen%40gmail.com.
