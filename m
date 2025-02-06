Return-Path: <usb-storage+bncBAABBMEYSG6QMGQE3MDNGBI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 3660CA2A03D
	for <lists+usb-storage@lfdr.de>; Thu,  6 Feb 2025 06:44:21 +0100 (CET)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5fa6a278c85sf530951eaf.1
        for <lists+usb-storage@lfdr.de>; Wed, 05 Feb 2025 21:44:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738820657; cv=pass;
        d=google.com; s=arc-20240605;
        b=aFFlesTmVkacMoDulYgGquUzR8G0MoGscdDAILm208d0ch8m0tpa2790s5vEYOLJCs
         aZjoCQu/Gcc7M2+2VC7BoRoChYMLU4A3D8pakhWsBWXKSznXCk/iUOR7Q8gYw+7fqxve
         E8C9pR4HrxJf0T8NjPIUxb/OiXULU6bvobD6waPFFCeANcFR78wUbR73D1tvdsiXmkkw
         K+t/J0S0WJ/NsV5Km8QS5KGmE5MnS4Go8T9bIlOyBsCW9CY+Go8FobPfHWtCV6rj1qQZ
         EEj3bAj+K6ECAX6wROiVf7S7G+gLeb3X6pzSDKU9oAN3g2WAT9NVCTkRFqUtlTuPrktu
         rolw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:feedback-id:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=sLoUQj6g4+V8DQU/cyqjJJi0AivHa7lFLdPlHJT70TA=;
        fh=ZVNwPpIlEmAVHKwzFnlKGA8WU9BbMFuxk4tIEzREQ2w=;
        b=MowFg7EUELZuDGULYmsnHDgS9/FzZU8yW2Om6ixnhYEysM5dM65Ix0EPvir3Abi4f+
         n3gRJ/xO06TSSqd6a3H+bbsGbt2W/YKRkm1SUav3lbK4bM0Fo0B9yuYNCgNc1R3wI37l
         zeydkEkiZpIVRrQBIC1zRkAySYuDwQ9xUCQDOxc4hWkazi6pVLruC7rBuOlbGiNW9U2X
         fQk2qxqO4STfVYwFspsH7aN7J8HWDLi3aYpSrz9OGv2oExP1bT6xBfDejQuetCQ5O2eY
         5mQ+9xNreyj2fuYEElm+F3H6IC3nsfjLfBX0THTLdZTqhJ2cV6haIEH9dIrBK4Eqp4wh
         fzgg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@uniontech.com header.s=onoh2408 header.b=T2iOuy0X;
       spf=pass (google.com: domain of wangyuli@uniontech.com designates 54.243.244.52 as permitted sender) smtp.mailfrom=wangyuli@uniontech.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=uniontech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1738820657; x=1739425457; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:feedback-id:mime-version:message-id:date:subject
         :cc:to:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=sLoUQj6g4+V8DQU/cyqjJJi0AivHa7lFLdPlHJT70TA=;
        b=B1kSZw6JBDSiQc5UcCOy3XjaU1WBeBvY57t9JG3D9+jNmQvvw2r++8+Q1jZ4bw06Hr
         8PNXTFf7dMsKKrNd6Vg0jRBPLNg3WzQGwamgygA39xTNZSIAObbUToS9zMblBCsoCT5G
         DOxhVsyRxSUSSJbfMeS6CVkUNe5NjEC3Qu89Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738820657; x=1739425457;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:feedback-id:mime-version:message-id:date:subject
         :cc:to:from:x-beenthere:x-gm-message-state:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sLoUQj6g4+V8DQU/cyqjJJi0AivHa7lFLdPlHJT70TA=;
        b=m0RBfCdTooNHVxnysRrRWlNV9zHDIjBX72G+EV8y7OMsgIk/KubL2PPjya2A2pD65y
         WsQaWzsrlRhEqBRaXHeFIqnfId5Bu6Ni3x7B5p4rgkCb27GW0lxQh8+zXsVXazEkgQbk
         slCFluNhv7GLQrZO1ErXgfxtcemnZGuT8bqKl80k2hRKx+JfZHezBg3mh+Rc/f9FAjrI
         ra78Qk2fUtioLMI1FXOetBeQoMWk4M9hT5o3hltC8T8AI51g0lOA69BSrexPrTcEdQEf
         UzpIky22rLL0ltD2dSLJlWc5mB0dhl/VUZ2/2cPdJlYUbeaQJuQnMsHf3u8Q0qs1xwlx
         f+uA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV3F0Thapjtj0KFPquH6lf8xxXN3L+t9cOsqWqHBiAGmurC3Z1TOQEgyU2qRY59s1PwsGWBrA==@lfdr.de
