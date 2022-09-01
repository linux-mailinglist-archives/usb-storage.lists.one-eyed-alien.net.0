Return-Path: <usb-storage+bncBCS25756ZQFBBCXTYCMAMGQEZ4YN3KA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id 696415A8CEF
	for <lists+usb-storage@lfdr.de>; Thu,  1 Sep 2022 06:48:12 +0200 (CEST)
Received: by mail-pj1-x1045.google.com with SMTP id g11-20020a17090a4b0b00b001fb5f1e195fsf697371pjh.6
        for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 21:48:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662007690; cv=pass;
        d=google.com; s=arc-20160816;
        b=HQqkccxhwHQIqBRhNzElbx7aJCC168+moHXgKO7DNj6nuQJLrOJvKd0FF9b1uwoBRR
         HzVmnmAyuICyixtVWcskysel3cHrxzBG/wIqWXZPkelxf6BAQfOJlU/JQBlsUhul46UM
         zRLT4QnC1KDMwUmhTx2VIcfPD6u7rNIfqoG7wRxW+T145cjyyQIr9l1VqRglBlcJeFNP
         bRoNCG4gkUAkQIjOotTb6GhSk/BF9CyC0IGeJbZ9VVYoyv3uEibkUWy+xbiCoJYcnBZC
         +YBUyrJqHBCEG2NjHGGK+xC3Sr7FR0S6Fmgp1M8tN4i3bKWkuKINY+SOusAlIe3iKaK8
         enFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=v8zJ9FP/bW41+nKpuOwao4XvhCWJNeTa9vJVLtbHPBM=;
        b=r/UfmjsFMONtw7ibs55AZQhkIMAbaUYMvfrfy8+UbZzf0gFc6oY0K7YllZt8eL4ox8
         +vd0ay2AxaDxj2NMCo0AbjRTUXT9SzMDmMwgTD1Qr6YlIbp0lpwkiaRIEOeayno47v0Y
         SX+gGgJY6k/DDyN+6IljqTzkets/fJCpWPc95MEWHJ2y6YQH+219kMK3q5XakgHPpRlP
         Kxm1mSfUVAdrRcQoMEQJR2UC+OtcjVdVn+Q9hJPcl0oTEz14T3B7pzvi0DOzE81euXGu
         i+QOsSo+sDWa28EiEvFEuLIvZ13MtrS8OqcWsvvftsb3rmiSEl3rlJGrh6ObHI9nXjEv
         LD8Q==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc;
        bh=v8zJ9FP/bW41+nKpuOwao4XvhCWJNeTa9vJVLtbHPBM=;
        b=Ck6gxAsTypwu1PQYOYXFQrZtZNyHWo3jD8rY5ugaevLrDtdQuMp/TNBs2+jHI0iMl4
         tiqTOG3ZNfWJeoRsm8rzE1+6ApWjPtkeuMZcwi96e/CYPyrQW64gYJD7GTF3fa8GvnJV
         Ia0M8dzBrlwVE4BoBJ5nF8/BkAXPF3c8mvsf8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc;
        bh=v8zJ9FP/bW41+nKpuOwao4XvhCWJNeTa9vJVLtbHPBM=;
        b=pjFNnsoiX3ShDAgTuh6vsttl7pmp7CG8ivf2PnclISWVOh2cyKmF7nUyRcaGKjuhSU
         Lw6vtvq4EfI4QSlQDfxgDotNyHEr8SzT2T5Yv01EVp10r1QRDgVCuKyxx7qxSAQ3XOw+
         lsa9DeWkk1GCJKfBAA6qUQLwCqNr0IfXJ6L3+kkMMyKXTdwzF9aD+d5Niflr0ft6up+l
         uGkB8niOFkHA5F2/4W+gvlREpSrDfcDhoRkFqY/1srfMXD1SfGT7gDtg7C5cthtY+4by
         bk6KNBlBaNmmpPrw58+Jl3k2g18XTDY2THSplY1D6j0BFWC+UCveHv0QV09SZJPMm2cd
         NCRA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2MavIOFcoABjPHGZfP4+aI17+rJBmdPuF8pEatIfRL4c0pHkHI
	DWcf+qb6auumOHXubPMMNikaoA==
X-Google-Smtp-Source: AA6agR5GZbZKz5b96Z12pnB6KzxnuuGtg4sLLe6vaPqbiG3QQj9+Z0OojDfyDpFyToGrRbCeIOdQ/Q==
X-Received: by 2002:a17:903:11c7:b0:170:a74e:3803 with SMTP id q7-20020a17090311c700b00170a74e3803mr28424094plh.156.1662007690361;
        Wed, 31 Aug 2022 21:48:10 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:1c8e:0:b0:538:2c07:9c98 with SMTP id c136-20020a621c8e000000b005382c079c98ls537130pfc.6.-pod-prod-gmail;
 Wed, 31 Aug 2022 21:48:09 -0700 (PDT)
