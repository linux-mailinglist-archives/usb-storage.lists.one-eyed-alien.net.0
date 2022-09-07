Return-Path: <usb-storage+bncBC6MZUGU7YMBBHVN4WMAMGQEHZUWOMY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id 181F85B1297
	for <lists+usb-storage@lfdr.de>; Thu,  8 Sep 2022 04:42:41 +0200 (CEST)
Received: by mail-pj1-x1046.google.com with SMTP id z8-20020a17090a014800b001fac4204c7esf494049pje.8
        for <lists+usb-storage@lfdr.de>; Wed, 07 Sep 2022 19:42:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662604959; cv=pass;
        d=google.com; s=arc-20160816;
        b=sYjw+tDTZTLCGScoDUYInLyCXM5ircrbElvgIixyBDc2MRMWkff++w42fhy/7iosSi
         Mvjh5ozQfcvEnb3IAY+xC2pReuHcVayWWaTJBtVHybpsnGG4KtpGJSyfwwpBUKdZZJli
         ONxF7v4y1qPoWHdX7j0SSikPoB9ZrDBO3/mS5YPapf5NSjvJ9ludpt5a8WMtUo6A2cOm
         2ZVKZOU64ZwhEUvi2ItNNuhnO75F+UTUUNi3H+9kICdUSPrEb8Ddtg/PVIs0SHiN5mA1
         /+77WQCjKz313kME3A/FrXUU64TFFTOO3LgX5JH+DlPmx66nZi6toX9VwkFj3PWeDeI/
         NQZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:subject:cc:to:from:message-id
         :mime-version:sender:dkim-signature;
        bh=u7+OjzQgUeFCqTXqw9k4IVRtVVamyo8wy1TTsKHJpHU=;
        b=wUO7+7Vh45ctP+y6BN3bVeAWahekdhp3N9dnfA/4JXsVij4GMyjt4giekBTKTISHBi
         t8QQZJuAk99uVHrtThqX0G7WtZLmPFDDnzJN65h7qtGPoVcAcuNdIm8OE7OGO/UnwR4/
         CXVW2BYp+cwUGUMZOrUAu1W2v2yJliPW1+ef1vFsg1wZh4pl6c0sv4DisMosV85pS97Z
         JzgUH+OFHHxjk1W0sxipqciQYhg3nuyNqMb/zsMlOXmNBn+uhQ6JI8CIsD+3YtCwU/Fl
         wlwvXUeUnypes5q8cYQaX85hmXhoyQdnIEOavGZH8sy2bUxyD5IA5eE9uUgvVWXqQL7K
         2nGA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:date:subject:cc:to:from:message-id:mime-version
         :sender:from:to:cc:subject:date;
        bh=u7+OjzQgUeFCqTXqw9k4IVRtVVamyo8wy1TTsKHJpHU=;
        b=IlfPozuofC3QgM4Afj51OQN5REKN8wWKUPmS/qRqruiECKpzD7Wd1ZANQGQf6gB7IG
         z3B86Zvvu3oal1Y5WcFTQN/OyjzWtZvJyx/EDKhhB9/CoA54F5bysgua1VVO6dXLtUrW
         NvFT7HHhkRMbwV+5wzk/neu9alqREC9thRzgs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:date:subject:cc
         :to:from:message-id:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=u7+OjzQgUeFCqTXqw9k4IVRtVVamyo8wy1TTsKHJpHU=;
        b=PLMSS+7Kcfcl6xXIWEnwAzn20VDtfA4FbqBUMpUM2Ut4+TFRnACelGOHWVFqTfS0T3
         ObQmkaZViow/2sGfrZvpNkkS24gGlde9n7L1+YF//7rMDnlv8LSEO/9+lc0uj4/iql45
         ivBuTGFMq9p8UnII2Q9x36B1SlRhB2XO90GYNwN+aykRwe4gVswzXnPVjSMi2IO3p0HY
         /oEFZ4Y7OqmRX7G9YGnEOijFIJx1XLo6kDIwpXu1tCDNdPjVRz/Jp5IkZ+F59YrKyfis
         n1tSY9cRAkkCADBKIJPsG1uLpulZYBfzi0EEIUhK4KHj4A2P5RywHMvS4c3xuCa7YiWp
         64aA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo16eHwIzGl5gTU8mP86vZOBOyMmJILQrcKcKNhVKqw3mrZgMitW
	mvCLdQrxAcgFOV5YsGDIMB5R4Q==
