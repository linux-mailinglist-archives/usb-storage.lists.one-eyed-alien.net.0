Return-Path: <usb-storage+bncBCS25756ZQFBBXUFYCMAMGQEE64VQ7A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 5168B5A8A0E
	for <lists+usb-storage@lfdr.de>; Thu,  1 Sep 2022 02:54:56 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id i1-20020a170902cf0100b001730caeec78sf10728021plg.7
        for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 17:54:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661993694; cv=pass;
        d=google.com; s=arc-20160816;
        b=EWMyDBAoSD1yjHdRovfcRFpsefCMAmXTwqQOR9xrQVW4itHho4wegi2hEBddDp/esn
         H6f41WmFkf6RDP+X7SilSxHY5OLK8eRBCwu8VkrJv6ybfMK+70r27bY84pxZ3AdwE4iV
         f9t/JASWnHeJreNFQ/i19hNnAPpGVwI0Ii+25qcpC72D10Vqim9Qav3chT1r1EtodFEd
         6JReayLamkMHRTYYD5ugE64C+yFyv0e1dws1VMVd8Z7wKHzUEAxkJettDSAxANMtyHJz
         Q7IiNoNVo+zSh+C8yrrJ1K2tcs6HPd3WqwNjw5aY1nSyf2B7Tsh/QfRUrf0u+lWiOGMI
         zIEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Y/r2sKYp/ILqT1PRQWFOCDOrI+2J5fzkBWHJrp7uLwM=;
        b=MVHG3juXcV0KFwRXPcSxYEkm/sMsiBSFrH9JiEFQtY0/JOCALqsmTK7tzalJOGhjvZ
         tawegBMxjz2meHUGjzkcx0ZXgyEnWoLOh+0aM52zIYczC4Nyoejeh3NzRTuPgHpgXFiu
         QUDkAghPOj13O+R4yJ4NZe+cSudfM8Wr6ZG/iqDof6/Ix8XqJlJCfWa7XYpgAsquaMjz
         UsLCKKq3NshMvlnVrEIMvQEgvwJsF6lBvKaqSMTDS5asnowg8NHUWgFXObp6IBNeT2wl
         Z/D2epNZiAdonlcHLAdjGSrSnJx6ZLjeNI2Qh8YqJ6ckml7orK8kjlWDUdxjuwNYE319
         hVpg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc;
        bh=Y/r2sKYp/ILqT1PRQWFOCDOrI+2J5fzkBWHJrp7uLwM=;
        b=hkTHAR9cfNf2kxFHi9uSMR8Dd7y2SzH75TuSjaWCC3C/FmRej7NXU2UAPZDpE8Wg59
         nySiaYqFdv3eDvtxDBYH9wnNmt5GwOHncxCYGYGL8+dwC8ksuAllp9lFHZ2krkIsaRlT
         T4u5hcyQ38akRpgGo4L9wowie9S5WByPfF4O0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc;
        bh=Y/r2sKYp/ILqT1PRQWFOCDOrI+2J5fzkBWHJrp7uLwM=;
        b=OP30dSEvfJQ7MTrIMWQBYnmG+tNbueuI8BmLkHYnaoQGp2saihHre8G8UThWVSbJbS
         EtynaaW6e89NSiw41XtiAYActn/0AcCJBqbvBG86JKqUfElAzkl5sy6MEnDAgr/cVpjv
         Cl0LxYcQs8anNu7FSdnZUz9BljwC+P9I4TIKYLAQ7W6lfI4Ya0Rmbwqa9Ql4ygQts46D
         78WQv1CMlLTOdyQAQPKJbRSYcHZIqID3o0seEQd0RdziPJWriYw7yzxOxQ7CYktmHnYY
         WKyBQNolETm5xQVUieuJwoDQVMCTIkCKCH3FSkPFU0/6B3857uyQ95nPi7/H49dlgHsJ
         OMbw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0rqnGLg9wyr9+9RH8dkzqnqvT1mYmcK0TjWDn+eUgcjDNEGi1i
	qTPcmc0hf0lUeJjS5Xd2W/hrGQ==
