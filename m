Return-Path: <usb-storage+bncBDTPNYNWQEIBBH7BTXBQMGQE445RKOI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA44AF87B9
	for <lists+usb-storage@lfdr.de>; Fri,  4 Jul 2025 08:11:45 +0200 (CEST)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-313f702d37fsf644366a91.3
        for <lists+usb-storage@lfdr.de>; Thu, 03 Jul 2025 23:11:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751609504; cv=pass;
        d=google.com; s=arc-20240605;
        b=Q2yQQC57VVItgNDJgoXoNDv+cM3mRp+fdTDsX31Vol4QvjG+c372oKaW1l+p0ZxFu6
         +O8q48XIlIC1uN9IjSAOGbgqgUTqKN+P1YtDeqaGlVdNoHdsnqp/ZeqdxAmvCwLpmE3i
         Pq7KV2EWEIqHrqUbZ66mRY70aZZz7E9D/J3VrmA1pRCNRAKaK2DkqpOTCw39AiLyl+kF
         n0vHq0TaVEeMMBtg+a1tWETJ4YGnCvY4a6ZwQpuGAxaqUkBLszIuy18rDVKz/Kf5jr5y
         AQke6OfmuwVnDnOSzCc3fWzx8E/Ol4QIMDJ3KRafOkk7jZV/tW+XYx6hCaQ7YCSlLfVk
         xijQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=rRjHjIaMNZmZuxsSjPElM7Y7YbmMIxLZgJGtyi8xjB0=;
        fh=RQXO2NZpWoOJLmbQaSBgUXzd1zKNSlwsqv+wYWwNhek=;
        b=Snrgybuuc06NGgk0nrZ64YvMbWUd3Lx547IGwpdhEyWRZ8S8/c0+Hg44Eo4wkHRgev
         GBLxZYOvkIa7WDK5n9eP7h5zcHL4Z4hzpCek4beoXNhWc0BVTipeY1CsCCG2WrDZ/09d
         uMJjH4Bx4IxeqkeFz8cJ3YuQVEQu2ZYEVfQo05KkWfH4RZYkoSdFXM2qUdAfGjSyH52r
         gztg/952Z7LOzyeNqTe1lsVKeoTzQ1KonIKSyHaP9P+HhyNBLu87zHJDroF5cmHSMeBe
         fMezHmcd+/u6WZASTnmVwdlSHde4vrcu5pBy3oaALxyXUsknatOAJil9Y2eEeh1xVK9G
         saTA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1751609504; x=1752214304; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rRjHjIaMNZmZuxsSjPElM7Y7YbmMIxLZgJGtyi8xjB0=;
        b=Q1U23XRWorRNkODWz4wRNgWfapkruOt7vcLCqsNFDXb4EJDuI46eXavj+f24cEyp/N
         dAf01nP7cMcDxINW0Zol5a3M4wkRp1apIAPF9Metaf/u2J3zZZyPMvJEMMkenGbRFGr3
         RrWDHNFK5aOqhaelpVOyvX++Jp2IsZWputYhw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751609504; x=1752214304;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rRjHjIaMNZmZuxsSjPElM7Y7YbmMIxLZgJGtyi8xjB0=;
        b=F+26ijXNtNo9Jt6bppmrXDiB/FA9y7jv6wXhhe79XT4F9LD41rdeq4kPB1ecwRE4wN
         qy5sTXlrythcbXan5VaBhYt6M2BBLo7XxyWg23Y7QhVf+oUt85aGSZJMr95yNxQAQ7WC
         bsRPWW68BX0zdXPsGu2HPeDKiwdhIgeSlh3IkVKKcyyW4kV11FTrqPS+bnN3wVTytxrK
         wLv16dcAaItttIIzAvtklo2o2NhxP9L6evOixB/yJUc8hUZE4oO7KTVUKJo1nEG1wrur
         J8c82qi4NmCSwUoBDd24Xt3mxcbOJrMz8CsxnFw4ZM+5ywJo+p6NMRkcX5/miOr3IgPb
         5dcg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWe8ni7iEv/5yby6YLGI/gKFAnToUUaTPnD+Al7ccGoER2NGbkP4USHGuL1YYwl13q/hOxOjQ==@lfdr.de
X-Gm-Message-State: AOJu0YwJdGZB9KUDVaOUk5hej+bdMA/0QFEJ9kWYE70WkUNjamJLfjBR
	1o9fLU+MWWQs2nKL0iWWqPpAeg1rC/QtWFslxM+H+aMnjYDLVHiDmOsTiGerWuto/rE=