X-Gm-Message-State: AOJu0YzFQUfeFN+VtYoXxZM1iC800mF9+k55lLH3qOb3+7/nzTSf0bKD
	8l6a8vxJwv6gDw/mxMORxqCSG3PTLZTdM5OIc1DSd+E2rOYP7y2Dc3/eie7P4rg=
X-Google-Smtp-Source: AGHT+IFcSGDPXgEFJqO+Irak2pqIId2k+b2CF6ylNeWu19Yrj4wk/hza0jSKZKA987jbaKXhSVbKdA==
X-Received: by 2002:a05:6820:c8d:b0:5ee:db2e:9f76 with SMTP id 006d021491bc7-5fc477854b9mr3781871eaf.0.1738820657443;
        Wed, 05 Feb 2025 21:44:17 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:ddd1:0:b0:5f2:e057:d611 with SMTP id 006d021491bc7-5fc5279ed75ls208616eaf.1.-pod-prod-01-us;
 Wed, 05 Feb 2025 21:44:16 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXBm0J/lD5GQs1kXlI/au6bvkMulZRyZoB3nJqrdFmTdh0VcHaUHi6/no+xzTNJCP8mRoEMPTU9r14ulw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:308e:b0:3eb:4b3a:d57d with SMTP id 5614622812f47-3f37c19f7cfmr4600795b6e.30.1738820656672;
        Wed, 05 Feb 2025 21:44:16 -0800 (PST)
Received: by 2002:a05:6808:3383:b0:3eb:6ba8:8c61 with SMTP id 5614622812f47-3f37abe61c6msb6e;
        Wed, 5 Feb 2025 21:42:31 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWfp+rx4vM5TloWC5+3Pc466tmdjy0mafRuWZ728rIYwuRddr4SMu44XaB2o2lTrO4/WMH+gMk88j2CSA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:3d96:b0:1ed:a4c7:9908 with SMTP id adf61e73a8af0-1ede883a434mr9537169637.11.1738820550339;
        Wed, 05 Feb 2025 21:42:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738820550; cv=none;
        d=google.com; s=arc-20240605;
        b=Q62lchMBzqHSkNEs3lW7Z5SuAES2BjjZwBt0f8wevf6ca+DPg+rF8arZC1QKLF0jQp
         5Ylas2MIUr1ibqYDIeoFP4uMNP3juHSXPjYRSq7fEilItm7LJk9VhpjvywjOnt1VYDy3
         oR+lPdhJFqYSpJFnVxpsMnxmutRL9ccqJCc7TFUKA0K3zYPt4OXnEzR9ThHJsJcLaWbM
         l+ypUJq6WREfroOvc67my+bas1BmB7O0Ctps4omBX4b06t2O82Rsn/uUmKXmA+x2BVYm
         Q2ATRZUWETxgCibgOz9xBxut2kZr7nHswVpFUu/Pc3XhltcWv8BSUb/DR8Ga4oswDD5W
         hehQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=feedback-id:content-transfer-encoding:mime-version:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=QF38I/tzVHyo4qFvBBwEmSImd2gsUnZ/WmAknAwOxvs=;
        fh=EQ1S3iIbZCbllVC1dQG9Wq8SlgY28o69pBfYWo9agOQ=;
        b=GR6S5ce0YAFV4iSeUNFX6fwikM3Za5b23nnQeXl0E6Yloohd7/F/sQT3mgU1p0RgDp
         P1mp1I+5PUVlA9WDTTOllSuyWRwtwtg9LuS4wvlIOj/Y846raiI4ViaMHZWPVVPxtkhD
         eY38f6HTg93ijYR753v2ZtMMzvWY6tGlhNsHFU+072JAlk66uPq29BUlZQLQYPXUSP/N
         frfM7IBvWvdCNXTJIElWdR2xii0Wuzl7DD8OrDfnqS0WKVl7XZeQmaA7dgtsLC53uNb1
         wYyKwX7qutxdnDe9YEV5MNYLVUCeTTHaXLSUf0MlkPpuinC1EczS8DvtCwK6OTB2+RRA
         Fxlg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@uniontech.com header.s=onoh2408 header.b=T2iOuy0X;
       spf=pass (google.com: domain of wangyuli@uniontech.com designates 54.243.244.52 as permitted sender) smtp.mailfrom=wangyuli@uniontech.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=uniontech.com
