Return-Path: <usb-storage+bncBCUJ7YGL3QFBBRU7T3BQMGQEGUBDAPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd48.google.com (mail-io1-xd48.google.com [IPv6:2607:f8b0:4864:20::d48])
	by mail.lfdr.de (Postfix) with ESMTPS id 7179BAF8B4B
	for <lists+usb-storage@lfdr.de>; Fri,  4 Jul 2025 10:24:40 +0200 (CEST)
Received: by mail-io1-xd48.google.com with SMTP id ca18e2360f4ac-8760733a107sf72049439f.3
        for <lists+usb-storage@lfdr.de>; Fri, 04 Jul 2025 01:24:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751617479; cv=pass;
        d=google.com; s=arc-20240605;
        b=kxdorhCJnhInPOUEq7VzK1lF46lUhAfz2uRsTlvfyLa0+QA3vOFoaRdeUto/PwJ6Yx
         mmzKnbzjKdu4gGRRzFZ8mZZ/fr3vUJaeJlH8FK1uAMiy5zk1x9kCbs+Bv8VgZ7huRwL/
         54pbs634GN/FbwEPdU2s3Qtla93mglo3qPgjJYenqwrdp/Xxs5+8KxgYk3M1LLTrieUP
         wvzUIHzapmFITIyXueIm3eGBKXrozbH7uX+sFrfrKXLgQ8UO6+kVHAkri4oVkAhXvxfx
         SM87/se8LxYvCbXAOjYTsdhd1xjpArL73a6opPKrd1UmOw8J66xLBINDv6apJt1WMYCs
         3Vug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZwvbgdRlAq73445I/puz9fhE9iBqcJn+6g27bVL6AHQ=;
        fh=2u+RLjjr4zcor7fVLsJ5zgh3oYgPIUN2C4KTYRhGxok=;
        b=imp0x1loa0Sgczc6tGTcbERFeYmZB4AnS3+TNtWNFYa7GxcDBm+IdDz/g8yVTQluP3
         Bq7Uzn7F4izm+2UaMAnFMTuli1oEm4Sy5KUuyfqmW8wrJoL5PJTtmrbwWDJ0iBMIvHux
         uVAXDoRHMqDZgoLrCzhMVQnfowpEUHlrlEiO7WDGv85FU+T4oQgDxYXZfkdMbyT4w+QE
         cUwaN6lftVjm8yB7jiYhZDbfyZcyUBaMrwQr4BYpLfGqXjNrWd/OguQfB0TW7+SRkd7w
         Uo5g1cpbTwTTU3thid56wJSIIzQR9blq/ejmlDlXjtBCBeLpNRouwCvY2+R+Fw/pRB/K
         f23Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=YWc6Gsye;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c04:e001:324:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1751617479; x=1752222279; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZwvbgdRlAq73445I/puz9fhE9iBqcJn+6g27bVL6AHQ=;
        b=doAPBcRojVnKmq8JVQ4RD7gh/1KOSvIguGuC7stHMzIxfJyby+rNeuCCWi+PCS0Ypg
         9jTH+6sc3qVRjLGA5VP56N00DrDMe4HTU9z3j/LMPTfWql06QiEdajiRYzW3YN8K9qYa
         aB62lQMvlENA5dkExWe0iBPx1kb1LwkGlRZfI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751617479; x=1752222279;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZwvbgdRlAq73445I/puz9fhE9iBqcJn+6g27bVL6AHQ=;
        b=mX/j3nxS8SHyGzJ9o19B2kQZC7t/5LgVOEQXIXQXr459Kdmmgf7jRgWCUCiuRRp0pW
         jsyW14ZZhl2vmYhf7zhcUQmDkahYKDAXMS/Bk5274i7qjgXHNjbyvu5QQOn/NWtW+/Et
         zcN5ZIgi6QG8UXyl3/fypbQPN0EccStLKxe8Opv8ykTZJX6B0Q5hAaSO5IRJBKL9EBnx
         Kjb6065eDOe7YdiqTDtyZLOqkRf2u+rq2YQAV48xHyEuG7b+AK2vv5A3mvGoYhFEX1jJ
         kKOEcv4AODzQM2ypKqHlUVdVnMWFWnDGPbSsPea9Mr3MV5Tk4VEU63j3mmq1xO6qWTke
         2Ifw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVtSny0EOx/7IKBAQdq9IbYa9Kt8HI4NK7cZdQShyhnc+cS2nao7JBfZyM5YyXkTwciGl038w==@lfdr.de
