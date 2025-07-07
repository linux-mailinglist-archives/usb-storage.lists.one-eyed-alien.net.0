Return-Path: <usb-storage+bncBDTPNYNWQEIBBVGQVXBQMGQEK2SRXPY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id C3973AFABDA
	for <lists+usb-storage@lfdr.de>; Mon,  7 Jul 2025 08:25:26 +0200 (CEST)
Received: by mail-pg1-x545.google.com with SMTP id 41be03b00d2f7-b3642ab4429sf1957312a12.0
        for <lists+usb-storage@lfdr.de>; Sun, 06 Jul 2025 23:25:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751869525; cv=pass;
        d=google.com; s=arc-20240605;
        b=QnKoCG6yTTDOz/oc7eDbSS7iy4H6CFNYwoPmnbevGEO57qix2KqbOlQjx1kGq0s28C
         Nuv/oWfedBejJWYdg6LF3eUd4BLBeBVeDk2wX/LIvqJcd2Nrj6q8RfgEfEKqe0zdgiTB
         GWpNvt5X2ilxyOa0TfFBz+qwBaKL+EUEdA9XeTFxCmWBKiFnaHBQxwYQQcg0K4voEYQ7
         8mlVK2hY8YCgk5Xb86fUJHI5Qz06DjFNhgO1zJHAT22K69LHTNh/GOYh9F43wXaLcaz5
         kC/wBjaoClwknlBJF0Sa9a011PF3xeUsESLM0aDcM9fO6hbydG1tEk0QFZJb9Ohp8FD/
         /5Ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HWeAJNXCPUaRuyCEe8Vnw7yoYpKq3whxOwYsb1q9Wdw=;
        fh=KmvW72Ewzosfj8RR90JruEBMg7DeZwDw/Qc6q+aiCcI=;
        b=OluHjB8tTQd5xvNrSW+fKO1RAiDDdpcvutUwju3RP2PFLUEWm2gJX3CAnUT47JY0CO
         rvgt5EalYMND3yVa2NiQouEaq87XMBK8k7cSgdklsuXd8XwP0CZXZozKm2DipuWaqEGN
         wcMruRnFDzh44FXYfLWFiBbtoq+EVuCN8muMXRfEhxdMEmPu05OR1h7UlTDEr6alZyWp
         WXzWUMQv8XRDsNmbhBJOfXVpDzX7d2XP6AoHB8vzNVr1w5mswoQRuKsZIM3+BHk9SR0q
         ATlCdA6LCRUQhMZDg9Af6dvm7G16W8rqWWqDuCTtjrFtC5ORe/nt1P0+8LPOsnSANChL
         1SBQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1751869525; x=1752474325; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HWeAJNXCPUaRuyCEe8Vnw7yoYpKq3whxOwYsb1q9Wdw=;
        b=jZ0tMTlzmHhgANPzYdFEwj8BeEF50mdIFCDEcUjZRRixaKTLaIvYdexduG6mjQjJAz
         XEwKzSAPifAqEV2lFkMM8oE9fu/JyWk/InzTNxJLwiCvHndWyy94cyqC6lgen+TLmvIx
         tZD0btpdV1M0F3YaFnNHa+/2n1EriTscq84go=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751869525; x=1752474325;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HWeAJNXCPUaRuyCEe8Vnw7yoYpKq3whxOwYsb1q9Wdw=;
        b=FYGEx50ITyl5Qea8wvVtLGDMMmUeYakgGqN4fDe6uCOKbpT/lc/MW4aklCCpwG6fJi
         g0IC0yMxY1f8w0L9lImGUy45wOUWKZirfhUcoeWZ+xVKou82Y6uQ/CaUhizLtm8EffMR
         j8Y3xDc6RmNGiCAqWKLRa5TdLbQdEI83OyNO2yWz8dx4+qUXCyjDM5RFaaZ+Fl6lxNIt
         8RExxfKPvjTVq7z28LaxPGC4QEn3tUf+uYUPMJUk1psnQfshIQAgKJoJLhjImPwTpiyQ
         0MsO8QRfJtVjzoaJeJY8/H/r4GuKBvWQZVSyGDYmZJcyffwD5T7FJ0x35zzQecS80ZYG
         YtKQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCViXaIRiIji98728TM8Tx5mait8J7AfLShR1bWMhIASNs6NNSgDq//GhQoPukCrT+N2xSiDag==@lfdr.de