Received: from smtpbguseast3.qq.com (smtpbguseast3.qq.com. [54.243.244.52])
        by mx.google.com with ESMTPS id d2e1a72fcca58-73048abb006si952060b3a.30.2025.02.05.21.42.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Feb 2025 21:42:30 -0800 (PST)
Received-SPF: pass (google.com: domain of wangyuli@uniontech.com designates 54.243.244.52 as permitted sender) client-ip=54.243.244.52;
X-QQ-mid: bizesmtpip4t1738820480tfodjpw
X-QQ-Originating-IP: sg7VSIWw9r0NsVjElq7vwWqxXNOLvBEtzTSj2AbwP5U=
Received: from localhost.localdomain ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 06 Feb 2025 13:41:18 +0800 (CST)
X-QQ-SSF: 0002000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 2559714310624554631
From: WangYuli <wangyuli@uniontech.com>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	zhanjun@uniontech.com,
	guanwentao@uniontech.com,
	chenlinxuan@uniontech.com,
	WangYuli <wangyuli@uniontech.com>,
	Xinwei Zhou <zhouxinwei@uniontech.com>,
	Xu Rao <raoxu@uniontech.com>,
	Yujing Ming <mingyujing@uniontech.com>
Subject: [usb-storage] [PATCH] usb-storage: Bypass certain SCSI commands on
 disks with "use_192_bytes_for_3f" attribute
Date: Thu,  6 Feb 2025 13:41:07 +0800
Message-ID: <AC1BB7F0327EFB9C+20250206054107.9085-1-wangyuli@uniontech.com>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:uniontech.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NN51gi9eLBwaclD7ocwpjimzAwSzQsbHtwRR75ZQCv+V3veeHZBxADAm
	RVAWsSBAri17QjfFjIro4wbRD55CxZAWXc2YFIpXXDF7Dy4+IoAi6JX9ZHMtKX0Fttk6vxQ
	cVXzMTipUDGwbp4WdeG+QxADPQuLucoxWiLYUB+XEFAGFxuBJnwK+rnFI/JyKBplI2URnJG
	/jKNkmeUEUsOL7inYy0x38zKpGqOdu4Zc0Etvy65rYcrouJF7ArMjY19OIN3osK1rGmiTIe
	1hRUgQJFLMww8xiTLJrPz4Ufqrg4mrm0+LwwjYPtf4SYbg56MBzWiikt3r8IIMWeP4C8HM/
	oCMU/BQm4RDCZz2ViOrRaSx8PZ9ZSMOb4jaYLuRecUjx4MyNI3DcM4ZGNDy7Qkv2ansljGm
	KC1Kmjw21e0vtUfJeeTZgl0wuykJMczcizzyGL8RcusJcTYtzgwIvdtpF/a3VpYRMoXJeqX
	t+NLzKfnQ/jQ/mM5iK20XMrGf23dzHDBvthtLMlAT+sNQOlSvglw5jGYNVlEznUPO9+pE0I
	Xgu9uKBttSl8NspQbRGiixnJFU4PRYVAa3NAF6AF0YkyIBkzpeQXhzdsveMP5VQxqOxSmqV
	F8VKPsQzlU72+mlhjPDEJ6/Owh9a/c4I1piJ6rXkPTGIrUUFKd24i23InqgoJYyxUfd2xyk
	YnWt5v0AZt15aVzvURcCZ39UzBF4An5s8sv0waOj5OrvAXdRxE5oD68KzmwNBVMV0pfQ0mT
	uC4tSbhnKbT+cFJypPG5ligAmoZODR7xVsV7TZ29tOOCHoVR2rB6jfAuNPU52aS6RGRfCzv
	EQOjD3PxZAHZip2BX4rfHAGYGPfKhdcPmRMbAewzL/MNCaEYNRqywAWi/LI2JI29PoYO2oI
	pGbp7zxEgjPd4pe11NQG9ku6uuApShThuR86P1IbISUUv3RAPzXbCjikkgxcO4S1vhMt7w+
	5b+eMr1R7C+dbUUFhWKRzO6sAOmw7BFhxoCqkv4fipEe5FMJcXdJJNOZ7tLxKuCVK/d09dC
	wIlLJ6MQgnxyQmYE75AOlw8scn2I8=
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-Original-Sender: wangyuli@uniontech.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@uniontech.com header.s=onoh2408 header.b=T2iOuy0X;       spf=pass
 (google.com: domain of wangyuli@uniontech.com designates 54.243.244.52 as
 permitted sender) smtp.mailfrom=wangyuli@uniontech.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=uniontech.com
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

