Return-Path: <usb-storage+bncBCJKP7ES3YDRBC4MW32QKGQEGG2SHWY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C1A1C263F
	for <lists+usb-storage@lfdr.de>; Sat,  2 May 2020 16:39:08 +0200 (CEST)
Received: by mail-oo1-xc47.google.com with SMTP id h9sf4612512oot.19
        for <lists+usb-storage@lfdr.de>; Sat, 02 May 2020 07:39:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588430347; cv=pass;
        d=google.com; s=arc-20160816;
        b=H9zudJ87zx4cj4OXBvmR9dNG1IlKGFNHgtFQxYVLjoqyK2exKxGd/zAfwDgIM2lD1I
         332EKThqeO6bMqPU9sYG9IwBnA0bj3vVBMxu8L3g+QtQnlscgPiwlb2mSWqVsujIJz/L
         oTvXMq859A84g1sv9iskjrSizZjvlTJBfog6WD6c+sa2qmBxWA7mk2VUjhC02iEauTRL
         tYSXknWqvgRxWdrs60JaHnBGeQh3r0L9gjxXxJDNUPbeUHD6E1HisvrVwbZD4Jimpv09
         iE3HtLFVhuWwkFT9krvogy/FLszCnZSb9QSDwYJu6Qen4bIOJDMbku01gtmtILX4Mgpm
         vSvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=FZN0Kf9pF5pXNLTpXTA1oLX+Q22syHk/xsEOF3g8nuc=;
        b=ULdSXcFaZ/R7F7emCKzBnjrC27P8AlcafNorKtr/VzY98imcOAlkrmTt6HmBb/V0of
         1Z/vG6auvMzOliPPNhFdNPmC+Kz3DvazC1HwuW8lnc4cZPR7x9cAHgu7Hfl5mUz5zckq
         4eN4GhgHSwXmObnBUexcgXdJ6mV9jQog1cu5+Z/7vgVqxXDeMGr3amDw3LKSd15mjIlB
         ZjwY+LYKWh6YaRBlrPPQ7sT4W0iP3SZT28ugWy7Ozq1y1k4yYjUI+Vyo8TpLCADvaNjX
         JIgW0TGDTHOI/rJ6F5Jlu3wp5RzcI/cVCExKroRE7nnojnoi+nnLjyoDSsxXzsb9OMDb
         S6fQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=EtPyzlcR;
       spf=pass (google.com: domain of jilin@nvidia.com designates 216.228.121.64 as permitted sender) smtp.mailfrom=jilin@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FZN0Kf9pF5pXNLTpXTA1oLX+Q22syHk/xsEOF3g8nuc=;
        b=OImvUceVdNWO7m8cUw6bSFcJ5QEPz2vxxSTN/9sB2y1Sbku+4YD+3HCD1wfac8s6tE
         EvFNQk7q/G1gDz8EAtijXZXipzIbWdbBCsZVh+aweAPEMCjuxbCytkF+kS9UTeuyBxmg
         OtIECvQ3doDv5hYq0mLSDbZQyVI2vqn/gHLno=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FZN0Kf9pF5pXNLTpXTA1oLX+Q22syHk/xsEOF3g8nuc=;
        b=Cclvp0ssGGnqtLc9FECKqfXTj8BoMg4JtW7BmgMTgmC2pWYb6bPMKyQfHgvvBgsTj3
         PIy3d+JeVppZ7iscuBKbe0OGxA5NvpouNOAiEu44k4DSjZvDJ8okmxYK9g+IAmtyXDHG
         iiXL5hwaCNuQFQ/fx7d4SNQe4ERkV74/Hw/hZduZcJVskdcPFNyW7yKMt5MqU37Za9Ct
         qYzNt5/xgxuyLciKjCF15/vP5bNAnHz7WaTE0VfkqGDv6yrCzeNh22DwCaHdBRoahaq2
         s/vhawJM5/yqDsRQGUlsiDMQJyHwkRhMrITF7BE5cARu2zXEAb7X9lhOmPH2jYV4RqHV
         KBgA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AGi0PubKNtReg4Vq6k4zp7J1Atxm+XCCOJITXwx+7KsR7daTmsn0crNd
	qggw1xKQbHOUx/DnbJ3Q3CZ2kQ==