X-Gm-Message-State: AOJu0YwAjQACaf8vNQ+BWUH7a/w0bHMppGN6kGM0oXyYM/73VwPt+DJl
	6vwrKqyUAxbqq48G36vH2UwXnQJFudqwX96uWyARgSpRR0z3lrhYXbQLdGqcVw37+sw=
X-Google-Smtp-Source: AGHT+IETbF/nEWm83yMJkpKlQ5xBrPadXZDblYZ0Mg+o2mTVRjYBnXYXCXtUbx3/qIlIWTpuGkoEUw==
X-Received: by 2002:a05:6a20:d492:b0:220:33e9:15da with SMTP id adf61e73a8af0-225b754f754mr23541134637.2.1751869525018;
        Sun, 06 Jul 2025 23:25:25 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZdBCpFm7QCDrFXYwpdtWFTKNXZYtry7VLc1o/FWXG9SPg==
Received: by 2002:a05:6a00:3cce:b0:730:9340:6635 with SMTP id
 d2e1a72fcca58-74ceb5e4953ls2168867b3a.0.-pod-prod-05-us; Sun, 06 Jul 2025
 23:25:23 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVQw6LCGyolIRGhLyytg+uYJyXxDvyg1GiiNM6HXlM5PN32G7+SlX72OIDaRuYsc75EAkDqTy91w8QKDw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:4ccb:b0:1f5:591b:4f7a with SMTP id adf61e73a8af0-225ba156678mr17281319637.38.1751869523233;
        Sun, 06 Jul 2025 23:25:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1751869523; cv=none;
        d=google.com; s=arc-20240605;
        b=AEeoCqbsnXXyKMwBAoeHXqMOZVnb4M4JyVb/mlI4J6GLQC1ZjkeRnmtE4p1JG3yPl+
         06nkmUN74gw1YXPpYqqLMU7T/QWvZctOUW/6wavcx7b+4NXAd379mKa4g3xewTDKOEh2
         EltX8nzqiOydLvUdK6XAr6iG18cizS8N5OLpTaZ1wdo+r1im8xSygEL48WDpRFuiopv7
         6/8PJzQR6BV+6yn7S74ynB7UlCwB9epCFb3txihiYjxcV9dESusAjyUVbzcL2K4K5Cpx
         4xrQGDc3Uv3B6bXe0mFrIaIL98hqbN9dHR9i2Ggf+5iwPuaKW6Q3PYVsnqrs1G2zUxdA
         IyBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=snvFvJoOcT8MgKdlytyA42i41kswpcLakZjSBpJgZoQ=;
        fh=MnC9JICV7ZI52qHbtORoQHa04LjrWVB+0euSa5hqRCA=;
        b=N3aqAR5nl33CG5YXe6VAo6Kt0xwpFpYerkk/h3oufrV/3B40IYRlX2XsWxMfn6QJLF
         Zfge5WmsLg8kI5OcVykVtWAa6h0dKMpnGN9eHw1Bi28b8Zp8G3c0xBGJDn75OA7CsEQR
         XycFtQJmaSjRiKu6+LyZm8nc8z4f5fgNkFW6GuU/ZAOMLEDzbT9/TfKQTCNJT0ARmGpG
         g6oXxgch/ku/Ndli5rT0+1LR5GwzVA0rEg8ErjU0Jaj5a0v+t32BqOU/9dmbfi7AgWuA
         AFImll78tHjJ+xf1VDBcf35xuySfVMW1ja62MCFt4QtSB3DK8Lx6jvXaYtEysQ5g/ghp
         Gi7w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id 41be03b00d2f7-b38ee3eca95si9521677a12.144.2025.07.06.23.25.21
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jul 2025 23:25:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: 23ac22025afb11f0b29709d653e92f7d-20250707
X-CID-CACHE: Type:Local,Time:202507071421+08,HitQuantity:1
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:fe940fa5-7c5a-4393-883e-f952b1e2ed44,IP:0,U
	RL:0,TC:0,Content:0,EDM:25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:25
