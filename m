Return-Path: <usb-storage+bncBDY57XWPTYHRBKWWW32QKGQEMLAD3JQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6AF1C2733
	for <lists+usb-storage@lfdr.de>; Sat,  2 May 2020 19:17:33 +0200 (CEST)
Received: by mail-qv1-xf46.google.com with SMTP id r10sf13421931qvw.23
        for <lists+usb-storage@lfdr.de>; Sat, 02 May 2020 10:17:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588439851; cv=pass;
        d=google.com; s=arc-20160816;
        b=gsWyIvCkk+XqBjYqWCb22PT9iUwIsB/rOebc9dGbIjqfX2liOAUislnWplLxmF2F0R
         kNY4vwWLxGssDuOGII/qTyCRx+ciuRwPK3VrlGgosmft8uDqiVfagsdX0Jgit9JDnU4s
         VknXsGsErwddaK7//BAj/QZmRJLBDGSHr+Mvmt8K0CsN1dx7+a8GRvw8trSwSoo9MAOP
         Ffih6J+/DWN4FRvraDTnGxKBah/O3yFGc7snVAz4EALvclBvI3JkmC+oW3+88jOVf20G
         4DWNNZJ+/MyVnPHfyBBZYRVG6MdlJjMiBUySxcUXOwsAqy2zCU6wG+gDkSjq3LX0q8mk
         MyGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=S9nrYOjdURrj2rS21gZ991IA/ZbM72AtuAZBsZp2Exg=;
        b=CSM1bphujTr406wGALcWTOXFVjlASG4aBGZQM5aBAjL3tx70sVHrjkt4oe7+Q2aqh0
         LuYsFEwc76C34AS5EYt3mlzaewK7n+rHsoTuHbhZrGBfzH837LwkxzDMNjnLuUaGOmTy
         BVudHgjkTyPsn5g5azFEpbHouAeXdbA/ZlScWLk1r33ktDjBrFlL9PWGYgmZsAY7Tstt
         pJ9ZUv1UgU66ROtit4OAnhA/pheSJpBkdmZ61fP7zV3g0jiibxRZhKBlfuSaQNRhP7+J
         ah+FXsWB/YFyP/sjaHcqpiWPkbcXKrfCLl/g3O2XsUR2Y3d4cjotRXArysl2bpK0l9ds
         efpQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vM0JKQXX;
       spf=pass (google.com: domain of atanasd@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=atanasd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S9nrYOjdURrj2rS21gZ991IA/ZbM72AtuAZBsZp2Exg=;
        b=ZcU5Fu6z1C3Iiv346VPgMBClscUW5x1Bat9ht+9a0KcoT/a/6CnHFa5Lnuv6/054ld
         7j2GEC5AHX3DV4DalOjmQLCYbHORnJPNafqLUf1mN0PNMVJZLqjB6Nw3GLQwBLuW+fTy
         3+9pnCVwW+bObcqtZp+uysE8SVcgsAWDwW5Pg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S9nrYOjdURrj2rS21gZ991IA/ZbM72AtuAZBsZp2Exg=;
        b=l35isKgeDekI/UBTmbojIdpkf+0WmBrb08xcdomHXcDjWr/R9FCAPiN0gh9W2I64Ii
         jxlmxW/TlPgkVzNoQCl3nqZQOzw3q2OKAcUkRuRzDbdKk1zZnfR0GeODL82hctgGjABP
         6H69g3JHFdgMcpyTHUtEFjcM1qeIcKA8k2q8/xbOSesbF69oE1TxJkkhJeULCPsVQ4dQ
         54xk0A2Y5FzpOZOtdjvH0Q4Atrk4p+Dou3oacmKH1jt4Xd2ol1FZMrcpux9Yi8a0iwNK
         piOldHoNpLOIl6vmpI8yWA+rsfvVT2zkSkxmRsuzZsZci8JVib9KBQBqV6b8Cyh8OoEP
         fa2g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AGi0PuYZbZvfZE2o83dhjEPl38vThx38lz5uTBoHCItI9UpL66LtlSOi
	RajXH30OcIeEmlU5J+QggBVOUw==
X-Google-Smtp-Source: APiQypLL+vM46q2LS2PQ7cXLa8j1r2iNzpDb4FLJIeTwsxWvO/VMDr7wWiepcup5HLxw1AEADS/Vug==
X-Received: by 2002:ae9:e814:: with SMTP id a20mr8813612qkg.297.1588439851027;
        Sat, 02 May 2020 10:17:31 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:b8b:: with SMTP id 133ls6970386qkl.2.gmail; Sat, 02 May
 2020 10:17:30 -0700 (PDT)
X-Received: by 2002:a37:8fc4:: with SMTP id r187mr6493918qkd.315.1588439850727;
        Sat, 02 May 2020 10:17:30 -0700 (PDT)
Received: by 2002:a37:aac5:0:0:0:0:0 with SMTP id t188msqke;
        Sat, 2 May 2020 06:56:48 -0700 (PDT)
X-Received: by 2002:adf:bb84:: with SMTP id q4mr8997610wrg.141.1588427808344;
        Sat, 02 May 2020 06:56:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588427808; cv=none;
        d=google.com; s=arc-20160816;
        b=CVPQj9MP+aLCLKRD74faX5yE0hVy7cJZhKYl+/ARcYZHcPf8dd6jyUaMqr0scrlt0w
         z0rTY69JO+taBGVScKfA6M6mQHSaMUYw+v4gp22ig76XpiZ1bsm7KXeIIU45Eyf8nsJw
         fn7ysYAjOAht8no+uyU2IA7MvzORUdQl7+a3ViIRp4TFIMaS6tencr26bsgFl9+uG5Gu
         bb1XKBD8zeM1iCxnYVGHjafwOitXTCO8IPdciqUNshbduDQXMyxd5xRYun5so+Rjqgdc
         n4tni6rbeOwOg/SIeAVOQMLS21rEgRxhOMLhF9aE1477Ht2zXqKvkqTgNg9712LriPHi
         9S3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Io1LXUZNEcboXh8F44BlxRuNoh4z/FowLUBDrMbY0zQ=;
        b=m83Wy1S+Q5Enw9h2TBzfbAaAk+LzMgj6LTw3Zl7nUwYIi3ru2uyWbUsyBMipDOC8AB
         D+eabt2w70dG2JtJ7maKabuYJjRqqkA38nhDLbdnu79UqaW7oRk3JiGbilBe+4wuRJKF
         dvLUuA9qs6EaPWuRE/DmVseHvifzKQ6CQculeOoIofuqXU0HVRVwnWHv5VDUf5hdbXoI
         vqLMkNfVI2PupDJaS9uUEH9dj5qJjC3plkHRup5qEOxLXpDIMKNl13nydxapLAvjtdXM
         v9t3akIQz0Feu+8NFMF2gaCplpVBqDFBbxKxLuXBCoNfP8gByGhZL32wRj1qrDqsoLvN
         A27g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vM0JKQXX;
       spf=pass (google.com: domain of atanasd@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=atanasd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id n14sor545133wrw.45.2020.05.02.06.56.48
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 02 May 2020 06:56:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of atanasd@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:adf:fcc8:: with SMTP id f8mr9338144wrs.230.1588427807582;
        Sat, 02 May 2020 06:56:47 -0700 (PDT)
Received: from [192.168.2.75] (ip4d14af3f.dynamic.kabel-deutschland.de. [77.20.175.63])
        by smtp.gmail.com with ESMTPSA id u2sm7465733wrd.40.2020.05.02.06.56.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 May 2020 06:56:46 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH 1/1] usb: storage: Add quirk for Samsung Fit flash
To: Jim Lin <jilin@nvidia.com>, stern@rowland.harvard.edu,
 linux-usb@vger.kernel.org
Cc: usb-storage@lists.one-eyed-alien.net
References: <1583158895-31342-1-git-send-email-jilin@nvidia.com>
From: Atanas Dinev <atanasd@gmail.com>
Message-ID: <bb4db5cf-60bc-9c0f-e1dc-3047542d2b42@gmail.com>
Date: Sat, 2 May 2020 15:56:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1583158895-31342-1-git-send-email-jilin@nvidia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: atanasd@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vM0JKQXX;       spf=pass
 (google.com: domain of atanasd@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=atanasd@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hello,

Jim Lin wrote on 02.03.20 15:21:
> Current driver has 240 (USB2.0) and 2048 (USB3.0) as max_sectors,
> e.g., /sys/bus/scsi/devices/0:0:0:0/max_sectors
> 
> If data access times out, driver error handling will issue a port
> reset.
> Sometimes Samsung Fit (090C:1000) flash disk will not respond to
> later Set Address or Get Descriptor command.
> 
> Adding this quirk to limit max_sectors to 64 sectors to avoid issue
> occurring.
> 
This may need revisiting as it appears to be a performance killer (3-4 times slower seq reads) for otherwise perfectly working sticks.
Going down from 2048 to 64 seems to cause a pretty significant speed degradation.
Here are a few examples:

# lsusb
Bus 002 Device 012: ID 090c:1000 Silicon Motion, Inc. - Taiwan (formerly Feiya Technology Corp.) Flash Drive
# lsusb -t
/:  Bus 02.Port 1: Dev 1, Class=root_hub, Driver=xhci_hcd/6p, 5000M
     |__ Port 3: Dev 12, If 0, Class=Mass Storage, Driver=usb-storage, 5000M

# dmesg
[23153.493726] usb 2-3: Product: Flash Drive FIT
[23153.493729] usb 2-3: Manufacturer: Samsung
[23153.493731] usb 2-3: SerialNumber: 0375119090033353
[23153.575386] usb-storage 2-3:1.0: USB Mass Storage device detected
[23153.575514] usb-storage 2-3:1.0: Quirks match for vid 090c pid 1000: 400
[23153.575559] scsi host2: usb-storage 2-3:1.0
[23153.576529] usbcore: registered new interface driver usb-storage
[23153.578645] usbcore: registered new interface driver uas

# cat /proc/scsi/usb-storage/*
    Host scsi2: usb-storage
        Vendor: Samsung
       Product: Flash Drive FIT
Serial Number: 0375119090033353
      Protocol: Transparent SCSI
     Transport: Bulk
        Quirks: MAX_SECTORS_64 SANE_SENSE

# hdparm -t /dev/sdb
  Timing buffered disk reads: 132 MB in  3.03 seconds = 43.62 MB/sec
# dd if=/dev/sdb of=/dev/null bs=1M count=1000
1048576000 bytes (1,0 GB, 1000 MiB) copied, 22,3564 s, 46,9 MB/s

# rmmod uas usb_storage
# modprobe usb_storage quirks=090c:1000:

# hdparm -t /dev/sdb
  Timing buffered disk reads: 452 MB in  3.01 seconds = 150.33 MB/sec
# dd if=/dev/sdb of=/dev/null bs=1M count=1000
1048576000 bytes (1,0 GB, 1000 MiB) copied, 6,51492 s, 161 MB/s


[23612.690798] usb 2-3: Product: Intenso High Speed Line
[23612.690799] usb 2-3: Manufacturer: SMI
[23612.690801] usb 2-3: SerialNumber: 19112500000332
[23612.780771] usb-storage 2-3:1.0: USB Mass Storage device detected
[23612.780895] usb-storage 2-3:1.0: Quirks match for vid 090c pid 1000: 400
[23612.780940] scsi host2: usb-storage 2-3:1.0
[23612.781093] usbcore: registered new interface driver usb-storage
[23612.783226] usbcore: registered new interface driver uas

# cat /proc/scsi/usb-storage/*
    Host scsi2: usb-storage
        Vendor: SMI
       Product: Intenso High Speed Line
Serial Number: 19112500000332
      Protocol: Transparent SCSI
     Transport: Bulk
        Quirks: MAX_SECTORS_64 SANE_SENSE

# hdparm -t /dev/sdb
  Timing buffered disk reads: 220 MB in  3.00 seconds = 73.22 MB/sec
# dd if=/dev/sdb of=/dev/null bs=1M count=1000
1048576000 bytes (1,0 GB, 1000 MiB) copied, 11,5469 s, 90,8 MB/s

# rmmod uas usb_storage
# modprobe usb_storage quirks=090c:1000:
# hdparm -t /dev/sdb
Timing buffered disk reads: 1016 MB in  3.00 seconds = 338.51 MB/sec
# dd if=/dev/sdb of=/dev/null bs=1M count=1000
1048576000 bytes (1,0 GB, 1000 MiB) copied, 3,31022 s, 317 MB/s


I'm using both sticks as a bootable/emergency media (Debian stable, kernel 4.19/no-quirks with X, XFCE, web browser, etc) and haven't had any issues with timeouts, unresponsiveness or whatsoever.

When tested with recent kernels (e.g. Debian testing/5.5, Ubuntu 20.04 LTS/5.4) it's slow.

Setting "options usb_storage quirks=090c:1000:" in /etc/modprobe.d as a workaround for now.

> Signed-off-by: Jim Lin <jilin@nvidia.com>
> ---
>   drivers/usb/storage/unusual_devs.h | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
> index 1cd9b6305b06..1880f3e13f57 100644
> --- a/drivers/usb/storage/unusual_devs.h
> +++ b/drivers/usb/storage/unusual_devs.h
> @@ -1258,6 +1258,12 @@ UNUSUAL_DEV( 0x090a, 0x1200, 0x0000, 0x9999,
>   		USB_SC_RBC, USB_PR_BULK, NULL,
>   		0 ),
>   
> +UNUSUAL_DEV(0x090c, 0x1000, 0x1100, 0x1100,
> +		"Samsung",
> +		"Flash Drive FIT",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_MAX_SECTORS_64),
> +
>   /* aeb */
>   UNUSUAL_DEV( 0x090c, 0x1132, 0x0000, 0xffff,
>   		"Feiya",
> 

Thanks,
Atanas

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/bb4db5cf-60bc-9c0f-e1dc-3047542d2b42%40gmail.com.
