Return-Path: <usb-storage+bncBC6MZUGU7YMBBBGEWSMQMGQEJEV7ZVI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id A559F5E7249
	for <lists+usb-storage@lfdr.de>; Fri, 23 Sep 2022 05:03:33 +0200 (CEST)
Received: by mail-pf1-x447.google.com with SMTP id g24-20020a056a00079800b0054b1a110543sf6335888pfu.2
        for <lists+usb-storage@lfdr.de>; Thu, 22 Sep 2022 20:03:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663902212; cv=pass;
        d=google.com; s=arc-20160816;
        b=v6yQgvn/xcYrUL8fB5dYNvzoayAu2WVowyeGetqZRcu1ZmclI4bGOlKAlMy77nXsQK
         mcU8Y9D2PwkIuM+k6VwvtTxmkgCXZc5yba8OqMMiVVeQvPsmlDJNirFy5YZWjX75bPOP
         v6bCpRnBUHGwNAv4ORyDmq+LWWYIYzH5wM8BT1nPLIx6UfgWajL0AsfhZbmDO2EvvZ6/
         XDXFGIBiONaQbtRtQJmYPtb+5HSOwsNGN1OuUXMu5HXdFhCav1rZgKeX/hPThKutrQch
         DUEnGqUDrdQuPZwd0E7YJEB5gfGsvnYeQ+jcyuMX/DGo0nwFejEhu39CM9qi6tjIzG5v
         CATw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:subject:cc:to:from:message-id
         :mime-version:sender:dkim-signature;
        bh=F2BjwgyfeQKxFDbxshViLpTVaM9tMAsQfHW2jWgv7q8=;
        b=Qld4pIPbpPPg9KHTYMMpGnFmMX6mo3F9+f4UCOMCoBIGsYx5u7+oWqGGYro7VGbXGa
         g3Uez8Qv1nRG19L8WaxvP5FHd6eX5B/2ZBJMgqEXEFB/LPpd6HzN4yhr7SNHIxPKqkeW
         +wruQ7RbO1oXf8ToUpWGfeesRJFkgKdLWekapXjBM1ARCkuiAbqi51bidwJH4oEhOvzo
         s4aUiH4tF1ryEeASj94w/X7JFkgHhFRCpQYjKDiuvnD0mNS7VVgo27ZrlPa873TQQwD8
         pf3Ez2j/cOJMajIYMWVAav7ap3teXg2XmixGzGdpJcrKl/7AN7udLmglU96o/9CX9rfs
         +LDg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:date:subject:cc:to:from:message-id:mime-version
         :sender:from:to:cc:subject:date;
        bh=F2BjwgyfeQKxFDbxshViLpTVaM9tMAsQfHW2jWgv7q8=;
        b=M451AkwVJxQkIicC5UVwCUox3w+GG4vmxnib4mZj09Axnu+oZhqWf3b/ilRFKKpFDe
         reuJ7DrjkL51VgDED5I99oodym5bVrzyiatiMm6yu35NT9QAYCMqTTVW9CXcIHmzTxWS
         bUMQUUJIP4CkK9QL8wlkkDfS/Q9UMRgDGEdgs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:date:subject:cc
         :to:from:message-id:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=F2BjwgyfeQKxFDbxshViLpTVaM9tMAsQfHW2jWgv7q8=;
        b=AqnP/94efYYGbKu8gtM2SdSKbaT16+PfIeijOjfpu9EQCKqLNQxf+eCKl0+h7P4FMP
         ZaPQft5dmzqnui11fRYC2z8vw9kHw8xN55C0tU1w7xDlYMAq7/npzgX8nkZAXj4j6bGZ
         E6oyhqcy4GFuAIFAwBVUFRDvrUzRn0jYTS44IEXRJmdkTH3q7oGrJ8la74+dX2b9xU7a
         eWa7NE7lTZlBVnCsCpMAG/G0aOdlIdahK/2ECF03HhDUCsSUBlc03R8pZmQu0fAKGRVI
         ZWSpzQ0gB3V3z+0wZv4ynlunwraSWy6P8WVmK4YSL1b2vB/OyV7dF6xdC0fDqLbVqbWg
         Jbmw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf1ItFwxyZoI3T5DuIEl9c5AARfICSe4WPNHaEBzAguMUvbTUc5s
	5gOFkGo3wpN1RoP/U7mStuta0g==
X-Google-Smtp-Source: AMsMyM5qgEPSJkqIiygSw/R/PHv0nhlpqrM8zTJSIh9LcXCypAv+qDaWWoRyEyr2IfCs9IGLWmNWlA==
X-Received: by 2002:a17:902:e547:b0:178:2aee:ab1d with SMTP id n7-20020a170902e54700b001782aeeab1dmr6221784plf.29.1663902212249;
        Thu, 22 Sep 2022 20:03:32 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:2cc4:0:b0:41b:c89f:182f with SMTP id s187-20020a632cc4000000b0041bc89f182fls8096954pgs.10.-pod-prod-gmail;
 Thu, 22 Sep 2022 20:03:31 -0700 (PDT)