X-Google-Smtp-Source: AA6agR4fJ1tHuQIkn91LS4T8rZ7HFbC41K4tmj/REKMuQ/9k3DVLzlSFi67rsRoTMew6FzYiujzGUg==
X-Received: by 2002:a17:903:2302:b0:175:376c:ba5a with SMTP id d2-20020a170903230200b00175376cba5amr7834536plh.160.1661993694538;
        Wed, 31 Aug 2022 17:54:54 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:bd8d:b0:1fd:c959:dbcc with SMTP id
 z13-20020a17090abd8d00b001fdc959dbccls417042pjr.1.-pod-control-gmail; Wed, 31
 Aug 2022 17:54:53 -0700 (PDT)
X-Received: by 2002:a17:902:b684:b0:172:d9f4:e511 with SMTP id c4-20020a170902b68400b00172d9f4e511mr28514491pls.107.1661993693629;
        Wed, 31 Aug 2022 17:54:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661993693; cv=none;
        d=google.com; s=arc-20160816;
        b=hwFmZLwRfXPYsBVWUR1f9IgLGbQABcGM6SO6cGZQFonp+BbHa5oNtUsy5+rqeSrpE7
         eAuzhkAjd8tFcgRYR7hH46RJ+YgvclhrsKNPr+Idbnsfe8hAnVhfzjpZ+XPHFvXHwUKv
         0LQzAphGqt4XeISejXVX657jpOoel+awuw+pe/15AjjMl3TDhRNDpQ3jWLLVw3bWmbom
         sUcll/a4TZKEi8AF/3uVImBE1kE5Kje7fC92YjQa8dAtYd1KVxZ4YAnVp7fQvUMUvyq2
         VNRru5Wv4sFxmEHlLaYo638cS0zpxr9LeucWm7D+oifHgoqwNUQT5GLMkGDGz3U6xvCW
         1kVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=eSqJBQKK+BgVqdYSgUrE+yANEaqnONNUs0txiAoF4k0=;
        b=d2H9giiDiyivd3be8imhJViX0833DIV3mMV/uLzoGs7oYopPXwO6ifGq/XDk0O+oM7
         2bukTYcI7+6d+yvMz7twDe86K5inB32Rbea45EZqmkOjAGRyN8SvQVbq9phwMRsiTchs
         uGJrQnBYevrnpyAZ8O56BXPEDMejkGQgs5sTzS6fwNvFzJk5jh5o6kPZpMW/DSR7QMrr
         ZCcEh4fHE3MhR6TwHC1DPqK4xSkJm7EaPOM23YD2kUTh/5+T/cmxbiUVfO6MpoC40KbR
         nDABgqXsqK319QxcXLzel/IjJmOXJDiYtiN0HqEfq3WA+s9kNnTrghytnn7X7hwlqk3a
         kTYw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id n22-20020a634d56000000b0042a624cc610si6427350pgl.873.2022.08.31.17.54.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Aug 2022 17:54:53 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) client-ip=124.126.103.232;
X-UUID: cf3f1b9fc32d48d79d0c56a4afc52ff4-20220901
X-CPASD-INFO: 402aa0f1ce7649f3a1eefe6103e0928c@fYBsgY5ilGGPhXmCg3yxbYFilZWWkVa
	Acm2FYGdiZIOVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3g3JsgZFelg==
X-CLOUD-ID: 402aa0f1ce7649f3a1eefe6103e0928c
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:173.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:104.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:0.0,SPC:0,SIG:-
	5,AUF:6,DUF:3710,ACD:66,DCD:66,SL:0,EISP:0,AG:0,CFC:0.324,CFSR:0.081,UAT:0,RA
	F:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,E
	AF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: cf3f1b9fc32d48d79d0c56a4afc52ff4-20220901
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: cf3f1b9fc32d48d79d0c56a4afc52ff4-20220901
X-User: huxiaoying@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <huxiaoying@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 2005802184; Thu, 01 Sep 2022 08:55:09 +0800
From: Hu Xiaoying <huxiaoying@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Hu Xiaoying <huxiaoying@kylinos.cn>
Subject: [usb-storage] [PATCH v5] usb: storage: Add ASUS <0x0b05:0x1932> to IGNORE_UAS
Date: Thu,  1 Sep 2022 08:54:45 +0800
Message-Id: <20220901005445.3245567-1-huxiaoying@kylinos.cn>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220901005445.3245567-1-huxiaoying%40kylinos.cn.
