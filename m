Return-Path: <usb-storage+bncBDTPNYNWQEIBBH43THBQMGQEUFTIDEQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 3544CAF6EAB
	for <lists+usb-storage@lfdr.de>; Thu,  3 Jul 2025 11:30:14 +0200 (CEST)
Received: by mail-pl1-x647.google.com with SMTP id d9443c01a7336-2369dd5757bsf14220965ad.2
        for <lists+usb-storage@lfdr.de>; Thu, 03 Jul 2025 02:30:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751535009; cv=pass;
        d=google.com; s=arc-20240605;
        b=B8ZV/gNyKsMIqFZlebjQbjRlXbM/sbQwiPvBgU3MZjeliTEYP5wj2bHzZai0ceztdn
         xj1uxMuBHeTiW+F7ZnSR/cWnqyk485BJekeJJqoFHHhXEeT4qkA1TKqWurXl+7DKnj+O
         asa4gHUYrMwi7vlTW/pKVWd8OP0DYmSEgJqYRQjC1GndhQNhaxClb8+0sQdkctQaOx1t
         5zEjr7tdBZB70wbD2BxRcemjuw9yAgbC1rnHCY1aZ2Q6chrFYSdWn3WOGa2FHLqf1SMa
         nxioHFMIT4MiGxAfjb3+t/xiMEMQEkdEBIVJBmE8sUs9qMWoppJXWlg/2LHDaHElKQSd
         UEYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=tbn+/WpnKTp3tKaiYI223YCVzdrSE/w6OlZv/lJMOtM=;
        fh=ZFlfaXBUsLEsoNFBGzmKnNciGrYTeqrUnnpV1SbqUd4=;
        b=Az/rWqBcRxrAknV9Lw5lZFN8VooXvdiYETuZAWBn446DgmiHaRPOZFkoyxVnhf+pWB
         uJJdk/GuDxzIdEhhVtbaaT3qJ5m4sgZiO/zvXt8jBawAuE0zlsdQ4JOiXlBe95Roq8g7
         KdGRWoLl9MxMrpqJuXW8hAzhm26dc5S3+do210fmjbwSQp5WKOo+JImsbQq6eJFsHMuS
         aE+8etu6obtNz3JQ+sZzPHYWQ+IcjKaAbJzvw1Zzjx+estJWWby6DM9uN1AQzdoZdoVL
         PE6Iq+OUrg/wDNkeGYJlAPdN/PHRMAZixgKW+8npt1BRFHUCZp2ZtDN0sVwQCtNvvKGV
         ooew==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1751535009; x=1752139809; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=tbn+/WpnKTp3tKaiYI223YCVzdrSE/w6OlZv/lJMOtM=;
        b=WNFc9gTPmRl4ANpJnpgIsa6KTmYcx8LyFX9G8erDJACc3Ovh7tmWXw/hVoS9JMjBUg
         9D9/CKqL2/VB1v1HFVqpNuo+nBPZ+7ffg6st5EottEkT2Wx8RBPNA1A/eQxsn+kZ7Zb5
         tYCFGBZzwR3TsDkv2anvit8X+zMmIpki/cYyE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751535009; x=1752139809;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=tbn+/WpnKTp3tKaiYI223YCVzdrSE/w6OlZv/lJMOtM=;
        b=R//wx7hBCKmSqMqlcIauBw6zOfM6ccrPDrvSpBxfHwz1Umvx92iFDCL+vpZQ3atXLn
         XPP++8CtfppJ3dmzCzYaWdr3Jc98eSaNbXnbRbnzwGAL/05UlFeFn8/ko+4+IHtqkGC9
         DP6fbjJvsDwNig33+8ySJuGTBvaBhkibrUPqI9djR45pQlT0iP7AOxAahfBgFRH8Tf92
         Uin+OSAwWtNA4No1c32pfl54837O7bkc2k0eJIZ1g1TYxzFIdwAHp1IHh/3+tlbzms31
         y7RLF85IEhE5q2LYsYlG3IvJZxFnoSgDI1DG6Fm1Yje1+f+N05EY82bm3dKklOO/J0TE
         aI/Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUGxkS9g2VNHn/5M8UP9Hd9jqCvtf2R64Pcsi267tRW/hIFvwYJQAMk6C3zPUfw8r+0HzDNSw==@lfdr.de
X-Gm-Message-State: AOJu0YzCk6LK0WErFTAAlhBJfpsdy+SgnXm5TCfgipdz7f9E3r2Vpb5Q
	Fk2FiuXW8JHdPGsWAz6zQiCbGV9GYiaVGBTx2E/bIHaqwYGD23+d4p2FhiXD6H6bBhZlg6wSWIU
	=
