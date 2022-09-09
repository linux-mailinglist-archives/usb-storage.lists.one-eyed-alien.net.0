Return-Path: <usb-storage+bncBC6MZUGU7YMBBJ7O5KMAMGQEWJ6MUXY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F07D5B2D0B
	for <lists+usb-storage@lfdr.de>; Fri,  9 Sep 2022 05:46:49 +0200 (CEST)
Received: by mail-pj1-x1047.google.com with SMTP id n30-20020a17090a5aa100b001fb0c492d5esf222723pji.3
        for <lists+usb-storage@lfdr.de>; Thu, 08 Sep 2022 20:46:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662695207; cv=pass;
        d=google.com; s=arc-20160816;
        b=bxsEXwTgXK34+/7Qmj97B41bOwdaXB1YvV+vHSiwDEYqdMVenz+MztHlpUP2PVrfxR
         AyOkEKIfGmfTCerqIR39+CdW34nk0CIBWIH80lZTfi7YpH2ScJtPxWeEeCoGvxLexWH2
         m3Onp1r8PDtI8Owol1kT4xZ68wmP7hoXFq9mgiZDshYm4qsOun8lIZYJxPuWTXrlLO81
         xRY48pi7dn4FRYw4peGxuS4X/SwogT+DjEgXktXcPGXq0O9nEdqFDMFgbBQPVsoaSaMx
         tpF3SgPm6sHlo7JW/Odb1xDV+PBqQiCdkib3uc7lh9s6qgnq57YTlxIl+IQzNVxhrxRt
         cBJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=BolvkeMh4RaVHFv6XLH0sa08mtO/pZp3ll5xvqyhaw0=;
        b=AYNQIG530NMDLetQNAZVV8L14COr0rDBvO4vXKE+GjltjckzRuRgFbApGccBsSPXJ5
         UxbkIonE2A9FwwMSaVmcdALa96QFIAEAaqbiiHf484shlNt3aDpI9x/ynROwvCBk/g/3
         hl2BIfYAy9xrAeApDZKbr/Wln/ZNrLtsODzfqdKKyQGa6uGt+RM8J2o12fgOnMwKFW0y
         51bWYTJDIX5xhBgQesKcIwySVDQ4QiERkqwMzxt+dOtJFokObQ0OzVajJPT8ykFqCfRl
         MfclKxnh5LuJJlbgJN5HoTjWSYJUuJi+Moxlk3ubhoVhkhutjKAXrY1gadPEIWw4/I+W
         1vkQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=BolvkeMh4RaVHFv6XLH0sa08mtO/pZp3ll5xvqyhaw0=;
        b=GZy90QOpLzZF+j+h+e9vH0lRfxorMWdScM7ut2sEMxN4w0PoZ2yj9dS+7ylFaUp8sD
         cali4I0g9B4ZwPrE5Va7WSBB471447rvSGWBmcSbthUO4ztJ/WmDULyZhoP8FpzLv2UQ
         VMZbWYDXvBQ4qBHN5Efd+SopiK+zL6NIOj4lQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=BolvkeMh4RaVHFv6XLH0sa08mtO/pZp3ll5xvqyhaw0=;
        b=KJx2EHO0WOD7vERbqdEOmvBIfkRmCLmpYpSc0/RTULSSKCbgXaoMOs1TAjWu3BL3Hl
         qE0fHnWwE1QxNJHl1K6zotgrL6GR7ga6+MBnTxn4DPetBV2SdsjGZuqseMDyGWQWWZnx
         rHtgNXMm9E4ETQ+OgS9Qzzw/tzRiRNq83110AJvmSRlJ21jCZ+dkLMNWQ6Kp2Zuspdrw
         g8w70Jvl8gATSnW03MEP2TX1dD8mfu6oLs29ZQZno4a8I7RHc+r7W/uzc8h4PGe1kPfU
         jo8IdNqBxntDhkAv4RmG/Ya3OI5wVHoSs5Fpt3ajOCn/JialYYqNZrTVnoKq1a8RJfif
         cr3w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo34LSAPj72plgQnyBjnTvlWL/xErh2LfQXL6NYYXW57zSL11Ud6
	5oxD58XIzdqVzFOZQu7OVxq+qw==
