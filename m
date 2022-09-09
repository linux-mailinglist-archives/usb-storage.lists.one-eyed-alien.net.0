Return-Path: <usb-storage+bncBC6MZUGU7YMBBGHO5KMAMGQENX5ARIA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A94B5B2D09
	for <lists+usb-storage@lfdr.de>; Fri,  9 Sep 2022 05:46:35 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id k19-20020a056a00135300b0054096343fc6sf334482pfu.10
        for <lists+usb-storage@lfdr.de>; Thu, 08 Sep 2022 20:46:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662695193; cv=pass;
        d=google.com; s=arc-20160816;
        b=lrKqy6TuESFmTe6rKZTug1kZJ4lIaT84yhFW3ucTkRL1nT9OZBuyfjctoonIgoGNuI
         eZHgy+VuRwgtS0GKp/QjakLyzCLSfoQEAkK1A0ZgsfRIolOWdOApqnYBkWUl3H98QuPn
         zuYmC9CVgGtyiJXgqyd4APWCUjW/zBZcTPRIH7Hwht66Zetv4oCbAj3dWKtL84maX+SX
         pGIXe0QblxxH+Fl5WpyJUEaMGUSX0JqMXZD5WVf3kfJreZVJXk+3MVxC8JeUR0T/RAyG
         mw3/6ryGRgkULnMIM1TNPdzfUTHbH6S/TRDSJLTPBqJdCLFwLgC+r5Rz0oFDD2jaCPfn
         13aQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=C/4DwOJmgBEGqznoNrZUYe4vry5bBcQc9zitzKeqklQ=;
        b=YPiG2QXlP/QBMxkk1GaQA0fW+uPZWatnLm6Sie2NoolsmqzeT80N5N19WjnpQTKV9k
         HFzShenpQ/bibRPS3pOwts5Elz73z7AC3Xf4qXaKX0J3XWdOzjmbws3rcNqzcz9oqIXM
         2r2fkYRbyton8YVYrakwX43qW7vKtueVLODZguBlq9sKYxP3Sr3Xe3sNYUle3Yii7A5S
         qjcLFprrCYsp+hkBSrM2HnnNzePBXAsONK3YGeWHv48HxBaqI3hhwYMasu22g7B2rkxE
         +iRIHLIXNmbcqwK5l3mg2ar6ylp5PBqoWsyOD0ZS3QAhNM2g+V/OdlHsWduHUl/CP1rc
         GZcA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=C/4DwOJmgBEGqznoNrZUYe4vry5bBcQc9zitzKeqklQ=;
        b=SiffF9TuwIuBEI2+QbO9xO042pp7Vw/UBs9Fnu/IY8GoS/2lMj7AMc0beLD2LJ2H9h
         lbnbjzO8FOSfcjW4GePip/8SkGe4oSLtxMrdlCjz5yyQfrg90cEC4De5QDSAS5iraWXw
         ERQ7IJFth1EG/Q2AIbdH9w6sVlRMFCL7x5LvM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=C/4DwOJmgBEGqznoNrZUYe4vry5bBcQc9zitzKeqklQ=;
        b=FNxFAVQ5q8dx5UqlSquLv3qOrqz9uLA4yHxjx59Lj1t7k3eLh3IWMSESspEeuZapkl
         DC+9vTjSgTHpvxBSoyxqfasER/ZuvVR5c7tkscUuzhZ+vEf4zFp5aNqvGjj/d2t3Igyu
         4JhjEUBrGYPY5EcMTNEbuGMG9KjBbZ9CwHig7F+wpCFLLY2FdqDr95pxlHhEizVluiQx
         fXSy/x8FqW0Lm5+iTCMzT5qZxL6HFke5WWiyW5t+z8hngo4s6FNmgS5E/5TeT/vVCjgU
         nO/MaYU4bdRJXgU+DPSlVKrJwv+VkHxfMx12nQSDUG1x2qQADExyM8oy84TlTIALQiMo
         /3Mw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo25oPr6qYIiAnM/u6ONuIkbH21Po6WmyIOmxiVBbb/ZZ91M77p5
	1UZu2rIM9syG3ipDPjBTvohPyQ==
X-Google-Smtp-Source: AA6agR5u12OPtu1xv1ZqT6KfU3qbQIZ54DQOz9/xeD7UpTIxa3wLwiEeXm/grCYh2GdmbBr85Qki3g==
X-Received: by 2002:a63:2ac2:0:b0:430:41b2:f29a with SMTP id q185-20020a632ac2000000b0043041b2f29amr10576609pgq.190.1662695193135;
        Thu, 08 Sep 2022 20:46:33 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:388a:0:b0:537:e1b1:a4ba with SMTP id f132-20020a62388a000000b00537e1b1a4bals1985297pfa.9.-pod-prod-gmail;
 Thu, 08 Sep 2022 20:46:32 -0700 (PDT)