X-Google-Smtp-Source: AGHT+IEdSum1nlGFJnB2HztZkCI4EB4ZkG56iOX+e+J5fPYS+rS83NoXSzQ4hsshPfRVMH3GWVPW/w==
X-Received: by 2002:a17:902:ce8d:b0:235:239d:2e3d with SMTP id d9443c01a7336-23c7b3d9335mr8629165ad.9.1751535008706;
        Thu, 03 Jul 2025 02:30:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZeOx6x/n1VA+6yGw0hOfV9yMBTqo+AxceMPbnt+yeGQ7A==
Received: by 2002:a17:902:e890:b0:237:f1a3:b13b with SMTP id
 d9443c01a7336-23b35756142ls37273055ad.2.-pod-prod-03-us; Thu, 03 Jul 2025
 02:30:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUB1pXwtcRDMuN57Z4TcLgA7puEcTubpZd+DtEqZqKHyxZafOrOYcF2O6mzPDSYRT9KK5KPaApgeZ8f8Q==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:ce08:b0:238:2437:ada8 with SMTP id d9443c01a7336-23c6e5d8f42mr96663545ad.48.1751535006781;
        Thu, 03 Jul 2025 02:30:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1751535006; cv=none;
        d=google.com; s=arc-20240605;
        b=X4Pgrk578Zx2ehR4JwaziUhjjs3Y36kVeM4gQbSsEuco7+CgV7se1f9UfLecOfjKqO
         aAIw8n4zerML7aRjK/8xKN2JSqZ7T55qKrtWugiCS7XvYBm4dH1ASmZp1TCLpcCOyO1E
         AjZQonOjFPFIhu9OY+o9iAC6tbzySLI1kbAkruKyWtXycwXXoKntPpJXjINk5RwjjUlz
         d+Vu/4fo9cPmHRIcJ07zmKVONzi+6qcYNdCkKGbW3/GX6v41vPYLd9xbobZAHZJ79ahG
         IuT6/gn0B536OxCFdt4ITxfTEPbsJrflldRYkyOMcSXtvRF60dod6Oz0E4Qr6826cc+5
         4dvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=mjYMATLQgp+13xe5fT44AUzg99UJdY3Bx5kc84a1lds=;
        fh=fO1AZ9ZSQ0k2hrQynIZK1LLY4R+hCTEpeWmhm02DFA8=;
        b=Heb6HP6U8VA5EqCdQv8SjjPFEuNQwZd2DyF1KF6N35YoWZ0W95VgT8soBLzb3PcEJi
         QeKCye0FmDTn3SFsWZU/K+7Cj7i8VJPwg/knJSF/gp41AZASR2mU7cLtCCSQF0XH/Xjg
         3fJxxWOwiJ9ignBAhZV6DL/PkIE1f9GRjDv8CPvLtKTXXqGFZgN36sH+ckUB9ry4wBLa
         slHIh8L+8JGivW7lDsPqlqEz0KwRHsMnxAuTo454py2xw2B59G7trCcKm0XYFlmUqj3C
         DXKdFlr7JyBp5no/dZqpCNemvdt63Vxx7CPFzvGZCZ3pikU8fjVEE/LzK/Lef5ityzh1
         f6sA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id d9443c01a7336-23acb3b19a7si201665295ad.281.2025.07.03.02.30.04
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 02:30:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: 4857af8057f011f0b29709d653e92f7d-20250703
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:fb65c855-279a-4f21-9949-176d3165a549,IP:0,U
	RL:0,TC:0,Content:0,EDM:25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:25
X-CID-META: VersionHash:6493067,CLOUDID:bc53333ac3cd15831769d67461648726,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0|50,EDM:5,IP:nil,URL
	:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SP
	R:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 4857af8057f011f0b29709d653e92f7d-20250703
X-User: dengjie03@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <dengjie03@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 280611619; Thu, 03 Jul 2025 17:29:56 +0800
From: Jie Deng <dengjie03@kylinos.cn>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Jie Deng <dengjie03@kylinos.cn>
Subject: [usb-storage] [PATCH] usb: storage: Ignore UAS driver for SanDisk
 Extreme Pro 55AF storage device
