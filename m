Return-Path: <usb-storage+bncBC6MZUGU7YMBBIGD5SMAMGQEV66YIDI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x45.google.com (mail-oa1-x45.google.com [IPv6:2001:4860:4864:20::45])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F4F5B363B
	for <lists+usb-storage@lfdr.de>; Fri,  9 Sep 2022 13:21:06 +0200 (CEST)
Received: by mail-oa1-x45.google.com with SMTP id 586e51a60fabf-11f203a113dsf723614fac.20
        for <lists+usb-storage@lfdr.de>; Fri, 09 Sep 2022 04:21:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662722464; cv=pass;
        d=google.com; s=arc-20160816;
        b=e7YLMlXXBJoqnI48IMKL71DI2Fo0z/4TrVctjlejyll952BdDavVYX78YD2B+gAEtq
         rX0sb6XONKVnQdP3LuVttscxXgVMxVbE7VlQ1kHIc/OeYM8Qmv+Gphu+Nm4pGWjnQewd
         KJ7zLtX75lcLrEV8VbajH8EEufBL1QGQ0ZL8INGlppO0GlB1pPSYLGv7cu3H/GeOjgZE
         rjmyQumoAj5KePasJjw6y6Vg8LkSRKeRoqn7+Tbm5oWjRMp9OCdrQufkiXNWXRlJOC2F
         Szl5oxPZy6eAq/7Vce1IWNtXd7IPvE3VuvIbemYA9hXWHg4iAR/CccnbHFRc3+xU1y3b
         zluQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:subject:cc:to:from:message-id
         :mime-version:sender:dkim-signature;
        bh=PpHUIwhPqjzAgLkXsSoZhMN5m2KSJq3nOEaN3NjZ+LQ=;
        b=En9Y8tP2ZFpsucwXLj8Gq/eyy9YeTQ6UzmbpmXCLotl8sXhGBz0JdaAlFx3FgJdAlD
         4HjYDcxeZDMf3fJBIDozhkVtR3P845wn6twIGWyvLop29R3b6iNQvitLNb/ANSuTsi9k
         8NK8OwKlu5nXOJb7S42re2/+1g/WNhotDjH/b7S5T6jJUlt3D+LaPUXPcwqCzs+tz2pS
         SuXyT1b/vVdA4GLn2df/AEdaCPdFy0TstLd2gpXBE1whsSK8qddcCGxQICANMxW0Vm70
         xFsdQjxmA2jvIfS6ilzJO9jHWndx56dT9/w83dkURIgEM1myiom4tpIXOseBxFjLMVQL
         2XEA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:date:subject:cc:to:from:message-id:mime-version
         :sender:from:to:cc:subject:date;
        bh=PpHUIwhPqjzAgLkXsSoZhMN5m2KSJq3nOEaN3NjZ+LQ=;
        b=LcAVyTne9zBL0B6uaEZytWra8iEw5A+e+NYXhgxHY35zW51kmYpGcl9SICfKbiKt5L
         nomVpYxft9vWW7OhZ+R9dtXberd6pyjmXaxO/P91kXYWPDBMEknhCad2IbhJk0Dque+f
         3lNE1QAQ/5vsBC6ce31hMxO/84xJBoMALdg2w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:date:subject:cc
         :to:from:message-id:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=PpHUIwhPqjzAgLkXsSoZhMN5m2KSJq3nOEaN3NjZ+LQ=;
        b=jiNh3VJHChXDK8kTtztUDSuGhOCs++TXpKdag861MCeChNtTtR1EcNVq43s++Lht6c
         U79Cf3Aw61euRqtzpeMJxodoiMapgfC5MmS6lQhO6+gr05rBqaTX+OGuH+t/L3MyFlJI
         NnNYFAVnd0UtLehNHx96XLa8eGj08aKaueaaLMoXhPom53KIDXrosGbMskMFrtnIAXyV
         upf+SG6zwDi94zvSlaB7ZDzhDCnBPC5MOVr8NsLWEnIu2bjKWt1fO6XmJNG/CdY4KYNa
         LqNkMB8EF27m6K5Et7iKIv0wL9g5di1oPGeujvdGEMifMFPOxkMV71Gg0/hLv0A8gJEj
         xMMw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0J/or6FJ4cKVBEyCzEUmN3i1YuBk+AiDephX1QY8N7p/MATe8V
	vtrQib26bdwbuAsiJ3OqSA3SGg==