X-Received: by 2002:a05:6a00:180d:b0:540:ec09:293 with SMTP id y13-20020a056a00180d00b00540ec090293mr6987791pfa.3.1663902211265;
        Thu, 22 Sep 2022 20:03:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1663902211; cv=none;
        d=google.com; s=arc-20160816;
        b=l4x6ZhJxBJSYIvC0yA7MJVy0wL1d9vOk34jAHkhdoqypCglF4W3fHVpmkxEzw9FPk/
         PrRMPewKjA3F0fO2XNFnB3qNBt78E9VU6id1Oa6G0jWJ6zJ1rMEjx3acMPNCOo0hD13x
         U3C8urT1uf0BiyK/7PnmQZZz4p+aqaCUIR2Ovl2ha6mDUf2EhRLmtPCjcnjkKHiKgHyO
         OdIsHGEEITg2yTTUQZoXZd+wIsTlUz5AHJ4gVFOKw7OkL6nsuWSi5CaN3HwqOT/W4SNW
         smEVZdP4sDoUcSyFGECr61Be5BWCL9X/PgADbh+IVZU1OC98O+J562y6eVUGeb0MLB2b
         g6IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:subject:cc:to:from:message-id;
        bh=YW7BsOz9A9wXHRjjArpa9ZCXWPXDOYgLBWUJG1ijqlc=;
        b=pzpTXiTky8p5YMSfzGmUEson7uMhEerybhOeliml783QNUnf4K82U68GlA97XKv0FR
         9CP7Qp8Ubj+clfn4xrIXIFai4zgt6fSj10xVcO3hND0tZd73uQ43zacirWvdH7Ma4aWe
         xPdkaimlQaoH7Llvi4SNlW4xsuMwJ2NnokT/h8+LJDairOW6ON/7Ky/4rohM/+Xf+FEW
         NhQZMdPJ9HzLCY0dPeR2AGDbTbvrD/TWUCqzB6vw0/WoGaXcFYBY4jOxcEK3BSZjGSvY
         wad+jGZqElep1WgOn8KDvqgBRQfPy1+Bn4GSsKqAsrv95Fxx/TgpBXhrH2HxaloD25d/
         Ht1Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id ds5-20020a056a004ac500b0055035da1c58si1680162pfb.138.2022.09.22.20.03.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2022 20:03:31 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 7fafa513122148f3bf8609e04f54a17d-20220923
Message-ID: <1663902249837086.19.seg@mailgw>
X-Spam-Fingerprint: 0
X-GW-Reason: 11109
X-Spam-Reason: Heuristic_Spam_Fraud_546F022B
X-Content-Feature: ica/max.line-size 82
	audit/email.address 3
	dict/contack 1
	dict/transaction 1
	meta/cnt.alert 1
X-CPASD-INFO: a73363c32bcf4a7596fe5bbb62ba65cb@qodtU2NlkWNegqWyg6SCb1lnmJFVsaS
	cVmKQkWJVuLSMbFJkYl1ZgYFqUWJnX2FZVXp4blJgYGJcWHh4lHKPVGBeYIJUdJOAo3FTY2Rj
X-CLOUD-ID: a73363c32bcf4a7596fe5bbb62ba65cb
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:12.0,FD:0.0,CUTS:168.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-
	5.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:0.0,SPC:0,SIG:
	-5,AUF:42,DUF:5470,ACD:88,DCD:88,SL:0,EISP:0,AG:0,CFC:0.476,CFSR:0.067,UAT:0,
	RAF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0
	,EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 7fafa513122148f3bf8609e04f54a17d-20220923
X-CPASD-BLOCK: 12
X-CPASD-STAGE: 1
X-UUID: 7fafa513122148f3bf8609e04f54a17d-20220923
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 837780238; Fri, 23 Sep 2022 10:46:58 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v8 v8 3/3] uas: ignore UAS for Thinkplus chips
Date: Fri, 23 Sep 2022 10:46:35 +0800
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

The UAS mode of Thinkplus(0x17ef, 0x3899) is reported to influence 
performance and trigger kernel panic on several platforms with the 
following error message:

[   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled
               endpoint or incorrect stream ring
[   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 00000000
               1b000000 05038000

[  720.545894][13] Workqueue: usb_hub_wq hub_event
[  720.550971][13]  ffff88026c143c38 0000000000016300 ffff8802755bb900 ffff880
                    26cb80000
[  720.559673][13]  ffff88026c144000 ffff88026ca88100 0000000000000000 ffff880
                    26cb80000
[  720.568374][13]  ffff88026cb80000 ffff88026c143c50 ffffffff8186ae25 ffff880
                    26ca880f8
[  720.577076][13] Call Trace:
[  720.580201][13]  [<ffffffff8186ae25>] schedule+0x35/0x80
[  720.586137][13]  [<ffffffff8186b0ce>] schedule_preempt_disabled+0xe/0x10
[  720.593623][13]  [<ffffffff8186cb94>] __mutex_lock_slowpath+0x164/0x1e0
[  720.601012][13]  [<ffffffff8186cc3f>] mutex_lock+0x2f/0x40
[  720.607141][13]  [<ffffffff8162b8e9>] usb_disconnect+0x59/0x290

Falling back to USB mass storage can solve this problem, so ignore UAS
function of this chip.

Acked-by: Alan Stern <stern@rowland.harvard.edu>
Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
---
Change for v8
 -Add acked for patch 3/3 (thinkplus(0x17ef, 0x3899))
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 8a18d58..156e89c 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -198,6 +198,13 @@ UNUSUAL_DEV(0x154b, 0xf00d, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_ATA_1X),
 
+/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
+UNUSUAL_DEV(0x17ef, 0x3899, 0x0000, 0x9999,
+		"Thinkplus",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: Hans de Goede <hdegoede@redhat.com> */
 UNUSUAL_DEV(0x2109, 0x0711, 0x0000, 0x9999,
 		"VIA",
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1663902249837086.19.seg%40mailgw.
