Return-Path: <usb-storage+bncBC6MZUGU7YMBBB7Q5KMAMGQEK5MSNPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E805B2D16
	for <lists+usb-storage@lfdr.de>; Fri,  9 Sep 2022 05:50:33 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id w14-20020a170902e88e00b00177ab7a12f6sf495549plg.16
        for <lists+usb-storage@lfdr.de>; Thu, 08 Sep 2022 20:50:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662695432; cv=pass;
        d=google.com; s=arc-20160816;
        b=IX1MwbCRZULLefgPffc5MEdjf7TCWQMUB3rUqv8lmy6TAr/k2kmuWs6DNTsoTsa0YO
         HrZJUWeL2QB6/d+JmqnO4bT6IvLtTJ/QRtjDTKliLeNirg5wwxv+Gi6yGy833npOLiAT
         vqAb/hrTz8u8Rrpms2MQWmahqfvvRp7VoL9Uz7geDxcpW7IDIuTB+irdHgqxEp2RXoyV
         6krUalSYJW5f8k32JTBOSAqS/zZIXQaT63IdbfSh6qkvzBVKC/dPLA+MAfxCzd52OVjA
         fE1iJfQxzVBdAc1kk2XtGPCgYlf6koAD3aLV2o1wS6rc0urOVaBB3eyLlh2e9dSJq4gJ
         +1Nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=VBkIVoclYukrSfRKYhQLEGEP8EmNiZ2VRjijklyHT18=;
        b=D3VzGmn2br0S5/nNIl13nd6JpSXrhr6ZAUA6wcc7gSM9n+uZH7V32hIjLKpn7FgbUw
         cAnLnQqYKlhANdUfvYkn8/G5twJjBBrRKh92A+zfXSdW3wReGFb8/jGO+bj45ZE4CM0j
         hxpFFspkZHT89Z8ImniS94jSXKKz3dcZUPx74LkPH+LAOg1oSC9ASxN85HZfCvbh/hci
         H3SQNqZNYOEXPs+Hr/qZYzMnxI1uRdogfbOW2TxXY3NtHnWWTkGRrOr3ZjUgtbMs586a
         Extjo+e/adEbb3XHfx41i2paimYiYjYrdjV7Abv/5jgE+Q0TVmIoSPMVTwXduHZO9NeX
         crcQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=VBkIVoclYukrSfRKYhQLEGEP8EmNiZ2VRjijklyHT18=;
        b=PUiqZv+jjkDqCtqiH6QR4h0m6SUx+nDEN5BBD1vbYxTvhoaARj9E+GF0lrcsDJTkS7
         2QUgwTr28VTof/h6Q5YES0ZVVeUP/UEsYoxt0+j4ZyOqOHNIG2MJyQv6mwmW6uuaFaly
         aWZyRBbqmFA2IrSOVXf1MzMr14mRJBZP45x4I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=VBkIVoclYukrSfRKYhQLEGEP8EmNiZ2VRjijklyHT18=;
        b=LJ2H1A4U5QUnSV88O9P/aCqXh3G2xbNvPytgsfL+Pan12Hqzi1ECRsZXzZ3Xi6iyUV
         BPrLl1AZdlT350CH8BozlnPsSi3SK3Nb6YR9FHhvmPSwPAG4gXbCavfHUSo2hbH+zigN
         JtFOGRiA5HcBDx87a4aO5BWVqhrhaZzHxNshVkG/4o200DYe9/dKorQeGLVAH6IYTrYo
         hMbgtdmJMqHEYTLGOvjezxflfSh4CpQixu0EPDE0da4d22J2yfNgXDYfsmM0BRbOCcVO
         J88kIpv/ndg1kBFp8lYZGht36xyLVBGFGdDK8FsScNGatNYJW5XVBBgml0TluUOYHB9m
         C7OA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1CbmE27pFXh20zyVf0L56kNfe6ud240mGozg4t1qTcm+AK+wET
	vJzeciD1+1K6SDoCtlVSe+fiVQ==
