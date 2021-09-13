Return-Path: <usb-storage+bncBAABBV7672EQMGQEFWDSNNY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 10653409EF5
	for <lists+usb-storage@lfdr.de>; Mon, 13 Sep 2021 23:15:05 +0200 (CEST)
Received: by mail-qv1-xf46.google.com with SMTP id e8-20020a0cf348000000b0037a350958f2sf57985726qvm.7
        for <lists+usb-storage@lfdr.de>; Mon, 13 Sep 2021 14:15:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631567704; cv=pass;
        d=google.com; s=arc-20160816;
        b=w7ge80i9u6uOf6VMorN7n1LCuWqAa8W9TRdEQ74z1qqoliQ367k8mDIJE4+l54OGjS
         h/9jUd7EXMmVqehJFbMxk1XSQG57S2h9Y08FJX2YOMoDpzZ/VSOgByQEhAHbfI8MDhXB
         o1ZW1FQl5NuZnAvTdp2CknRVJmTMKzCNcRqAGrsK+xJSX+srLhxLonyrW2m3mvLwUq5V
         OGwtsgt+5MSlMSnY4DeMwgb5nPWZ217AG8RTBoP3lWGwliIEhBXpDojgnGGwar2AX1gD
         mKocdYEBRsYzAl5G1yHmkqLmyHr/g/mRI/GESQsa+e0JqShCZQY7WyrRD5qqd/71Ggtm
         b5EA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=2JMnMVA5g8KFrcx04XVEWnhxbefw8NpuMduAhWiRO+U=;
        b=zF6m6Og4hiuASs0m2qwaKB4odzQH+kwhGRe5eWDmXIXuOCbkm2nhJcgfKVl+E4n7bG
         CLI404NjYe1U7kYYFKhnEbr3J97MfmCUIENb177WE0kPWIVk7zIR8OBx1JA5KQTVf1w5
         QY+koA3/BO984ewRO7cbJA1RU6CJ/ybFAyULQWppBvifWF+IurbRrSyUnzTis8HWSm9q
         aOEgACFAS1rLP/HzU+nKnAL2iE5GFF1BxsmcIXxrkRkElFShBT4BZHUGMsetnJda4iua
         T36+RhoSF+MM7r5EhdS97K+YI4zNLKE0mIqLZX3o7ZKSgkBUdIlLln5N/+QrX5HH2l0Z
         ZVKA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of linux@zary.sk designates 212.5.213.30 as permitted sender) smtp.mailfrom=linux@zary.sk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2JMnMVA5g8KFrcx04XVEWnhxbefw8NpuMduAhWiRO+U=;
        b=Vw5v4BrnBOioGealrTWLyY3yOGd2jDnhICvxf/X6C7bxSai5rvOlBLH2qL/x1bkziN
         0sda4lKmVTR9Nb4XfKgiKBGN6A0iijk8piJEaMU1EDEUjNCyGp1cgbZETPEP44UrrIUN
         6m7tqKDEoLjY2jrNg6c3K1OcMjI1gcLJzy1ps=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2JMnMVA5g8KFrcx04XVEWnhxbefw8NpuMduAhWiRO+U=;
        b=3CJpDQIWasAbA7K1EbmlUX122ca6LKBNZux8kpdFkp6hE5GVpDLrtKyPpLQ6+3y61c
         p8QaD2TVGy4V2l/1XL9n+iLtzOrVJeSIA0kvdv0jJ5iJ3wiJC6GeYDOQSpueol/XAv//
         xJoDwHHo4eMSV6jZpQWJQZWD8zRKmwEW1dzXan9bAlZbGnI4RZFdY6dj/pu622s0gIjs
         TmSS16HJelFwPEkqJkp4+neDsecd1eponoT6y/EFCUNS1UX+qZ4QAgTC3cVyl6oVgJ1i
         SOizVYGyb6yLKnz1Nko1euE4I4uF1JPZDZ09RCpAlgQhjq9TUUlb9Rz80Jw+6CuIR6ke
         vC+g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532bLDoKZPalwyGutgCyFPnOLVwEBxT4PiTL02RRKHS4ef90a2U0
	CHM8GOjaVAv0cZ2rSL9PaZJ+pw==
X-Google-Smtp-Source: ABdhPJxediA/m9Bkuf9LUD1yrhtNCUlkF7vDrr4eijMf7dgEbOnPjfRhe56cH0Y9e8iYy/22HZ1w8A==
X-Received: by 2002:a0c:f205:: with SMTP id h5mr1844426qvk.56.1631567704126;
        Mon, 13 Sep 2021 14:15:04 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:e411:: with SMTP id o17ls2846497qvl.10.gmail; Mon, 13
 Sep 2021 14:15:03 -0700 (PDT)
X-Received: by 2002:a0c:b3c9:: with SMTP id b9mr1678974qvf.40.1631567703570;
        Mon, 13 Sep 2021 14:15:03 -0700 (PDT)
Received: by 2002:a05:620a:2221:b0:3fa:dbc4:fe51 with SMTP id af79cd13be357-42994dd9dd1ms85a;
        Mon, 13 Sep 2021 14:01:37 -0700 (PDT)
