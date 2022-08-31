Return-Path: <usb-storage+bncBCS25756ZQFBBQ7XXKMAMGQEWGS2OGY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DB25A736F
	for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 03:39:16 +0200 (CEST)
Received: by mail-pl1-x647.google.com with SMTP id y9-20020a17090322c900b00174c881abaesf4699662plg.6
        for <lists+usb-storage@lfdr.de>; Tue, 30 Aug 2022 18:39:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661909955; cv=pass;
        d=google.com; s=arc-20160816;
        b=sPXBDNsATclEg3j0AwIVN0K1BYcWN1FgN2JY3njwrrdJXUL2fVuV1yxMl4q+2O3e0P
         n+gQyFQVkZmaSUCb7asEJsg4A+D4v6X760W5t0O3WnwID316OVdqCDkOoqDyYJF3iB+8
         P1sTh/VkwmHFwrkLp2LPsgRpGBhap4Pls80naBrAO8EzDftiIni+Ad3w86T3AX9v02yU
         tQMrlnRLrGifp7cQ5RXjlk7+lWCgWKjVdQAX20ZM9UV0DaXinRfNIq3i1kr41Ppr7PhF
         zpK+bDYyrclhPM/hhTWZ/2YouvqA2GJTPPkyZJuFSnU2+rP8FiZei6ULjoGU6UZnbP+a
         L8UA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=ve+a8/A4Qd9C1+Jd9bFe90Ca1ZuwDvUHHek2ivVrsRQ=;
        b=PLWf0460NPNkpnLexbXBWgV5CGcJQPny7HHOvHzrA7/uNy88vTk2N/+mbI0aWGLi3/
         tAfwjfoVC7FSOogLBdxXuJiabOTmOyMRI54/XkO5OrZ+aTJIKSx6JKZnAlq3awVmscEy
         6+OkeHMJQ6xgWOCl76EDEzgqoGWNzqnaegopWqR/yt9wHoI9HCibRWz+cbdh3KFu04P+
         hC12ndJ2eq8K+07y57NhmzUYXTy0w90WLZEh4OI66ucpfKgT1a7a/MtLMzpEMN0RIETx
         2Vk+ID8lJ/TUKWcxAEHjf1nAYSXgdIdMfIw1gyDZPa0iay5vlrrpenia0EooRD8Vf5YH
         Swlg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc;
        bh=ve+a8/A4Qd9C1+Jd9bFe90Ca1ZuwDvUHHek2ivVrsRQ=;
        b=bYzHwIJFK6REJl3pXhkKMyG3sfL1CvJvQt8Y/Cq1duBvpcvQMaijNdl8R4K4Jll/VC
         qU+FKWaKxU/lbo8LzBAWz4sd9FpQO4KdQ4P4UR8tFjTU74WyCmjX1593qyXOMJbojBPt
         tG8N+DyPKz74kqD9XhbYfuBn11WnWUPN8WJjM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc;
        bh=ve+a8/A4Qd9C1+Jd9bFe90Ca1ZuwDvUHHek2ivVrsRQ=;
        b=xqEiYntqtI8myHNX8B2D7T8iPvnDQliWK324FtWUlADFq07P0EfmJM7t+hyiokYvQo
         y25AZbqUIGtjK6CPc549Vp69jim6IM6XsCE4oqF2I4S8W3+V6C5+SAmTklbrfwYUSDKE
         HXm3hl844BRfmdojZ5mtcIPJHrq+iPcJXR5jNdt7WuuHQl8jz3AOD8grDQb6WBxV9OEu
         HhD2yyBajv9x7OtKGzUOpmw7x8X9iaW64eWKF2JWlR79fRz6m6bt/4o+Xiv4EKWvkay+
         Jr9fayFLlyLiSZCfHo79cS0xTYLcqAYNrwCX4m4g3lBfd9HEnC3yBGREozF7A/LYPjpp
         Y7HQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo13x8gXbW8BJJWGumYBx93HzehbMTZO2RB8lgTZ2WjDWp8/X3MY
	h3jJaauvjsgQGJ1ynDfEGrT2XQ==
X-Google-Smtp-Source: AA6agR7pgdOwajjefoCLTu6ByWyQCSWYvd9XoOGl5BgvgF+7Lm8aKJw2/TXjBvjkHkMkMWJhoek3sA==
X-Received: by 2002:a17:90a:f0cc:b0:1fb:b9a9:b57b with SMTP id fa12-20020a17090af0cc00b001fbb9a9b57bmr882333pjb.2.1661909955418;
        Tue, 30 Aug 2022 18:39:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:7303:b0:1f3:5f7e:7a34 with SMTP id
 m3-20020a17090a730300b001f35f7e7a34ls397081pjk.2.-pod-control-gmail; Tue, 30
 Aug 2022 18:39:14 -0700 (PDT)
