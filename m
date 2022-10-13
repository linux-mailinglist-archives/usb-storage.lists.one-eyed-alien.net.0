Return-Path: <usb-storage+bncBDTZTRGMXIFBBQNVTWNAMGQEWWCOT5A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EDF5FD009
	for <lists+usb-storage@lfdr.de>; Thu, 13 Oct 2022 02:24:34 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id b8-20020a056402278800b0045c948cc65fsf295024ede.9
        for <lists+usb-storage@lfdr.de>; Wed, 12 Oct 2022 17:24:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1665620674; cv=pass;
        d=google.com; s=arc-20160816;
        b=vFfVO/BbLjqMR9iZvJeTHyzBkv9DWqgjKOdns9eJMcdO0D6kbyv3XOsRbnaK35Pybx
         SL8tUKtimzSaoTqkPoLxFFoPoKgV8UeOhVZpIQZzQ+2gxUUUQXjsP923nUFExGcNTFzQ
         DL7AYycrmVxUexiafROTb5hTQRbEUxRKOCYLB2jed8GyJIic5HU6Bmk6W74uBncpZYas
         4hXpQs6s/+xLn/fH7zNPnPELs/0lkkRQmnQ018qhKN568M9OBfeVrlCQf0vvcCWZUeth
         4njYxSavNVXF6hQYpPW0E36J4QOz5z5YE0nzpUP2DW6/2WHjAxqLwozjJHVZtUSQ1OcJ
         Wo4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5LtNcKKBWiZd2ThZmR/wX2iGkPq/Uxc9eZyd62Qvmoc=;
        b=BQuftLJGO6wqSpv7+U8T4eIOezMdHeCdva79iMVQlAJwfi2fP21DzBjLuR62xpoGDv
         YKHjTdrdPJsWNH83OK2r1PIgCPayYVl9EnfTXcsGQnHa+6BrW51EvUzd88oNsWvkP2Or
         qdfzuhw8P0roR9iCCRRDhTUMP8Mbujfs67zhK7EcmJBIYF41bNUjenrZtVEBbbh35BBv
         6QNPU723zTT6/V7vtI2jpGPqfKv0Glxwiqte5FZySkBcZYdxjKxZdWl9yYBEz2YV68sD
         Izh9sL/H0m+NPImvZ/7AyBIgcs+HC519JxYi/neMzMnA7HTH8TA2j7tZB7oV7oT2uJCJ
         j1HA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ae715EYy;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5LtNcKKBWiZd2ThZmR/wX2iGkPq/Uxc9eZyd62Qvmoc=;
        b=F47sM9z5noBp6t3AY5czhaltkk94jRvHlPz/pG9G6Wlb18Y/OEtTF1HdAbvrmWRzKT
         5WyGiQWRHesitg0gdoEBZ+LJrsetxv8BQeJT4C2rQD6vfKfekEagoB4BakkEdZd6qxst
         PSDJG5rIAqMXE2iGlgRVh8h9mF6iLHKCXHCXM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5LtNcKKBWiZd2ThZmR/wX2iGkPq/Uxc9eZyd62Qvmoc=;
        b=FCq0igXhBX9NzJysr3oHNI4pqzoLHtbohIgy0ChghK+2RXqWi5KWP+wZBXPbSscDOF
         6kYgA/C7ezSZB+Qh0bLM2BFzuE8NOICTjJJlANcveiu7HzOuGkBjEyd4Lt5plW0iyYso
         bbWH6ewv31FV0bBuP4eq3zR4XYTfE+WlUVlGEIjHzJLsMzWIqnF9jifNzE9jCNYB6Zsa
         eQ0KfSHHBNHMbeiKh2nWPWzjSKWGHzplFciLlD6fO3UuN3GeczFLhVX0G6Vk7KauvzqN
         Etc+6zbMyJvYCBctyJqNRPUoUQyX/+XWrrNmxlmtDDkKpPSSOCvHPoFveaA1gESnBcKK
         JBVQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf2e34h/1Kakg30MVFcqj8B94P5LKpV5tEmFo1Zmwubliy8+QZM7
	7PYXLpG1xllQd9mXqEH3m0MSuw==
