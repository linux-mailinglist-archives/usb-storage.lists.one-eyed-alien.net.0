Return-Path: <usb-storage+bncBC6MZUGU7YMBBEVTR6MQMGQEX4NRUKA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x248.google.com (mail-oi1-x248.google.com [IPv6:2607:f8b0:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id 459A75BA47C
	for <lists+usb-storage@lfdr.de>; Fri, 16 Sep 2022 04:04:04 +0200 (CEST)
Received: by mail-oi1-x248.google.com with SMTP id g124-20020acab682000000b0034b8ef2afefsf1728322oif.14
        for <lists+usb-storage@lfdr.de>; Thu, 15 Sep 2022 19:04:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663293843; cv=pass;
        d=google.com; s=arc-20160816;
        b=EkRyJ6IUulOBN/uohoyzOm5E9YioxkLjeexu32NIVncKUJAqF5CYLnernPuXmsRjCD
         QXYxMHpcHplCYFSNF2XIuO+/+PyA37Xc4Wz+Y45gHD9cS3QabgeLX1WlzC+1muBDAV00
         4k2ovCHa9dTQGAkkcAwVXYr6ltrwxj2HEYbYgfMKLaGXpINe5Tkg3wHhZby8iLLOpzgb
         FQBQf93PYkWsganOLMtIEPT0OztZyJ/Ex7vVbwaMKUfVKFUzkUSLuCraMDpSwsWNkvoT
         eC6b+C6OFPPi+hdQhpbk3rhFP54AVmuhJPLWleq60X6wILYfB9VyWxmuc1GReCgZDP/R
         cMpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:subject:cc:to:from:message-id
         :mime-version:sender:dkim-signature;
        bh=cpnYRsXxVuIu/WMpWhcKSBa+xliV6QslAfHS2G4orBE=;
        b=PLVVzKOU1BhPRLtEa9jI6sahn9ZJu6BCuk7E2CuTEz6p/ih1PJLew78Yud7U2qi5WS
         tiijH6TxuWxeMDQQHB1tV86o5Qe6XesI/TBbkUWunbbAmjEVswRyCkpRW4t6XFGW1xeL
         PiwSLP/Pk6QhyI8ZbM8CvkqyeW8/67QEtWERKoTkup5V2LQ0LfH4EC4hFJh0WJP8S/Gk
         W0bd/23SgEVO8KTTifOBuhvzTaZAv8Rfz03pI3hm43tYxG+5nIAvHMxOYgDPO42iE89E
         Ovvi5IP52Qa+58+5de5e2xuo7SuQgbisNi6TXYlMlSVtcdpUhsG4phiabBDeWLG767Rs
         JvAA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:date:subject:cc:to:from:message-id:mime-version
         :sender:from:to:cc:subject:date;
        bh=cpnYRsXxVuIu/WMpWhcKSBa+xliV6QslAfHS2G4orBE=;
        b=k57cB62F9TqovFjPLbt6/wKBMfb+YN1x3qvIgGttK0ZaveCFtvAT6ykjk2uoQl2/Py
         zCJJw2VIFGIYlJkztNz1y2SkMTAKqVMnH1Nneci6ihLX9S43pCyPp0fJz4UrhwHBWS3u
         69EcJEqkmw7JJeYqruKll0zP+AurZqoCJ4EQY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:date:subject:cc
         :to:from:message-id:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=cpnYRsXxVuIu/WMpWhcKSBa+xliV6QslAfHS2G4orBE=;
        b=smbHF/vp7XVFxOHooXAZov2AEHPzeswNTib/Vm7d6XLLsq0rI04hze+qoxVKLONOeH
         minVGwKo+DTgqdoSWWGNufz8qUk67oiiidP378bOQ17+kZ4udH31OT4vwAHGbyLVEg6S
         ty1DHk+Pdqr2hgeRW2AvI/rOLDjxwDJ1qgptRzIshh5Rh1HHWoa2bqaX7yen6oV9lRjl
         87WQcwLyplEivmgMMYqyOjzGvzpckGJMYtwMEeLR/rmIaBfm5VBikdSBjek+qGWAlDYi
         KWYQ7qs1EjdQt9ubUziJLcjmW8z9z2kcPQiGN9mk+PjN9aJ0V1VPQcKfcXwsY8Vef2fg
         wzkQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf2PD0RZcIF8PUzQKcqwkVOOZvwT2d5rPlVxK3aucaA117agTsFE
	uPDFjf6hojL3EbAKmIqR+ccfgA==
X-Google-Smtp-Source: AMsMyM607tvIxxJQAA1tgIq500ltrOMV1LqYBldqSzGGhj1BgSsIglT67MRfgu55LAUsyz1CWBHh5w==
X-Received: by 2002:a05:6808:d4e:b0:344:cc0a:2a48 with SMTP id w14-20020a0568080d4e00b00344cc0a2a48mr1306006oik.241.1663293843024;
        Thu, 15 Sep 2022 19:04:03 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6830:61cd:b0:655:ac11:de41 with SMTP id
 cc13-20020a05683061cd00b00655ac11de41ls3726913otb.5.-pod-prod-gmail; Thu, 15
 Sep 2022 19:04:02 -0700 (PDT)
X-Received: by 2002:a9d:6012:0:b0:655:d8b4:997f with SMTP id h18-20020a9d6012000000b00655d8b4997fmr1256985otj.20.1663293842596;
        Thu, 15 Sep 2022 19:04:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1663293842; cv=none;
        d=google.com; s=arc-20160816;
        b=PY1QK72t9pOT4T76VRnL0PyahuJd3brVrxQmQivIPdL34L8NUkyAujLtgwy4JIWGf9
         KjFcIxFPKZ79IX/mTFpRpaAaf8YAOit2O6ZkT2gryBQQEGmHSyan+47dhr3hERzj4hLl
         QegiliXlzb+/Td+ZsFr08oSiu6h5o4SCTyDmC1IYeIkeZhaYLlql3NLFPEDHjTnct9SU
         7OHDosoq38bXv1ppyIQtEXpnYXHbknpTOUEfP1qG/cW+BV8IoPwx8qMtpYgIaaY13w4P
         s4A+pvEHd+nT+2jkoWV4ocaZJxzwPIhD4CGxrYGR+Ea+xT4fATZrHzbCPv5qB9gacHFP
         3UzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:subject:cc:to:from:message-id;
        bh=VHtuiLtQDa+z2P+GevMOc/2SiszPXOToPCwWUFkxI5Y=;
        b=DjoAYf8QmK0L2a4gN5w1rk+DenD1/gM4D6Qia33Qd6tjhzFZZmCuVRoN79hni9RPRA
         J7LumWVMB8lzmEsUOa9xcdz14D/L+NqFky3aDMD4xaMWEF1/9IQfJgcm8eAwb/JsryEs
         FJSXNSptzbQu7LEjmckDDB8AiH5Ut2IaR8tBDYD5F6qGXCXXGkKj9Wbb+uQMBea18CNh
         1FmUtgCCx8R9aIYeYwSHX4vdYXtVk/cifwmgqZAwUYAQMC9lkdUYAAfe/4w27OZ+TQXj
         5E2dS6L3jyODkqgZUeXDkGcyIMDAmj0COCTCv3v9RltGHd00HHJ7uNwHEbDGegVBryH0
         efhw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id m19-20020a4abc93000000b00435589cd706si6491450oop.15.2022.09.15.19.04.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2022 19:04:02 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 10d6408a0f4b48a4a844933aece58b34-20220916
Message-ID: <1663293874836163.12.seg@mailgw>
X-Spam-Fingerprint: 0
X-GW-Reason: 11109
X-Spam-Reason: Heuristic_Spam_Fraud_546F022B
X-Content-Feature: ica/max.line-size 82
	audit/email.address 3
	dict/software 1
	meta/cnt.alert 1
X-CPASD-INFO: ae43496bf53c4ba481afd2c9399be2ce@qrVuU2FrZJKSVXWvg6Wsblhik5KEgaV
	zU2lnkpFSuLeMbFJkYl1ZgYFqUWJnX2FZVXp4blJgYGJcWHh4lHKPVGBeYIJUdJOAo59UZGJp
X-CLOUD-ID: ae43496bf53c4ba481afd2c9399be2ce
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:12.0,FD:0.0,CUTS:178.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-
	5.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:1.0,SPC:0,SIG:
	-5,AUF:39,DUF:4914,ACD:81,DCD:81,SL:0,EISP:0,AG:0,CFC:0.248,CFSR:0.1,UAT:0,RA
	F:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,E
	AF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 10d6408a0f4b48a4a844933aece58b34-20220916
X-CPASD-BLOCK: 12
X-CPASD-STAGE: 1
X-UUID: 10d6408a0f4b48a4a844933aece58b34-20220916
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1793245111; Fri, 16 Sep 2022 10:02:38 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v7 2/3] usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS
Date: Fri, 16 Sep 2022 10:02:26 +0800
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

Change for v6
 -Change the git message for patch 3

Change for v7
 -Update patch 2
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1663293874836163.12.seg%40mailgw.
