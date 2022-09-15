Return-Path: <usb-storage+bncBC6MZUGU7YMBB55FRKMQMGQE7M7SNOA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x45.google.com (mail-oa1-x45.google.com [IPv6:2001:4860:4864:20::45])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F495B92C5
	for <lists+usb-storage@lfdr.de>; Thu, 15 Sep 2022 04:50:38 +0200 (CEST)
Received: by mail-oa1-x45.google.com with SMTP id 586e51a60fabf-11c68f9ddd4sf8572875fac.22
        for <lists+usb-storage@lfdr.de>; Wed, 14 Sep 2022 19:50:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663210231; cv=pass;
        d=google.com; s=arc-20160816;
        b=MrnOL5sdbXVoJQBHnixrhRiCrSecyWY4rWJFmmLD45/bFwtKmbQP9rdCRPSW1GrO9h
         zvMDZhjD4eAwTFAZ2Nghs5+CuECe62BdsLikJfcz9PJW7nMH41ZJRUQG4E7+AaCS8QgS
         DENh1bysLQpF8ZfXS/Q3uqRCHaUMhCbH1ED0aWSdFkNUQDocIloBs7r9vHTiVX9byvQH
         xfzbQcDyNhPsmkEAzRNMOGlTuqhQCpVqyFx4cbTgqhzvHp1EVjwBr74gGh0Dtm/XzJWL
         lLHqmUwJe4BV3sdT+Rh8NC7Vw4menjTy4uB319KrmfSilCqDtnMva1UeNyAPEhJMHcFW
         e+9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=099i17+tdRFQbarmcb59iWLFdLaqAiwMHbTvrMRSFVI=;
        b=msdBoQmRdkAy+IhIlttncDrgaIHUIy2B4AHUle+IPIx+pG03YuIEz4cqVINZKAOP0g
         05za5y4xp+l6jjsABzq0NWJ0FrL7cem2D4W3BM5h9R1+dAuN1eu9U9vz7sRWZ6kwZ/bx
         A70/a82W+qhocM96XcA96hSkaeJVl2RQDvUfAq6A8WYMTiFXB+6eZ0AlGchIwf53qh1/
         KIhFTEbnqByi0FFrv/50+ucEGvsgiNU7uWiJbPtqML2zyTTyeMvFruvO2jGbmbl2kVrq
         ZvPGfEUGYUtltxFUABDj6ntqfgYm2POgQO6dHM2n+qXIK9pAMlAWThyH8mEtp54TkCyW
         XAuA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=099i17+tdRFQbarmcb59iWLFdLaqAiwMHbTvrMRSFVI=;
        b=JXiMMQYQw28lFYyMl8oWdh2BopU3slhBgT8CG4JiEKxWALUxbqjp6H3z4+Hu0BUV1i
         QBx9gg0umj73efunD827yLC13K9EzdF6bmjn0RJVbjD4KpSukTfA0/TkUqbe/zApK5gX
         /DjmBgUCNqHq1o34xT18wE2W0nqGS5JtuNjzY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=099i17+tdRFQbarmcb59iWLFdLaqAiwMHbTvrMRSFVI=;
        b=GzUDGCHjg9zNtK24LuLoaVA8iScje/3MxIaRz+jfTJnVNiEqOHz0ghGI6QBMErvr0r
         /CbQmXS4JjOwX5XmNwzERaGy0cdsri/ZDBLsLt3p4tFdKUR6XKWMXrcIzpIxUl/MEe4C
         lP8wvpXPdjDnZYX2PJ5+CIfbFGDFQn5zuoKW0V50CcNIUoarPzAMEG0aexFYws7hz0EH
         Wy2EVfVNM+KMkV95j7sGFpNDkt3odSvX2C2rYGsUnJk9h5LVadqkdpjvnMr5o7B59mBI
         NDeyCucsNh7JKQksau9j0Z4eYgMmSkkDbb4jdu/ZuJRCOSzp+etHGmhIpLXrgQQDCQrW
         o0JQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0ZbU5yUNiwS0NE9rrhcHBJJkOVyHsMm+YPwE5z/WfzT1H8Hb8I
	a8/AxHD4rfF4er9SSdjgFuIoBg==
