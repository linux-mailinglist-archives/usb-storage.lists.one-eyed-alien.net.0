Return-Path: <usb-storage+bncBDDLBMU22IMBBH6AQ2QQMGQEA666W3A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x347.google.com (mail-wm1-x347.google.com [IPv6:2a00:1450:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1C36CA688
	for <lists+usb-storage@lfdr.de>; Mon, 27 Mar 2023 15:54:40 +0200 (CEST)
Received: by mail-wm1-x347.google.com with SMTP id bh19-20020a05600c3d1300b003ee93fac4a9sf5411951wmb.2
        for <lists+usb-storage@lfdr.de>; Mon, 27 Mar 2023 06:54:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679925279; cv=pass;
        d=google.com; s=arc-20160816;
        b=d7ZSJ5Qb3gt61rpIGzIq4RqJG3RDA0cCkP/DOpaEZgyz8nTkADDCJ2Lf0EQeOzhKSb
         x4VSYSSuY2DSMZi/ilzBI9zwzqdYxzoWqLcpusycHfOtGLAumJFymRsKvGNS7MtKZsjz
         WJd7+LNvDyHXy0zMuJSxxQOmp1MSdvWKWdMt8QYm1zYZ1/y6XNsdGdY06Px1dI4fB2ti
         tlCXBES3Iz0qHmCkAypRX6QdGJky2k0B4mLgcAOjwdwjejDHe2Cx/w+tSuLppl8SpK8A
         L4EqQSnuVe/PktlYvoKr8qXTm1wa+113FMQIFAr4QOIQca8HluTtD87zBFrKG0ndjofM
         D69Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=McMm8Tpa5KS/cad2AWPocHNqv4GzYiCc0BL1LCsdfVE=;
        b=B7n+WVksvCTnxrF4X04wdL5UoixshaMUswXTbBNKQWr2wu+rndK/stpQ+z+LvjooSs
         3JTpgEonKD8Ons8+jPy01nid2lVCvQaxV9TvsDt2kphePfK2htB/oflQCEawFQKhIJtk
         Cd4/ew9GcrS4i1sgk+HZuFhDqdb5JF3Or6XADmbw3V/YsSjE2wC9CywjWMy4/4GceEM+
         vY4PzDb403cqa3+RfWfrG9LmakSJKtB/i+0xN6Usnzm7OlCrvH887jPv7qfsPU9YamUD
         ZoDGXcBX8A7Q5S18tyj+rNpxzktsL5dsFRVa+uyRg0a66eQuyfxIJV3dXn+/ljVT9TDL
         N7mQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=bq2SoY9R;
       spf=pass (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=yaro330@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1679925279;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=McMm8Tpa5KS/cad2AWPocHNqv4GzYiCc0BL1LCsdfVE=;
        b=OzMuTLYlHgsfPENJRKxp+h99tz5h6pMyRmNIF2sHMWumYSRntVplbB9EMGowdK0uAt
         Y/5vHEjM0w/t0TZdaEGagw5s9PFj49ny7aivBd77sW+CVfNQSwH/qRoBb8/kXYxEMV00
         BCRqNUCN8AMc3i9KOZWEeZJ57tDTwF46yM+lQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679925279;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=McMm8Tpa5KS/cad2AWPocHNqv4GzYiCc0BL1LCsdfVE=;
        b=jW/1y15fBzOzaehmOPg1hceFOsZ7snF4VrQ5vaWcsl563NJjolX4eP2Md10gW5RLNW
         6zjRVd5DW3F9VqfPA/SuaWzb5fO6L71RKLZZiVP7fKf0HFN6CTCBEo5EBCJDzHr/vvJk
         jOTJnkeCguN+vbfkjDMEpxPKA3Irip6zIvy0aXLVVqemeOHc98v3kJrdOm4BY90tRpXL
         pbbYYwUAVTLaCPY1prs1F6DSgkm1DEyYclv/k0o12xgdF38tGQcU5d/VAFkc4CPIzYLb
         c8bgacpBVpmiu8W8sEYt9ScW51OtC47sqSFhxD2ABLSOdTg1PlV+YeOtZam91yL/IrgK
         +YbA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AAQBX9eGFUtH2jLHykJeyber6JhKX1xCGEqgMFi9/KLq2AgCFAN/vc88
	8M0o60E31RMOgS+US+dbjtKJBA==
X-Google-Smtp-Source: AKy350ZGDGoNwGy34iIEskkf01TfnJkY2QVLjj6bIkGUc7GuaJPEt5RyqF/SgVquEIl/dz0PXAAC9w==
X-Received: by 2002:adf:e9c9:0:b0:2c9:f488:5f55 with SMTP id l9-20020adfe9c9000000b002c9f4885f55mr1939155wrn.4.1679925279557;
        Mon, 27 Mar 2023 06:54:39 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:1da6:b0:3ef:7390:7787 with SMTP id
 p38-20020a05600c1da600b003ef73907787ls21791wms.3.-pod-canary-gmail; Mon, 27
 Mar 2023 06:54:38 -0700 (PDT)
X-Received: by 2002:a7b:c7c5:0:b0:3ed:809b:79ac with SMTP id z5-20020a7bc7c5000000b003ed809b79acmr9419423wmk.19.1679925278232;
        Mon, 27 Mar 2023 06:54:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679925278; cv=none;
        d=google.com; s=arc-20160816;
        b=DCA0md/raR/91Bw32bp6lyPFcaG+Wocuh2Zszv1RQuRdpmUN1ruFrGSsSU21yiEzAc
         z4T+WyWUEnZoIXa0It48KjKfTNZJVJxh1SZvfOaeE63ao1WDJvAAkDhRGPHiouPHsAQ2
         9Z0GFQ+Eu9Iv7KfNk6Mno6sFyHqHK7ZNy7oaWtV7EAGIT5x8/4O+zymXysBParch9U1y
         JRpV1IcvXCRTszcU4r8EiwsOUHGaetJsLACbYagJLEWfFUJ0Q4WS4ZKc64H9/PM0oKgH
         yAx8PKFCVjAnwkQnE63680Kth66kRCSqmXgi6pucO4osoDzXeTESsnhQoIe8MnNoIe4Q
         vZzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0+PBefwwA/8SDowfJGLvUl2uQWAWydxb8mElV9hUD3w=;
        b=bOydzvzoedmIemjQ4/UNpot7wZUj8NG6qe1TQgxTLAfTuRhnFsApLfvZwKEYAiweaA
         ccks0YSEoh39eVPTCWCKimYByEDZgvArsNHXesaDirFcx3Cwjk9EIY5p62mlDhdHSg7X
         SOSIAq/o3IsHiVVbFaOFg+ufuJZ1gK0wRsz0viHn0PyTgARblMT+LUOR6n6/PJyp3IZl
         eKb79voq/l/JX10H58rNnXJSdPLtk2Sqj/DDD64TBr5j3sOHaMKMpO8/DqL0Yo8vWAd5
         D5MfMzwJlkL9SrAOjpgaPi1oxhW7ZsY7FFT+lb3asw7KU8R4PAgxU/ipdSH4ww8m09iQ
         +4Mg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=bq2SoY9R;
       spf=pass (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=yaro330@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id o11-20020a05600c378b00b003ea953025c5sor3413136wmr.31.2023.03.27.06.54.38
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 27 Mar 2023 06:54:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:600c:378d:b0:3ea:f6c4:5f3d with SMTP id o13-20020a05600c378d00b003eaf6c45f3dmr9670402wmr.2.1679925277821;
        Mon, 27 Mar 2023 06:54:37 -0700 (PDT)
Received: from localhost.localdomain (212-59-15-122.static.zebra.lt. [212.59.15.122])
        by smtp.gmail.com with ESMTPSA id u11-20020a05600c00cb00b003ef64affec7sm7371244wmm.22.2023.03.27.06.54.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 06:54:37 -0700 (PDT)
From: Yaroslav Furman <yaro330@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: yaro330@gmail.com,
	Alan Stern <stern@rowland.harvard.edu>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH v3] uas: Add US_FL_NO_REPORT_OPCODES for JMicron
 JMS583Gen 2
Date: Mon, 27 Mar 2023 16:54:23 +0300
Message-Id: <20230327135423.607033-2-Yaroslav.Furman@verifone.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230327135423.607033-1-Yaroslav.Furman@verifone.com>
References: <ZA12pMgwA/8CguYd@kroah.com>
 <20230327135423.607033-1-Yaroslav.Furman@verifone.com>
MIME-Version: 1.0
X-Original-Sender: Yaro330@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=bq2SoY9R;       spf=pass
 (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=yaro330@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From: Yaroslav Furman <yaro330@gmail.com>

Just like other JMicron JMS5xx enclosures, it chokes on report-opcodes,
let's avoid them.

Signed-off-by: Yaroslav Furman <yaro330@gmail.com>

---

V3: Moved the code in the appropriate place, after the 0x0578 device,
as pointed out by Alan Stern
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index c7b763d6d102..1f8c9b16a0fb 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -111,6 +111,13 @@ UNUSUAL_DEV(0x152d, 0x0578, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_BROKEN_FUA),
 
+/* Reported by: Yaroslav Furman <yaro330@gmail.com> */
+UNUSUAL_DEV(0x152d, 0x0583, 0x0000, 0x9999,
+		"JMicron",
+		"JMS583Gen 2",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_NO_REPORT_OPCODES),
+
 /* Reported-by: Thinh Nguyen <thinhn@synopsys.com> */
 UNUSUAL_DEV(0x154b, 0xf00b, 0x0000, 0x9999,
 		"PNY",
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230327135423.607033-2-Yaroslav.Furman%40verifone.com.
