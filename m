Return-Path: <usb-storage+bncBC6MZUGU7YMBBAVH6CMAMGQESSWE63Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BD65B4427
	for <lists+usb-storage@lfdr.de>; Sat, 10 Sep 2022 06:33:08 +0200 (CEST)
Received: by mail-pf1-x447.google.com with SMTP id bt5-20020a056a00438500b0053b090003b0sf2048986pfb.16
        for <lists+usb-storage@lfdr.de>; Fri, 09 Sep 2022 21:33:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662784387; cv=pass;
        d=google.com; s=arc-20160816;
        b=xAiCnE1H7goM8kiZhqQ6p5kYpKRglpLXlzSx3SFzFJXku2uRLYekDVI2nsib5zurj0
         sbA9WJepYs3AgzwW58CYVagVF4190OgG0viWwtY1KN/6lRAT73bipuWK0o5UpJgjSOQk
         FW3UkpjF53hJHQZyu50BldvWGtqH2u/yInBdBPkN9h5eE3gj++7lQd43gucgrpTgRk1M
         7+9kTUbdGIuVJ6sPG+HNEevsDlGh9JvB7wxu5MOXY/I5Y83w5bv8snbbRvV/hfUj3yDn
         cnz0JTgjcTe3i0N3GnTMBY+vPzQ6tgeL25GwjDRNoPF5JeCpriGXMLzCGg1aXTRMRk01
         i7zQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=Wf4/4jV12n4QmoeyjyBo+UEOiyZ+AlY8eXFJMxUpfcc=;
        b=PopZ2fo42A5dKOZ9oiElgEeNCyOAGq5DDoq4A0HSIm5APuQGtLyV9uzP3+b3s61vmP
         T2fdFntPuPc5wKIwfRvssXy7863R9YnMA9PKbueZTYNyqaCHAcIkINy6c0cwtEY4iVDU
         apnU5f0ZsqYUYhL274MyXxj3wnYIB6QY7+7a/kL2MiAhstpzEZgr54vJPydM5HHPKzDB
         9s/TYxJWBPBA7BmyZ4mmDi1BYApXpptWuS42ocLf5D3dKQrqX5roefdokFlKgnwCERvF
         W8xK+a3hru1GMyvU6YXxo/P1sWKbzx0on8JfBPF6YRsJ3amGJFUvnJGc75noblGWeHPD
         qX0Q==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=Wf4/4jV12n4QmoeyjyBo+UEOiyZ+AlY8eXFJMxUpfcc=;
        b=UOu1e2vFzXUrOLL8Wes6gQ/+O5ALqJKpofaZpZPuoV0FJ6HgomVp1Pv0AEOIhiU8BQ
         43+DYKlXP8qF8OAu/p21IGnsHVtiNlex2xmox737voZMUuVGpOM9+iPdTDU2RGTDqg45
         m9eoHIo54MQz1lUXjO/XlR4FbVhT/QMbkTxZo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=Wf4/4jV12n4QmoeyjyBo+UEOiyZ+AlY8eXFJMxUpfcc=;
        b=1Pw1iCpXl3XufKONoYoTBC4ixcLyYqF5MJWjqd9DZoaRtH9uhrES8EvOXOfOdKSKiy
         q0IizbLRXgCbtelGdmk2EexlMRKaroUSsp3WUPT/TMlsXc5npXmIWTWlPXtSnhqiZTk4
         9KAuSpPh2GDxwT1B/MH+snhGuBxXov0z2Nng6FyksEZikSMAbSQs0CafbwyFOF+c7Ny7
         esvHPp8ZCkOD5jsdpFcnOUd/yIuQ2xByJgP4mEddtCqKmPhYmdflaNDpJgj5tUNI3f0k
         I3w+nNVUmVAQQZVwm2KrqyuxTbazNDLQKTFeST1peh6hm0Uw2LgaTLf88MzUiJzYpMSd
         DdFQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1+XnG1ZHHSwE6BZk9s2AIupvusYnhQbPv1D+N4bis32vHYON/v
	hLX9k1OobpSHlJLe9vKA0dBXCw==
