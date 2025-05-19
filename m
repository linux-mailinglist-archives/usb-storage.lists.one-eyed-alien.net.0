Return-Path: <usb-storage+bncBD23DR5CZIKRB4VRVLAQMGQEYIAMBCI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DF0ABB33F
	for <lists+usb-storage@lfdr.de>; Mon, 19 May 2025 04:35:32 +0200 (CEST)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-604adec072esf5326134eaf.1
        for <lists+usb-storage@lfdr.de>; Sun, 18 May 2025 19:35:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1747622131; cv=pass;
        d=google.com; s=arc-20240605;
        b=T8x6KgM1J3BvCn3AIitU88gYgZtT+2IHqR5d4DETEhHuU64Mgmu9Pd6/QPsMB5T/G1
         gbLcDCJx2BbtELJZEX4L8nHx994XhgRsFM1yY3r5qOEcwA48mSstaB+qvAdzNQ7jNxrH
         TaTlTZ09NfCuOp8I+i9haeIkAQkcUuUJga3zo+TShjK7xTtEGpttXMws5EBJi/EnXubh
         BW/BViW4D7nSWN/VPXTLSFQ37qGsdXQuE7OvgExwTAy91CTZ74Aza8qYZhyWVIZTS3ac
         CjErSw0pu6xLitzNrYws484RoIBvec4PzLtm7bYj81f7hTOUrpTHArPbt92WYD2eINwW
         ddiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=IVhSYOBOOWc1CcogZ2oOLAe1CDIPtV39oqvGAl0sq4o=;
        fh=uVjlTXtYC49cwl6atHi5ef7Fm1L8rhTS07lOHs3hFRs=;
        b=hbcPSzJIN5pDFbEx733HH2ue1AqxpK+N5PmhRg8RYeaU/PH/eJuEsvt00p/5J3gmNO
         Shl61UrIiSUAgJ4/+SS5TbSIj3tYdFvmltjIdsrD+RaY4JeqSb8/iegtrZKNP7vX4X/9
         8LU4o0FFnkfg2izHcGiJKSPSrSb+Qf0N9qjKMHWtOEwYiukqt0ts1gw8HLLNK323bWQE
         THZGAK+Q47+dPbcqdm06etji5Qqv4IX9AteHyw9+tfCa8aokzF6tHoXDVBrPkeVWnaI7
         XP8yt6nIeosEpsel6kt9BQli6NiPcbyl/sbgxt6rcmkGmcBiM0nAKND3Q796XAwlnEng
         SlHg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of xy521521@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=xy521521@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1747622131; x=1748226931; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=IVhSYOBOOWc1CcogZ2oOLAe1CDIPtV39oqvGAl0sq4o=;
        b=HL+V3+KWc68lOhFUPTD2Eq94P8OsRkGQvyOj6iLGpV1KQDWTNJOY+jFUSDvOJJLJmz
         PT0v2EN0DYHyUm2uRmT4WoQmARaZkPaHWS9+ttH8UcX/D7PgVAbhCgE5cJuUbNzaAn2s
         EvwSs3o9UPf/jTyjTR9WStTY5BnPiEGDr3alQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747622131; x=1748226931;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IVhSYOBOOWc1CcogZ2oOLAe1CDIPtV39oqvGAl0sq4o=;
        b=v9sKISbiWlZFzcWbValfJsYA+YIisd1zY80GNWndLdRXAFJDAeU/JtKZLAQQxLiTNM
         zUEG/mNz4MNKaoOnfPH9hCp3UNN10IZ0ZP+LRJQH0V2AueQ13nun+adVFIAeRb2xl2Hp
         RWdSPlGWT1kktzeIFCGZ3PtLClus6tNVmGKE4dbO8rgbhRZnLTyzJplTXRuu7vREJ4sR
         rE1jVET+yE1OmrCC69EhgcA1LuBbMCBptNifJJemojpu/UvlepWR01IaR/JP1p+RpOp7
         A568Hc3almP8udSDinP+uu7kQgADJS/yeU2h9UNZntj9hVqmd14hG1diBczKk0K7pivo
         pJAQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWgk0wGWvyGRCl9FlXvcEZ9ZPNxU4m4+N2CQWlE6q1BdaJw7u32Nut5UMK3UXObHEOTAhCgrg==@lfdr.de
X-Gm-Message-State: AOJu0YwZa/LP1o4WpWV0DFEGwYWpbXo5weATRwN0Rzvz3CxdGPHYLnTR
	A//IdamuJgft7F2Hz240tj3uFcSXfXM61cQNI6ER8nBQ6ygVZHH0efetSALte15ytPA=
