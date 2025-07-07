Return-Path: <usb-storage+bncBCUJ7YGL3QFBBOMTV3BQMGQESZPFQEQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CBAAFAEDF
	for <lists+usb-storage@lfdr.de>; Mon,  7 Jul 2025 10:47:55 +0200 (CEST)
Received: by mail-qt1-x845.google.com with SMTP id d75a77b69052e-4a71914dd25sf61271791cf.2
        for <lists+usb-storage@lfdr.de>; Mon, 07 Jul 2025 01:47:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751878074; cv=pass;
        d=google.com; s=arc-20240605;
        b=Vu1FTxzXIONgGhDnTEWpZvjIlQSR3b0sbQ/NNq0FejOPhZqou0YFX9bhqQVayt7FKY
         RB4IUsjWfGH2+D4JVWiG1/oiZ17hJEHQX6VIeuWBqWqz9i7255TvOLJ5q0chis9OK4ub
         ijzqiL7OMFhXsLbNj6LaBMHVSh8AOFgl+fqs9sK9B5aBc7qSCcaaZb7hiS4Osj3YIGnO
         88CzTiyxAatUMHhEdPdl+JL/S/9J4ir3/1QR/QssQx5La1Y8XJjSnHAHNquvTpnCbcXU
         GCZGw3pzx4ozFjuc8HgliK6jX1s4Uz5XwRjbPWBUFmzC4R/LDh3t0Lds33t7LONMbdea
         HzSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=aCToRU2IvqnPWR6DIH25jW70mZDr+V2az172nTxBM0Y=;
        fh=xOPL5YgR2dO48dyRXDmNGE5bGVTmFWMJeC/aoMUeqXo=;
        b=HpxVyt5Pdb1/22IrihQqLScMZ8b0zbQ3XcDExKhu+BO23dg4OWhM+ToEg89oFpMfWq
         Ei14JXqgK1VDWfctfbnW6uBpIiwFfSxlY4hmf9X6duAPt8JqgnD8JCHs25h3CxDwOTtN
         3WojdMnKvhdtb2Sm4UMNVDsrHVSmiComI9HaYKFqTxPJK3CCCEDdROvq/T1lnkMuqtBc
         xBoI/QKNymWSoH1+ZX3VI0cTBAqzzN6EjuHTvCcdxwvwmwkKxb4drDmBAYzjSSwIrqp/
         SUDjciFTpxJMGFt6127v42o0lGb/ZqHDXYeowUt7E1sO9jZlre3CVwPgwJjnGz/ukqHR
         Vxlw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=XAWuLCOr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1751878074; x=1752482874; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aCToRU2IvqnPWR6DIH25jW70mZDr+V2az172nTxBM0Y=;
        b=FcaY6QIaWkVzPI33kEmQcULW2RN0NWuL1agYNj8YZ6p1rjqU9hIYmAZlmEK4Og7aDk
         fEfXHqEtKTWc18PaMwdksZR/f/uV3RiNp+ks/tuQbsfw8OOyIVFMw34nhwfnOKQOxJC8
         6OAOFw8oWnbtnJjpGIbHoo5D12e/T0mGTw/dg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751878074; x=1752482874;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aCToRU2IvqnPWR6DIH25jW70mZDr+V2az172nTxBM0Y=;
        b=Ak3+LviKmGD6ucVOHGuJG7JL+MfNYdwDiI9K2p8ByjTguBiW4DT0GjcCSLRURIJ69p
         R2wyFT6IROwcXzoGZRGYSRkSyCmzN3PgbTf55qhWFxrYUqheHA1bLKE7mEvD/3Nulnll
         YyXvgaw31Ot56TVyZ2yeroB/4HSk9Op3zZiq5rzzjIYsugbs7ht+UG0fsRUjhNL43bdc
         LUr69KxeNGtLMmqHeieZLwUO/C8HJnMFsmWmM2BIZMGDkB9GV0bKbCoxFjwvBOxvFvsq
         RquMo0TiiX6m3f8SWUpk9BUmT/GpDaqlvjOij7ILr1IzZg/gWV3iHuLuQK1Ax7xC7K1P
         dyXA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW01WlhY2WR3kZWoBlBY3afHdkJ2fyxk8MXblIj5KU8hBzGYELsI33Zvf/Bm84HDKFIiOF10Q==@lfdr.de
X-Gm-Message-State: AOJu0YztbcipCAGrtKLVDLFzc4DCPKvi4wBKn7RJRqUKdyKXpOfxLO9v
	7fM5PP8OFTta+vG+/UusrCKEJIQGZ7xaJ5tYCz1+dTA55KJfso7R+PoTzG/H1VZTX4Y=