X-CID-META: VersionHash:6493067,CLOUDID:a89bb9339ef263cf28470a568dae0229,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0|50,EDM:5,IP:nil,URL
	:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SP
	R:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 23ac22025afb11f0b29709d653e92f7d-20250707
X-User: dengjie03@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <dengjie03@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 1156005567; Mon, 07 Jul 2025 14:25:13 +0800
From: Jie Deng <dengjie03@kylinos.cn>
To: gregkh@linuxfoundation.org
Cc: stern@rowland.harvard.edu,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Jie Deng <dengjie03@kylinos.cn>
Subject: [usb-storage] [PATCH v2] usb: storage: Ignore UAS driver for SanDisk
 Extreme Pro 55AF storage device
Date: Mon,  7 Jul 2025 14:25:07 +0800
Message-Id: <20250707062507.39531-1-dengjie03@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <2025070422-punctured-opal-f51e@gregkh>
References: <2025070422-punctured-opal-f51e@gregkh>
MIME-Version: 1.0
X-Original-Sender: dengjie03@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted
 sender) smtp.mailfrom=dengjie03@kylinos.cn
Content-Type: text/plain; charset="UTF-8"
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

The SanDisk Extreme Pro 55AF storage device(0781:55af) has poor compatibility with UAS drivers.
The logs:
[    1.359859][ 0] [  T163] usb 2-1: new SuperSpeed Gen 1 USB device number 2 using xhci_hcd
[    1.385708][ 0] [  T163] usb 2-1: New USB device found, idVendor=0781, idProduct=55af, bcdDevice=10.85
[    1.385709][ 0] [  T163] usb 2-1: New USB device strings: Mfr=2, Product=3, SerialNumber=1
[    1.385710][ 0] [  T163] usb 2-1: Product: Extreme Pro 55AF
[    1.385711][ 0] [  T163] usb 2-1: Manufacturer: SanDisk
[    1.385711][ 0] [  T163] usb 2-1: SerialNumber: 323234323935343030343636
[    1.927603][ 0] [  T306] usbcore: registered new interface driver usb-storage
[    1.940511][ 0] [  T306] scsi host3: uas
[    1.940584][ 0] [  T306] usbcore: registered new interface driver uas
[    1.940843][ 0] [  T188] scsi 3:0:0:0: Direct-Access     SanDisk  Extreme Pro 55AF 1085 PQ: 0 ANSI: 6
[    1.941363][ 0] [  T188] scsi 3:0:0:1: Enclosure         SanDisk  SES Device       1085 PQ: 0 ANSI: 6
[    1.941697][ 0] [  T188] sd 3:0:0:0: Attached scsi generic sg0 type 0
[    1.941783][ 0] [  T188] scsi 3:0:0:1: Attached scsi generic sg1 type 13
[    1.942296][ 0] [  T189] sd 3:0:0:0: [sda] 1953459617 512-byte logical blocks: (1.00 TB/931 GiB)
[    1.942373][ 0] [  T189] sd 3:0:0:0: [sda] Write Protect is off
[    1.942374][ 0] [  T189] sd 3:0:0:0: [sda] Mode Sense: 37 00 10 00
[    1.942534][ 0] [  T189] sd 3:0:0:0: [sda] Write cache: enabled, read cache: enabled, supports DPO and FUA
[    1.943586][ 0] [  T189] sd 3:0:0:0: [sda] Optimal transfer size 2097152 bytes
[    1.976797][ 0] [  T189]  sda: sda1
[    1.977898][ 0] [  T189] sd 3:0:0:0: [sda] Attached SCSI disk
[    1.980406][ 0] [  T267] scsi 3:0:0:1: Failed to get diagnostic page 0x1
[    1.980408][ 0] [  T267] scsi 3:0:0:1: Failed to bind enclosure -19
[    1.980414][ 0] [  T267] ses 3:0:0:1: Attached Enclosure device
[    1.981068][ 0] [    C0] sd 3:0:0:0: [sda] tag#10 data cmplt err -75 uas-tag 1 inflight: CMD
[    1.981071][ 0] [    C0] sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00 74 6f 6d 00 00 00 08 00
[   33.819186][ 0] [  T188] sd 3:0:0:0: [sda] tag#10 uas_eh_abort_handler 0 uas-tag 1 inflight: CMD
[   33.819188][ 0] [  T188] sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00 74 6f 6d 00 00 00 08 00
[   33.843186][ 0] [  T309] scsi host3: uas_eh_device_reset_handler start