X-Google-Smtp-Source: AA6agR5y0IrqQcu3q2+RfKoQymgUCk9wh+DU4IlPpJIKK9Cil20joDtaQht37ebgh5JCd6JHkBC27A==
X-Received: by 2002:a17:902:f790:b0:170:d401:66d2 with SMTP id q16-20020a170902f79000b00170d40166d2mr6986268pln.124.1662604959014;
        Wed, 07 Sep 2022 19:42:39 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:1881:b0:537:e48b:5468 with SMTP id
 x1-20020a056a00188100b00537e48b5468ls385023pfh.11.-pod-prod-gmail; Wed, 07
 Sep 2022 19:42:38 -0700 (PDT)
X-Received: by 2002:a05:6a00:22cd:b0:52f:706a:5268 with SMTP id f13-20020a056a0022cd00b0052f706a5268mr6955935pfj.80.1662604958170;
        Wed, 07 Sep 2022 19:42:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662604958; cv=none;
        d=google.com; s=arc-20160816;
        b=UoPQMPGxVBxqQ3CFJd5YCRhTvarcqfIWej1NSXb9VTgY6ZF1HTkW27s89+lBuK7dSR
         lvrpXYxB+LaSV4yGN/d1FWZ3aM5ITYTuW3ZeRaiWzFHhk/8S/iRb91D+A7wwAhBM498O
         L0SBcu0ZCLUQnPJa2m9Pyt7YJJ5OOVNhsb7otQD7kZNWfGNQF/1C4b+0hEjl4GYfabZe
         bHW0XT4ejxcZZ1hJHsofftClt/FIw9SMq39FVtwNBC2Cy8ECBZkT1x683TevDiA0vNc3
         J7jDEjOzUD/EU2SNhRY7qzrcq6NtIIxqiz9GbZvw1EfCec0A6+xgKED67/CSGfccy2xp
         uN6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:subject:cc:to:from:message-id;
        bh=t+nJQDNZqWtfXwgP96NJie/B7Ibh3z+A/PO5nspZCXI=;
        b=ofen4yL7v53UB0pS93hRB+UOlrMMMNd6s0eVtubfsvAzIKkSSjwa/nmdxpxVV2FEsM
         utztalMs94Dx9ojApCgfM7yry7JpRmDz2B6Z57j1xQKX8oaBuHYbdsySRDWaxFMR5Br8
         3V9qWL2LEuKCAFOqy8Z+caNH/X7Euls9zydq4JqKV6cVE4/j/RDOEw4SKXl8VLYyig5k
         iF5hn9Qu5JhxxLvgSQncreJq3wEAYdUo/+JyrHpnNB0smSjrFoSEZ0Chni2dA6BAeY1B
         JEqTW95zwaDD+MG6So0Sh4Fc34X2uY48iHgCxed3DO9Enw0hpt5IxazpBd7hSfItlkY5
         tFJA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id mq7-20020a17090b380700b001f270af836esi947263pjb.139.2022.09.07.19.42.37
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Sep 2022 19:42:37 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: ecf105ea691f4745a26b2378c255d676-20220907
Message-ID: <1662604981055928.8.seg@mailgw>
X-Spam-Fingerprint: 0
X-GW-Reason: 11109
X-Spam-Reason: Heuristic_Spam_Fraud_546F022B
X-Content-Feature: ica/max.line-size 82
	audit/email.address 2
	meta/cnt.alert 1
X-CPASD-INFO: 7af3840a56ac42f1a99c6eb0a11d0bf2@gLGgU2VmXpFhVqOvg3Wxa4Fqa49WtKR
	qgWFflFyCu4SMbFJkYl1ZgYFqUWJnX2FZVXp4blJgYGJcWHh4lHKPVGBeYIJUdJOAeZuGaWZk
X-CLOUD-ID: 7af3840a56ac42f1a99c6eb0a11d0bf2
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:12.0,FD:0.0,CUTS:154.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-
	5.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:6.0,SPC:0,SIG:
	-5,AUF:18,DUF:4221,ACD:72,DCD:72,SL:0,EISP:0,AG:0,CFC:0.17,CFSR:0.161,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: ecf105ea691f4745a26b2378c255d676-20220907
X-CPASD-BLOCK: 12
X-CPASD-STAGE: 1
X-UUID: ecf105ea691f4745a26b2378c255d676-20220907
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1740127396; Wed, 07 Sep 2022 10:54:16 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v2 2/3] usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS
Date: Wed,  7 Sep 2022 10:54:16 +0800
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

Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
---
Change for v1
 - Change the email real name and the code worng place.

Change for v2
 -Change spelling error.

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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1662604981055928.8.seg%40mailgw.