X-Google-Smtp-Source: AGHT+IFSefJeSUZbBSpyD56xldFyWE/j/FJTNM/tkybCVI+L2s3sXJXw4lOP7z51J16zw/JId6uMvA==
X-Received: by 2002:a05:622a:4acc:b0:4a9:9695:63fc with SMTP id d75a77b69052e-4a9987fffe3mr168617311cf.42.1751878074113;
        Mon, 07 Jul 2025 01:47:54 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZe/3RN+AvT7fVRv4qgbGPkxqAyGBqxuuAjMm0pdn7K9fQ==
Received: by 2002:a05:622a:281:b0:4a6:f7c2:f438 with SMTP id
 d75a77b69052e-4a99bc2452fls48086891cf.0.-pod-prod-09-us; Mon, 07 Jul 2025
 01:47:53 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUNmy2wfj2sJHqNpmIuMW/jWzvISe+82BejR0MPW896pXpwYb1BIQ44S6ePGnOqS0GWsSTQo6ccAbW5mA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:110b:b0:4a4:2f42:a668 with SMTP id d75a77b69052e-4a99879f788mr179270081cf.31.1751878073363;
        Mon, 07 Jul 2025 01:47:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1751878073; cv=none;
        d=google.com; s=arc-20240605;
        b=cDAQ5BSXzN9iOgBgNMId7ezIZ/3GIKmO8Sct5su2oolI8KUSwRBb1Sz8vMZs4Ik19T
         fqVc2rXRKgQQbBMzU/Dn1lyyrcve6bkigpKX1W1ZajGCT5NuXYlzp3SsfcX7paYgysE5
         0fJKVQbXbj/jsDpGVY/xJaWVkQy8kkWtWOlWYXZoNCFREagBN+++c9PNugivMz+xiQSQ
         BBO5wUOvsU+OSPkYdZ9LmRrIvzMzMrIYqMXxsdxdePpCuEnRaPAIRDDnx3+zq0A2G7VT
         owTe77IfnVdgfa984KyuxQsW6hsjif3DL2B1QqlBHtMb/EHzSLmSayhWS2kSxQNGYEWG
         pVRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=E000E1y+E+DT7SPOeuGRoyQVjPqfqhBbNj6b8NX0R2E=;
        fh=a1YKTi9pHnywQ2XBEVGe7xjTioXL4dc+m9vRhIedUME=;
        b=K0d0koijGhzM7QLfekNgsrVN6tlDfZAxkYvNuovKTYxaUw8ykmavekos42thu9Lkwj
         7lk4iHYzMlfXS7BrxUC1o+MJTmHADPMFdM3YdxeCrnF7FlN8UgNT7X3V4vC6f+kajuH6
         FnE3Xe2GVE1awqcHzjsx6+11JhvoGt6lAofm/h2Gz19s+bGIjC4RRxpmsR6L+VNUfLrx
         4pGBBag1b8FBqLekGnLdwNoUJHolZ8hzQYzdkKtDCyTB9hFKnBBI08k7tK2e1xZX7KLk
         axLsp4GgyrYqBBl6qyaf8ueXcevGZjyDW0BZy94Vzmy34QV2tzf+6E0m2em/+IXgpL5f
         aYUQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=XAWuLCOr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [147.75.193.91])
        by mx.google.com with ESMTPS id d75a77b69052e-4a9949f3372si82438151cf.49.2025.07.07.01.47.53
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 01:47:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 147.75.193.91 as permitted sender) client-ip=147.75.193.91;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 16FA5A53BFB;
	Mon,  7 Jul 2025 08:47:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F53CC4CEE3;
	Mon,  7 Jul 2025 08:47:52 +0000 (UTC)
Date: Mon, 7 Jul 2025 10:47:50 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jie Deng <dengjie03@kylinos.cn>
Cc: stern@rowland.harvard.edu, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v2] usb: storage: Ignore UAS driver for
 SanDisk Extreme Pro 55AF storage device
Message-ID: <2025070725-circle-recite-bc04@gregkh>
References: <2025070422-punctured-opal-f51e@gregkh>
 <20250707062507.39531-1-dengjie03@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250707062507.39531-1-dengjie03@kylinos.cn>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=XAWuLCOr;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 147.75.193.91 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Jul 07, 2025 at 02:25:07PM +0800, Jie Deng wrote:
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
> v2:
> 	* According to the file modification rules (sort by VendorID 
> 	  first, then by ProductID.) Add the newly added "UNUSUAL_DEV" 
> 	  in the correct position.
> v1:
> 	* The newly added "UNUSUAL_DEV" was directly added to the end 
> 	  without modifying the format according to the file.
> 
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

Why is there two "v2" patches sent here?  Shouldn't this be "v3"?

confused,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025070725-circle-recite-bc04%40gregkh.