X-Google-Smtp-Source: APiQypKLkjpbGv4x5X2UUTv9CX+kXE4YkpudqUneg9v9bsu3f43XBIaED1C4ToYZwED0VaM5TSXzYg==
X-Received: by 2002:a9d:7d91:: with SMTP id j17mr7527658otn.342.1588430347380;
        Sat, 02 May 2020 07:39:07 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:c648:: with SMTP id w69ls1806112oif.7.gmail; Sat, 02 May
 2020 07:39:06 -0700 (PDT)
X-Received: by 2002:aca:40d4:: with SMTP id n203mr3353066oia.39.1588430346769;
        Sat, 02 May 2020 07:39:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588430346; cv=none;
        d=google.com; s=arc-20160816;
        b=IlRG1JdLEzBti8WPtnDkoEjKvywbjsXLAu+VoaRb5Huel7W+KFBnVyS7synEVTxPco
         Tfa4DECFRnDt6wcOA3xLazgw0Op7n9utD9Wl1/oWbL4nLPSrHM42XYEUzw1Z9OhT3cRz
         RGz2sFqVWQitHeyNgn+E2tTuJ3hB45ck29Cx43QFEmmaHb20ZS+dMftgiEVyMNkLwPg+
         rVev2Md2GI/bLudcb0MUqddyNaXiLzDDSVvTxe05Xz4aac6WuigXYtHbkIijCR4BrGqF
         +Nnx+dGYGKAUclgOJevbIowaDKebCNNVCKQAfDVpAQKE0EJiPcK8pxMD/B9uwR4r+R+a
         fNjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:content-language:content-transfer-encoding
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject;
        bh=WJWe42077RpjHfQ/CpX5k50QCVIvt8rFljDJstapEXI=;
        b=Dv5UiGmrd8LIUsYPlSOB7IxrpSvW0jVMsa/6ZwGba5Fx3AJB8SA/SAWDTuG//iJxZW
         +Cn6U39gbPH0Sd/hTKhhTw65sDEz/5qQWgR+I4rXIdI2nm6vhYivgf8o4+ZwZaXPxVGc
         QYUjsHR6Bn0deMUDPzrf7hNXpjVQYm3AUyz6MmKhbIylKRhVETyAbF85DHAK/Zt+0Fyc
         0jg5OZvHiWgSk9PjImlytS4KWGOVpr9P0E7NWDknKeyDiHG74zDe6ZQ9jPkaUdjTJoTs
         S5KKs1Xwy32xbyW6MFcwFgbjrJYMlkcvkH3J8++lTo5g7Ap70I6yvrvws8w//Em168D/
         yR6Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=EtPyzlcR;
       spf=pass (google.com: domain of jilin@nvidia.com designates 216.228.121.64 as permitted sender) smtp.mailfrom=jilin@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqnvemgate25.nvidia.com (hqnvemgate25.nvidia.com. [216.228.121.64])
        by mx.google.com with ESMTPS id l19si2796866otj.192.2020.05.02.07.39.06
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 May 2020 07:39:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of jilin@nvidia.com designates 216.228.121.64 as permitted sender) client-ip=216.228.121.64;
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
	id <B5ead85c50000>; Sat, 02 May 2020 07:37:57 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
  by hqpgpgate102.nvidia.com (PGP Universal service);
  Sat, 02 May 2020 07:39:05 -0700
X-PGP-Universal: processed;
	by hqpgpgate102.nvidia.com on Sat, 02 May 2020 07:39:05 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sat, 2 May
 2020 14:39:05 +0000
Received: from [10.19.100.12] (172.20.13.39) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sat, 2 May 2020
 14:39:02 +0000
