Return-Path: <usb-storage+bncBDTZTRGMXIFBBSH66OMAMGQEBFR3T4A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E30D5B4957
	for <lists+usb-storage@lfdr.de>; Sat, 10 Sep 2022 23:19:06 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id b11-20020a170902d50b00b0017828988079sf394482plg.21
        for <lists+usb-storage@lfdr.de>; Sat, 10 Sep 2022 14:19:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662844744; cv=pass;
        d=google.com; s=arc-20160816;
        b=DLmiG6NZS15crMfzt5PIDUOf4JKPpoN+pxmjzq7yMW1BoExFN4BJVKV78td/UM3q7R
         TCpAVWop7omUNdS4Iel1SVCO7ULn83l7w+fssZFiwmHARp2Ge+WfUfqvqv7ZijnMeQZl
         Ia/ossovSnUTcbop6KGzxRTi1ckTSJXZaguQrIFAy4wSu70aboUAm2aNbJ+kvLe02PYm
         AOSkMuG34DFo6bYfxAETQUAiV1igbbmMdiVTVzhPVu00Q9gUH/PcS25VnbFyfGu/x3rM
         NQW47tc+pRFcIrwAQTm2RtF/GruZKlIDDfoj8SYhw3HrId2U5LEdKDdf5y/3tyViOH9E
         PcFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QzSgUlj1xOG+eghwY28pMAXyzXCM2113YKeZEXAh5JQ=;
        b=SoyTWbf2K82CPB9KntqRBlUcwRGklxtktr/iTJD3ZYmU4BPrzCwxsPrbNGwD0Wm7jh
         4WCfCe/l/WFnZVEzAFoXDdIcGHmODxwNw+ongVJGqpmRO9UW7mYaJISdfv3Ee0gKEYT5
         CI9sp/PeHW5IRj/rWbxjJUMIDKC9qC4XxFm1qbHtNmOH9H6925ggmHm6sUr9IbcNGZVK
         WW+sxmAmZCABuzDN7eqd06T7pDQVeOjjQv0dZQq0ifin50a9Z+F8eD/aGNY4Kemjvck0
         PI2tB+S/HCEHPJKKmA50QFECrAVQR/ahxO6BvrrZpuPmoC9eymSsZ3eM/xB3wWHY8pFU
         a6Ew==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ew+rl11e;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date;
        bh=QzSgUlj1xOG+eghwY28pMAXyzXCM2113YKeZEXAh5JQ=;
        b=cHfaHiyniZNTQgBksFlCeomAd3hokkzzZ6iJCFievAbmNJUnjVSVBdfvDGO4ctuVYq
         Pj2jqjVH66AZPKvPCKzrZ93o9mUHevOHc/90OdP2EDFaZVaFYmfS/xKnB6+rYBIxLk+/
         AlY9EO49kW2ebqSDxqenYe1r6+gSEqpPC30zE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date;
        bh=QzSgUlj1xOG+eghwY28pMAXyzXCM2113YKeZEXAh5JQ=;
        b=44AF7BQwk8RKCyAtUV72wGVFvMLyg35bScSF8HdkHu+G/KBS/Eqk1xczoGvh9Db92U
         8gJ0aRberPZnZBzl6HQNcjO20BW6N5vLHXgYUnYStlcoLnOzRqiAlb6+2YxZ6w8cAY66
         K2WyCsAAzj+e6p2pkmCX4Je5JnF0TFMDF8fF3fcGTNkWWaadNd/ScH850uU65dGS/wmo
         bayRLVZcDo3JoGExX0gcpJtezqcqWhcTMy3vGmSTtfBTYac/KG6Mn/0Zkzj7X0MPRrbB
         9CEXWEpvugPo2YS6KoQYtET2MfG/DaIq8pU4wUQCIngd8bPwnXwTmneL4gYDsrm/Q6dG
         m5Zw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1Htie/dRWXcDREOqQvVAyo4sYkhD3XMQQ6V7odfT8yM5TDC3zP
	BfqdDS1EqJjM9gpmDUzm/23PbQ==
X-Google-Smtp-Source: AA6agR77t5xBgZyiqn116QrHwgTaptzziH1ttvEUgn50A/CTMOvPiVa5z1+x9r/TzC2Z5xQrceuuOA==
X-Received: by 2002:a17:90b:306:b0:202:b9a4:b0aa with SMTP id ay6-20020a17090b030600b00202b9a4b0aamr2142372pjb.78.1662844744405;
        Sat, 10 Sep 2022 14:19:04 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:ce84:b0:16d:4224:4877 with SMTP id
 f4-20020a170902ce8400b0016d42244877ls5122084plg.4.-pod-prod-gmail; Sat, 10
 Sep 2022 14:19:03 -0700 (PDT)
X-Received: by 2002:a17:903:1c1:b0:178:1c92:e35 with SMTP id e1-20020a17090301c100b001781c920e35mr4147596plh.151.1662844743457;
        Sat, 10 Sep 2022 14:19:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662844743; cv=none;
        d=google.com; s=arc-20160816;
        b=UEkL840IamKC39eyckLQ0uNKcajcI7fTwZ84A+K3kYpbKjU2yeh4IMEKKYq4SqtNQ8
         Q+HeR4lio8VfB1IPXd32d/d1C85/OSFD7RE4seEAY/m05raDEmBXUktX1ipMYSRzIDRh
         WH7FPdURayiBT1RcBkqrHvoM1dK2vudGckEaa3ZrLbss35r96wmXn94shy9yrUT1cTs/
         vD86BqwbBEFQuWoYaRHstuDxrBXy/RQ/UfBmL2VW6dHsHHaLtae8dARcv8/5CAd5uHS8
         MViH78i6GEHGwBNjwYXYIaZYviYwhvNBvI+sKOIkgcM9iv3j+0N0/NJVQha3H2vdn9Sl
         r+Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=M8fb7ZtRwxkIEwd9GitBm5HMbFU5uBp8nxnEN5ezzY8=;
        b=mUeqk9KvXCrXeYk/esOIMqWiI43zFDJXdrPS3cuk95kEBTdDRUtjUXvwGPhMw4hue0
         HBnNE3nzv70lYnBikCfJgJ/vsS3LLW1eyrPK8MKrcsOENo6G+Gcw2yKVEvWNdQDKP3kp
         XKpNNDclDJnJkUIuYH/gq2j7HV7cFAFWINVNLzr48ZGs5XcZRNJigWj91hAUx8f9v4vs
         y94qkAou4qsR/v+ufGAFERYD6m+CyYenWEFroGz0zyNhHc86paFmlSqcBjeUoL7FhFO7
         vb+Kr2CEahcZM0HxOyOSl9hlZhnuFWvBbyankRPzTM2iF0pSDMFEyxFd0ztn7zhsJnUW
         kaeA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ew+rl11e;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id h62-20020a638341000000b00438de8dc5f6si810686pge.233.2022.09.10.14.19.03
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Sep 2022 14:19:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 16AC2CE02BD;
	Sat, 10 Sep 2022 21:19:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5DFAC43140;
	Sat, 10 Sep 2022 21:18:59 +0000 (UTC)
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
Subject: [usb-storage] [PATCH AUTOSEL 5.10 14/14] usb: storage: Add ASUS
 <0x0b05:0x1932> to IGNORE_UAS
Date: Sat, 10 Sep 2022 17:18:32 -0400
Message-Id: <20220910211832.70579-14-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220910211832.70579-1-sashal@kernel.org>
References: <20220910211832.70579-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ew+rl11e;       spf=pass
 (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted
 sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220910211832.70579-14-sashal%40kernel.org.
