Return-Path: <usb-storage+bncBDTZTRGMXIFBBSNWTWNAMGQECMMOUFI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2535FD067
	for <lists+usb-storage@lfdr.de>; Thu, 13 Oct 2022 02:26:50 +0200 (CEST)
Received: by mail-oo1-xc47.google.com with SMTP id j24-20020a4a92d8000000b0048059a9a597sf205911ooh.13
        for <lists+usb-storage@lfdr.de>; Wed, 12 Oct 2022 17:26:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1665620809; cv=pass;
        d=google.com; s=arc-20160816;
        b=NYG257hF1n4DLTvMtopb82XNvHQOf7zkkoz07IvJafEJqK+564BfPmdTmRR/ZBvjmP
         Qoptd6UlJS2ZSCceDMNR6pRn2yibu2ZVk0qmq8+AWZuOXFJR5NB9SeyVALwEMZpcKFBP
         QplMccXLRR0NDutcsZofgZqbBCGnDpZ/jVkON/voSRVZD4guyWTtXEpIgJwVO1Eip7XC
         M+FuQj5Uq+ZCSyvbeqUYr1w2cH+/dakGJ8DOUmn47Ri9U6vNCHg+8ODZjK0wcj3v8nHI
         DbLcl+YoyLAa2opFVMUvwa50WaDrJrcghmOoja36/lSihZ/1q+8oWtsUpsM5BCnLc/7J
         OdJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ZfIBohfTfSKS9jnJC3f/3+uib55e6/Aok0ZnlFD8A5k=;
        b=cpsR9q/nwn4YA3GOWd86n3QHi9MQ+Z/ysquJx93LRJZSPYFc4NkwV/kISRhFnrgmPu
         rhjK/PBvK2qayXcSrGulfYgJXDUBVc4Qzw0zlyYLFNxfmvTtDYdPf8w4tgeqWp699UYP
         weuyUsO74qhKxFZo6NUIvfxBm5TyW3jRs7wDttfXY3JFQfgSTpnhHA91JwBcgYfWOG3Q
         okrqiqPnIYLoo0aTi1TC4GU6wtHNgDOvyqZ/gMzYcnIvvelV2G/t215jYGs5lG6KEwmQ
         LoszoAU4Uyh5SJJuuyj1YEUv+/Ng+h3gZuXGSOfXrOYFzJm1aUsAGSciJB8XwczcwFh3
         PmBg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BGm+JhxJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZfIBohfTfSKS9jnJC3f/3+uib55e6/Aok0ZnlFD8A5k=;
        b=b+ew0UOjUmzSrryKIVJbQgSvdDM3nS+NT0MEFvD7Qhz1+ClX1crHLaIBPag9VxRXAW
         CjOdEec7KGm/i59p32U5WF7+Bg2pRbyty0tNTPG8Y6YImZTKhwkLecD1f3inI93bhdBy
         c/7YKJR9QzXXLNyyDQYdntFxb1F7bT6aElsrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZfIBohfTfSKS9jnJC3f/3+uib55e6/Aok0ZnlFD8A5k=;
        b=trIO0j545l2F9tP9BbsGiEdEx7VChqJhZd078x0x4RnvH+0TxS0caj4DvVzQdcttRM
         84PESmMT0hcZek8Kln1wPJ8xAprub35gh7wfIJwuENECnktKopfLFunUMV1/0pdbnfT2
         PkmB4mc9QL35I/xdSntp63R+mfykElscJvYTtlsMEZf/aBdlbxUeNy2QZzKy0XC8OwPH
         RLlYv/h0FuvF4aE9Tmeka9HYoTsSpE8VsNcPD/uZ7GKaSwuBQ8z2AWpzEuZ6nYRqfPVD
         Qow1hHTvlvLJGysQPMZhkjbd0SKWVo3F/G8aKnpXUKZTHMu5tCGh+IS8quPjrFR/dCeT
         vfzw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf2DrX+KdAxtY9O+py6YkDollQq3vXCTBq8G9hNDoUwwzF+Jet2Y
	eYAAuClvTh+98xdfHI0lN8Ak7g==
X-Google-Smtp-Source: AMsMyM7m1gcwo5BgvaTGeukhYc0kCw08/P08IFLoeuTLIj1Oa/DH05JF9tVg1BZCPl2d75X+oKsjWg==
X-Received: by 2002:a05:6870:5494:b0:133:14f:73e4 with SMTP id f20-20020a056870549400b00133014f73e4mr3982621oan.184.1665620809281;
        Wed, 12 Oct 2022 17:26:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6808:199d:b0:354:b362:347f with SMTP id
 bj29-20020a056808199d00b00354b362347fls121156oib.2.-pod-prod-gmail; Wed, 12
 Oct 2022 17:26:48 -0700 (PDT)
X-Received: by 2002:a05:6808:1a27:b0:354:55e5:9777 with SMTP id bk39-20020a0568081a2700b0035455e59777mr3231439oib.267.1665620808761;
        Wed, 12 Oct 2022 17:26:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1665620808; cv=none;
        d=google.com; s=arc-20160816;
        b=yPN1afg0LwfzigXkCeuE3bKzCsJ09X3gEJJKSLF2qQAuCaVHYYeQnq+icAoaGzG+CQ
         TOSXLzz5IMsFPb6h0QFlzPE4wQQVZJunA3Z9g0qpeTUNMFlwnr77nnTyXkmrxztR8PId
         RY9hxv/nJBCiRXKpbi1OzhTgBifIwBuOBUpsnHv75+Qly/WFNWLxF6eGpTGoQBKL6Vmi
         OeLjWwjFHG5q44lNsnCthHilPoa0en8JBb6a/iWDSpMpXNs1VMchOLvKflrOwJtIOG5Q
         LL7wAU4Q7eu+5pzv3b0di0QgdUDGoy8rC69RQB6D08FWacjcgl7QzoxcMXq8VkboJfBL
         HFFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9SEQQBejgvCYb4i4gdFNtD1eAU+v00ORZRu1N0jub68=;
        b=I4gwn85+Wd9LR3SJMHUbngNU4RqcBb/dvCV0Z/ei+D5Q6VC1fawwe/SYYLqlDBmbIg
         8/wx7SB8TlwxAI1HFWBzFyj3q4/vDIdItptZ9Efbg6LfVluyvm8XEPsy/vtXrdS7eAgz
         SFtylD/iS+J5MELmhE73EI5PHYybZtj1KMuJZzD4ayX7ohc6zTpbcGe/Y1tvBdPNwI6U
         4ZQe2p8QeAFNV7noq0WdGJPJ1T0yAWtzsFncFMDRFSV3yiuuJdR7BSoVruojH3wf1F0j
         VjjpYQtpCz6XFRY3pbbrDSHOi21FfpNyIBGCD26/n6+GWcAnz6gf5V2BmpRi94zBrSdT
         G30A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BGm+JhxJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id a2-20020a0568300b8200b00661abe92678si6304309otv.310.2022.10.12.17.26.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2022 17:26:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8AEA2616F3;
	Thu, 13 Oct 2022 00:26:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78748C43144;
	Thu, 13 Oct 2022 00:26:47 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: sunghwan jung <onenowy@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 4.19 13/19] Revert "usb: storage: Add
 quirk for Samsung Fit flash"
Date: Wed, 12 Oct 2022 20:26:12 -0400
Message-Id: <20221013002623.1895576-13-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221013002623.1895576-1-sashal@kernel.org>
References: <20221013002623.1895576-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BGm+JhxJ;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20221013002623.1895576-13-sashal%40kernel.org.
