Return-Path: <usb-storage+bncBDTZTRGMXIFBBD5WTWNAMGQEN6UB3SA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x46.google.com (mail-oa1-x46.google.com [IPv6:2001:4860:4864:20::46])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CC85FD052
	for <lists+usb-storage@lfdr.de>; Thu, 13 Oct 2022 02:25:52 +0200 (CEST)
Received: by mail-oa1-x46.google.com with SMTP id 586e51a60fabf-136fd83729dsf260019fac.20
        for <lists+usb-storage@lfdr.de>; Wed, 12 Oct 2022 17:25:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1665620751; cv=pass;
        d=google.com; s=arc-20160816;
        b=NqLI4Z2YpPpeXqOZevN4NVEEmQAmSvl0f9xtyDA69Dl/Fu6F+nvU6L/WUULl8Hv5Ze
         SfwNltZU6tr7pPUO2GZHcvp1aTv/ZTvt+Vvx46BeyF+hejN2EmJp4f+s4HxLSAprDeP5
         2OkYpJJiXtaMMCNy1t7mh8WMILxHFheQe7SiEJkdDR9x7dKaGPJXJFviVxtyxc0B2J8F
         vs2cgbprFQQ4SHuyeBy3/R60bOtAy+ys4gVZXQA6OoAQ9JKsZChXWLRDth/ZiRyQw3QY
         6fyUC7KoKuPih9hqY26u6u7f/OTc3zmwCt9bINUygqidkzETgO2AToOnMmHJlPhKekm7
         GT7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=yRGTza3gEGe2Wf3L7nJQEM05ed9e9eKsIKegfJnsbe8=;
        b=S8qdi4BsBU1vtUFNrvQBrhyHaGKluSJkBiTpubh0qqLUOLv6tDFjFSAqzF0b7VSntt
         Z+ngp0tSY2iY6s76X2fBXrd1RpK+cBsoNR+bXidhAwqboprd7Jn0nIWnuttvrPD5wPGu
         aqhNBWXdqtVKGl1HEUq5Pm+LGgtOsc91w0CNJqlyLbo+W8VGR7xwi/PJW843FfN6z7Mg
         Pk4CW6RZWeTEEoGXdmdouWqDQxAfQk34UbfPaoRDuOlsfuYNKG0XsknF/Al7dv9EmsB1
         XHLkY+1WxzfaTEhMHLnkImDDbu48zX6FO6Zc3aO5vvfzv/U7hOwgHcCogNp5mLulo2yM
         1K4A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YY3ERi8k;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yRGTza3gEGe2Wf3L7nJQEM05ed9e9eKsIKegfJnsbe8=;
        b=YkigtDHXg7IkO/XsVEASQBr6XSEcX7UFONGuBj1hI6/69z7XemxQlawOiSjBIVKtNr
         m/kZFKcfV8BUHWRnpl3aDYayCxWBxjHTqE8lA6zSjjh7oNCVSDZw0rVYd+0D3DrtLUmF
         cEJmtNTY92Pukm1kpkLljK5PvuZa+faLuuDGE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yRGTza3gEGe2Wf3L7nJQEM05ed9e9eKsIKegfJnsbe8=;
        b=HHoQxc6IFURQpma3rfi1yMfYcPPYKIR19uYg243R2M7vmpGf2xkvw0ssUA2sNddpK9
         Fym9yLH1oXKzrHX2hcRJBVQk1FSjAeHU8mmuDKDV1siQ8UxA1nVd4KfGJQQnYrHeoWyZ
         xKVasvhU2wDczdUt7jTnmhnVw3Pt35praKDdYsIAVi4okntDC7ZuXL4BZ3PLiqkUEFws
         vJB9yZ2mxDOMILL5PUjePiqso/YfvFeVPcMPdqlsyLqcPRCnCybtuPz5tfZmLqRTYREe
         3EYDTGAJv2xVqHEeGp49zWYo3WjyQywDcvXqrqjVlzX5/dbWR/2X1YAz0lNm5xcgImJQ
         COdg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf3uKHP758SoPgnyklTiTmoRPAD5N0QyeMKKMoi66yB3hGbwCg9y
	LxqfolXZw/4UTlxLhcD5sxeWng==