X-Gm-Message-State: AOJu0YxOQWZKD6ME61mNhbGJwKaZCzsUk1h1bRdKp9GHHcsuW98kMCkC
	W3M00HMHvZsuTFSbKK983Ilod2wrrv2KxJNGcOSNl4NtkNlJcyHmK+CWz1uYwE/ETZ0=
X-Google-Smtp-Source: AGHT+IEiDkAxfMx7VSh/rCBjrqifhNQNi0GOM33Juh/sQ6SPXtUX2zbRz1hxOVhCq36pJ7K2QxF7FQ==
X-Received: by 2002:a92:c264:0:b0:3dc:7fa4:834 with SMTP id e9e14a558f8ab-3e135591278mr13826895ab.15.1751617478613;
        Fri, 04 Jul 2025 01:24:38 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZc2f+/yTuHea7TP7WOLc7DsmJxfTPH70yi8Zu7LTsviAg==
Received: by 2002:a05:6e02:480a:b0:3dd:c3df:51e9 with SMTP id
 e9e14a558f8ab-3e139044cdfls1006265ab.0.-pod-prod-04-us; Fri, 04 Jul 2025
 01:24:37 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVmEmo+Gep+S5nY9ys0YFqskHNtbfCtAJwrSVCH/mF1uKgMePVD4Fg2Noq8ZmtslDAC6Y1J82HwbPUvxg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6e02:228f:b0:3df:42f1:3434 with SMTP id e9e14a558f8ab-3e1354a23e6mr12398565ab.9.1751617477627;
        Fri, 04 Jul 2025 01:24:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1751617477; cv=none;
        d=google.com; s=arc-20240605;
        b=R+rr8If4pjzzdk/dDEW+wEwjtEsMx9llV+ufdGpDZYKyxVTzo95gadBsfxbjnua5D1
         KWINGOnNV7oFNWH1CqR6uPUxrXtlTOm+zp0XLXYRiqjpnSe3evdgEcoY91EHGh9V/klp
         6918ARZ4Hklxf5EhJrNkdYGnfyYMSi4WkFCZVZWFEZFCanVujbEmUdCaSAYlCKBUoSM2
         UymVJ02RsXdSTCpIcexG4tCU7B5TL1E0etcLlJTkQh8qOOgKbDvjTEnJFNjvFzgS+juS
         LK/U0+82GSWNwzz0mV2w38uhnfHt5CQnYR/ZMJWNXm7SzfPGqBrpvPT+3HOgIHAjEE9z
         TvVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=F5Fjsf0+2pD/RlfyWsiMpgqnzObHRICNcdC/OT98kYk=;
        fh=a1YKTi9pHnywQ2XBEVGe7xjTioXL4dc+m9vRhIedUME=;
        b=YYl/pH8oPpilRYI26RaKaDuQa2/BIaTKDa6CByKYw+04C5iVLnrtRnF70JLREavckj
         5EomWBxo6n99fEZgIGb9TXocYPJbvib2pR7Sg3BcppTPvQVD+Nyf4+MxFmfm6gsNF2hx
         JEJe4cY9H0YggAPDpiD2FNLv0mkEsAoU5rxhz2TyJH0u6bKzUy0WSVuUW7frZvMr35Ge
         tyUgjYHxgLSP0c74hQo0Ek/n8lJeQkudt6ab5vCPN6m7LW4ZSd4K1q9E3qZTOjtty4qe
         Yndk6XJC6EGHhBfMFmDnXX2ZeuYLdaxOLakAKKZiLLcpfR7RvX1azIy8k57mcgVearK9
         aIDQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=YWc6Gsye;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c04:e001:324:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from tor.source.kernel.org (tor.source.kernel.org. [2600:3c04:e001:324:0:1991:8:25])
        by mx.google.com with ESMTPS id 8926c6da1cb9f-503b5b64ac2si1593191173.85.2025.07.04.01.24.37
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 01:24:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c04:e001:324:0:1991:8:25 as permitted sender) client-ip=2600:3c04:e001:324:0:1991:8:25;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D7A7861462;
	Fri,  4 Jul 2025 08:24:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D45D9C4CEE3;
	Fri,  4 Jul 2025 08:24:35 +0000 (UTC)
Date: Fri, 4 Jul 2025 10:24:33 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jie Deng <dengjie03@kylinos.cn>
Cc: stern@rowland.harvard.edu, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v2] usb: storage: Ignore UAS driver for
 SanDisk Extreme Pro 55AF storage device
