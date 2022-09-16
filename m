Return-Path: <usb-storage+bncBC6MZUGU7YMBBKFSR6MQMGQEKAPQCUQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x246.google.com (mail-oi1-x246.google.com [IPv6:2607:f8b0:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFEC5BA46E
	for <lists+usb-storage@lfdr.de>; Fri, 16 Sep 2022 04:02:18 +0200 (CEST)
Received: by mail-oi1-x246.google.com with SMTP id bk6-20020a0568081a0600b0034feb47cb3esf1698667oib.9
        for <lists+usb-storage@lfdr.de>; Thu, 15 Sep 2022 19:02:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663293736; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yi8e2mW+rPns748BYvFi+mHxkfVa2gaVZztoRDiZ2XvikbnH1v53NLDJKhPKW7Xi2e
         qMUR9bvnZo+ZPimqtolFB1cswQQXiUqUnFFXCBxexxr9qYTI4tfn7DUL6fWg5wh7JDN/
         n7mOSbC+pt6x9A03PH2hCTR3D6xDSkH/KYClS7cZ4A7kIQK9L0cYpN3dWum3QO/GXlO7
         C33RX4u309x7LkwCQBuMGG2EOo53ixYI6Pjs5dQGz864IDiqr9tO+hIqmQTTxMb2Chfn
         65NFjbcJU26+o0rB6E4EDPPsYY0pVFHhogSn9gvatXNCAR6XuFHRfU87UMi5tRFJHbLS
         skBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=5Da6p//kJcXUthDvV2hhoBTa8I5bc13UpjJ1WSfAW3M=;
        b=FMHfel6Y6E1qAJFXgnKsNxvKzBvhJSMmeWnU4fq7QAx1PnCqlxQywdcyFe0/mVWBgn
         LjPkcu8MVwHL8JlIwRoZrtlivbYHPWzg2mg0j43hbzZhCx9evfy/4N3YWSxszMVqBA0q
         Xvky+lGCBFVrfQog2JDS4MBDhSDLfyaVsZ+CHXqeRqRh9aTct1kZOBFvzv9wEzQu5c28
         4dZQAP95O6Rs2RGJ08018DI1ZGvYydvBlZ8BNurKHzludBZIYO8A29In0zBFBgyhgjtf
         L9UzOf2DcbM8YKFMHGKsy5B2DYIwbcTsaFeR3M8Fl7ApmX1k6DvOL4vYBI0fHyn/3DjY
         HzjA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=5Da6p//kJcXUthDvV2hhoBTa8I5bc13UpjJ1WSfAW3M=;
        b=akAmzRGc0f85yWcd1d+DVtRrub95NBpBEaCnzq9hWLuPn5fpLDkSGVWNjt1r+uStPp
         ruJFA+1wuL8bWWMX0Jvx5t9hXKzflFu+tDOOP2OR5XKy4FyTMMx2HsN8gsr59ihH9SFs
         iqcBHlssRD7qqQyz7E9L1GZnCOPgHmtqz4iQI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=5Da6p//kJcXUthDvV2hhoBTa8I5bc13UpjJ1WSfAW3M=;
        b=D/x8zy2r0TNzqiW/fIN6JPNHS3HHd5Ks+47IoPb0NVgo3LLGHd8byhBIhBh3xFZC8s
         2X3PvrqcvRFrF+4ETKQ2WSrXAQ3zGKa/E+Yhbbk2H5MbqbhWuBTNcnvwV4T8CoyyioHW
         RAfZWWtleua7ZRNIlJmgD3+0hc7VwZS0p/8VK0RX3vjSsQ2WeS+cofuKN/vuhNtslMA1
         LRV8ne3ue31QnZvVZp+lSqtIJZuGR3AIaHUl3lcYWpNPJ8Ry7jOKde9j7M/g0uCHAVlj
         32KTrej7uZ99OjYDTRUGnRbavQiF2khF7IHHfcRUtiQ3jfLNzb3o2bGAiJYsGiSjkGQI
         KIuw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf27KM2YI+wGF1w0PRBGzDesg9YA9cFgOJ2kErXs+DQ0IF1yWpha
	kA5dCSt7uSSBi2eDf+QV2B8E2g==
X-Google-Smtp-Source: AMsMyM7TVY6S8ynlLMef6YesnbSyF7vnnbSRALrLDNSEAT3q2Roj5VpUAPce5amS3NZVewWLWnOatA==
X-Received: by 2002:a9d:5881:0:b0:656:34b8:9d36 with SMTP id x1-20020a9d5881000000b0065634b89d36mr1243715otg.79.1663293736773;
        Thu, 15 Sep 2022 19:02:16 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:e142:b0:11e:e2d7:74d7 with SMTP id
 z2-20020a056870e14200b0011ee2d774d7ls9182145oaa.1.-pod-prod-gmail; Thu, 15
 Sep 2022 19:02:16 -0700 (PDT)
X-Received: by 2002:a05:6870:fb87:b0:126:2e4f:cf4d with SMTP id kv7-20020a056870fb8700b001262e4fcf4dmr7593752oab.240.1663293736308;
        Thu, 15 Sep 2022 19:02:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1663293736; cv=none;
        d=google.com; s=arc-20160816;
        b=pLW33U4KM2l5Dr0rLgggT7BP9tp1rGX92NON4fb2Hm2JltyBed8/1mTVijq+Me3xUK
         TsvKuFbw9HqKSPl+BIvI2RsGG64WsHqbnHsNZf6jdOuDCeF3bUn+eXr2DfAbCMpPsebk
         DWWYtEWugBHKKN+W+MtikgBOqv/Upmw/bmUFjssvfCGYFMBLUEwBtHQwpXEfihkgalwg
         e+fXKbr5SMKJBw7wBNGXHOOxTOZLCQHGONpdNEGlfaUlno4AR1vic1prYGjBnF7hokxu
         yUl+SasGedKzWdzCFcV5aR10CMmaboih9zj4aoLWhA5GaZdtXgEs0wmwjb57eL4J/9RN
         bZZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=5RvpsK/iIOl0Rcpxc6pGt+xfsxmcfvALiC8N3Mfha8A=;
        b=JcV9CQ+95uPbaaoCsri/54lqPLvp9fYUkWpc1mlACES7E4g3A3m02f16EP0A4t32ou
         eCiLb+VvKfTJQJHVTztIpn0jG2C2EjrmEez/5PQh6LeIr4LnYU5t7mwlWsmNmg1O7XOD
         xmR1X/R1Po8B4sMpKBSjIk9iiQOCMBmZbpKNb1kPyPgTEwUDl1q+MA75xJ0FmvHN2Cb4
         tTyqS8Iw4PFVDH32vmchrZcGoKO/6mSF71hgk/DHwQr3aQm/XHrYxpVCl9Txmhvg074t
         FYI63ymxueFcBqU7CMR6t24U8Fxj6YCQgGYQczAh4bmgPmahJZK6qSh7ECuWGU/A1ay9
         3t3A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id r1-20020acaa801000000b003425e35791dsi7873348oie.53.2022.09.15.19.02.15
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2022 19:02:16 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 5d7eb89532564a679720e4936c73cbfd-20220916
X-CPASD-INFO: 27fd9ddf21174ed4804db533d68e21fd@e4eghGaWkpZeUXODg6ivblhhZJSSYVO
	CpnBYlWBhkoSVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3gXmghGmSlA==
X-CLOUD-ID: 27fd9ddf21174ed4804db533d68e21fd
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:188.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:0.0,SPC:0,SIG:-
	5,AUF:39,DUF:4914,ACD:81,DCD:81,SL:0,EISP:0,AG:0,CFC:0.442,CFSR:0.055,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 5d7eb89532564a679720e4936c73cbfd-20220916
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: 5d7eb89532564a679720e4936c73cbfd-20220916
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1957035735; Fri, 16 Sep 2022 10:02:48 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v7 3/3] uas: ignore UAS for Thinkplus chips
Date: Fri, 16 Sep 2022 10:02:37 +0800
Message-Id: <1663293757-20106-1-git-send-email-zenghongling@kylinos.cn>
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

Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
---
Change for v1
 -Change the email real name and the code worng place.

Change for v2
 -Change spelling error.

Change for v3
 -Add acked-by

Change for v4
 -Fix version error

Change for v5
 -Sorry,Make a mistake for tag information about acked by of the third 
  patch and fixed.

Change for v6
 -Add description for the third patch. 

Change for v7
 -Upate patch 2
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1663293757-20106-1-git-send-email-zenghongling%40kylinos.cn.
