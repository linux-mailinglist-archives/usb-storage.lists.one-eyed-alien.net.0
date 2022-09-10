Return-Path: <usb-storage+bncBDTZTRGMXIFBB3756OMAMGQELZXIUMA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x346.google.com (mail-ot1-x346.google.com [IPv6:2607:f8b0:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF185B4923
	for <lists+usb-storage@lfdr.de>; Sat, 10 Sep 2022 23:17:36 +0200 (CEST)
Received: by mail-ot1-x346.google.com with SMTP id q4-20020a05683033c400b00638dcfe37b9sf2672555ott.20
        for <lists+usb-storage@lfdr.de>; Sat, 10 Sep 2022 14:17:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662844655; cv=pass;
        d=google.com; s=arc-20160816;
        b=vKwLaKUqcI9/xGat2RNDEVoqmLE5EoAHyXWc0qTl2et6TCNPXcYl0taFUOVlUxq8kD
         qKy6bIQxrwR9pEj0EO+EWNF8dZIoh7SeGJT6fPfFAZouKX+T2kLp/MSUpq+kjEjJkRfa
         qAsD2SIKKxptFMXgKQ4+xN8n6SBzje/cYYpTw/nknKTF+nztVEnmDXaWEX/bduADvGv5
         4nvno7KG9rU73Fen6h1C7VYSsUjnapiCLtMeRgr5+cq9ujnJME+QcgAmXFvOBtZk/y32
         Pe0FqjAnfHBlHh3MYHItIufYXF4Hm1MJBz72u8pDy4VJXsC3AIyfHW5VB3rlXJj9OmrR
         VxMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PfRF6jipq7GciWoz3+IoEXoAWfizn1RmlZm/uS1LB7E=;
        b=h9HJWkc0wcjC/uMku1WLGRY6r3WafjdK6fdTmW1cLvNObUNz48iUFzqnGj7lZqXXBZ
         DHQibtgpsFtRIZqEeehVSQIcdnXCEJMCeOBw0zWM8h1zBv+9ayy79pswv4+/+Qq3G5vn
         dm3V6eQodke320UkLh+qIwhFtOd6nyUv9KvtZyY2vmHaeq3s8PWhVMWyjpeHBaN2vG1q
         y6EK34K9ltqTxBGcFTGU4cJNy5NKBaX4ENHtoWgqr3OZwyUb8r2oWr0DF1gOG6ExsSwF
         T9biZBxv0B1FewXU0pNeQJ90kzCnBAwaT3r6pzruzf4VyDIteqQstpdRuqD1aYXVTVmt
         W7VQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ts2DYOss;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date;
        bh=PfRF6jipq7GciWoz3+IoEXoAWfizn1RmlZm/uS1LB7E=;
        b=K31LKGxRXsp+Apl0WCr1sRyLavg8Txxlowx+mRQyRmiNmHkTRCUNGzNNcFWTb7tdxs
         youBIqfFLyuMiB0BV8+z4TvOUHISk5aKtoWdLNv6P8SSWNZTZvzLguvsN9wO4VA+Uqb4
         y/E5BNNEhb5gE6kvAxJofp/ml1x9pKd9HgOHI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date;
        bh=PfRF6jipq7GciWoz3+IoEXoAWfizn1RmlZm/uS1LB7E=;
        b=WPAyfpk/JvTu7URz578j8zWesX1dP/h1ikWs8FVS5FwdIK1T+kYAgbsl8uvmfjJE2M
         5sQW4rV1sHlsV7wijAxlAf053luGamBgQP+uKJVps4LCpB79bMbD658pNtIwdHUPl0Th
         VjoeOauSOWlti6zgaLFWAy7BnJIAAp9qwbGyJJTMwgumfR4FqxIe3pzepXEp3cI1Lpkf
         lRqdJ30/Owfy3v2SUXDCLGgtRMLe6gDqhw+Eh6mqwDq1ILQjmW0Kl4PKM0NI6S4AG00i
         iyO12EQKAI8wvJ+uaJiWAE4xQmTg1Ht/szFkJJN/XrJUSMZmGG1iI5Thf6H0vr607Lzy
         OnDA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo37QmBuVgsyHT3hG33U7aVVirVcSBNG2ZvfDNo+yxCKhnoAS/QM
	6+G18m+dh+rE1yGTCka8tDINnw==
X-Google-Smtp-Source: AA6agR7cIPL0tnMsWy5Iykoxr/bQEPqdbvzQ52uv1cHX20bzPJkEvuqs22h4MKxLT0KeXmfMr5bkYQ==
X-Received: by 2002:a05:6870:f6a8:b0:12a:e852:e05b with SMTP id el40-20020a056870f6a800b0012ae852e05bmr7230858oab.15.1662844655463;
        Sat, 10 Sep 2022 14:17:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:3a2e:b0:11e:4e2a:2481 with SMTP id
 du46-20020a0568703a2e00b0011e4e2a2481ls2940501oab.4.-pod-prod-gmail; Sat, 10
 Sep 2022 14:17:35 -0700 (PDT)
X-Received: by 2002:a05:6870:340a:b0:127:74a9:c8d2 with SMTP id g10-20020a056870340a00b0012774a9c8d2mr7980100oah.235.1662844654973;
        Sat, 10 Sep 2022 14:17:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662844654; cv=none;
        d=google.com; s=arc-20160816;
        b=IJoFKG9//1VfuE+fnhipbJz3o6Qqvo+fPe55M5O/IOj8K2wMX2nBB+UKKNaqemefmV
         MITTS1sCH93BlBiBQUpsNSN8NQhiypmla/3HEq/0JOTL6NXbVXS5UKNkm4IDYeYhuaOO
         YDLZTo4YayBfzWDpxsaqQO6zyZX+5v/c5G2qGkghWR5E3fPCaktdp8vRmsYMJHy/upUL
         jYpuEF8TEfmbxs1LZ/sr/JDztrMbuTTw2weQXEszUMz+sJPGLTgK4iby44+I2XA696Ki
         9hr3tfBxlWVI8jxiSNVM4GZtLsP1XCDBb9ROU6q/JlAwIFyOb70yMX/jvXNAfDKY3rEs
         4urA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=M8fb7ZtRwxkIEwd9GitBm5HMbFU5uBp8nxnEN5ezzY8=;
        b=gvs2fwTtv30J8NuKevIpdcwQkA/GZrgc3EFPFVOAUnIqU52wpsYVuB5HzFVQrOa+Hv
         JqDGe1K6zKyP9OjhCYcgMJlTeCHWw4nswP1RTEFR9Y2yQXsapTwnLQcjJzuyJ+PYGPMG
         N7dyLcMNS90S84B2f1G/Losm7H+ZryaLJTzjen1ZS1QopMFs/VG574+fPE27Jr/vgfT0
         wWl3CSTfRkHuC+slPhnSj9Wxo2eNmh46vOBCwahTQZSmM38JcKIpTYYWsfzPFuipuHgM
         VoRqf2gNWW7csKGGZULP61tParzZse68kZvP90JUt6j7VewprY2xw4E7YOpcNA+jveTn
         Zb+w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ts2DYOss;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id q41-20020a056830442900b0063709110514si1120666otv.331.2022.09.10.14.17.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Sep 2022 14:17:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B687160EB3;
	Sat, 10 Sep 2022 21:17:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AA8BC43143;
	Sat, 10 Sep 2022 21:17:33 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Hu Xiaoying <huxiaoying@kylinos.cn>,
	Matthias Kaehlcke <mka@chromium.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 5.19 32/38] usb: storage: Add ASUS
 <0x0b05:0x1932> to IGNORE_UAS
Date: Sat, 10 Sep 2022 17:16:17 -0400
Message-Id: <20220910211623.69825-32-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220910211623.69825-1-sashal@kernel.org>
References: <20220910211623.69825-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ts2DYOss;       spf=pass
 (google.com: domain of sashal@kernel.org designates 139.178.84.217 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Hu Xiaoying <huxiaoying@kylinos.cn>

[ Upstream commit c61feaee68b9735be06f162bc046c7f1959efb0c ]

USB external storage device(0x0b05:1932), use gnome-disk-utility tools
to test usb write  < 30MB/s.
if does not to load module of uas for this device, can increase the
write speed from 20MB/s to >40MB/s.

Suggested-by: Matthias Kaehlcke <mka@chromium.org>
Acked-by: Alan Stern <stern@rowland.harvard.edu>
Signed-off-by: Hu Xiaoying <huxiaoying@kylinos.cn>
Link: https://lore.kernel.org/r/20220901045737.3438046-1-huxiaoying@kylinos.cn
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 4051c8cd0cd8a..23ab3b048d9be 100644
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
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220910211623.69825-32-sashal%40kernel.org.