X-Received: by 2002:a05:6a00:170a:b0:537:4212:5f5d with SMTP id h10-20020a056a00170a00b0053742125f5dmr29129856pfc.40.1662007689478;
        Wed, 31 Aug 2022 21:48:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662007689; cv=none;
        d=google.com; s=arc-20160816;
        b=I7LiZ/oVi0RF9PzSL/57jfcaj3zjKnlcDVHf6EpGeUBn29Xg3dXIp8nbCqtRvB5u4n
         QnWI3hjWn93AarG/ZYgpUEHqv6Mx+flxfD37bBNmDeu7ozuX0xTeDYOPI1EcsKdjLJ/5
         84lnTlSM0+eZENFYInCaC5ZwogBDOuRMCJnw1JNDjhqHKWQRL+tPMFO2/rcysfIOxpzh
         HZCZj4s1R5Jmhdr6og1ikyNyPUDdPA/ri9b7zlx35S+jbS+ZvlZ2AGuepPlRGhPVC48w
         +5/rK9C1DH5TTix2i9bEsjD6N84sNcLdxA7FgDGhwlS1hJSl9XPE4HqoFvn8MU9mTlSV
         oSLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=My2wq/nOjNIJwT+TzMN9AtZ7iXeLozsRBJoSWpVSs0g=;
        b=Zfzapt80eoMXQDFi6uOWmzwS1JDveiagI8NVjzV6+QBUl/3CAKgAdUwwbsT9wljq8h
         UegjGDNv0Q2cTqdsiQCEtQQjZEAWKFpBIqCi8aWN8iKrAZureKfoi8axKOoTQRg4QyLf
         dziHkbdEU7omIB+rVpsdcxrd9aI4KiyZLFCRlKBqxUELAjMsdlPMslI8WNp8SkSVE8qT
         8FHxSMC1bVOL9UEUpx3uAwQ+IZFNiHVgT3wcNVDG3nnCyiVdjVpGvIiWZxtn/oPNXifb
         i0aRktXjNVgAcG5gkbbXUUXw7btJ2dc2Y7bqEShzBNJ8Vbd0/FQGUfL8RGotvaWNbUDR
         Mujg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id s12-20020a17090302cc00b0016d8a0cd540si16366237plk.510.2022.08.31.21.48.08
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Aug 2022 21:48:09 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) client-ip=124.126.103.232;
X-UUID: c8b6509bf3c94424a284e96f132df42c-20220901
X-CPASD-INFO: b3810b0e68e4430288a4f3dba18d6af8@q4NyUV2UXpViWKeAg3Z7bFhpkWSWX4S
	xo2tYlGSRkliVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3sXVyUWCQYA==
X-CLOUD-ID: b3810b0e68e4430288a4f3dba18d6af8
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:173.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:146.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:0.0,SPC:0,SIG:-
	5,AUF:8,DUF:3751,ACD:66,DCD:66,SL:0,EISP:0,AG:0,CFC:0.471,CFSR:0.038,UAT:0,RA
	F:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,E
	AF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: c8b6509bf3c94424a284e96f132df42c-20220901
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: c8b6509bf3c94424a284e96f132df42c-20220901
X-User: huxiaoying@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <huxiaoying@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 292417292; Thu, 01 Sep 2022 12:48:25 +0800
From: Hu Xiaoying <huxiaoying@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Hu Xiaoying <huxiaoying@kylinos.cn>,
	Matthias Kaehlcke <mka@chromium.org>
Subject: [usb-storage] [PATCH v5] usb: storage: Add ASUS <0x0b05:0x1932> to IGNORE_UAS
Date: Thu,  1 Sep 2022 12:48:01 +0800
Message-Id: <20220901044801.3354605-1-huxiaoying@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: huxiaoying@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 124.126.103.232 is neither permitted nor denied by domain of
 huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
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

USB external storage device(0x0b05:1932), use gnome-disk-utility tools
to test usb write  < 30MB/s.
if does not to load module of uas for this device, can increase the
write speed from 20MB/s to >40MB/s.

Signed-off-by: Hu Xiaoying <huxiaoying@kylinos.cn>
Suggested-by: Matthias Kaehlcke <mka@chromium.org>
Suggested-by: Alan Stern <stern@rowland.harvard.edu>
---
change for v5
 - Update the description of title accurately.
change for v4
 - Update two email addresses to be the same.
change for v3
 - Does not send html mail to the mailing lists.
 - Update patch, which sorted by vendor ID and product ID.
 - Modify discription, correct some english words.
change for v2
 - Update discription for patch.
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 4051c8cd0cd8..23ab3b048d9b 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -62,6 +62,13 @@ UNUSUAL_DEV(0x0984, 0x0301, 0x0128, 0x0128,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_IGNORE_UAS),
 
+/* Reported-by: Tom Hu <huxiaoying@kylinos.cn> */
+UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x9999,
+		"ASUS",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: David Webb <djw@noc.ac.uk> */
 UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
 		"Seagate",
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220901044801.3354605-1-huxiaoying%40kylinos.cn.