Message-ID: <2025070422-punctured-opal-f51e@gregkh>
References: <2025070329-rinse-engaged-e7af@gregkh>
 <20250704061116.1020646-1-dengjie03@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250704061116.1020646-1-dengjie03@kylinos.cn>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=YWc6Gsye;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2600:3c04:e001:324:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Fri, Jul 04, 2025 at 02:11:16PM +0800, Jie Deng wrote:
> The SanDisk Extreme Pro 55AF storage device(0781:55af) has poor compatibility with UAS drivers.
> The logs:
> [    1.359859][ 0] [  T163] usb 2-1: new SuperSpeed Gen 1 USB device number 2 using xhci_hcd
> [    1.385708][ 0] [  T163] usb 2-1: New USB device found, idVendor=0781, idProduct=55af, bcdDevice=10.85
> [    1.385709][ 0] [  T163] usb 2-1: New USB device strings: Mfr=2, Product=3, SerialNumber=1
> [    1.385710][ 0] [  T163] usb 2-1: Product: Extreme Pro 55AF
> [    1.385711][ 0] [  T163] usb 2-1: Manufacturer: SanDisk
> [    1.385711][ 0] [  T163] usb 2-1: SerialNumber: 323234323935343030343636
> [    1.927603][ 0] [  T306] usbcore: registered new interface driver usb-storage
> [    1.940511][ 0] [  T306] scsi host3: uas
> [    1.940584][ 0] [  T306] usbcore: registered new interface driver uas
> [    1.940843][ 0] [  T188] scsi 3:0:0:0: Direct-Access     SanDisk  Extreme Pro 55AF 1085 PQ: 0 ANSI: 6
> [    1.941363][ 0] [  T188] scsi 3:0:0:1: Enclosure         SanDisk  SES Device       1085 PQ: 0 ANSI: 6
> [    1.941697][ 0] [  T188] sd 3:0:0:0: Attached scsi generic sg0 type 0
> [    1.941783][ 0] [  T188] scsi 3:0:0:1: Attached scsi generic sg1 type 13
> [    1.942296][ 0] [  T189] sd 3:0:0:0: [sda] 1953459617 512-byte logical blocks: (1.00 TB/931 GiB)
> [    1.942373][ 0] [  T189] sd 3:0:0:0: [sda] Write Protect is off
> [    1.942374][ 0] [  T189] sd 3:0:0:0: [sda] Mode Sense: 37 00 10 00
> [    1.942534][ 0] [  T189] sd 3:0:0:0: [sda] Write cache: enabled, read cache: enabled, supports DPO and FUA
> [    1.943586][ 0] [  T189] sd 3:0:0:0: [sda] Optimal transfer size 2097152 bytes
> [    1.976797][ 0] [  T189]  sda: sda1
> [    1.977898][ 0] [  T189] sd 3:0:0:0: [sda] Attached SCSI disk
> [    1.980406][ 0] [  T267] scsi 3:0:0:1: Failed to get diagnostic page 0x1
> [    1.980408][ 0] [  T267] scsi 3:0:0:1: Failed to bind enclosure -19
> [    1.980414][ 0] [  T267] ses 3:0:0:1: Attached Enclosure device
> [    1.981068][ 0] [    C0] sd 3:0:0:0: [sda] tag#10 data cmplt err -75 uas-tag 1 inflight: CMD
> [    1.981071][ 0] [    C0] sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00 74 6f 6d 00 00 00 08 00
> [   33.819186][ 0] [  T188] sd 3:0:0:0: [sda] tag#10 uas_eh_abort_handler 0 uas-tag 1 inflight: CMD
> [   33.819188][ 0] [  T188] sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00 74 6f 6d 00 00 00 08 00
> [   33.843186][ 0] [  T309] scsi host3: uas_eh_device_reset_handler start
> 
> Device decriptor is below:
> Bus 002 Device 003: ID 0781:55af SanDisk Corp. Extreme Pro 55AF
> Device Descriptor:
>   bLength                18
>   bDescriptorType         1
>   bcdUSB               3.20
>   bDeviceClass            0
>   bDeviceSubClass         0
>   bDeviceProtocol         0
>   bMaxPacketSize0         9
>   idVendor           0x0781 SanDisk Corp.
>   idProduct          0x55af
>   bcdDevice           10.85
>   iManufacturer           2 SanDisk
>   iProduct                3 Extreme Pro 55AF
>   iSerial                 1 323234323935343030343636
>   bNumConfigurations      1
>   Configuration Descriptor:
>     bLength                 9
>     bDescriptorType         2
>     wTotalLength       0x0079
>     bNumInterfaces          1
>     bConfigurationValue     1
>     iConfiguration          0
>     bmAttributes         0x80
>       (Bus Powered)
>     MaxPower              896mA
>     Interface Descriptor:
>       bLength                 9
>       bDescriptorType         4
>       bInterfaceNumber        0
>       bAlternateSetting       0
>       bNumEndpoints           2
>       bInterfaceClass         8 Mass Storage
>       bInterfaceSubClass      6 SCSI
>       bInterfaceProtocol     80 Bulk-Only
>       iInterface              0
>       Endpoint Descriptor:
>         bLength                 7
>         bDescriptorType         5
>         bEndpointAddress     0x81  EP 1 IN
>         bmAttributes            2
>           Transfer Type            Bulk
>           Synch Type               None
>           Usage Type               Data
>         wMaxPacketSize     0x0400  1x 1024 bytes
>         bInterval               0
>         bMaxBurst              15
>       Endpoint Descriptor:
>         bLength                 7
>         bDescriptorType         5
>         bEndpointAddress     0x02  EP 2 OUT
>         bmAttributes            2
>           Transfer Type            Bulk
>           Synch Type               None
>           Usage Type               Data
>         wMaxPacketSize     0x0400  1x 1024 bytes
>         bInterval               0
>         bMaxBurst              15
>     Interface Descriptor:
>       bLength                 9
>       bDescriptorType         4
>       bInterfaceNumber        0
>       bAlternateSetting       1
>       bNumEndpoints           4
>       bInterfaceClass         8 Mass Storage
>       bInterfaceSubClass      6 SCSI
>       bInterfaceProtocol     98
>       iInterface              0
>       Endpoint Descriptor:
>         bLength                 7
>         bDescriptorType         5
>         bEndpointAddress     0x81  EP 1 IN
>         bmAttributes            2
>           Transfer Type            Bulk
>           Synch Type               None
>           Usage Type               Data
>         wMaxPacketSize     0x0400  1x 1024 bytes
>         bInterval               0
>         bMaxBurst              15
>         MaxStreams             32
>         Data-in pipe (0x03)
>       Endpoint Descriptor:
>         bLength                 7
>         bDescriptorType         5
>         bEndpointAddress     0x02  EP 2 OUT
>         bmAttributes            2
>           Transfer Type            Bulk
>           Synch Type               None
>           Usage Type               Data
>         wMaxPacketSize     0x0400  1x 1024 bytes
>         bInterval               0
>         bMaxBurst              15
>         MaxStreams             32
>         Data-out pipe (0x04)
>       Endpoint Descriptor:
>         bLength                 7
>         bDescriptorType         5
>         bEndpointAddress     0x83  EP 3 IN
>         bmAttributes            2
>           Transfer Type            Bulk
>           Synch Type               None
>           Usage Type               Data
>         wMaxPacketSize     0x0400  1x 1024 bytes
>         bInterval               0
>         bMaxBurst              15
>         MaxStreams             32
>         Status pipe (0x02)
>       Endpoint Descriptor:
>         bLength                 7
>         bDescriptorType         5
>         bEndpointAddress     0x04  EP 4 OUT
>         bmAttributes            2
>           Transfer Type            Bulk
>           Synch Type               None
>           Usage Type               Data
>         wMaxPacketSize     0x0400  1x 1024 bytes
>         bInterval               0
>         bMaxBurst               0
>         Command pipe (0x01)
> 
> So ignore UAS driver for this device.
> 
> Signed-off-by: Jie Deng <dengjie03@kylinos.cn>
> ---
>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 1477e31d7763..6b1a08e2e724 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -52,6 +52,13 @@ UNUSUAL_DEV(0x059f, 0x1061, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_NO_REPORT_OPCODES | US_FL_NO_SAME),
>  
> +/* Reported-by: Jie Deng <dengjie03@kylinos.cn> */
> +UNUSUAL_DEV(0x0781, 0x55af, 0x0000, 0x9999,
> +		"SanDisk",
> +		"Extreme Pro 55AF",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),
> +
>  /* Reported-by: Zhihong Zhou <zhouzhihong@greatwall.com.cn> */
>  UNUSUAL_DEV(0x0781, 0x55e8, 0x0000, 0x9999,
>  		"SanDisk",
> -- 
> 2.25.1
> 
> 

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/process/submitting-patches.rst for what
  needs to be done here to properly describe this.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025070422-punctured-opal-f51e%40gregkh.