X-Google-Smtp-Source: AMsMyM7S4/NYZiVZn4+3bZnS5ho9jmWijr9g44foWe8wSulPSEVNzK+rAmoh1/yopopm2KescjyVQA==
X-Received: by 2002:a17:907:968b:b0:78d:f5c2:70d8 with SMTP id hd11-20020a170907968b00b0078df5c270d8mr3769510ejc.564.1665620674037;
        Wed, 12 Oct 2022 17:24:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:3e52:b0:781:dc04:ef3e with SMTP id
 t18-20020a1709063e5200b00781dc04ef3els187368eji.5.-pod-prod-gmail; Wed, 12
 Oct 2022 17:24:32 -0700 (PDT)
X-Received: by 2002:a17:906:c08c:b0:78d:b8ce:c28f with SMTP id f12-20020a170906c08c00b0078db8cec28fmr12624111ejz.437.1665620672526;
        Wed, 12 Oct 2022 17:24:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1665620672; cv=none;
        d=google.com; s=arc-20160816;
        b=P0c4u9sj0ZA6zu05IfkLCjq2v6upf2SEuz5UdYy9T+/UA2kx5ThVAdSQ7vJeyA1hRy
         SeetSPaBD4Gk6ONmpEIP93lMZARppyaseFXww27ufsgq3Wu0wfGDezn6kFW8sW0aevTL
         XCIxZX4s8r+5ekH4oRN+cbuwqOJpywUU57JBYJGKTGfUp1NTiqJDPaWqh6Ss1/Gsnhy2
         hI3mjO6FNswt7Qg9+0LVqejc+qKDejZg5hl4SW3Q7tv5RbrKim3pFG07DW0yM8AwiwXi
         NOz7srBDiMQGUfuWeHwPoDth0xTPh7ssXC2M+nrE1fzRoOIBhK6ymSwZ1+axbqoJ7lFH
         5RKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xJQEd/tw+5bihUtS8xNDx4uOCFTFc7l87/IjfaVZf1w=;
        b=Qt4vkxwSkfM4E9f7k297O8RPLtzI7//+yr+8mxB6mzjikX8Rp5f6jXcDMnUcxvy9l4
         L0wOIwUZViiD/D6PrS8GJQBLPaC6rz+iBVIswNYsC5KeAis5P9V0WX3JF3RYyDB5RwM1
         EIkjCijzbEQrve3kifkPYcxfqSWLdWeS+7h5I+QGspzsN6U21w0aau0dckb7d/v5VZbr
         MNVWU9ElOmNMskP3jCYOVf+bQ2V6yGFqsF4sSfMCT8f/du//y+cziulOnOu0tR5601LR
         G7M11yYAFYRwuLuG/456vqrzFc98c5ETt5a5iO43RKFrU/3SisT55PPDxKDMGJYg1RrV
         aTKQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ae715EYy;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by mx.google.com with ESMTPS id s7-20020a056402036700b0045879feb9fcsi12734484edw.185.2022.10.12.17.24.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2022 17:24:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 334DDB81CD3;
	Thu, 13 Oct 2022 00:24:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05062C43143;
	Thu, 13 Oct 2022 00:24:28 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: sunghwan jung <onenowy@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 5.10 24/33] Revert "usb: storage: Add
 quirk for Samsung Fit flash"
Date: Wed, 12 Oct 2022 20:23:23 -0400
Message-Id: <20221013002334.1894749-24-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221013002334.1894749-1-sashal@kernel.org>
References: <20221013002334.1894749-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Ae715EYy;       spf=pass
 (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20221013002334.1894749-24-sashal%40kernel.org.
