Return-Path: <usb-storage+bncBCS25756ZQFBBTXXYCMAMGQETNZC3UQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0695A8CFB
	for <lists+usb-storage@lfdr.de>; Thu,  1 Sep 2022 06:57:51 +0200 (CEST)
Received: by mail-pj1-x1046.google.com with SMTP id z8-20020a17090a014800b001fac4204c7esf705185pje.8
        for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 21:57:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662008270; cv=pass;
        d=google.com; s=arc-20160816;
        b=dWkgGroGtC7T1dCA0AkA0jk0bozIN/CPVOBo0REyaDllhlVGbTBtOo1V0n/T290zIW
         aGhIQ2lJl5en/+LEGQxVEj0anTBgs3ZXDg7EiidiM5tSIlYYfvK0ro4CwXsy5mkeypk+
         aCHUMzxMUW/FJ1M2IwFp2S+oA8FgWDg2qqjMBsRmd2goIV0FRf8kGSXnZF0sxYLlRIl7
         YoPoqaCp0MIlkBnCFYxOI1CET/sH59cSRMy3DlpTuSP3WPGc4GHY0XkSs4lZCrN4cPjz
         NDom/08MAYMkV2OxYAyFh2q0WapMyWPItrSWyZtL70eWyrT5hNjvBzh0Zw99mGzCTheS
         g0vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=MhLivRdJL0ZdZlCLenTRXo7+7maUxvV0JVCkfTe3LIE=;
        b=pF2iipyIy2YvpzsGg4Lct5MUdi7pqosUpre7ObXaJVzZOPrQsclRXDQeOXwSLFHfxh
         ISLPppY783COhV3C9bT15cbiBOyrQyjXNa0WFj3ChnLW3e2iC7XpRRpp4CrKnCQIWRQS
         fmDgDRieHhig9gIySSRK/iMHQ1n3oavnXLTCPpi6Rx56Qo+v5p7T04q9p1DC1S4bp2X4
         Ete7VBSWmQ9ldL4LityUfREe3rnGld8kvMZi9TpTfG2LisruJEv3sJlfVRsO5vCQD5ar
         ILSuGxxuItFA3kX4mXEOpNGgocQdGSzi4YOkM2GXaXdpct+6ejk/YdfQK+eX21UYNh34
         ZstQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc;
        bh=MhLivRdJL0ZdZlCLenTRXo7+7maUxvV0JVCkfTe3LIE=;
        b=eDKOLll2HcCJbGQSsbLHr2lT9lNlCZGHoKTOekttey80QSVGQx6tZDYf/6AsARdvOC
         FU2PphIKJhRM9+IDMSZLTAEcczyhYFCrGi085Q++bokw/n2kTPTWEoaaeZ5UBebqlREY
         2MdVf0UpID4A58Fkgfa1n9zYUuZKKt7+iglg4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc;
        bh=MhLivRdJL0ZdZlCLenTRXo7+7maUxvV0JVCkfTe3LIE=;
        b=OPW/2E4gmvmUKriIPGLe/RNA7Q6WH7eBVzHpe7s9jJRy9ltaKpLr/7KaTqhGPW44LO
         WJDAjfyn6UesVVejEsU36fhXd8SHDpCq/RqtMXwqPxLicYeZRxy/WyGZdVJX+qi3V1Ge
         ZN4zMAzyFHiVI5YYYRZENMbn6Rjv10pRNiNRxQsv36OST/UamuQrPLxS4veAQFMb81L3
         1yhVptAroVs4QVR9nS3HsGLlv+RD/eNFhDf13IqYDTEdrfUNrfGItkCVLgYJ3CocK4ev
         WC5petNdkzkgPGwU4HJIvSJgy850xQ44z+gd4VudNPdSdQY75MXazg4mxevNHH1SXdVL
         RBJg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo3jxo1NWC9ndRJHSaGji622jKZbjuukGsn1/XYsoWuKfK+zGgKi
	0CU2epfBjav0aCK3TOK5Ont2bA==
X-Google-Smtp-Source: AA6agR5akoE3PtyHB+1CAME6LVHW5kOX+CXPKXkwEClP5PoBPXFpHph6dnz2qSw2za53+QjB0aClUg==
X-Received: by 2002:a63:4e09:0:b0:430:ef:705d with SMTP id c9-20020a634e09000000b0043000ef705dmr7240136pgb.527.1662008270310;
        Wed, 31 Aug 2022 21:57:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:8142:0:b0:430:7d74:943e with SMTP id t63-20020a638142000000b004307d74943els348815pgd.11.-pod-prod-gmail;
 Wed, 31 Aug 2022 21:57:49 -0700 (PDT)