On some external USB hard drives, mounting can fail if "lshw" is
executed during the process.

This occurs because data sent to the device's output endpoint in
certain abnormal scenarios does not receive a response, leading to
a mount timeout.

[ Description of "use_192_bytes_for_3f" in the kernel code: ]
  /*
   * Many disks only accept MODE SENSE transfer lengths of
   * 192 bytes (that's what Windows uses).
   */
   sdev->use_192_bytes_for_3f = 1;

The kernel's SCSI driver, when handling devices with this attribute,
sends commands with a length of 192 bytes like this:
  if (sdp->use_192_bytes_for_3f)
  	res = sd_do_mode_sense(sdp, 0, 0x3F, buffer, 192, &data, NULL);

However, "lshw" disregards the "use_192_bytes_for_3f" attribute and
transmits data with a length of 0xff bytes via ioctl, which can cause
some hard drives to hang and become unusable.

To resolve this issue, prevent commands with a length of 0xff bytes
from being queued via ioctl when it detects the "use_192_bytes_for_3f"
attribute on the device.

The hard drive device identified with the issue is Lenovo USB 17ef:4531.
Tested on HONOR NBLK-WAX9X (C234) Notebook with AMD Ryzen 7 3700U.

[ Kernel logs: ]
  2024-10-31 13:36:11 localhost kernel: [   25.770091] usb 2-2: new SuperSpeed Gen 1 USB device number 2 using xhci_hcd
  2024-10-31 13:36:11 localhost kernel: [   25.798558] usb 2-2: New USB device found, idVendor=17ef, idProduct=4531, bcdDevice= 5.12
  2024-10-31 13:36:11 localhost kernel: [   25.798562] usb 2-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
  2024-10-31 13:36:11 localhost kernel: [   25.798564] usb 2-2: Product: Lenovo Portable HDD
  2024-10-31 13:36:11 localhost kernel: [   25.798566] usb 2-2: Manufacturer: Lenovo
  2024-10-31 13:36:11 localhost kernel: [   25.798567] usb 2-2: SerialNumber: 000000001E4C
  2024-10-31 13:36:11 localhost kernel: [   25.820244] usb-storage 2-2:1.0: USB Mass Storage device detected
  2024-10-31 13:36:11 localhost kernel: [   25.820457] scsi host0: usb-storage 2-2:1.0
  2024-10-31 13:36:11 localhost kernel: [   25.820633] usbcore: registered new interface driver usb-storage
  2024-10-31 13:36:11 localhost kernel: [   25.825598] usbcore: registered new interface driver uas
  2024-10-31 13:36:14 localhost kernel: [   28.852179] scsi 0:0:0:0: Direct-Access     Lenovo   USB Hard Drive   0006 PQ: 0 ANSI: 2
  2024-10-31 13:36:14 localhost kernel: [   28.852961] sd 0:0:0:0: Attached scsi generic sg0 type 0
  2024-10-31 13:36:14 localhost kernel: [   28.891218] sd 0:0:0:0: [sda] 976773164 512-byte logical blocks: (500 GB/466 GiB)
  2024-10-31 13:36:14 localhost kernel: [   28.906892] sd 0:0:0:0: [sda] Write Protect is off
  2024-10-31 13:36:14 localhost kernel: [   28.906896] sd 0:0:0:0: [sda] Mode Sense: 03 00 00 00
  2024-10-31 13:36:14 localhost kernel: [   28.922606] sd 0:0:0:0: [sda] No Caching mode page found
  2024-10-31 13:36:14 localhost kernel: [   28.922612] sd 0:0:0:0: [sda] Assuming drive cache: write through
  2024-10-31 13:36:14 localhost kernel: [   29.007816]  sda: sda1
  2024-10-31 13:36:15 localhost kernel: [   30.180380] sd 0:0:0:0: [sda] Attached SCSI disk
  2024-10-31 13:36:16 localhost kernel: [   30.722863] snd_hda_codec_realtek hdaudioC1D0: hda_codec_setup_stream: NID=0x3, stream=0x5, channel=0, format=0x4011
  2024-10-31 13:36:16 localhost kernel: [   30.734139] snd_hda_codec_realtek hdaudioC1D0: hda_codec_setup_stream: NID=0x2, stream=0x5, channel=0, format=0x4011
  2024-10-31 13:36:17 localhost kernel: [   31.396011] start_addr=(0x20000), end_addr=(0x40000), buffer_size=(0x20000), smp_number_max=(16384)
  2024-10-31 13:36:18 localhost kernel: [   32.933537] snd_hda_codec_realtek hdaudioC1D0: hda_codec_cleanup_stream: NID=0x3
  2024-10-31 13:36:18 localhost kernel: [   32.933541] snd_hda_codec_realtek hdaudioC1D0: hda_codec_cleanup_stream: NID=0x2
  2024-10-31 13:36:39 localhost kernel: [   54.242220] usb 2-2: reset SuperSpeed Gen 1 USB device number 2 using xhci_hcd
  2024-10-31 13:36:50 localhost kernel: [   64.408879] start_addr=(0x20000), end_addr=(0x40000), buffer_size=(0x20000), smp_number_max=(16384)
  2024-10-31 13:37:11 localhost kernel: [   85.466479] usb 2-2: reset SuperSpeed Gen 1 USB device number 2 using xhci_hcd
  2024-10-31 13:37:11 localhost kernel: [   85.490248] sd 0:0:0:0: [sda] tag#0 FAILED Result: hostbyte=DID_TIME_OUT driverbyte=DRIVER_OK
  2024-10-31 13:37:11 localhost kernel: [   85.490255] sd 0:0:0:0: [sda] tag#0 CDB: Read(10) 28 00 00 00 00 20 00 00 08 00
  2024-10-31 13:37:11 localhost kernel: [   85.490258] print_req_error: I/O error, dev sda, sector 32
  2024-10-31 13:37:33 localhost kernel: [  107.432186] start_addr=(0x20000), end_addr=(0x40000), buffer_size=(0x20000), smp_number_max=(16384)
  2024-10-31 13:37:41 localhost kernel: [  116.194201] usb 2-2: reset SuperSpeed Gen 1 USB device number 2 using xhci_hcd
  2024-10-31 13:37:49 localhost kernel: [  123.555484] dolphin[7271]: segfault at 10 ip 00007fcccc0d7f76 sp 00007ffe8004b860 error 4 in libKF5CoreAddons.so.5.102.0[7fcccc0a5000+83000]
  2024-10-31 13:37:49 localhost kernel: [  123.555502] Code: d6 90 66 90 41 54 41 89 d4 55 48 89 fd 53 48 89 f3 e8 8e 94 01 00 ba 04 00 00 00 48 89 de 48 89 c7 e8 4e 8f 01 00 84 c0 75 2a <48> 8b 7d 10 48 85 ff 74 21 45 89 e1 48 89 da 48 89 ee 5b 41 b8 01
  2024-10-31 13:38:11 localhost kernel: [  146.229510] usb 2-2: USB disconnect, device number 2
  2024-10-31 13:38:11 localhost kernel: [  146.237993] scsi 0:0:0:0: rejecting I/O to dead device
  2024-10-31 13:38:11 localhost kernel: [  146.238003] print_req_error: I/O error, dev sda, sector 32
  2024-10-31 13:38:11 localhost kernel: [  146.238009] Buffer I/O error on dev sda, logical block 8, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238029] scsi 0:0:0:0: rejecting I/O to dead device
  2024-10-31 13:38:11 localhost kernel: [  146.238030] print_req_error: I/O error, dev sda, sector 36
  2024-10-31 13:38:11 localhost kernel: [  146.238032] Buffer I/O error on dev sda, logical block 9, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238045] scsi 0:0:0:0: rejecting I/O to dead device
  2024-10-31 13:38:11 localhost kernel: [  146.238047] print_req_error: I/O error, dev sda, sector 6291480
  2024-10-31 13:38:11 localhost kernel: [  146.238062] Buffer I/O error on dev sda1, logical block 786431, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238168] Buffer I/O error on dev sda, logical block 8, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238170] Buffer I/O error on dev sda, logical block 9, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238175] Buffer I/O error on dev sda, logical block 8, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238176] Buffer I/O error on dev sda, logical block 9, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238184] Buffer I/O error on dev sda, logical block 8, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238185] Buffer I/O error on dev sda, logical block 9, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238199] Buffer I/O error on dev sda, logical block 40, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238201] Buffer I/O error on dev sda, logical block 41, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238205] Buffer I/O error on dev sda, logical block 8, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238206] Buffer I/O error on dev sda, logical block 9, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238210] Buffer I/O error on dev sda, logical block 8, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238211] Buffer I/O error on dev sda, logical block 9, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238215] Buffer I/O error on dev sda, logical block 8, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238217] Buffer I/O error on dev sda, logical block 9, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238220] Buffer I/O error on dev sda, logical block 8, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238221] Buffer I/O error on dev sda, logical block 9, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238224] Buffer I/O error on dev sda, logical block 8, async page read
  2024-10-31 13:38:11 localhost kernel: [  146.238226] Buffer I/O error on dev sda, logical block 9, async page read
  2024-10-31 13:38:12 localhost kernel: [  146.482007] snd_hda_codec_realtek hdaudioC1D0: hda_codec_setup_stream: NID=0x3, stream=0x5, channel=0, format=0x4011
  2024-10-31 13:38:12 localhost kernel: [  146.494064] snd_hda_codec_realtek hdaudioC1D0: hda_codec_setup_stream: NID=0x2, stream=0x5, channel=0, format=0x4011
  2024-10-31 13:38:15 localhost kernel: [  150.065848] snd_hda_codec_realtek hdaudioC1D0: hda_codec_cleanup_stream: NID=0x3
  2024-10-31 13:38:15 localhost kernel: [  150.065852] snd_hda_codec_realtek hdaudioC1D0: hda_codec_cleanup_stream: NID=0x2
  2024-10-31 13:38:26 localhost kernel: [  160.433037] start_addr=(0x20000), end_addr=(0x40000), buffer_size=(0x20000), smp_number_max=(16384)
  2024-10-31 13:39:29 localhost kernel: [  223.444589] start_addr=(0x20000), end_addr=(0x40000), buffer_size=(0x20000), smp_number_max=(16384)