X-Received: by 2002:a65:5789:0:b0:41a:4a7c:635d with SMTP id b9-20020a655789000000b0041a4a7c635dmr10174812pgr.60.1662695192308;
        Thu, 08 Sep 2022 20:46:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662695192; cv=none;
        d=google.com; s=arc-20160816;
        b=YTb/uRPg6AlRNGvnkFPn2y7ow9v+0C8pANk4DZNDJP9wWjjFnrJ2nwb2DUdv/NdOqu
         3RFO+NIYkiW7+xyetSE6aUMffvo/NGr5Ecb1fg/OOJXhQOE5O3gqUNf4qR4PF+7GMP4V
         ZHctPf2pjHsuAcytbtDxgVMogPRt4pI8rVHTsu6+GVm+um9/wfaYAOAuTo6INTK1XEyP
         CBxLem0qIEkbVhhXOig/DEi/lXFDMy4BwOkJLqJna3suOfmlEJKZZspd8rN27NNMTwax
         i8Ps+QiOYua0YO4xbTXJee2vdvZ2im9fm84b/FYGlo6veSdkcYB7aETv2OyZrcTsXcbP
         +AFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=sNmolF2gnM/CemZbC1/b6SCnDYEOqF2ipdi5GKNP0rQ=;
        b=abWf11yQdUbnHETB0HDquvcVWseqU8zEgz1/q5b75I3eEuKzmLoTOvOPBDVrk+Rk4V
         8okT7EjA9xwDTtniTwCZ2RcKH84PCBxdCv5RFr1NW8tx10QybjTqC8MzOm92CHXt4VMG
         //t50HTAZi98E3UbsD7bKjif4DIBZvOw+/wyUdasrvCYCbWl4G1JqKlxaZBTIvUPWKzv
         X2aG1CfdkDwckBSDmlC2QxzkXat3kmWUcJVy9p4zssupX+5ca1UjBqzvNj2aP6tVVy9/
         xK5EmSz7y+rFN7ngc1nV3Xu+7Fnvb0XvuzTzFbvuSUBQaRBg3HHeEpjwbtssTavy2sNp
         l12A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id v190-20020a6389c7000000b00434fe5b0ae5si618198pgd.285.2022.09.08.20.46.31
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Sep 2022 20:46:32 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: b13828e7929649bb819e46657cd727f8-20220909
X-CPASD-INFO: 9553c0567af445489fca772bf6d1e0e2@goVvU5BiY2ZjgaiAg3h_clmXk5FnY1K
	xqHCEYZNgkVKVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3iHdvU5NeZQ==
X-CLOUD-ID: 9553c0567af445489fca772bf6d1e0e2
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:159.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:0.0,SPC:0,SIG:-
	5,AUF:28,DUF:4425,ACD:74,DCD:74,SL:0,EISP:0,AG:0,CFC:0.265,CFSR:0.122,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: b13828e7929649bb819e46657cd727f8-20220909
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: b13828e7929649bb819e46657cd727f8-20220909
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1584887223; Fri, 09 Sep 2022 11:46:58 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v3 1/3] uas: add no-uas quirk for Hiksemi usb_disk
Date: Fri,  9 Sep 2022 11:46:55 +0800
Message-Id: <1662695215-28151-1-git-send-email-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.1.0
X-Original-Sender: zenghongling@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 124.126.103.232 is neither permitted nor denied by domain of
 zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
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

The UAS mode of Hiksemi is reported to fail to work on several platforms
with the following error message, then after re-connecting the device will
be offlined and not working at all.

[  592.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18
                   inflight: CMD
[  592.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00
                   04 00 00
[  592.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1
                   inflight: CMD
[  592.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88 00
                   00 08 00

These disks have a broken uas implementation, the tag field of the status
iu-s is not set properly,so we need to fall-back to usb-storage.

Acked-by: Alan Stern <stern@rowland.harvard.edu>
Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
---
change for v1
 -Change the email real name

Change for v2
 -Change spelling error

Change for v3
 -Add Acked-by
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index cdff7dc..a6bf87a 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -62,6 +62,13 @@ UNUSUAL_DEV(0x059f, 0x1061, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_IGNORE_UAS),
 
+/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
+UNUSUAL_DEV(0x090c, 0x2000, 0x0000, 0x9999,
+		"Hiksemi",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /*
  * Apricorn USB3 dongle sometimes returns "USBSUSBSUSBS" in response to SCSI
  * commands in UAS mode.  Observed with the 1.28 firmware; are there others?
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1662695215-28151-1-git-send-email-zenghongling%40kylinos.cn.