X-Google-Smtp-Source: AGHT+IHHDuAt5MRZ0R2mEAqJx/Qpnecerjcmkf6SzsIricvH4kqMyYxIgMT3EhyaX4TYMRpixHSIYw==
X-Received: by 2002:a05:6808:229f:b0:3f7:d16c:e283 with SMTP id 5614622812f47-404d86ce828mr6130651b6e.11.1747622130584;
        Sun, 18 May 2025 19:35:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBEyZD2Dz+MuKSisJ74TwRyi/yPoszsZZb/x2dKbUJKAew==
Received: by 2002:a4a:ead7:0:b0:601:afcc:166b with SMTP id 006d021491bc7-609ea3f5808ls1801409eaf.1.-pod-prod-09-us;
 Sun, 18 May 2025 19:35:30 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWVXYAqLLGnWDk23D7fPG3xm1QTd36BpaG+uRPTa1YvkvV2ZWuGUg2pvoPloxEXFi6taBT9HKsKy9qabg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:4c0a:b0:3f9:d5a2:8999 with SMTP id 5614622812f47-404d867b800mr5637229b6e.3.1747622130008;
        Sun, 18 May 2025 19:35:30 -0700 (PDT)
Received: by 2002:a05:6808:82c7:b0:3f6:a384:eb6f with SMTP id 5614622812f47-404da00d5efmsb6e;
        Sun, 18 May 2025 19:34:11 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVsx34bb4gWt8UdYCeHkIwPcrg2TLoSp6x+XmMdnmMqThshLHq0APW0ZFVpg5TsMtreE/LWOBeJWOIxuw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:6a10:b0:215:edce:4e2c with SMTP id adf61e73a8af0-216219d3976mr16845919637.28.1747622050817;
        Sun, 18 May 2025 19:34:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1747622050; cv=none;
        d=google.com; s=arc-20240605;
        b=fwk65D49/PKUS4TZURkv//GM5HAniCQAu7eFcWczAsJCU8In3vJwOqvR1cw92Zi2cp
         pr+ynV57mb3nZYALfJn9nCoHCpivueklojt6pV+ZHsPovLCGFbk5JfcZ6zHTsKgc597C
         azxh6K83lhgIQgysHHhvPfCaVMMCSOAho2ka+Ee+/RCxxk0eNGXm9LsMmWhGMLovDU7S
         jNUXaPwCnESpNkSWKCfGTNIPk0Mmw1Bgqgw0lnL5s9pC8x+jKQNo9Lo9RIdMxwbXfL70
         xdC3bEIrR3X5Ffn/ufOB+uzjMt/aMicrTRFnvcbqzaL2aDDdXVpIMaU6Dw7dKpQemC1X
         ZzEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=iegr4EZ/f05pfjGH9FJD0MeaTXrr47iqo7rRy4qL9t0=;
        fh=IlECeXlvTbxtcXUiLb/MCGxxfoLvV5mMzP72tOKQth8=;
        b=ON3IMLie5oorG9oe6u5iJ0iiGypW7femWTynqg4CPT7CHpTpLLwla/PfcAkOLeovDZ
         PtIZ/La7UWDgqMAOqfwD8ISfdp9OZ1WV1C/Ei6RSELZx390Hw219I8oa30Rib5N+i2Z4
         PDK1f7E1sjvrgc4pyCmiOeu7WEEdQ6zp4IHueCkuOLUSnBMqFYaMKukeOk967mJgudQo
         Vxs8LlqGLlUs6gnnJ6yDHNFb0GSx9BN6JPv8Vh5GeNo9VJmJOxw6ss5OudVUE512zCiD
         prUWZ+SDLbXd4COoPu4sl1xydCs/Lu3qyaIOogccpRvHH5CfdS0HA6NGSEL9yXlJEDNL
         jTZQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of xy521521@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=xy521521@gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d2e1a72fcca58-742a985536fsor3468714b3a.7.2025.05.18.19.34.10
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 18 May 2025 19:34:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of xy521521@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCX5aHPg9TOBAPLi+apDKAoS21E72t7Q8o6vre4J81/D5UAIlC7y5gSm1yIrgU6NCgI8QRPJOSHPY+Z3Fg==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncvvb3Ti63GT8lAu5xhq+rEerULBAaeFgg1wBzShDxuWgeSgoduLfpziqB4hkfX
	0AoOZdy72lDDz2T0VXp7oAsQO6sD2lUKvjgUCTPjuhd6TJ3l7+I9Dwl699IphCoEjUiuqWlqAam
	/cYTUlPUhvMR31ROeCX3XEHHBpJBt+TR+ogXCe74H0q4u/X8s74Zzx/XABOWVps5toY6o028ZVq
	Q4d6xKVfp7V/zraqAXL71bylpTQvEvh4RSL48bteVp1FvKtxsoonzoP0XGhHs6sBOOHWDxpagyR
	6TYts5g34mAfYKnpGlQEgiqvGEvNIB3VJBFU/c147aaBxIS10huUECpxrnEPfThRQHoFJ4FNDfl
	RLHg=