Subject: [usb-storage] Re: [PATCH 1/1] usb: storage: Add quirk for Samsung Fit flash
To: Atanas Dinev <atanasd@gmail.com>, <stern@rowland.harvard.edu>,
	<linux-usb@vger.kernel.org>
CC: <usb-storage@lists.one-eyed-alien.net>
References: <1583158895-31342-1-git-send-email-jilin@nvidia.com>
 <bb4db5cf-60bc-9c0f-e1dc-3047542d2b42@gmail.com>
From: Jim Lin <jilin@nvidia.com>
Message-ID: <095677b6-5b6c-1b35-fe9e-00dcedd0a11f@nvidia.com>
Date: Sat, 2 May 2020 22:38:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <bb4db5cf-60bc-9c0f-e1dc-3047542d2b42@gmail.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: jilin@nvidia.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=EtPyzlcR;       spf=pass
 (google.com: domain of jilin@nvidia.com designates 216.228.121.64 as
 permitted sender) smtp.mailfrom=jilin@nvidia.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=nvidia.com
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

In my case device will be in hung state even issuing port reset if=20
without this patch.

jim

On 2020/5/2 =E4=B8=8B=E5=8D=889:56, Atanas Dinev wrote:
> External email: Use caution opening links or attachments
>
>
> Hello,
>
> Jim Lin wrote on 02.03.20 15:21:
>> Current driver has 240 (USB2.0) and 2048 (USB3.0) as max_sectors,
>> e.g., /sys/bus/scsi/devices/0:0:0:0/max_sectors
>>
>> If data access times out, driver error handling will issue a port
>> reset.
>> Sometimes Samsung Fit (090C:1000) flash disk will not respond to
>> later Set Address or Get Descriptor command.
>>
>> Adding this quirk to limit max_sectors to 64 sectors to avoid issue
>> occurring.
>>
> This may need revisiting as it appears to be a performance killer (3-4=20
> times slower seq reads) for otherwise perfectly working sticks.
> Going down from 2048 to 64 seems to cause a pretty significant speed=20
> degradation.
> Here are a few examples:
>
> # lsusb
> Bus 002 Device 012: ID 090c:1000 Silicon Motion, Inc. - Taiwan=20
> (formerly Feiya Technology Corp.) Flash Drive
> # lsusb -t
> /:=C2=A0 Bus 02.Port 1: Dev 1, Class=3Droot_hub, Driver=3Dxhci_hcd/6p, 50=
00M
> =C2=A0=C2=A0=C2=A0 |__ Port 3: Dev 12, If 0, Class=3DMass Storage, Driver=
=3Dusb-storage,=20
> 5000M
>
> # dmesg
> [23153.493726] usb 2-3: Product: Flash Drive FIT
> [23153.493729] usb 2-3: Manufacturer: Samsung
> [23153.493731] usb 2-3: SerialNumber: 0375119090033353
> [23153.575386] usb-storage 2-3:1.0: USB Mass Storage device detected
> [23153.575514] usb-storage 2-3:1.0: Quirks match for vid 090c pid=20
> 1000: 400
> [23153.575559] scsi host2: usb-storage 2-3:1.0
> [23153.576529] usbcore: registered new interface driver usb-storage
> [23153.578645] usbcore: registered new interface driver uas
>
> # cat /proc/scsi/usb-storage/*
> =C2=A0=C2=A0 Host scsi2: usb-storage
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Vendor: Samsung
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Product: Flash Drive FIT
> Serial Number: 0375119090033353
> =C2=A0=C2=A0=C2=A0=C2=A0 Protocol: Transparent SCSI
> =C2=A0=C2=A0=C2=A0 Transport: Bulk
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Quirks: MAX_SECTORS_64 SANE_SENSE
>
> # hdparm -t /dev/sdb
> =C2=A0Timing buffered disk reads: 132 MB in=C2=A0 3.03 seconds =3D 43.62 =
MB/sec
> # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M count=3D1000
> 1048576000 bytes (1,0 GB, 1000 MiB) copied, 22,3564 s, 46,9 MB/s
>
> # rmmod uas usb_storage
> # modprobe usb_storage quirks=3D090c:1000:
>
> # hdparm -t /dev/sdb
> =C2=A0Timing buffered disk reads: 452 MB in=C2=A0 3.01 seconds =3D 150.33=
 MB/sec
> # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M count=3D1000
> 1048576000 bytes (1,0 GB, 1000 MiB) copied, 6,51492 s, 161 MB/s
>
>
> [23612.690798] usb 2-3: Product: Intenso High Speed Line
> [23612.690799] usb 2-3: Manufacturer: SMI
> [23612.690801] usb 2-3: SerialNumber: 19112500000332
> [23612.780771] usb-storage 2-3:1.0: USB Mass Storage device detected
> [23612.780895] usb-storage 2-3:1.0: Quirks match for vid 090c pid=20
> 1000: 400
> [23612.780940] scsi host2: usb-storage 2-3:1.0
> [23612.781093] usbcore: registered new interface driver usb-storage
> [23612.783226] usbcore: registered new interface driver uas
>
> # cat /proc/scsi/usb-storage/*
> =C2=A0=C2=A0 Host scsi2: usb-storage
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Vendor: SMI
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Product: Intenso High Speed Line
> Serial Number: 19112500000332
> =C2=A0=C2=A0=C2=A0=C2=A0 Protocol: Transparent SCSI
> =C2=A0=C2=A0=C2=A0 Transport: Bulk
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Quirks: MAX_SECTORS_64 SANE_SENSE
>
> # hdparm -t /dev/sdb
> =C2=A0Timing buffered disk reads: 220 MB in=C2=A0 3.00 seconds =3D 73.22 =
MB/sec
> # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M count=3D1000
> 1048576000 bytes (1,0 GB, 1000 MiB) copied, 11,5469 s, 90,8 MB/s
>
> # rmmod uas usb_storage
> # modprobe usb_storage quirks=3D090c:1000:
> # hdparm -t /dev/sdb
> Timing buffered disk reads: 1016 MB in=C2=A0 3.00 seconds =3D 338.51 MB/s=
ec
> # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M count=3D1000
> 1048576000 bytes (1,0 GB, 1000 MiB) copied, 3,31022 s, 317 MB/s
>
>
> I'm using both sticks as a bootable/emergency media (Debian stable,=20
> kernel 4.19/no-quirks with X, XFCE, web browser, etc) and haven't had=20
> any issues with timeouts, unresponsiveness or whatsoever.
>
> When tested with recent kernels (e.g. Debian testing/5.5, Ubuntu 20.04=20
> LTS/5.4) it's slow.
>
> Setting "options usb_storage quirks=3D090c:1000:" in /etc/modprobe.d as=
=20
> a workaround for now.
>
>> Signed-off-by: Jim Lin <jilin@nvidia.com>
>> ---
>> =C2=A0 drivers/usb/storage/unusual_devs.h | 6 ++++++
>> =C2=A0 1 file changed, 6 insertions(+)
>>
>> diff --git a/drivers/usb/storage/unusual_devs.h=20
>> b/drivers/usb/storage/unusual_devs.h
>> index 1cd9b6305b06..1880f3e13f57 100644
>> --- a/drivers/usb/storage/unusual_devs.h
>> +++ b/drivers/usb/storage/unusual_devs.h
>> @@ -1258,6 +1258,12 @@ UNUSUAL_DEV( 0x090a, 0x1200, 0x0000, 0x9999,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 USB_SC_RBC, USB_PR_BULK, NULL,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 0 ),
>>
>> +UNUSUAL_DEV(0x090c, 0x1000, 0x1100, 0x1100,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 "Samsung",
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 "Flash Drive FIT",
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 US_FL_MAX_SECTORS_64),
>> +
>> =C2=A0 /* aeb */
>> =C2=A0 UNUSUAL_DEV( 0x090c, 0x1132, 0x0000, 0xffff,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 "Feiya",
>>
--nvpublic

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/095677b6-5b6c-1b35-fe9e-00dcedd0a11f=
%40nvidia.com.
