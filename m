Return-Path: <usb-storage+bncBCS25756ZQFBBHUJYCMAMGQEVQ2YYGI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7AA5A8A2B
	for <lists+usb-storage@lfdr.de>; Thu,  1 Sep 2022 03:02:24 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id q8-20020a170902dac800b001753aa66955sf2902236plx.5
        for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 18:02:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661994142; cv=pass;
        d=google.com; s=arc-20160816;
        b=UE0vtCjXPxvaLkZmu3ro0gwM+oCMrroWp+yASVguupIdmoQ2KBWU+uBVaZGCjJFdzp
         ehLQyfGT9WYRTsyAYFJtazq8M26m6ht+PeufuHClfWOkyskfOZy8FpFcfbjrdEbeMur/
         HHlkdaSOMPqnV42Plx5QkI2RSJnItSXEPKOyKdobIGUg1ZZ+bCGfVYqD+rrCOM9abKMe
         ZDuy5jG/ZL1j/VPUuksp9S1230oSx8DEpLdU6dJMYS0J0/Uvd0umnnHsrV2Od90BwaKU
         Ad2pbBvgrfO3pjpMcu7U2uhXJv67crn7jw5LfNSazka4c0Tp+dEfgo6oYW2EvCng8i46
         v1DQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=r6urpWVXnb/rXcPBrdiLhGZVMtVvnkKDxEYnyfQhGr4=;
        b=H8XKEObTsy9TVVhdZJTzv6MspF8m/fUPw6aoObj1a4xfFhu8g+6CWAD+S9SEuOGVR5
         rmd3Z5QIcVAPxohbwIPCjFdBi55oAdwkUk4kGiHH03b/FpeX+aeVWK57OnK1yjrFQA95
         ClFpzA4i7phw8awdf+ye+Lqr+3QAsDZnli3osHnYn11w/2slebG5GhIfdcxBoUgXKGRF
         rwG2bWx77MylFeZPfVwvnN6BUZ5TM0rv8Ill0+Ju7xVg/rEIxpyhkkwEbkk6+wtDaskQ
         M5uTA4nbVnLEMFpY6WnaR+BnihJRAzZ6WbATTOwdDyajcPeT2D4wBGwV6HvnpIvYuTWV
         JX6A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc;
        bh=r6urpWVXnb/rXcPBrdiLhGZVMtVvnkKDxEYnyfQhGr4=;
        b=U/yVNbXBHnXEmnWjk+NNvVfKp7asnDDDP5B+0E9xZa3PEsPV52LdqDJn+Z/UIxvbtm
         Q1dS2JOEWsNyexuHhO2ag5SlJIdGwxx1PnyDYrZQRNZiVpCTS0cvmnKGPW7IVzEWLCzf
         JNjGaCFMlxdac9eQadu9wXcNfgF26uGnkYydU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc;
        bh=r6urpWVXnb/rXcPBrdiLhGZVMtVvnkKDxEYnyfQhGr4=;
        b=8FUhcb2/nuO7etv+UsQJYPY9RNF1AjidjT7isxRZzQkPvs8071QkSuPpjOpAOaHF+g
         Ws6JN6AOIDKFAQ/Y7Hd4ixjYkLGE+EufIR4DA6A1nJx0k+LWfhkIq7nDmM+vSgCgxYfB
         Pahcg6E8WOjE+4tL5yvUXNsfBIVgan3GIzZdaxNi2s/6uCbIm7s4q1Gowq6fseLQvJFz
         rYbWdRRW5BNAZmwFbXa/zTr+4ONIgbexmJxAsHC+oM1yiTqNlTo8bTv4T631Kg+mGD4F
         IQWdFPrNkWNVd2ryxBnOf+vy3/169ruKZomxFAow1WoPdvcEYUT4zddy6UjzkOWD5ZIT
         I7zw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo3HOLAYO+a5xyXkXS5Qa3B57haOqW1EOCS9BaZjBSvdexjlhpYN
	OMOR5SwezYS3plOL22rxJ15t0A==
X-Google-Smtp-Source: AA6agR5Ma+7Gj3hWj+Ei+y61dzgNq42FLEJo5PkjNQ2aHIM0aWyiJfuhNFse4RvhILctVFg5sQdtEw==
X-Received: by 2002:a17:902:6b88:b0:173:c1:691b with SMTP id p8-20020a1709026b8800b0017300c1691bmr28563058plk.18.1661994142414;
        Wed, 31 Aug 2022 18:02:22 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:4c86:b0:1f5:81e:89e1 with SMTP id
 my6-20020a17090b4c8600b001f5081e89e1ls379186pjb.1.-pod-prod-gmail; Wed, 31
 Aug 2022 18:02:21 -0700 (PDT)
