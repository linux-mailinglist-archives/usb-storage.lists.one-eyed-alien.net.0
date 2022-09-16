Return-Path: <usb-storage+bncBC6MZUGU7YMBBIVSR6MQMGQE6WN2Z4Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x48.google.com (mail-oa1-x48.google.com [IPv6:2001:4860:4864:20::48])
	by mail.lfdr.de (Postfix) with ESMTPS id E75635BA46D
	for <lists+usb-storage@lfdr.de>; Fri, 16 Sep 2022 04:02:11 +0200 (CEST)
Received: by mail-oa1-x48.google.com with SMTP id 586e51a60fabf-12785ab6ab3sf10123851fac.5
        for <lists+usb-storage@lfdr.de>; Thu, 15 Sep 2022 19:02:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663293730; cv=pass;
        d=google.com; s=arc-20160816;
        b=opxG5Gy+KgZHPGpb7QMYStVJe7kvvZTDB1wgcfbEMeBEZvEDq1ivMimXXMLud8gm/g
         a+nhaHPrzSWYRpVRUeygnw436wyZnTxM0/u4GJinDeFGJi/QMUj0q/WIn6BYX/h7g1Sc
         mwqp4BS48TLepVEp3YBZvHsGJsuAbO2Ko35nOaaNE5djPpXXPdrUbZMovt9yYL6LcJZr
         adb4pM9iEHBe3hivK6AEubuG/ASrEyTnLg5GxYkxErtD3PTJl5tgcdFZaBaEqvV7oIos
         kv+54dC0RrTGMpWYOSDXilmNeQyVEppaJDQ0ouUQ7FA2NdHvfhFCToaF4EaKCRTcqoKp
         6Oiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=ryR3itXxfd5zgoHkjkEAB1gemYl6kPMP4kShSG5PWrc=;
        b=f8/3761EJUdMOb5R2g7SOV/rZHmQeIkSK5Z81R/hFAURp6caqwUrCFD7biKd58bF0F
         xqpUCKb5DhvuWxS/RCIn9UzG3cY3UcPDHqzV4CkQSSyhEl5YjGmdMmraltNJ0WWqEh9j
         2Hym7s94uchECmTv4VV4ZRXswo/67yX3DQHjCsOv7+lcJZ/57RoO9N59gUGgtetGst60
         dSwItAwpGQBvviTMRjN2mvDqct4/60WlhlzzEP9EiM/k0DbYODQ4aLlmoMrmuWmX2yjO
         r9vcs6M1C/c5cGXzGcugfBTb/pZW2Uv0GQ4a0qozFBMH49ueQhIQrFIsNR2nb/59pCYp
         c5qg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=ryR3itXxfd5zgoHkjkEAB1gemYl6kPMP4kShSG5PWrc=;
        b=k4+fCq2EMEm0PWLrzxZKkof3XBuyEHpAfKfEJ6hs4HOSyCMvZPbwe27AhG5q4Bb+cS
         REqzZDjNMhY3HWJ7GcYCwraYUAsshKENL6oE7xGD16HMr01fNIm2xxGjMAmlM3QaLBcl
         17BcDf5zbvAZW7pXkgZaQ6IlpO1+7GF/ULu6k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=ryR3itXxfd5zgoHkjkEAB1gemYl6kPMP4kShSG5PWrc=;
        b=wLDi2G+BdBVQae7MDDgeftQ+PxJbTrHSbnv/U6QKm6g+hj/zHsTj5idlSPE8fqXmKP
         9hn936jgbs2rVORQyaBmomo7DaBJsgqL5V6ZSJunCraLX4dZCOSHrXqW8nYfpvdPLKGg
         XECMrdW/7t8Ggd9M8GAYChRXW6ZjSXxAiEEDgyNk9u4lP4YBchVmlA+mvH7tlPQcoKTo
         s6lHkA+olTBWMp/4xoHCSakJa68Yf5dcBz1e3cEJlRaL2rNhk6wiKCajC0ll4HpJv2Ms
         bn+m0iy68bZ8G/ERprX/4LaMDaMkVutKt6tZGHsQ/jz6JUE3oxCBapvFGbjy2Z9imgHg
         lFrQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf2anf9RnHVeAKc5VinzPCYwD3xpAhAhu4mR3wxVwNkryO9ozqFi
	Oszv37XnjKBBgBB2zD6S83QYgQ==