X-Google-Smtp-Source: AA6agR6GLzHWK+n/NrHuzTjQ1/vopxZpeaLegZhrwaTi37LxeEQuo2gNwc7e1ITfVqMUpCAkL5kSZg==
X-Received: by 2002:a62:168a:0:b0:532:478f:535e with SMTP id 132-20020a62168a000000b00532478f535emr12224555pfw.75.1662695432015;
        Thu, 08 Sep 2022 20:50:32 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:684c:b0:1fa:bc38:b125 with SMTP id
 e12-20020a17090a684c00b001fabc38b125ls1658395pjm.1.-pod-preprod-gmail; Thu,
 08 Sep 2022 20:50:31 -0700 (PDT)
X-Received: by 2002:a17:902:6b82:b0:16d:d268:3842 with SMTP id p2-20020a1709026b8200b0016dd2683842mr12206226plk.16.1662695430971;
        Thu, 08 Sep 2022 20:50:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662695430; cv=none;
        d=google.com; s=arc-20160816;
        b=sCSofiw7zC3JNP5YSWNt/UAONUJmZUKux4TrI3iL+jY1ZfjVSVEwQcNWahAX5+frp0
         oLI8/Wfr+NnJVxItA+iYuzs02PT2GtCm7kZTrPreCC/FByoZcsNW6R49+xFIUxxnSApa
         DIV9FwjBMF4LMxQB9pxQ4NpxXgxbMqVq0J6SfaaldanElgEefR/2OvVaswQJ4TmUi4cP
         UJ4wBRglBi0XH6HvUY5S8TJU1Ctm34Pt+MofON1IvW5v5yrB5NP4ZPG31IfZVlxELeAk
         seZ+FKR0/beqWD6pUQk7SMxvhn7QFgd7eugmjVzmEiLyAI52+2AmMD3eXZdd24x7E7AV
         hZmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=/NU+NAgN9UWhnDxcypUcvn1b9BN2zjwYEEXMpmsfUxA=;
        b=jSLw1r80KUspAOa1tuXnYcEsNOYOeS/jnxTi+wBpfIBJpTtX+/P1/iuWX/qtVJ/Rnb
         zj6FubN5yNUw6eADM/9M+gcb30MTLrUftzkVUIQ3pLhs6uvJAGabma09rv0s3bbBvl1L
         siFWEjrBQchjpwtjIaYWD2owpeNS9TBDoEqOy8aFwVbrbn5CWVGN6XNVIMqhfk0VIW8N
         OnJFll/PBaUbSMcZHW3MRn8FZ4FnnNaApe7MNZdsx6ScGHdqCT7xp/flGWZG00o2hxHD
         TkRVw38y5U3r/WZyJwdmB7KQMl4bRc75eMVddD+95ds96gnqGMperFGJvzHQewMXvspC
         Nd1w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id p22-20020a170902a41600b00174cbcf5f7fsi739358plq.312.2022.09.08.20.50.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Sep 2022 20:50:30 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: fffb9cb6e1b14e548ae6d3698bd7da96-20220909
X-CPASD-INFO: 4aea5dfa0bb24069afffcc45825d06b9@fbGfgWKWlJFcgqR-g3OBc4GXlpaTj1S
	EemxVll5mjlmVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBiXoZgUZB3g6OfgWmSlg==
X-CLOUD-ID: 4aea5dfa0bb24069afffcc45825d06b9
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:2.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:163.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:2.0,CFOB:4.0,SPC:0,SIG:-
	5,AUF:30,DUF:4427,ACD:74,DCD:74,SL:0,EISP:0,AG:0,CFC:0.226,CFSR:0.131,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: fffb9cb6e1b14e548ae6d3698bd7da96-20220909
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: fffb9cb6e1b14e548ae6d3698bd7da96-20220909
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 169722319; Fri, 09 Sep 2022 11:50:55 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v3 2/3] usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS
Date: Fri,  9 Sep 2022 11:50:51 +0800
Message-Id: <1662695451-28270-1-git-send-email-zenghongling@kylinos.cn>
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

The UAS mode of Hiksemi USB_HDD is reported to fail to work on several
platforms with the following error message, then after re-connecting the
device will be offlined and not working at all.

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
Change for v1
 - Change the email real name and the code worng place.

Change for v2
 -Change spelling error.

Change for v3
 -Add acked-by
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index a6bf87a..8a18d58 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -149,6 +149,13 @@ UNUSUAL_DEV(0x0bc2, 0xab2a, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_ATA_1X),
 
+/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
+UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
+		"Hiksemi",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
 UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
 		"Initio Corporation",
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1662695451-28270-1-git-send-email-zenghongling%40kylinos.cn.