Date: Thu,  3 Jul 2025 17:29:46 +0800
Message-Id: <20250703092946.939936-1-dengjie03@kylinos.cn>
X-Mailer: git-send-email 2.25.1
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
Jun 23 18:21:48 FD-0528-pc kernel: [    1.359859][ 0] [  T163] usb 2-1: new SuperSpeed Gen 1 USB device number 2 using xhci_hcd
Jun 23 18:21:48 FD-0528-pc kernel: [    1.385708][ 0] [  T163] usb 2-1: New USB device found, idVendor=0781, idProduct=55af, bcdDevice=10.85
Jun 23 18:21:48 FD-0528-pc kernel: [    1.385709][ 0] [  T163] usb 2-1: New USB device strings: Mfr=2, Product=3, SerialNumber=1
Jun 23 18:21:48 FD-0528-pc kernel: [    1.385710][ 0] [  T163] usb 2-1: Product: Extreme Pro 55AF
Jun 23 18:21:48 FD-0528-pc kernel: [    1.385711][ 0] [  T163] usb 2-1: Manufacturer: SanDisk
Jun 23 18:21:48 FD-0528-pc kernel: [    1.385711][ 0] [  T163] usb 2-1: SerialNumber: 323234323935343030343636
Jun 23 18:21:48 FD-0528-pc kernel: [    1.927603][ 0] [  T306] usbcore: registered new interface driver usb-storage
Jun 23 18:21:48 FD-0528-pc kernel: [    1.940511][ 0] [  T306] scsi host3: uas
Jun 23 18:21:48 FD-0528-pc kernel: [    1.940584][ 0] [  T306] usbcore: registered new interface driver uas
Jun 23 18:21:48 FD-0528-pc kernel: [    1.940843][ 0] [  T188] scsi 3:0:0:0: Direct-Access     SanDisk  Extreme Pro 55AF 1085 PQ: 0 ANSI: 6
Jun 23 18:21:48 FD-0528-pc kernel: [    1.941363][ 0] [  T188] scsi 3:0:0:1: Enclosure         SanDisk  SES Device       1085 PQ: 0 ANSI: 6
Jun 23 18:21:48 FD-0528-pc kernel: [    1.941697][ 0] [  T188] sd 3:0:0:0: Attached scsi generic sg0 type 0
Jun 23 18:21:48 FD-0528-pc kernel: [    1.941783][ 0] [  T188] scsi 3:0:0:1: Attached scsi generic sg1 type 13
Jun 23 18:21:48 FD-0528-pc kernel: [    1.942296][ 0] [  T189] sd 3:0:0:0: [sda] 1953459617 512-byte logical blocks: (1.00 TB/931 GiB)
Jun 23 18:21:48 FD-0528-pc kernel: [    1.942373][ 0] [  T189] sd 3:0:0:0: [sda] Write Protect is off
Jun 23 18:21:48 FD-0528-pc kernel: [    1.942374][ 0] [  T189] sd 3:0:0:0: [sda] Mode Sense: 37 00 10 00
Jun 23 18:21:48 FD-0528-pc kernel: [    1.942534][ 0] [  T189] sd 3:0:0:0: [sda] Write cache: enabled, read cache: enabled, supports DPO and FUA
Jun 23 18:21:48 FD-0528-pc kernel: [    1.943586][ 0] [  T189] sd 3:0:0:0: [sda] Optimal transfer size 2097152 bytes
Jun 23 18:21:48 FD-0528-pc kernel: [    1.976797][ 0] [  T189]  sda: sda1
Jun 23 18:21:48 FD-0528-pc kernel: [    1.977898][ 0] [  T189] sd 3:0:0:0: [sda] Attached SCSI disk
Jun 23 18:21:48 FD-0528-pc kernel: [    1.980406][ 0] [  T267] scsi 3:0:0:1: Failed to get diagnostic page 0x1
Jun 23 18:21:48 FD-0528-pc kernel: [    1.980408][ 0] [  T267] scsi 3:0:0:1: Failed to bind enclosure -19
Jun 23 18:21:48 FD-0528-pc kernel: [    1.980414][ 0] [  T267] ses 3:0:0:1: Attached Enclosure device
Jun 23 18:21:48 FD-0528-pc kernel: [    1.981068][ 0] [    C0] sd 3:0:0:0: [sda] tag#10 data cmplt err -75 uas-tag 1 inflight: CMD
Jun 23 18:21:48 FD-0528-pc kernel: [    1.981071][ 0] [    C0] sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00 74 6f 6d 00 00 00 08 00
Jun 23 18:21:48 FD-0528-pc kernel: [   33.819186][ 0] [  T188] sd 3:0:0:0: [sda] tag#10 uas_eh_abort_handler 0 uas-tag 1 inflight: CMD
Jun 23 18:21:48 FD-0528-pc kernel: [   33.819188][ 0] [  T188] sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00 74 6f 6d 00 00 00 08 00
Jun 23 18:21:48 FD-0528-pc kernel: [   33.843186][ 0] [  T309] scsi host3: uas_eh_device_reset_handler start

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
index 1477e31d7763..9f093a6af7f9 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -199,3 +199,10 @@ UNUSUAL_DEV(0x4971, 0x8024, 0x0000, 0x9999,
 		"External HDD",
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_ALWAYS_SYNC),
+
+/* Reported-by: Jie Deng <dengjie03@kylinos.cn> */
+UNUSUAL_DEV(0x0781, 0x55af, 0x0000, 0x9999,
+		"SanDisk",
+		"Extreme Pro 55AF",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250703092946.939936-1-dengjie03%40kylinos.cn.
