Return-Path: <usb-storage+bncBDTZTRGMXIFBBI5XTWNAMGQEOUKGBGA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4435FD092
	for <lists+usb-storage@lfdr.de>; Thu, 13 Oct 2022 02:28:20 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id m13-20020a056402510d00b0045c1a055ee7sf278273edd.22
        for <lists+usb-storage@lfdr.de>; Wed, 12 Oct 2022 17:28:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1665620900; cv=pass;
        d=google.com; s=arc-20160816;
        b=PE1FzuhTXYzAFTTEWWmt+IFJdzczP8fkJpYrnDEVgzEkSTzO4qNhArlNO6Xj4A9bh8
         PyreBACqM5WCgE4kA7N2WRQkZAxxpWUiCGHo5inwZ9IsjRTDeXxrM1pKg7OE5ZDYAsX1
         iRbA3RLpx55Ol4lmZlJ7iTeL/0pbPuGMsU65JlCajXNuZa9Thb/xzS6OlKSiUCjUzGW3
         IZtO5U1xwG3kkgAw2qMYjCeXC3MSL+ZuS6MI+Jnibik4sp9JiAv59cVVz5z7nBZq2tZ+
         wolSrI/s6MGgUHur21C2hhpUHSG/P82YZioS+ClwvxLKtEH9uJkmlELLp7//xWOjCcOX
         Okag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xE54sIrxPdafLhGxB6bsdaF7BnIa+scGWtCzQ67G2Io=;
        b=bf1zx56e0VfKO4+ARKkOoDt+ptLN4PUUF4qUfZNIIkgPoqP+EJmtMyf73oSz3taqEK
         8bmLKOHF0ay2SjzLSxHgNV43jp1bvdCx+5PmrNGdsu33W7xAGXsG7OQCb34SvL61H8rt
         2l5vRZe9ISwuRi/6MlxveC/IEASZC8OAj5bJkHZHxM4c4jCAtGFaaJW60IEWUCSDxJrG
         9DtE9oHzGGbpK0plZUJ6ga3XgaazoDDg2rtpbFHFxdtfekcipTLRCj1RctO3kwdATf0C
         77p5iaj+RCcZ4LFsR/7BTD1UhA1Qhxpb+eVaJWLR/TX+Ae0Sxn2tsBZDzSJ7z9Ig8lrM
         qOvA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ftspPhV9;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xE54sIrxPdafLhGxB6bsdaF7BnIa+scGWtCzQ67G2Io=;
        b=YDtmU6MKo1pomexuBVz5iPK0L7aH/9jw4hf2khTOms/jkJb5XFUNomHCnoNJqc4pES
         LDMt+7iYv9sjCOtpfP7CTz0gjRmLPBHhCmhDhFPhkD2jrnsA6MpWoWDn/Afh/PZv7Zwu
         rwdkNLBljHHWBtipFTgn3dJPoR32DLCvqr4mE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xE54sIrxPdafLhGxB6bsdaF7BnIa+scGWtCzQ67G2Io=;
        b=KbpqyVKHUZ2KlbZ4nkIDGL0vZQIEZMWWKgOSVUGHiVVd0sYbxlT9JTqDCD+8Kw+uiU
         MRuQr9b3kEZjuH4BxGn3jFwQ113mmPevTwCm+VwvX4ZrC3XAI8+MeY3lxRUafHItHaPs
         Ie9oB025Bdv2eo2ps4RLGQTTggyyfZn0N+J5M1bZW+tCUB03N7ATMFdbwXtmJHt6NLjv
         Z/S0jBAwkp3U3a+2RymK/23Dsa8NAUYhvqWGEJdHVY84H21ZrbbCnbVKlrMGqb+a//Ud
         uGb85IfxzqKgOIWu1+e1LB/En0RkEym4pG35aiSufwcZxjpe0+lGMj6Yy+rM759PTeGZ
         m1kA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf1Aq1RZp6n/yGRV5zbLZkfkv5I6Y2jOhjRiOxp9HQzQMGR00hpS
	M9G5VO1DyarXGG/Yx8I/jVgGJA==