X-Received: by 2002:a17:902:e741:b0:175:2ffe:9280 with SMTP id p1-20020a170902e74100b001752ffe9280mr3939158plf.153.1661909954546;
        Tue, 30 Aug 2022 18:39:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661909954; cv=none;
        d=google.com; s=arc-20160816;
        b=LTfgGHwz4eyomrd1UuSBrtAQpCf+mH7oC3EmaeI/7IWwYsSB4dVPAof/sdSfgp1g/+
         adqJNYVWFByNqH/TlIYEVV5W5mnCe4WEoBASM418qzOfI6/T44mCaG83JKAHcq8qxaoU
         GezwnN6yzu6oeXiTnuwwaOBY6/Hp4Fv1S/oyvAOg4j2Xj6GeYXinTIJpaJvrpJ6g5QLD
         0Lvzl1uv1tb5f+uGdAegmc0ICmUjcm8Z4LdLmNoumlOZp1crKzA4RtmXIPBlRmWCTzhU
         2wgUW2h6RScuXUwPFMkqadm+n98DdFlerM+1lf3sSSYOwZccnnneImauMFDGvvETxG8N
         iYMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=0GdUEL5Xj2pDXKBE7EwvYi9k8kXG1VT0WRr7/eJWhXw=;
        b=qLwYMuExE1iMc0c/OZ2146iRZg51Q/894W2ozqjQ0udrBDRFxhbPEvXAHhJsg1VBZ/
         1wsQXYHZJqefjW8DyzlV0HHJzb4LMFNW7EkZr+i5PuAYwwljI4IFYi1s/bJ3EhrS+LLc
         6xmWh770HKlIPYSI8StktIdHpVHpgC1bO4xlmEChPPV/i0Eo9z/QaQo+JETEc8wyp+/+
         GQZl2ebLomyqwb42vk28+r/xETTqBQR4z9xwcD++mNA2Bf/kjPi/+uQ6Qf5Kb0MMp+kw
         qBijfXyIisVrRhbPtLjW6yIHW+fzkftUGtEInQmaYGKsX6DKQ92GEYFAQoT8O58OFJB8
         dI7w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id i38-20020a631326000000b0042aff6de2d3si3679304pgl.179.2022.08.30.18.39.13
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Aug 2022 18:39:14 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 48931f7e6a7644a582433bdf22068339-20220831
X-CPASD-INFO: e8473d24bcb742888663e70e3d7a5da8@rohuV2CWYGSOg6SDg3WDclhnZmOVY1C
	0dZ5XkWOUjViVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3tHpuV2OSYg==
X-CLOUD-ID: e8473d24bcb742888663e70e3d7a5da8
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:173.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:128.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:0.0,SPC:0,SIG:-
	5,AUF:3,DUF:3603,ACD:65,DCD:65,SL:0,EISP:0,AG:0,CFC:0.449,CFSR:0.05,UAT:0,RAF
	:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,EA
	F:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 48931f7e6a7644a582433bdf22068339-20220831
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: 48931f7e6a7644a582433bdf22068339-20220831
X-User: huxiaoying@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <huxiaoying@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 635060493; Wed, 31 Aug 2022 09:39:28 +0800
From: Hu Xiaoying <huxiaoying@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: linux-kernel@vger.kernel.org,
	Hu Xiaoying <huxiaoying@kylinos.cn>
Subject: [usb-storage] [PATCH v4] usb: Improves USB2.0 write performance.
Date: Wed, 31 Aug 2022 09:39:03 +0800
Message-Id: <20220831013903.1117082-1-huxiaoying@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: huxiaoying@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 124.126.103.232 is neither permitted nor denied by domain of
 huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
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

USB external storage device(0x0b05:1932), use gnome-disk-utility tools
to test usb write  < 30MB/s.
if does not to load module of uas for this device, can increase the
write speed from 20MB/s to >40MB/s.

Signed-off-by: Hu Xiaoying <huxiaoying@kylinos.cn>
---
change for v4
 - Update two email addresses to be the same.
change for v3
 - Does not send html mail to the mailing lists.
 - Update patch, which sorted by vendor ID and product ID.
 - Modify discription, correct some english words.
change for v2
 - Update discription for patch.
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 4051c8cd0cd8..3925c7c67915 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -62,6 +62,13 @@ UNUSUAL_DEV(0x0984, 0x0301, 0x0128, 0x0128,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_IGNORE_UAS),
 
+/* Reported-by: Tom Hu <huxiaoying@gmail.com> */
+UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x9999,
+		"ASUS",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: David Webb <djw@noc.ac.uk> */
 UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
 		"Seagate",
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220831013903.1117082-1-huxiaoying%40kylinos.cn.
