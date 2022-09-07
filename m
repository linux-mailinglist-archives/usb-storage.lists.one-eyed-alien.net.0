Return-Path: <usb-storage+bncBC6MZUGU7YMBBDMG4CMAMGQEV56HWCY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0415AF9E6
	for <lists+usb-storage@lfdr.de>; Wed,  7 Sep 2022 04:33:51 +0200 (CEST)
Received: by mail-pf1-x445.google.com with SMTP id cj15-20020a056a00298f00b0053a700f1178sf6710888pfb.14
        for <lists+usb-storage@lfdr.de>; Tue, 06 Sep 2022 19:33:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662518029; cv=pass;
        d=google.com; s=arc-20160816;
        b=AFiCOvfJB/7wy7N+w6/DqHkAD+NEFeenQvnYFSTSDCll4vAGxeAHvCV7uG8BQhMZsd
         CEUxqBziA0YRVYrWgBppEDjDR4A/E/xtNnKEyb+Mfqp0/9TPbCY6UYYrien0b0f7RkG3
         ysP6qItgaL9XwAkJzdvlen8hYZTYnGzeJN6UgOkyXT/haNtF58isQ5aaFxW/1HvT7iK0
         9Pcfh+k8k13ILnof1LrSUcAtiWCNzzQKrzbGoWehGAAJJ/zzJTA6cHBKsrrAIu15q/sa
         rUOGm/yTQMxcvJWMK/aOaPmHL2rjlIyQo2Sx6G78CLxxzTk2ZlyY0pqg5TfqsIIryDT1
         nanA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=Wx2FSySdXCCj1GglNglntKesWenbaaVZ3P/LrZLNrFw=;
        b=zzD+m9uri9ewjymR8qtWNbzaEsCWunWYKzIbVLYDDmWE6DLwOmoaP2cBnq6V327Z24
         kQl2RraVuNZrp2DGOw9Se17Uf98zeLk2IUQ1PeHEnMg5M3ivNvBEKGweyE66H+vQIlvr
         TShKrvIeI0oXq9Mwi0DLLTVCBuLoywu/eWGZIxPJqZK80/ZTeDp63ndoO+LaOC5sQdGy
         6w6ua1bQoDWGQ206apsmAvQUU3E2wRzMFcahElzr/mqDpXvjGUORn8dPNMU2/smtAV1L
         nI4scdXk3BfcbX9/mHuXnV0qOsIUV+NzhUJP5fhOheU8XOnWPexd1HzZeaj537iC7eBQ
         jttw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=Wx2FSySdXCCj1GglNglntKesWenbaaVZ3P/LrZLNrFw=;
        b=FNtJgr1/usWXenpn0YkdY6R/eDMfOlAIFfEPza/N1NycZswq32a+5TMxB7QPwNoN7O
         tZ6srQZw7y2KndPI/cyha+kfnWz/8WMvR3YUrDTGWi2zx83kvZBDMgbhlqr78A1PPGmr
         Y557bIhXTHsTDPadLohqINviPa4x5kYXWaH8w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=Wx2FSySdXCCj1GglNglntKesWenbaaVZ3P/LrZLNrFw=;
        b=CP2wkjrG0RIt1WDPwwOiFqepRBReAdgEmEha1ayTt2cdnuA0ZhmwmTtJKCo9FI4dsW
         seyHmaKTS/wvVyO0YBgjRs0rpS+jWKE+VTglnXijeaFhThNJ+fG6M/okjBkURUbu0Gby
         VvuuO8/fnDMlHr1gl7C7c/fPDKAyppjKG0mozyga2zLa7MBQ5JP+XIyBSxDSHpDSnAaL
         7QBMCghfdiZClxJbRavG31kR4EGQWH8RBiVJcMII/zlR2A0DNCswBUDPnEqvaAeZVFI1
         4o7WP7y5kXBFmlDD7r552XQSOdMMMi/YhWyB9I4UeYnfd/cNYd6EI/AVOwg9CJ5aiaj3
         ECRA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo3RjY7bVxaYdx2XvR0+57XS5CLSb4jsKaPCjliRkLEFgM8TaE8q
	SUy8tajJzC6zTimX+EvTuHb3Zw==