X-Received: by 2002:a05:6a00:2401:b0:736:532b:7c10 with SMTP id d2e1a72fcca58-742a98b4b2cmr16549983b3a.21.1747622050229;
        Sun, 18 May 2025 19:34:10 -0700 (PDT)
Received: from localhost.localdomain ([116.128.244.169])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a9876dcdsm5296595b3a.138.2025.05.18.19.34.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 May 2025 19:34:09 -0700 (PDT)
From: xiehongyu1@kylinos.cn
To: stern@rowland.harvard.edu
Cc: linux-kernel@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-usb@vger.kernel.org,
	gregkh@linuxfoundation.org,
	Hongyu Xie <xiehongyu1@kylinos.cn>
Subject: [usb-storage] [PATCH v1] usb: storage: Ignore UAS driver for SanDisk
 3.2 Gen2 storage device
Date: Mon, 19 May 2025 10:33:28 +0800
Message-Id: <20250519023328.1498856-1-xiehongyu1@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: xy521521@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of xy521521@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=xy521521@gmail.com
Content-Type: text/plain; charset="UTF-8"
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

From: Hongyu Xie <xiehongyu1@kylinos.cn>

SanDisk 3.2 Gen2 storage device(0781:55e8) doesn't work well with UAS.
Log says,
[    6.507865][ 3] [  T159] usb 2-1.4: new SuperSpeed Gen 1 USB device number 4 using xhci_hcd
[    6.540314][ 3] [  T159] usb 2-1.4: New USB device found, idVendor=0781, idProduct=55e8, bcdDevice= 0.01
[    6.576304][ 3] [  T159] usb 2-1.4: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[    6.584727][ 3] [  T159] usb 2-1.4: Product: SanDisk 3.2 Gen2
[    6.590459][ 3] [  T159] usb 2-1.4: Manufacturer: SanDisk
[    6.595845][ 3] [  T159] usb 2-1.4: SerialNumber: 03021707022525140940
[    7.230852][ 0] [  T265] usbcore: registered new interface driver usb-storage
[    7.251247][ 0] [  T265] scsi host3: uas
[    7.255280][ 0] [  T265] usbcore: registered new interface driver uas
[    7.270498][ 1] [  T192] scsi 3:0:0:0: Direct-Access     SanDisk  Extreme Pro DDE1 0110 PQ: 0 ANSI: 6
[    7.299588][ 3] [  T192] scsi 3:0:0:1: Enclosure         SanDisk  SES Device       0110 PQ: 0 ANSI: 6
[    7.321681][ 3] [  T192] sd 3:0:0:0: Attached scsi generic sg1 type 0
[    7.328185][ 3] [  T192] scsi 3:0:0:1: Attached scsi generic sg2 type 13
[    7.328804][ 0] [  T191] sd 3:0:0:0: [sda] 976773168 512-byte logical blocks: (500 GB/466 GiB)
[    7.343486][ 0] [  T191] sd 3:0:0:0: [sda] 4096-byte physical blocks
[    7.364611][ 0] [  T191] sd 3:0:0:0: [sda] Write Protect is off
[    7.370524][ 0] [  T191] sd 3:0:0:0: [sda] Mode Sense: 3d 00 10 00
[    7.390655][ 0] [  T191] sd 3:0:0:0: [sda] Write cache: enabled, read cache: enabled, supports DPO and FUA
[    7.401363][ 0] [  T191] sd 3:0:0:0: [sda] Optimal transfer size 1048576 bytes
[    7.436010][ 0] [  T191]  sda: sda1
[    7.450850][ 0] [  T191] sd 3:0:0:0: [sda] Attached SCSI disk
[    7.470218][ 4] [  T262] scsi 3:0:0:1: Failed to get diagnostic page 0x1
[    7.474869][ 0] [    C0] sd 3:0:0:0: [sda] tag#0 data cmplt err -75 uas-tag 2 inflight: CMD
[    7.476911][ 4] [  T262] scsi 3:0:0:1: Failed to bind enclosure -19
[    7.485330][ 0] [    C0] sd 3:0:0:0: [sda] tag#0 CDB: Read(10) 28 00 00 00 00 28 00 00 10 00
[    7.491593][ 4] [  T262] ses 3:0:0:1: Attached Enclosure device
[   38.066980][ 4] [  T192] sd 3:0:0:0: [sda] tag#4 uas_eh_abort_handler 0 uas-tag 5 inflight: CMD IN
[   38.076012][ 4] [  T192] sd 3:0:0:0: [sda] tag#4 CDB: Read(10) 28 00 00 00 01 08 00 00 f8 00
[   38.086485][ 4] [  T192] sd 3:0:0:0: [sda] tag#3 uas_eh_abort_handler 0 uas-tag 1 inflight: CMD IN
[   38.095515][ 4] [  T192] sd 3:0:0:0: [sda] tag#3 CDB: Read(10) 28 00 00 00 00 10 00 00 08 00
[   38.104122][ 4] [  T192] sd 3:0:0:0: [sda] tag#2 uas_eh_abort_handler 0 uas-tag 4 inflight: CMD IN
[   38.113152][ 4] [  T192] sd 3:0:0:0: [sda] tag#2 CDB: Read(10) 28 00 00 00 00 88 00 00 78 00
[   38.121761][ 4] [  T192] sd 3:0:0:0: [sda] tag#1 uas_eh_abort_handler 0 uas-tag 3 inflight: CMD IN
[   38.130791][ 4] [  T192] sd 3:0:0:0: [sda] tag#1 CDB: Read(10) 28 00 00 00 00 48 00 00 30 00
[   38.139401][ 4] [  T192] sd 3:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 2 inflight: CMD
[   38.148170][ 4] [  T192] sd 3:0:0:0: [sda] tag#0 CDB: Read(10) 28 00 00 00 00 28 00 00 10 00
[   38.178980][ 2] [  T304] scsi host3: uas_eh_device_reset_handler start
[   38.901540][ 2] [  T304] usb 2-1.4: reset SuperSpeed Gen 1 USB device number 4 using xhci_hcd
[   38.936791][ 2] [  T304] scsi host3: uas_eh_device_reset_handler success