X-Received: by 2002:a63:1713:0:b0:429:7b8c:d67d with SMTP id x19-20020a631713000000b004297b8cd67dmr24605958pgl.391.1662008269514;
        Wed, 31 Aug 2022 21:57:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662008269; cv=none;
        d=google.com; s=arc-20160816;
        b=I60SozMgI+g4MNH5Kpex1U2o35W/0nVyp4LEDSPV9pRqF6uUKHA+OAmZfqGxTJsuFc
         pwY23FDhuXboocWOoarFAVEkdyD/f15RlQ8o8rA4Rkm3iERq++Bm7KlokhJ6bCsxvEnR
         3R8H+M0LO4fErzv4PvZUHqgZwNBz3DljSsXItgadUInTj8J3IvAgFnlHsaBeU2+As+/N
         WbpaSI81dT4Gx+xT5RWBph0tD0RD0ivNhip2m+j1GM/7q5ftxHmodCi21wPVw1e4MiCi
         mTpBOyQSyAnWWembDRWQVrglBp2lFGM1WPbYNQG1cy7jaAFNdHQg4YxY/79lp+erIt1s
         R4Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=CkfZlW4I1loxNvuh3DG+llRwg7T3xhRvmrCjTQzC+OM=;
        b=AC713cQl2D8Giqv61MWQWDzkeBqbr91OZOl7624ZrsYCWHHT9pGk8k8LOabW04y+Tc
         pPbJXuiOQo2NlSLwv5KAEDH8psZ3swVgvwsykzrQZ+5ui1HboC1SJnwopbGYvpSTp6uE
         oAZ82XnhILkHDs1TbugHlE0wBKAacgZoSfFTvPPHbNq10UICjJZmxQdFsufTjADv9vqO
         /FKZyLw75oo409jwpZkDB94FGuN4jVObGPPPbfN7H4g359vdAxO+3jQNTFgzxLrcu9Ev
         5dsdmeQ41CM1J8LFURK5611/8GURCE8lWyRnxXxahS9odSdbQwnQ7cKz9fCRalggOneN
         sX6g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id m3-20020a17090a2c0300b001fe280041e8si3699471pjd.37.2022.08.31.21.57.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Aug 2022 21:57:49 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 310dcbdb25fa4400a39df82dd5133278-20220901
X-CPASD-INFO: 0762841faff54982b4821fdf80681029@eYdwUmVnX5aNhqiBg3yDbIJlaGJhkoS
	1empWaF9gXlmVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3f3lwUmpiYQ==
X-CLOUD-ID: 0762841faff54982b4821fdf80681029
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:173.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:153.0,IP:-3.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:-5.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:2.0,SPC:0,SIG:-5,
	AUF:9,DUF:3752,ACD:67,DCD:67,SL:0,EISP:0,AG:0,CFC:0.486,CFSR:0.039,UAT:0,RAF:
	0,IMG:-5.0,DFA:0,DTA:0,IBL:-5,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,EAF:0
	,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 310dcbdb25fa4400a39df82dd5133278-20220901
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: 310dcbdb25fa4400a39df82dd5133278-20220901
X-User: huxiaoying@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <huxiaoying@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 271972006; Thu, 01 Sep 2022 12:58:03 +0800
From: Hu Xiaoying <huxiaoying@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Hu Xiaoying <huxiaoying@kylinos.cn>,
	Matthias Kaehlcke <mka@chromium.org>
Subject: [usb-storage] [PATCH v6] usb: storage: Add ASUS <0x0b05:0x1932> to IGNORE_UAS
Date: Thu,  1 Sep 2022 12:57:37 +0800
Message-Id: <20220901045737.3438046-1-huxiaoying@kylinos.cn>
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

Suggested-by: Matthias Kaehlcke <mka@chromium.org>
Acked-by: Alan Stern <stern@rowland.harvard.edu>
Signed-off-by: Hu Xiaoying <huxiaoying@kylinos.cn>
---
change for v6
 - Add maintenance email addresses for acked-by and Suggested -by.
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220901045737.3438046-1-huxiaoying%40kylinos.cn.