X-Google-Smtp-Source: AMsMyM5G3dAtjpEyRID6XVUcRBC0Th9PK5G72sS9iX4rsJZu5KDz8GHy5SljQPpk214TioN/laJwgw==
X-Received: by 2002:a05:6402:1393:b0:457:ea9e:ba20 with SMTP id b19-20020a056402139300b00457ea9eba20mr29732081edv.109.1665620899789;
        Wed, 12 Oct 2022 17:28:19 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:681:b0:789:e735:3ffd with SMTP id
 u1-20020a170906068100b00789e7353ffdls198706ejb.2.-pod-prod-gmail; Wed, 12 Oct
 2022 17:28:18 -0700 (PDT)
X-Received: by 2002:a17:907:6d2a:b0:78d:1f82:dd5e with SMTP id sa42-20020a1709076d2a00b0078d1f82dd5emr25013272ejc.615.1665620898401;
        Wed, 12 Oct 2022 17:28:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1665620898; cv=none;
        d=google.com; s=arc-20160816;
        b=DxKv9J1ceCOjLpVGPLmqO4FIo84/WXbagYcGz9kr6kLjkiVtrIr8mk+5qXIFCkLmqa
         VDEQxDgEvy9oJsS8y7e4SZaUT3/Ppww9VTYy6i6gGXwiYtYtPEN0F6VLx6xjw9+xgDZG
         ZKWB6IXdC28VyxYaigV/NTGJ6lqrAz+B5qqIrRjfvt6IoH9w4m5wx1Dm3tFMMVf0JaDk
         ribeCPQqJTuJJ19sX0KWjtWDk98ZHJyNf27tQFoy/HjqhiN3vk8DiWY13ee/53tpu+P8
         aoGInFF8e9TaSlIQxNNCo3kbRFJY2KiwuBWpBq6948qa6sYb1caPueGdZRrtVjk4L1Kn
         Pcsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=De2Hw+cMRcAxJBxximsSc5Ym2DiT4zWZYtAMocw3X10=;
        b=B7+3ReOJCVJb0l5SPy/aAjGjR8MaKW1mT7uON/AOoqFBmOHXuL87IdbCkg7/TIXwSM
         3OB+pbNQfTDh6z7YRADmNSD9Xv4yHlvJslZGSbpWKb+m+VEebDXj6YXOsGD7HpPxszG5
         1YryDQre7KbHe0vCiu+E9RYW6ZeygVgKsNQVv3Fdv9Lqbbmzckg4/9ZHGJdKuqDA0zYf
         Fx3wXK9797W355D8ytXkTTVIb6ixNwLNXn3cV+6/G+p+r/kG1S155EWK6+PZ5esk/VPP
         Sv5vLlG8gLP4chIHZX6ibMpW9U/fWpLii+IpcFfECU9d3pQ4HQshT0ENlXZkvgD4h9Ow
         5BGg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ftspPhV9;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by mx.google.com with ESMTPS id hz1-20020a1709072ce100b0073dced7204bsi16379689ejc.767.2022.10.12.17.28.18
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2022 17:28:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 102EDB81D05;
	Thu, 13 Oct 2022 00:28:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF972C43142;
	Thu, 13 Oct 2022 00:28:16 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: sunghwan jung <onenowy@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 4.9 08/10] Revert "usb: storage: Add
 quirk for Samsung Fit flash"
Date: Wed, 12 Oct 2022 20:27:55 -0400
Message-Id: <20221013002802.1896096-8-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221013002802.1896096-1-sashal@kernel.org>
References: <20221013002802.1896096-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ftspPhV9;       spf=pass
 (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted
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
index 5a6ca1460711..8c51bb66f16f 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -1294,12 +1294,6 @@ UNUSUAL_DEV( 0x090a, 0x1200, 0x0000, 0x9999,
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20221013002802.1896096-8-sashal%40kernel.org.