X-Google-Smtp-Source: AA6agR6PLwf3Cc2Wk3gxW3QJsKHM+2luWMGvN/eBuu7Um4rTFZG+AXlQ7Fmuf5uRgO9SX+oKl/rGdg==
X-Received: by 2002:a65:6454:0:b0:434:a700:f0bf with SMTP id s20-20020a656454000000b00434a700f0bfmr14383593pgv.383.1662784387047;
        Fri, 09 Sep 2022 21:33:07 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:a406:b0:172:c963:32c with SMTP id
 p6-20020a170902a40600b00172c963032cls4239748plq.8.-pod-prod-gmail; Fri, 09
 Sep 2022 21:33:06 -0700 (PDT)
X-Received: by 2002:a17:903:248:b0:172:7520:db04 with SMTP id j8-20020a170903024800b001727520db04mr16917494plh.99.1662784386110;
        Fri, 09 Sep 2022 21:33:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662784386; cv=none;
        d=google.com; s=arc-20160816;
        b=TGKxMgw2NyMd9JNYEdghzL6O9cZV4zd+5lauIqesm5f0bu7izS11l4BxGyyRXpJ6oA
         jP9tt1pNYUg2lNUmcNX3jvoTI6LqDkd3nQ5ASdAGyKuCIQ+RDitqiDjGDPnnJsOiTx1A
         g7MKiWK3tPPCQ+fwDFhXD7m5kihAmcEAdpMn3vfbpu/TDKv8HvH9sNC9RJ5x+WR1jLsI
         2mVlv0DmUPSv5QnFD+oiWrvahUVxKLq+OJQYQLBc+gtdGN07TpYwrK//4ZHxatBpSsA9
         lPL+cc3ZYdbrZ7jRH53Lhg4DiMMDUJs+yMJDQosJmxaNmvtpI0HhhaCcsx7fnjpbG7Hv
         jWPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=cj0DcuqvpFseNMPB2D76SZN1F2gvsl0uWkSl4E2MRlw=;
        b=yfFOGsQN56GSBySrAeiVWJOTSJ2e0jTxQJLWmoXOeRm6dpKg41A8m+TXzQX8qs86HE
         UU/txYLquE9k8nEQeGaco2u+SStb/2wtyNArKfMQ7sVjbURhvArOrgWX0HZdghrMtBsh
         43+XJ2c94KAKdpcvpJ9HLcGmKPODiTwH3MYpFQB1iEqUuw8J3GOp2Uha7w769stQImWQ
         o3qTbirm4TcXPhvKBS69jCEdSR4uYMaIQ7f57pQv/s7G/k33seKHTa/EszLf1PK8/i94
         /347wx/3nAwA2MlAczF80KBI7Xsoy5P9HKCG3dhzV+cye0RHx2tNOpbE7GYdAEGjp+yG
         kZjw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id n188-20020a6327c5000000b0042aff6de2d3si2434863pgn.179.2022.09.09.21.33.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Sep 2022 21:33:05 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: b365868fd5f9429387e96c941838d9a3-20220910
X-CPASD-INFO: 254890c1abe540a098354a9a30ae5605@e4VuWGZikWGNgqeBg3OsallpY2VkjVm
	wdWqBlWNmXFWVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3gXduWGpekw==
X-CLOUD-ID: 254890c1abe540a098354a9a30ae5605
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:170.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:1.0,SPC:0,SIG:-
	5,AUF:33,DUF:4509,ACD:75,DCD:75,SL:0,EISP:0,AG:0,CFC:0.219,CFSR:0.109,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: b365868fd5f9429387e96c941838d9a3-20220910
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: b365868fd5f9429387e96c941838d9a3-20220910
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1188290935; Sat, 10 Sep 2022 12:33:30 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v5 2/3] usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS
Date: Sat, 10 Sep 2022 12:33:21 +0800
Message-Id: <1662784401-24054-1-git-send-email-zenghongling@kylinos.cn>
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

Change for v4
 -Fix version error

Change for v5
 -change version
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1662784401-24054-1-git-send-email-zenghongling%40kylinos.cn.