X-Google-Smtp-Source: AA6agR6GR1DrLm4zL5wvRFZ8E5hchz/r0jFybJbMbZKDhXKp/0QKm/OLDV2K7tSmiOVFYkgFady4bA==
X-Received: by 2002:a05:6870:51ca:b0:116:afaf:429e with SMTP id b10-20020a05687051ca00b00116afaf429emr3980930oaj.253.1663210231528;
        Wed, 14 Sep 2022 19:50:31 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:3a2e:b0:11e:4e2a:2481 with SMTP id
 du46-20020a0568703a2e00b0011e4e2a2481ls7683745oab.4.-pod-prod-gmail; Wed, 14
 Sep 2022 19:50:31 -0700 (PDT)
X-Received: by 2002:a05:6870:8289:b0:127:d302:66f8 with SMTP id q9-20020a056870828900b00127d30266f8mr4003187oae.16.1663210231022;
        Wed, 14 Sep 2022 19:50:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1663210231; cv=none;
        d=google.com; s=arc-20160816;
        b=XC3Ffrp2Lj4COBW6GWyy11j5rdbqISBHWOnhA4H+YBkzWO2IxyW1WsvGQinwbGRVpG
         lWOC73KhyON9C5iIz7D7cykzsTC7EeBCtL+XGxQHwYpVBqzizHJVIu+dr2J2f4ZTWH4M
         NtM785MYsPsusucjg+b9hnx6QG2R1quY+le5+G5S7fZooAdnas7jbopv5p1/TXf8tT8N
         UfSa3AfpZlBtHctaEdMyu4jYbsfvQ1pVm4KcjYlsslCxuTjY+aX8La+K/bY2dm+rsCg7
         amChQF4yxAVGQ3en/MRlXDsxwLYMsxF0AzFgV9/V4o8aM7NAPobguVda5uM9aeYddBmE
         zfpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=539JNAg0aFyros3mkc9wdE4BWWZgUKnM56twUK3xTX0=;
        b=jEocJdxqpFk2VaowKmGWXYmPd64N7fABlbxjnQTXR6q2o7rPGzLwue3o35jj9JboMm
         aOHyByaXJaimNg15DmA8GxaayBopbSOXITmY/hRmmtLNuaqcjASgLGJczINuuu4Oh5VH
         baLlUCjYJSIxO2aj8G9anhKjDRReiOtxh+FMDFsiLawecJw0He6/cDqDqmyiM81E58Jg
         3XdYs7eQrNLI29btK/8292RF8QzdkihBYJdoKclChJi5WSZP8jT+ichm7pscLf306r8q
         3h/i8MfUNKN7dEbDCvwyTvz1RsmGfCuMEJTjR+DJ4Zfkq6D7MNkYtqwrkbYqCm3+wx2F
         6nEA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id by13-20020a056830608d00b006571d318f57si4970823otb.178.2022.09.14.19.50.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2022 19:50:31 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: e36e1880fa4b4a9cb687962897a4b488-20220915
X-CPASD-INFO: 7479b59443924d7fa17bea32fc8e3827@gIRxWY9nZ2RgU3t-g6eCoIFiZ5KWjVO
	BqJ1YlWFoXleVhH5xTV5uYFV9fWtVYV9dYVR6eGxQY2BgZFJ4i3-XblBgXoZgUZB3hnZxWZRjaQ==
X-CLOUD-ID: 7479b59443924d7fa17bea32fc8e3827
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:1.0,CUTS:169.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:2.0,SPC:0,SIG:-
	5,AUF:35,DUF:4807,ACD:80,DCD:80,SL:0,EISP:0,AG:0,CFC:0.21,CFSR:0.115,UAT:0,RA
	F:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,E
	AF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: e36e1880fa4b4a9cb687962897a4b488-20220915
X-CPASD-BLOCK: 1001
X-CPASD-STAGE: 1
X-UUID: e36e1880fa4b4a9cb687962897a4b488-20220915
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1096474763; Thu, 15 Sep 2022 10:49:59 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v6 2/3] usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS
Date: Thu, 15 Sep 2022 10:49:48 +0800
Message-Id: <1663210188-5485-1-git-send-email-zenghongling@kylinos.cn>
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

Change for v3
 -Add acked-by

Change for v4
 -Fix version error

Change for v5
 -change version

Change for v6
 -Change the git message for patch 3
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1663210188-5485-1-git-send-email-zenghongling%40kylinos.cn.