X-Received: by 2002:a05:600c:b41:: with SMTP id k1mr11572480wmr.4.1631566896864;
        Mon, 13 Sep 2021 14:01:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631566896; cv=none;
        d=google.com; s=arc-20160816;
        b=LYtW7QpUO/HIP3kdE23pxjNNrFbMkSjdw1aQakLaXoCxFoOIivlrTJSd9m4j1IGFq5
         bQWc6qBm38e2nJ1bKsbqagjTnNxzTdrVyxAiCDZ0r9AJz6Yy41ynee/3NP7pJOMmvRjI
         dO96+JIkE+8oszUmfVJL628vlOXP5o8Wi7WqwqK1GrLkCddiAN0NPeEM9oRuKo0q1230
         kzikaPv1jMWMrTz+O9+keMBZW6xdska7+m80daLLqyEd3xXcBPQjr4VMJQmoUMf8lqg2
         3DrqpDlbtN6MfutAHY13lsOLK7i16xZMDlAtj8Q53hBSLOYSezbBLfgR/Zel5oikImRS
         Zohg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=h/0Jb6RrFYNFHsQrOjdo/8BK2QNmmhXJQ5jA2r/F04g=;
        b=HpIt0w6HJzv+SYMtcPgzkq9ny3MLPustYIBM9OShkj4+rCdskE68ZjhweNerFQGS8N
         NTsYHbcIOQNE3U/Kzwq6CvkQ9eAkvdOn1nvn2IxCXVlq68eiMMsFRB4YtcecH8On/6r3
         DPtz3H4fR1jTA3pNJIeWRWb7Xng5HyuQcieY9INum7vf6PTvRDVJCnUz7RnEU1xKK5C3
         V0kEIbtDxOGALnnYFn3YloqD3cYVtT6Jg1guabbJio3ftsMhHVXT9B7j71qLv7cZMprg
         pcq9X8ZlOUka2VfuU/b2o4Y9kVMZEQq+UpRzx2Q+jVgurcJpqjr2fDjDkHf5kxdYR7fO
         7A3A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of linux@zary.sk designates 212.5.213.30 as permitted sender) smtp.mailfrom=linux@zary.sk
Received: from hosting.gsystem.sk (hosting.gsystem.sk. [212.5.213.30])
        by mx.google.com with ESMTP id y8si6735769wrm.20.2021.09.13.14.01.36
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 13 Sep 2021 14:01:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of linux@zary.sk designates 212.5.213.30 as permitted sender) client-ip=212.5.213.30;
Received: from gsql.ggedos.sk (off-20.infotel.telecom.sk [212.5.213.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by hosting.gsystem.sk (Postfix) with ESMTPSA id E799F7A0214;
	Mon, 13 Sep 2021 23:01:35 +0200 (CEST)
From: Ondrej Zary <linux@zary.sk>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH] usb-storage: Add quirk for ScanLogic SL11R-IDE
 older than 2.6c
Date: Mon, 13 Sep 2021 23:01:06 +0200
Message-Id: <20210913210106.12717-1-linux@zary.sk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Original-Sender: linux@zary.sk
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of linux@zary.sk designates 212.5.213.30 as permitted sender) smtp.mailfrom=linux@zary.sk
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

ScanLogic SL11R-IDE with firmware older than 2.6c (the latest one) has
broken tag handling, preventing the device from working at all:
usb 1-1: new full-speed USB device number 2 using uhci_hcd
usb 1-1: New USB device found, idVendor=04ce, idProduct=0002, bcdDevice= 2.60
usb 1-1: New USB device strings: Mfr=1, Product=1, SerialNumber=0
usb 1-1: Product: USB Device
usb 1-1: Manufacturer: USB Device
usb-storage 1-1:1.0: USB Mass Storage device detected
scsi host2: usb-storage 1-1:1.0
usbcore: registered new interface driver usb-storage
usb 1-1: reset full-speed USB device number 2 using uhci_hcd
usb 1-1: reset full-speed USB device number 2 using uhci_hcd
usb 1-1: reset full-speed USB device number 2 using uhci_hcd
usb 1-1: reset full-speed USB device number 2 using uhci_hcd

Add US_FL_BULK_IGNORE_TAG to fix it. Also update my e-mail address.

2.6c is the only firmware that claims Linux compatibility.
The firmware can be upgraded using ezotgdbg utility:
https://github.com/asciilifeform/ezotgdbg

Signed-off-by: Ondrej Zary <linux@zary.sk>
---
 drivers/usb/storage/unusual_devs.h | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
index efa972be2ee3..c6b3fcf90180 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -416,9 +416,16 @@ UNUSUAL_DEV(  0x04cb, 0x0100, 0x0000, 0x2210,
 		USB_SC_UFI, USB_PR_DEVICE, NULL, US_FL_FIX_INQUIRY | US_FL_SINGLE_LUN),
 
 /*
- * Reported by Ondrej Zary <linux@rainbow-software.org>
+ * Reported by Ondrej Zary <linux@zary.sk>
  * The device reports one sector more and breaks when that sector is accessed
+ * Firmwares older than 2.6c (the latest one and the only that claims Linux
+ * support) have also broken tag handling
  */
+UNUSUAL_DEV(  0x04ce, 0x0002, 0x0000, 0x026b,
+		"ScanLogic",
+		"SL11R-IDE",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_FIX_CAPACITY | US_FL_BULK_IGNORE_TAG),
 UNUSUAL_DEV(  0x04ce, 0x0002, 0x026c, 0x026c,
 		"ScanLogic",
 		"SL11R-IDE",
-- 
Ondrej Zary

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210913210106.12717-1-linux%40zary.sk.