X-Google-Smtp-Source: AA6agR4tocD2U1yBLftHhuCkwuRGq20aRK8oNKqU0u5bdnHHstZ7PFcIu75Cqlr8F4oX8eHn1Uj0zw==
X-Received: by 2002:a17:902:be02:b0:172:d409:e057 with SMTP id r2-20020a170902be0200b00172d409e057mr11840704pls.90.1662695207347;
        Thu, 08 Sep 2022 20:46:47 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:89c6:0:b0:435:41f0:2933 with SMTP id v189-20020a6389c6000000b0043541f02933ls1911571pgd.3.-pod-prod-gmail;
 Thu, 08 Sep 2022 20:46:46 -0700 (PDT)
X-Received: by 2002:a63:6cc4:0:b0:41a:ff04:661f with SMTP id h187-20020a636cc4000000b0041aff04661fmr10496464pgc.600.1662695206550;
        Thu, 08 Sep 2022 20:46:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662695206; cv=none;
        d=google.com; s=arc-20160816;
        b=AZEbO8h8+pkog2hN/bpRIMl43hn+L7SrYp62ps5YS4EhKBvZP5aebhBFhk7C6+ug7M
         hfEc96+r6rKind0JtPKCaujEU7Cs3hdEEoeskU6MKTwKg7y29ujJ6a/OsZtrdMBEhrDa
         cip44qyiNRQkMws1yvzJmMM8SYCF8TdC68d9ZTDbrqkHGo+5SJdVSmJrbd44M9pGZol+
         RfANCEo1157PkjRfz9RM+/ZeYzAJla5Zi/e+wrhA/yC3TstnoTeIoL3s6Lg1n7XE1ISF
         Yjzk/zpKZl2h4UmsGxJeJJbNzmtUs+Wc6hBJD3V3n/78QLpiybqRDFptdziNSGItB6c7
         0qDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=7t64iDL766WhlO5526myzAFGdhXXxA3WKdkzVEwnR44=;
        b=JzC8vz57e8bjGLNa+krxjNX1booez7cGPE4rM864MIb8/fOZgSa4d17g1A4jT9FVTS
         +/F69IFJ//n2lBP274GlTbDnUKyqefWWtLw6LNzVjpBYD+Rhg4H9UqLPn42YfIVThyg9
         WrlxR8UWjh+7QeYkbnZ/TGeYE2hL7Rny4CPx4K4dwGuioQGoK0yZpyq2Oyj6xOJHAZMN
         HS7GCgLPZfVsew25Yd+n5XcKju5DvaacB5wdW4/rlJAVW/+YtJc/965g9XC+oEYaeh2l
         Vj3VdRR1T5wvSsqFZ7rA9ft3Re/nRoXGZwdfNciqBdOhx6q7yjZHyvZbXAvcAXxKkim7
         3RMg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id g6-20020a17090a578600b001f20c50d659si863764pji.116.2022.09.08.20.46.45
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Sep 2022 20:46:46 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 7206e171dccb4ef1aac36cf1f3c88b9a-20220909
X-CPASD-INFO: c0e7f1b491174061bfc859a7213f8d87@rICfV5NjkGRlUXODg3OBa4KXk2hlZYG
	GdGtTlmaUZFeVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3snKfV5dfkg==
X-CLOUD-ID: c0e7f1b491174061bfc859a7213f8d87
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:163.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:1.0,SPC:0,SIG:-
	5,AUF:29,DUF:4426,ACD:74,DCD:74,SL:0,EISP:0,AG:0,CFC:0.226,CFSR:0.131,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 7206e171dccb4ef1aac36cf1f3c88b9a-20220909
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: 7206e171dccb4ef1aac36cf1f3c88b9a-20220909
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1229032628; Fri, 09 Sep 2022 11:47:13 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v3 2/3] usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS
Date: Fri,  9 Sep 2022 11:47:10 +0800
Message-Id: <1662695230-28197-1-git-send-email-zenghongling@kylinos.cn>
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

Change for v2
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1662695230-28197-1-git-send-email-zenghongling%40kylinos.cn.