X-Received: by 2002:a17:902:f101:b0:174:3c47:4ea8 with SMTP id e1-20020a170902f10100b001743c474ea8mr26890791plb.14.1661994141615;
        Wed, 31 Aug 2022 18:02:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661994141; cv=none;
        d=google.com; s=arc-20160816;
        b=QQFTv9kTtj1KnBdcFuUO3ws1vRtW+oS7ociXj4LS8KiUAZBbRdZ4MGCm6MKLjYzNdj
         rbg7w4oKERsvinjw8quQyMSxMT1dEzJBzAPwsa2y3sWYgoXnaFzC55C2OWDtGYQd1+cf
         Y09XXA3Q43hAt4LWGvdwr+DTPy3JAHdnSps/7Z3GyYWj0kfM6TyacsuK6jwf3VTKzdD9
         Oq0m1ZGzgi7nJ4Jz4a1gqfCTFxa4T69OsEVUqZA9zxoPBUh9ryRv8BBkLV5AYAAX0vBf
         vkeHIgc8jSN57OQcMiTEBQjZbNxCBYGaAMO2rT90lDcXduhQ945D51Z57WfmtU4+NRjT
         Atrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=FUVv2MsvFbko0BFJKLJcEer3eAJNjxkj6oBOn8atyDg=;
        b=wb7fV1Tihbf+AxMIkZTFn24zr9cjohxjsGt57zaZIOtwVgUhpq5mOJqbKoHPfxlhZk
         OvBGsGoRC/RGfBmrLPyZrdrvhFUU3elboXFV4snPNmmUzBaIKGzAkQQyUL/Za1x2NB4d
         /oa3hp+hLaGcQ6KIU7vR5v0IWYAutNB4LmYoyyLIx73t2WswM+cg9H9NGy2M4eU67v39
         /VMdn7zcn0ulATaZQk3Pxc19zqCFE0D4fyKMO9I59wEVFF47nrXpTGJQA0yh3dr6Wxzl
         Thw9PcTFgScX8iVYy5qrdQ+V3F6rxbD2eBFzEl8Fe3GN0JRRrnxRCNs3tNDzZf1BAGk5
         u5lg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id 137-20020a63028f000000b004302c6cb4c3si3050687pgc.767.2022.08.31.18.02.21
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Aug 2022 18:02:21 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 29fe5ba4e2c44b07982d76b0a603b114-20220901
X-CPASD-INFO: 5784a1c20e704c1c8b856da4d83eb240@fodyVI5jkWJchXl8g6Z8nViTaGVmkIG
	DpnJTlZBiYFCVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3hHlyVJNfkw==
X-CLOUD-ID: 5784a1c20e704c1c8b856da4d83eb240
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:173.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:134.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:2.0,SPC:0,SIG:-
	5,AUF:7,DUF:3712,ACD:66,DCD:66,SL:0,EISP:0,AG:0,CFC:0.448,CFSR:0.043,UAT:0,RA
	F:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,E
	AF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 29fe5ba4e2c44b07982d76b0a603b114-20220901
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: 29fe5ba4e2c44b07982d76b0a603b114-20220901
X-User: huxiaoying@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <huxiaoying@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 2034289510; Thu, 01 Sep 2022 09:02:37 +0800
From: Hu Xiaoying <huxiaoying@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Hu Xiaoying <huxiaoying@kylinos.cn>
Subject: [usb-storage] [PATCH v5] usb: storage: Add ASUS <0x0b05:0x1932> to IGNORE_UAS
Date: Thu,  1 Sep 2022 09:02:11 +0800
Message-Id: <20220901010211.3246162-1-huxiaoying@kylinos.cn>
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
change for v5
 - Update the description of title accurately.
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
index 4051c8cd0cd8..23ab3b048d9b 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -62,6 +62,13 @@ UNUSUAL_DEV(0x0984, 0x0301, 0x0128, 0x0128,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_IGNORE_UAS),
 
+/* Reported-by: Tom Hu <huxiaoying@kylinos.cn> */
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220901010211.3246162-1-huxiaoying%40kylinos.cn.
