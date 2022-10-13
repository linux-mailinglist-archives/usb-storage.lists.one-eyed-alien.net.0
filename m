Return-Path: <usb-storage+bncBDTZTRGMXIFBBWVUTWNAMGQEBEDQOXQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x247.google.com (mail-oi1-x247.google.com [IPv6:2607:f8b0:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9085FCFDB
	for <lists+usb-storage@lfdr.de>; Thu, 13 Oct 2022 02:22:52 +0200 (CEST)
Received: by mail-oi1-x247.google.com with SMTP id v73-20020acaac4c000000b00354b0d77a16sf94639oie.0
        for <lists+usb-storage@lfdr.de>; Wed, 12 Oct 2022 17:22:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1665620571; cv=pass;
        d=google.com; s=arc-20160816;
        b=i0JTBK6nxwFHO5IB+HUaDRJp7UgaPGmA48gKbduCub3RF29MddI+BXX/qBiezmtv7F
         x6jXweC4aspfpPNhyNVi0Wt2VRFNR2eeUV9dHODRIMjjOLaVahHD1Z+COuGGGgaZYS/z
         1jy0ezmZ2kDE7PHXTL+4guviGvOc83xx/fJPxabj0m+QlJEpoQ7Fduj4cds6ngUX7x+i
         AqtQvy9P3Fvn8paeX+exJu5H++AatUgSjSRa491ESHxeAqAuPp6HLdzSdDX9mLtVh1um
         pZNSNJWqjXDsrZcH84jJnJSsm4WqRmbdlxoSMPzByXwXD5/+nacBn0k7nuKi4Un4Q9rB
         fwjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AyoyfuQt42MNyzZwM9CMaDlldRcg5y1K69WRh9q6Rkw=;
        b=A9U2ZafeF/z35gokWl7d4fjHZTTEBv7s3C2EwE1hrIHcoEicaRxaX1Uaa5paxlNgj1
         DbzI+4RFOPBank1XN3Fxsmm/XdWsPVnS3evwiK1RpdgEOVgaws+0M4wIM+mZrWcnjMBh
         6cjIYnBz3NjUNZUhXGyswM6ylU2hNlnK51GqOhRnshGx7LaMLM4gYqL4jC2QQrpJcRjn
         kVU/QGFuZlc896hQXlVMAhTWrZDeqG1tEeVVXxkZ9j/xEwGzHQzxdkAOnJ1IsXL9wXy2
         ph3Il5IgqbTesPOEce4kLirw3AVzzhNOFOqiohYlr6/d4reNhg+qSWbOEvbaxgRQlYY9
         P5Vw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="mkQzj/4x";
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AyoyfuQt42MNyzZwM9CMaDlldRcg5y1K69WRh9q6Rkw=;
        b=Q84SIRm2pUuptujFL9eSoAwvvL2/ODxdj+1yqsblufAz2CbEIAaqp3Z+kGIwPx4kDD
         SLgbLi8sB2l1Vb2pNnr+i6aKCRWyeNdl8OGDUYTcgXGzeRFLuQ/9y8F6Ax0voKPGtOvn
         5ErGLvGyH9WDupKb/VBnawvpf2vvm1AXWEc7s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AyoyfuQt42MNyzZwM9CMaDlldRcg5y1K69WRh9q6Rkw=;
        b=prQwW/5PQVRdMrHLUGvAWxWwO2zM+qTls3u6FZYhVKLAJhn9mbhyw+oJ0QrFOj6ish
         NdC3qghdtQCEX336dEcpAk11n/YSSbcXmhzoY6UAXj8EiFZqOIHadIqywPC1C4h8+q2w
         uDHJNk40d6T0BB/IHySaY8tg6YonzGbRdh4u+Ynlh5zNnYFZ7irBHl+kER4L3qhlbWlP
         wEb4WWTFGDXCPndJWMwyXz3rEv8+MTKFOzrtc8Wt+Wxh36IJSmhsAMwp372NONfkxO8r
         um3q2HeXW92Lug0IHjPOw8lwObpWHTPvaWln5iqZt/XHr4HKT6blgnVmKFHmRiYihZel
         FeHg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf2Pumd5yS7lW6cZb4ezRz7qle9v5bE24hZ7ZuXsg3Oq5GnIsrBm
	k//nUlD0LyPKbRLzVsUX4eUagQ==
X-Google-Smtp-Source: AMsMyM6LW1/RVLORl+jpCbruKWpcfhSxGsa+DWa1XkpuE3L+qoqGstgdhU2zhpkrKXyUzaZyCPBb4Q==
X-Received: by 2002:a05:6870:1609:b0:137:1433:bf8c with SMTP id b9-20020a056870160900b001371433bf8cmr693508oae.227.1665620571043;
        Wed, 12 Oct 2022 17:22:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6808:c8:b0:354:d7cd:c5e5 with SMTP id
 t8-20020a05680800c800b00354d7cdc5e5ls118539oic.3.-pod-prod-gmail; Wed, 12 Oct
 2022 17:22:50 -0700 (PDT)
X-Received: by 2002:aca:b957:0:b0:351:4ecf:477d with SMTP id j84-20020acab957000000b003514ecf477dmr3361120oif.126.1665620570499;
        Wed, 12 Oct 2022 17:22:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1665620570; cv=none;
        d=google.com; s=arc-20160816;
        b=RAoo79+motmz64U9dkhw0g6iqSydE+fPCVAsqnVJxIjgqrWmaRs8lhuFiKKFW5RYNZ
         Al9uJ5ab+jJ2gzF9utSEGF7b9HCdLRUoHHVg5aNX+lv8jOMBvzgJ9xwvAx6SHiYfVXP/
         QkOjfJnJPaAPFPe2BV7q5JboBErQGpS9mEATY1yE/IQv9yMSg2Sm5V0pO/whuqiWMbQW
         WCKLOJO6P9Tpjm5XUb+DFrfOqcGvvbX8t53dmp4GYelJBVa1TinmVKkEeN3w+kaTOmFw
         xNrrMmAsIhye3N0RqknOMbQ8Fb9NuchX8VCbjQdNLhN3lEwKzW3qxAAfZt2ljdHfZI68
         JVig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xJQEd/tw+5bihUtS8xNDx4uOCFTFc7l87/IjfaVZf1w=;
        b=M0wfALFKZGWfw1BNq+hi8WhVps/JBes8rtMSjK6e6EntDsivML/k47Mnj7agJFlnI2
         C74Vh84VrfE55Fy+W6SOxRCaDRe8TQGprEZS2V3XChxSnW0fUEiHyum+If8oPqpD5hpQ
         HUjQ0A9vN1OSdLzhj6XwIJwmltf2skk6+pmh9WxDR0OoLPC2ayPPtPxhHO0c9Sm28ypl
         6zhw76g8O5Y1sLVSMj4wf+4on1Fnz7YkaD40QoT/Hj8F1BxGNsll6BYvigac7JaDBSYF
         GbbDJqrX+HRkpj0NBNhrh188Lf7HPYd76IgE+Za7vXfZV5V9+8e5HMj3ornDAEGkO23u
         gCwQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="mkQzj/4x";
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id w189-20020aca62c6000000b00354286bb85fsi14110007oib.132.2022.10.12.17.22.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2022 17:22:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4E70C616E4;
	Thu, 13 Oct 2022 00:22:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 473D1C433B5;
	Thu, 13 Oct 2022 00:22:49 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: sunghwan jung <onenowy@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 5.15 33/47] Revert "usb: storage: Add
 quirk for Samsung Fit flash"
Date: Wed, 12 Oct 2022 20:21:08 -0400
Message-Id: <20221013002124.1894077-33-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221013002124.1894077-1-sashal@kernel.org>
References: <20221013002124.1894077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="mkQzj/4x";       spf=pass
 (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as
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

From: sunghwan jung <onenowy@gmail.com>

[ Upstream commit ad5dbfc123e6ffbbde194e2a4603323e09f741ee ]

This reverts commit 86d92f5465958752481269348d474414dccb1552,
which fix the timeout issue for "Samsung Fit Flash".

But the commit affects not only "Samsung Fit Flash" but also other usb
storages that use the same controller and causes severe performance
regression.

 # hdparm -t /dev/sda (without the quirk)
 Timing buffered disk reads: 622 MB in  3.01 seconds = 206.66 MB/sec

 # hdparm -t /dev/sda (with the quirk)
 Timing buffered disk reads: 220 MB in  3.00 seconds =  73.32 MB/sec

The commit author mentioned that "Issue was reproduced after device has
bad block", so this quirk should be applied when we have the timeout
issue with a device that has bad blocks.

We revert the commit so that we apply this quirk by adding kernel
paramters using a bootloader or other ways when we really need it,
without the performance regression with devices that don't have the
issue.

Signed-off-by: sunghwan jung <onenowy@gmail.com>
Link: https://lore.kernel.org/r/20220913114913.3073-1-onenowy@gmail.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/usb/storage/unusual_devs.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
index 4993227ab293..20dcbccb290b 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -1275,12 +1275,6 @@ UNUSUAL_DEV( 0x090a, 0x1200, 0x0000, 0x9999,
 		USB_SC_RBC, USB_PR_BULK, NULL,
 		0 ),
 
-UNUSUAL_DEV(0x090c, 0x1000, 0x1100, 0x1100,
-		"Samsung",
-		"Flash Drive FIT",
-		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
-		US_FL_MAX_SECTORS_64),
-
 /* aeb */
 UNUSUAL_DEV( 0x090c, 0x1132, 0x0000, 0xffff,
 		"Feiya",
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20221013002124.1894077-33-sashal%40kernel.org.