Link: https://linux-hardware.org/?id=usb:17ef-4531
Reported-by: Xinwei Zhou <zhouxinwei@uniontech.com>
Co-developed-by: Xu Rao <raoxu@uniontech.com>
Signed-off-by: Xu Rao <raoxu@uniontech.com>
Tested-by: Yujing Ming <mingyujing@uniontech.com>
Signed-off-by: WangYuli <wangyuli@uniontech.com>
---
 drivers/usb/storage/scsiglue.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index d2f476e48d0c..366ab402217c 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -361,6 +361,7 @@ static int queuecommand_lck(struct scsi_cmnd *srb)
 {
 	void (*done)(struct scsi_cmnd *) = scsi_done;
 	struct us_data *us = host_to_us(srb->device->host);
+	struct scsi_device *sdev = srb->device;
 
 	/* check for state-transition errors */
 	if (us->srb != NULL) {
@@ -369,6 +370,13 @@ static int queuecommand_lck(struct scsi_cmnd *srb)
 		return SCSI_MLQUEUE_HOST_BUSY;
 	}
 
+	if (srb->cmnd[0] == MODE_SENSE && sdev->use_192_bytes_for_3f == 1 &&
+		srb->cmnd[2] == 0x3f && srb->cmnd[4] != 192) {
+	   srb->result = DID_ABORT << 16;
+	   done(srb);
+	   return 0;
+	}
+
 	/* fail the command if we are disconnecting */
 	if (test_bit(US_FLIDX_DISCONNECTING, &us->dflags)) {
 		usb_stor_dbg(us, "Fail command during disconnect\n");
-- 
2.47.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/AC1BB7F0327EFB9C%2B20250206054107.9085-1-wangyuli%40uniontech.com.