X-Google-Smtp-Source: AA6agR6zTzCDqpzbitK3uMmz47ASqeuyLL4cGRH9qL2o7NtlEsvx9IT+2JYhT34ZdI7LFp7zYOzd2g==
X-Received: by 2002:a05:6808:1483:b0:344:ac63:b87a with SMTP id e3-20020a056808148300b00344ac63b87amr3484218oiw.104.1662722464786;
        Fri, 09 Sep 2022 04:21:04 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6830:6010:b0:637:18f0:d52 with SMTP id
 bx16-20020a056830601000b0063718f00d52ls752616otb.8.-pod-prod-gmail; Fri, 09
 Sep 2022 04:21:04 -0700 (PDT)
X-Received: by 2002:a9d:1b4b:0:b0:640:3d27:879f with SMTP id l69-20020a9d1b4b000000b006403d27879fmr5076186otl.5.1662722464313;
        Fri, 09 Sep 2022 04:21:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662722464; cv=none;
        d=google.com; s=arc-20160816;
        b=CW/2pYDcWEfm+TljYNEeuAJKtp8UINSlYUyX+2DjS/6ixHww4NigAfLKExmT6ourmk
         c+vWd190pquvKcOz2zoiGLivhSjwB/RJb5j/ZqtQgcq6uvvvjkMQaSIWKOC0f8i71m11
         OjQ+iOCh1gEEpx3uFclj/wgU8JOu6NSfLbJw/YqFG/tIO7AqgkFnHQ6GwV2X0rqesi6E
         7k9QTM1H9BargsHx/Tq+599aemAo1kg1cZRH+nhC9+QJ4qy3aBN0YEg19lCVRGRjvqTz
         dcHhHoTVqK78M7cPA7rly4Z9llm+iLIFQBeIXd41aU90shs2Cj4ZcOOOg8wp9iLo/KQL
         hscQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:subject:cc:to:from:message-id;
        bh=GLTNL5ayb3DEXWDX9WHt1Ovd3NyKcchb7LVeqe1pu3o=;
        b=AWjzfjW3et+kPjok8cQ2uLBHle+Mph/uBmTokE66jfGhtUfKUv3uL4WtzgeagLOzUb
         2S3uxDIMpfo2H0Rz0tTWsY8DviS4F3I3trLxYFIYctZQWBqd4HFG1KsTwGFLggy1DK0g
         LOE3rXmZXTNtzuWdf2p1f7odjooQfBakIRG0dyi3AHiY1XJwLmLGD/DuOVuVBWkHnOmf
         /TVRVuq/MksUxYTDtulCCBftWOvoGGFX3bZ3zxVLPDw9wZ586twCMjwDqccvzJIsMObT
         PldK2W29aVi9vkPAnTQcbCP8yFTc/6js4UVxNMi4DRWt0nxt7UEALUKkJS0z6LNZ8dU7
         AJFQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id m9-20020a056820050900b0044e001dc715si368752ooj.19.2022.09.09.04.21.03
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Sep 2022 04:21:04 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 0889a855711d4271833779f04dc581db-20220909
Message-ID: <1662722426664509.9.seg@mailgw>
X-Spam-Fingerprint: 0
X-GW-Reason: 11109
X-Spam-Reason: Heuristic_Spam_Fraud_546F022B
X-Content-Feature: ica/max.line-size 82
	audit/email.address 3
	dict/software 1
	meta/cnt.alert 1
X-CPASD-INFO: e33d81384d3345119b0b3f3ac98ae3b3@roNthGVjYWhghHV_g3h8a1mTYo5TtXW
	bg2lmkZFTt4WMbFJkYl1ZgYFqUWJnX2FZVXp4blJgYGJcWHh4lHKPVGBeYIJUdJOAp21TlWZh
X-CLOUD-ID: e33d81384d3345119b0b3f3ac98ae3b3
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:12.0,FD:0.0,CUTS:167.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-
	5.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:1.0,SPC:0,SIG:
	-5,AUF:32,DUF:4488,ACD:75,DCD:75,SL:0,EISP:0,AG:0,CFC:0.227,CFSR:0.116,UAT:0,
	RAF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0
	,EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 0889a855711d4271833779f04dc581db-20220909
X-CPASD-BLOCK: 12
X-CPASD-STAGE: 1
X-UUID: 0889a855711d4271833779f04dc581db-20220909
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1665194311; Fri, 09 Sep 2022 18:48:37 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v4 2/3] usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS
Date: Fri,  9 Sep 2022 18:48:34 +0800
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1662722426664509.9.seg%40mailgw.