X-Google-Smtp-Source: AGHT+IH123AdkGYGbY+a4XE4KjQ9xmHTkFyTB+QLNdXIh9tYX0lR8gPtjhWKf8G2BR6hpkXcIdlImg==
X-Received: by 2002:a17:90b:3f88:b0:311:e8cc:424e with SMTP id 98e67ed59e1d1-31aadd9f8e0mr1600192a91.24.1751609504018;
        Thu, 03 Jul 2025 23:11:44 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZfN7g0hPaBb7X6s5HotTRZy4aRAj8fZN7bv79Gdj+PQXg==
Received: by 2002:a17:90b:28cf:b0:313:f2e:971a with SMTP id
 98e67ed59e1d1-31ab0235d23ls172816a91.0.-pod-prod-09-us; Thu, 03 Jul 2025
 23:11:42 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVGeEdPHsgIqYly3aaXNazsBXOJq24WDDuLSXw51Pt/0Uga1stNXE0tvGfHi26t0jstda4JJ67D5PoYwg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:32a7:b0:20f:94bd:eecf with SMTP id adf61e73a8af0-2260bc6f5d5mr1097590637.42.1751609502211;
        Thu, 03 Jul 2025 23:11:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1751609502; cv=none;
        d=google.com; s=arc-20240605;
        b=JQQddbgWIr7F8h4DfLcCkR441+jxlyGSDUhL8f0S3FBNLFecoK3b+Iny8CvD+svjNn
         8Q4Tjf6IYbsJGf6YLAbZVfhd9+afPhrSog44MejP/whnaRUJBxuJDM3e63LlDkLjz5jP
         9jrCp2igH8ClCpEf7dwXkytNC3Knq/NBrBO54K7FrcABs7BIXi+NBn0g1OsFPAhNsyBp
         SaeXT0m+1qYYc7vXRKkLq9AaM1usrWKYe8QqBQtFT/VbBHv/agGqqqZwzbL10klFlQL3
         ebuirWagVeMMZOo6SdLJuTlGHqveXB9aofow8YTMT3s8xKmeYeh+Pcls/m/4XdsrDUuf
         DweQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Jz8Z0UC5GbY+PB4r5XFQxWsMx1ns+SmWi2NpNpiy9ww=;
        fh=tez8VK0YU2b3ZZXZfv+CgECcHS+fxQzL+StUFFQHvuY=;
        b=M7I5kSMgXM4GKiDvDxeqh8uDgtJ2MAlEslReSqXEGcwc2QjYHGIIjd6OR9CESuuy4n
         ebSPcMxHh4ZCbN4e48KJf1eDwQDE6ebeuAHfgbU2YjXKlINyHNvPP/+9BkJywlDdn81x
         MQqNA4fIdY0ea4n0dVIH0bibtz6yg6YkmKwwhkZN9Ty+raKhi2tQCyPMXqhACFM1msA1
         7e7ZrEFzEb7zG6iQdSiBvTThzeiAs/8S58UH7CITNlSFhJLxN+gNJl6ya6FW5Tq4f9hD
         3nSkY/B+BXrgUdbd/ESxUskqbnNsApWzhtetHdMTttHmZB+UDMP7+dBcWl8VPXHjDsre
         pKpQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id 41be03b00d2f7-b38ee53c7f0si1713330a12.607.2025.07.03.23.11.40
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 23:11:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: bbbf90f2589d11f0b29709d653e92f7d-20250704
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:2c33e3f4-d921-40dc-a38e-e5c5a7b7c501,IP:0,U
	RL:0,TC:0,Content:0,EDM:25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:25
X-CID-META: VersionHash:6493067,CLOUDID:8b718783b12c86f57a14e01588e4fb53,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:81|82|102,TC:nil,Content:0|50,EDM:5,IP:n
	il,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LE
	S:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: bbbf90f2589d11f0b29709d653e92f7d-20250704
X-User: dengjie03@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <dengjie03@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 116345990; Fri, 04 Jul 2025 14:11:33 +0800
From: Jie Deng <dengjie03@kylinos.cn>
To: gregkh@linuxfoundation.org
Cc: stern@rowland.harvard.edu,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	dengjie03@kylinos.cn
Subject: [usb-storage] [PATCH v2] usb: storage: Ignore UAS driver for SanDisk
 Extreme Pro 55AF storage device
Date: Fri,  4 Jul 2025 14:11:16 +0800
Message-Id: <20250704061116.1020646-1-dengjie03@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <2025070329-rinse-engaged-e7af@gregkh>
References: <2025070329-rinse-engaged-e7af@gregkh>
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250704061116.1020646-1-dengjie03%40kylinos.cn.