X-Google-Smtp-Source: AMsMyM5B7rjuEEJ1TN0t/QQxmzy9zD0HLvFymMEUQjrgAW2r2fkFBl/1uBhHJoUJ8mAk7DQO3xjm1A==
X-Received: by 2002:a05:6870:ecaa:b0:132:8578:3009 with SMTP id eo42-20020a056870ecaa00b0013285783009mr4167699oab.168.1665620751124;
        Wed, 12 Oct 2022 17:25:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:6108:0:b0:350:93ac:59e3 with SMTP id v8-20020aca6108000000b0035093ac59e3ls113388oib.9.-pod-prod-gmail;
 Wed, 12 Oct 2022 17:25:50 -0700 (PDT)
X-Received: by 2002:a05:6808:2121:b0:354:cc32:8e7 with SMTP id r33-20020a056808212100b00354cc3208e7mr3470136oiw.269.1665620750472;
        Wed, 12 Oct 2022 17:25:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1665620750; cv=none;
        d=google.com; s=arc-20160816;
        b=xuVgFnU5NbbRnnVBvpNRdlqqTUVkBBn9B40Lx40BW3SpC3Kum8+tbyow5Q6gPlasH/
         pjmQ87AgCfpK2ajkPzRmFj24NLOoqB3QwVXrZXCJ46vn3PxihyDgIi58Bu7IpGl3kmKX
         CD+ejqcsWZ5YkxdeSk7jBRE+LxTCuLzQiGATFi79C0DOH0DEKTB82T5JQ7R9VWRoncxD
         +E8JuQSawDM8rMhypjlGfQxZ+tmWlttMP2lfSLhWbRtBf4rvIu9rW0KUnsydLzc5AoMf
         cU/OtlrH2Cz1X6Js4bZ8BWRXOv8Z3AwvXjIDwpiln3PXxk7ia02FCFYZdxaPCaAKDgiO
         o72w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9SEQQBejgvCYb4i4gdFNtD1eAU+v00ORZRu1N0jub68=;
        b=Fv/YtkZ90W6bNBqzQhx1kNVUk+s4miVLABsiu+f9eMS/uYJVrwpR/X74AignuuZNvO
         GX17qL3naLzmfEI6AUm+yFKRngVJycvny6fNBdsyZmM/O612ANsNI1VbLHoT4waHQpi9
         Xoyq4H/Oy1bU3xYXUQOX+OkcFvIbO8f5f2bxOzXu7OHHO1ZbzmhNL9BpnbdO8XLIRuPM
         XJFRechEzEsFw531C0N//Aw2RdvLxm6l/4JW+dtAT+nxw5ceuEORVYUqdqbopfYyEGmB
         YKIZfTJBv6m3K6JVBsacyhgB6+KQO+oTdDsdVPLCyN0z6tgBoeJTB8268qdX44rU4f+H
         UGPw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YY3ERi8k;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id s37-20020a0568302aa500b00661ace9484dsi6537335otu.269.2022.10.12.17.25.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2022 17:25:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3F959616BE;
	Thu, 13 Oct 2022 00:25:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1A85C43141;
	Thu, 13 Oct 2022 00:25:48 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: sunghwan jung <onenowy@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 5.4 18/27] Revert "usb: storage: Add
 quirk for Samsung Fit flash"
Date: Wed, 12 Oct 2022 20:24:50 -0400
Message-Id: <20221013002501.1895204-18-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221013002501.1895204-1-sashal@kernel.org>
References: <20221013002501.1895204-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=YY3ERi8k;       spf=pass
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
index 6a59950a63a0..b270be141b8e 100644
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20221013002501.1895204-18-sashal%40kernel.org.