Device decriptor is below:
Bus 002 Device 003: ID 0781:55af SanDisk Corp. Extreme Pro 55AF
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               3.20
  bDeviceClass            0
  bDeviceSubClass         0
  bDeviceProtocol         0
  bMaxPacketSize0         9
  idVendor           0x0781 SanDisk Corp.
  idProduct          0x55af
  bcdDevice           10.85
  iManufacturer           2 SanDisk
  iProduct                3 Extreme Pro 55AF
  iSerial                 1 323234323935343030343636
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength       0x0079
    bNumInterfaces          1
    bConfigurationValue     1
    iConfiguration          0
    bmAttributes         0x80
      (Bus Powered)
    MaxPower              896mA
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           2
      bInterfaceClass         8 Mass Storage
      bInterfaceSubClass      6 SCSI
      bInterfaceProtocol     80 Bulk-Only
      iInterface              0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst              15
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x02  EP 2 OUT
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst              15
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       1
      bNumEndpoints           4
      bInterfaceClass         8 Mass Storage
      bInterfaceSubClass      6 SCSI
      bInterfaceProtocol     98
      iInterface              0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst              15
        MaxStreams             32
        Data-in pipe (0x03)
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x02  EP 2 OUT
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst              15
        MaxStreams             32
        Data-out pipe (0x04)
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x83  EP 3 IN
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst              15
        MaxStreams             32
        Status pipe (0x02)
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x04  EP 4 OUT
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst               0
        Command pipe (0x01)

So ignore UAS driver for this device.

Signed-off-by: Jie Deng <dengjie03@kylinos.cn>
---
v2:
	* According to the file modification rules (sort by VendorID 
	  first, then by ProductID.) Add the newly added "UNUSUAL_DEV" 
	  in the correct position.
v1:
	* The newly added "UNUSUAL_DEV" was directly added to the end 
	  without modifying the format according to the file.

---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 1477e31d7763..6b1a08e2e724 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -52,6 +52,13 @@ UNUSUAL_DEV(0x059f, 0x1061, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_REPORT_OPCODES | US_FL_NO_SAME),
 
+/* Reported-by: Jie Deng <dengjie03@kylinos.cn> */
+UNUSUAL_DEV(0x0781, 0x55af, 0x0000, 0x9999,
+		"SanDisk",
+		"Extreme Pro 55AF",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: Zhihong Zhou <zhouzhihong@greatwall.com.cn> */
 UNUSUAL_DEV(0x0781, 0x55e8, 0x0000, 0x9999,
 		"SanDisk",
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250707062507.39531-1-dengjie03%40kylinos.cn.