X-Google-Smtp-Source: AMsMyM6IiSWJhFaTqSVyhAc7bPPtIs+jzYrO/mjcE2vZTd3tynrg8Vys5+vpRCSBZ8pv/76jDDCjAg==
X-Received: by 2002:a05:6830:2b0b:b0:659:d9be:8368 with SMTP id l11-20020a0568302b0b00b00659d9be8368mr54727otv.252.1663293730249;
        Thu, 15 Sep 2022 19:02:10 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:5a8f:b0:11e:7a1d:b272 with SMTP id
 dt15-20020a0568705a8f00b0011e7a1db272ls9165826oab.7.-pod-prod-gmail; Thu, 15
 Sep 2022 19:02:09 -0700 (PDT)
X-Received: by 2002:a05:6870:f5a9:b0:11d:cbad:301d with SMTP id eh41-20020a056870f5a900b0011dcbad301dmr1486778oab.202.1663293729718;
        Thu, 15 Sep 2022 19:02:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1663293729; cv=none;
        d=google.com; s=arc-20160816;
        b=0KKcau5jKlm1vAe3/n/UcV+hD8Oji8/oOkDJMOOYVvDFWZQVvcDt4S+tsZ1AECp5fZ
         n82Gq40WdD/VweLuyWn8NJ2f6DaGUpQYE2n4v4iM+6MYoFvvBrfWb6EUAh7kP3Pw3UjW
         HEKYJjBPJLumSVGQuJyTPEB4Hhs+8z6Cw3Ms6sMjPq5i1qYeSAoj8en+J84l4ruieV3a
         L5wMcjhAEuHVVyeoGrUIVocnEe7wgoDY/+FaBGbUyJSsfhznsAT7nxa1KJYB5wJOu/yp
         rFaj5nP4yqWhHEiBu8fMgrN80GTEM0gNAShjauTeUuA5LMzjzVDlmhdPlmmNdRbfA3tX
         +POA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=r4Qfmiqsbqxr2Uh7Uzx7iAS282DltEuL9NJL8144MXM=;
        b=IGRMOqedoMM72POY2a9mPu9TiBMBE1xQgAVYWxJlkGyEO6tBuocZ67RRQ8ur20hnZv
         LzcppmiydRyEaV4P0lOLChMIcye+YzTPriFZLDg1EQXoVMullf/hmBqugjhFvN1pRVHr
         K3sYPGbUR/PTL0hiudiSy9un3DTz+zgZdqtfY3G4Pj9LszqHDE+MKc8hE3c/O/nPRcA+
         4iIDNsofJzXZJFf8x7g3y8t8v/0LXR9jyYaMJ/avIyusZiH47Lw2OMx0nHmB5acmEo6U
         1qXvN62Nx2zajd28CcpkUY6pVPUrbFM1snIb+fpHz57m5BMznZiaqY078/AaMe+sZsDE
         TcCA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id i8-20020aca2b08000000b0033ad7a914a9si13846417oik.257.2022.09.15.19.02.08
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2022 19:02:09 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 370feca3514c4802ad7065663d166d1a-20220916
X-CPASD-INFO: a0f3b37712304be898a08849f62aadb5
	@qoCgU49lZWddUnV8g6WwcllpkWBoZFSIqHBSkY-
	UjlWVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3sHKgU5JhZw==
X-CLOUD-ID: a0f3b37712304be898a08849f62aadb5
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:174.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:0.0,SPC:0,SIG:-
	5,AUF:38,DUF:4913,ACD:81,DCD:81,SL:0,EISP:0,AG:0,CFC:0.287,CFSR:0.095,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 370feca3514c4802ad7065663d166d1a-20220916
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: 370feca3514c4802ad7065663d166d1a-20220916
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 394404056; Fri, 16 Sep 2022 10:02:29 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v7 1/3] uas: add no-uas quirk for Hiksemi usb_disk
Date: Fri, 16 Sep 2022 10:02:17 +0800
Message-Id: <1663293737-20014-1-git-send-email-zenghongling@kylinos.cn>
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

Change for v4
 -Fix version error

Change for v5
 -change version

Change for v6
 -Change the git message for patch 3 

Change for v7
 -Upate patch 2
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1663293737-20014-1-git-send-email-zenghongling%40kylinos.cn.
