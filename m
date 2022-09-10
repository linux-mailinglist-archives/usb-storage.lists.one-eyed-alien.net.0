Return-Path: <usb-storage+bncBC6MZUGU7YMBBEFH6CMAMGQECRAYLQQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 233095B4429
	for <lists+usb-storage@lfdr.de>; Sat, 10 Sep 2022 06:33:22 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id v65-20020a626144000000b0052f89472f54sf2089814pfb.11
        for <lists+usb-storage@lfdr.de>; Fri, 09 Sep 2022 21:33:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662784401; cv=pass;
        d=google.com; s=arc-20160816;
        b=eTFaMXWWmkYrUD7WCj5a4y+TImf5TmhB7JjeWHt0o3vOyjMxuA0y9luxX4qSVNUy5g
         N0e8uTSULw5eABzShPnbkTdq77btwaJ6Q1HYFAhybU5e6hW64Si01WQcLJjJ1mR3SEOu
         zkdB6PQorzyfVlnbP77pZ9SRscPs03z4grM6tl3N6qIxTOA1yC4V8C3QwiY39gRh5svr
         2ULpF2k7OJ8EadjbgwGt+lIRP53XGiXShHO9wCtZebmE7Fpl7cEvD8noa5Ur/zHQarMX
         YV9zpIvxjcSmx132iTf5p6pO/kFWAXFdPwTTDkhY0lDu4zPGbMpRoJzz3YlGyJ8gdJXn
         AV4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=jZqSCC3CAviezW6Mq7kg3rflL8/nqZaCwwPAPeEl74s=;
        b=LuNJEdXjhrQ9UwYpOalQsBju1udWCIP0GltFfh81x2o9iYgsUStSaYz5r9s214rOMm
         3hLF5eQBvAPRw1gHjqwiifosdJQDW+8QtTKutPFcN/f6A0Tina50EgXglsCpiQAKw2Eq
         hLHRUrO48w/cxtzLdzqJ4DMaKt3FP6oexiM0zhHsLbUzz18ifr4sSX6ee8Rd5n1rPXgR
         5sO81GVc0aFG3+0UNh4OMZ1Wv+xbjzJf1COxCBlG/7yXQ8sggWWhNX2fLAND1ocRQZRm
         eC8aK25ZOoFC6ZOlOjwYLnF3ajEMNmzcUhp4sL34WfPmkVl1T9XVHkwpktzjcuE+GxXJ
         7gcg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=jZqSCC3CAviezW6Mq7kg3rflL8/nqZaCwwPAPeEl74s=;
        b=S6djITmPfATSvbw4TP7GPjc5uH2P6VOEy9CV5CessquydK6U3L0SRIyRKPTi2wkek/
         UamPsR8sKFNWynuKW4JrRRAjb69rT14RB4MDJO6MGWOa9up4aU06GvITWMG3ARUnhlq2
         sdgGefwbyrAtBYcXypL/b2jT/dlSmA9bIYYYM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=jZqSCC3CAviezW6Mq7kg3rflL8/nqZaCwwPAPeEl74s=;
        b=korIJI+8mWtkudZkGfNmlNCV/2IBksy9eVphO248+fSMgHoVDwYt19+H+rn1rri5Nq
         ragfzf8Bj84nRirEiNOWjMbP0eJdsmFccVLrX7c9g7FWT3oHTulCpU6G/HsU7x7wd+ma
         QzmkLgI2drGPnK92rcgSfBSCzWxlwUE7KJ8Ob5++YBR9MS4U92PjA0U8qGagZePgEj+J
         JyIUESo2VBkwCq5B/gzMuL0M6s0G2+nWCjPzxf6gAT7eojm+NC0xBUl2KnNfzGScUl29
         SQqEZcgVzITahIuViw11MvWGe7Wf8BnaigYa77fDtEbQzQ1wN4zcG9enWYkoXo0Kq05N
         cTEA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2/efohKdkmNJfY9bryIKTnjrSV+/2clChAPvVBxaN8S0HH1Wpq
	/Z/TKCk7KAuBX873kl3keMlL+Q==