Device decriptor is below,
Bus 002 Device 006: ID 0781:55e8 SanDisk Corp. SanDisk 3.2 Gen2
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               3.20
  bDeviceClass            0
  bDeviceSubClass         0
  bDeviceProtocol         0
  bMaxPacketSize0         9
  idVendor           0x0781 SanDisk Corp.
  idProduct          0x55e8
  bcdDevice            0.01
  iManufacturer           1 SanDisk
  iProduct                2 SanDisk 3.2 Gen2
  iSerial                 3 03021707022525140940
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
        bEndpointAddress     0x82  EP 2 IN
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
        bEndpointAddress     0x01  EP 1 OUT
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
        bEndpointAddress     0x01  EP 1 OUT
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst               0
        Command pipe (0x01)
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x84  EP 4 IN
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
        bEndpointAddress     0x82  EP 2 IN
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
        bEndpointAddress     0x03  EP 3 OUT
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst              15
        MaxStreams             32
        Data-out pipe (0x04)
Binary Object Store Descriptor:
  bLength                 5
  bDescriptorType        15
  wTotalLength       0x002a
  bNumDeviceCaps          3
  USB 2.0 Extension Device Capability:
    bLength                 7
    bDescriptorType        16
    bDevCapabilityType      2
    bmAttributes   0x0000f41e
      BESL Link Power Management (LPM) Supported
    BESL value     1024 us
    Deep BESL value    61440 us
  SuperSpeed USB Device Capability:
    bLength                10
    bDescriptorType        16
    bDevCapabilityType      3
    bmAttributes         0x00
    wSpeedsSupported   0x000e
      Device can operate at Full Speed (12Mbps)
      Device can operate at High Speed (480Mbps)
      Device can operate at SuperSpeed (5Gbps)
    bFunctionalitySupport   1
      Lowest fully-functional device speed is Full Speed (12Mbps)
    bU1DevExitLat          10 micro seconds
    bU2DevExitLat        2047 micro seconds
  SuperSpeedPlus USB Device Capability:
    bLength                20
    bDescriptorType        16
    bDevCapabilityType     10
    bmAttributes         0x00000001
      Sublink Speed Attribute count 1
      Sublink Speed ID count 0
    wFunctionalitySupport   0x1100
    bmSublinkSpeedAttr[0]   0x000a4030
      Speed Attribute ID: 0 10Gb/s Symmetric RX SuperSpeedPlus
    bmSublinkSpeedAttr[1]   0x000a40b0
      Speed Attribute ID: 0 10Gb/s Symmetric TX SuperSpeedPlus
Device Status:     0x0000
  (Bus Powered)

So ignore UAS driver for this device.

Signed-off-by: Hongyu Xie <xiehongyu1@kylinos.cn>
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index d460d71b42578..1477e31d77632 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -52,6 +52,13 @@ UNUSUAL_DEV(0x059f, 0x1061, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_REPORT_OPCODES | US_FL_NO_SAME),
 
+/* Reported-by: Zhihong Zhou <zhouzhihong@greatwall.com.cn> */
+UNUSUAL_DEV(0x0781, 0x55e8, 0x0000, 0x9999,
+		"SanDisk",
+		"",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
 UNUSUAL_DEV(0x090c, 0x2000, 0x0000, 0x9999,
 		"Hiksemi",
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250519023328.1498856-1-xiehongyu1%40kylinos.cn.