X-Google-Smtp-Source: AA6agR6pHohnN1xyeA2pKgmmuWQ5XK6kMQV1mKKQ+axhXGnCHFNbLy9AUb0aJddPkYE9EWJtIMj9Lw==
X-Received: by 2002:a17:90b:3ecd:b0:1fe:2c8e:acd9 with SMTP id rm13-20020a17090b3ecd00b001fe2c8eacd9mr28149802pjb.141.1662518029562;
        Tue, 06 Sep 2022 19:33:49 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:51:0:b0:430:622d:4e7b with SMTP id 78-20020a630051000000b00430622d4e7bls7590690pga.9.-pod-prod-gmail;
 Tue, 06 Sep 2022 19:33:48 -0700 (PDT)
X-Received: by 2002:a63:d745:0:b0:429:d263:615d with SMTP id w5-20020a63d745000000b00429d263615dmr1442517pgi.579.1662518028830;
        Tue, 06 Sep 2022 19:33:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662518028; cv=none;
        d=google.com; s=arc-20160816;
        b=kJMBv0gVewtkuui/c1TFIAxNoYROYVELRKanM6Pax8inM9bExMJ6XohESQEvz1hg1S
         TNKwrRiDeoIWb/9GEoazCJ9mBLLbolRAHuzuriq3z5QCs5LQr5rfta0GsBS8a6V57ebn
         huVfgUgAfRSZtMpKcI7jM1awjBGmgQvRddlWonPtur26vFSaVvKdz91WR9+Wcf5mHWtq
         n2a/u7PSk3OXTiNGYet1J9w1WtlWoDC3t7hpBMj+5+GivJLtLzHM2V/Q+cDwVWRljPzk
         tIbXmzzs1xEHOkha7H4QgEP6OHb0iHpdHu4zsoUOIqApSEBnhmL+id67mkBXbIMA0/yd
         +PbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=5LGSuhZSBtcqL0EkwgmqvI22jt+waJ1/gz75oDEm+OI=;
        b=WAsuCmMNmtVupuj4n81ACj4xGlpBdgak0cbmEJX0mqyddme9BFvOOlyhnkoBsZgRvA
         eBOPpGsxx6A5ZL57x+LTficKFIIgoGkaSedE652FJKJ0CLJMDcOxQsXtiJCNV2b5pb/z
         xEFX+Rs0XbPaXdVhXhOLAtePgc1/s4AYwRU+GcQm0UPQObHafrBkAhcCh/BRQ+3xe9ZJ
         T+Hnts1A7mKRuD/W9quPqCK5qfYeW2IwwUhNlRPHGxM5fC+6nRWbb/nnsLVvKjeGRaY4
         QRM+z7kyUp79ngQnki4H5CANIe3BqZypCkEaO1F+jIjmGKjJq75SfdkKFcaXPX2UYQ8C
         KMHQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id a128-20020a624d86000000b005364d3b5482si3532607pfb.99.2022.09.06.19.33.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Sep 2022 19:33:48 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 57a867216f7b49b8bc9cb45b0af0cfdc-20220907
X-CPASD-INFO: 995a7211b962484880365c94578bde9b@golvgWRkX2GOWXh-g3t_clhhY2Zlj1m
	Dd3FYkpKVZYKVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3iHtvgWlgYQ==
X-CLOUD-ID: 995a7211b962484880365c94578bde9b
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:208.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:150.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:2.0,SPC:0,SIG:-
	5,AUF:15,DUF:4212,ACD:72,DCD:72,SL:0,EISP:0,AG:0,CFC:0.176,CFSR:0.168,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 57a867216f7b49b8bc9cb45b0af0cfdc-20220907
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: 57a867216f7b49b8bc9cb45b0af0cfdc-20220907
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1559616718; Wed, 07 Sep 2022 10:34:12 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATH v1 2/3] usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS
Date: Wed,  7 Sep 2022 10:34:11 +0800
Message-Id: <1662518051-17831-1-git-send-email-zenghongling@kylinos.cn>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1662518051-17831-1-git-send-email-zenghongling%40kylinos.cn.