X-Google-Smtp-Source: AA6agR4x4y602epxi7b8lJNpH6QpKYlGq29yNQDRy99mnxHtgNI0/dag6PUz1rwHP7WNYsQ2/aWYdA==
X-Received: by 2002:a17:90b:1645:b0:1fe:b8d:307c with SMTP id il5-20020a17090b164500b001fe0b8d307cmr13033894pjb.185.1662784400628;
        Fri, 09 Sep 2022 21:33:20 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:1881:b0:537:e48b:5468 with SMTP id
 x1-20020a056a00188100b00537e48b5468ls3312374pfh.11.-pod-prod-gmail; Fri, 09
 Sep 2022 21:33:20 -0700 (PDT)
X-Received: by 2002:a05:6a00:14d1:b0:53a:bbad:9c9b with SMTP id w17-20020a056a0014d100b0053abbad9c9bmr17220315pfu.64.1662784399812;
        Fri, 09 Sep 2022 21:33:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662784399; cv=none;
        d=google.com; s=arc-20160816;
        b=LaTT+P4tlUMQAfLyfYL1PWkEq5w7GGCq2kI5VqpCU6tACC/gDZS9S/+lVYAxYREsgU
         BMKFZ9Kihb+YwziiCi2ayvQjZgerwVZJHgWHUfUbwWrooui261k4ki6spdUsl+BEzanH
         AO7pO4D4j2eKnz/iEHjHJS56vP216GegTdNe2uTmWmuWNHjy2IGdHtAaw+in2wIfqM0H
         2GI0Grx29fEziZ30iPjO6MQ/MBaDqZ+fa70bkk9BqtRzqgLFT6MY7nng0ZB9HnURtlg0
         LMVwgVzPk18j84RfyB0fYHa7YXTJFiS8FqCvtN4nA5mmnAsKc4H82509eBi2RHvH2KT1
         DR0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=H0JtS0YArX/eLiZ1WOrfg7HC2UO2ykN+aTMU17WF6Ag=;
        b=Vilrxl59jZR0dQ9Lm2COkRKjEsJZyN5fdA5669bhBDLAxbiVzOs9vjyvAJq1gyfgvH
         vFnqF7SJLVjiNPSPDGuTjRPnqmltwWZcKIseBS3PJSdkoaK/IzkD9Fq4y3AHVHZtLk37
         WVkdJoh/LG0IErXah/76oInpXzKHbsBoC4Maun8sxc8dXPzEuznKfxooYxfydtzUGCqx
         PmoJph+aG2W6gXHSGqRzIqsxqjz6aWavdIYe0sEXhoWwUhwgfi0R1j+0JEU8NWw99SbF
         lZlYID6IPqvCKw0xrvVhnms1K/MnDPKfCeFQCx6UZgUenP1fAPQjf4XJtW4ge9bjdfkf
         fzuA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id oc12-20020a17090b1c0c00b002024f3f1f8bsi2666014pjb.70.2022.09.09.21.33.19
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Sep 2022 21:33:19 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: cf453cfe1a59409fb8d042f1acc5cbce-20220910
X-CPASD-INFO: b7afecb6d5db4f07b133016e0cdd9ce7@q4ebhpKVkGaQVaaug6l7cYJiY2NgXVa
	0cp2ElGeTkVeVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3sXmbhpWRkg==
X-CLOUD-ID: b7afecb6d5db4f07b133016e0cdd9ce7
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:135.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:0.0,SPC:0,SIG:-
	5,AUF:34,DUF:4510,ACD:75,DCD:75,SL:0,EISP:0,AG:0,CFC:0.327,CFSR:0.079,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: cf453cfe1a59409fb8d042f1acc5cbce-20220910
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: cf453cfe1a59409fb8d042f1acc5cbce-20220910
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 2007381678; Sat, 10 Sep 2022 12:33:45 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v5 3/3] uas: ignore UAS for Thinkplus chips
Date: Sat, 10 Sep 2022 12:33:40 +0800
Message-Id: <1662784420-24103-1-git-send-email-zenghongling@kylinos.cn>
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

The UAS mode of Thinkplus is reported to fail to work on
several platforms with the following error message:

[   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled
               endpoint or incorrect stream ring
[   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 00000000
               1b000000 05038000

Falling back to USB mass storage can solve this problem, so ignore UAS
function of this chip.

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
 -change version and fixed acked-by
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1662784420-24103-1-git-send-email-zenghongling%40kylinos.cn.
