Return-Path: <usb-storage+bncBDTZTRGMXIFBBINSTWNAMGQEEGO3ENQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 516065FCF5E
	for <lists+usb-storage@lfdr.de>; Thu, 13 Oct 2022 02:17:39 +0200 (CEST)
Received: by mail-oo1-xc46.google.com with SMTP id d12-20020a4a918c000000b0047fce9c58bbsf201983ooh.10
        for <lists+usb-storage@lfdr.de>; Wed, 12 Oct 2022 17:17:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1665620257; cv=pass;
        d=google.com; s=arc-20160816;
        b=fLMUbz4hCUnroUJzwX6I/Cn3chNPOiwmPHq4kxrA6b+DXcBUif3wA4NSoVMTOvWehM
         G3PpzZThASlQib59rVy8fzvw8P5rNDGudzy7ceg+irMWp/EPWyT5fr2UqqBW7yMoqVi3
         UBq5aNB4UPaFkZHyKo0/oW1wYiSo6mWb1o6FDPPoBYeVnBj4l418BAMjHoPp88g5cdyM
         mPLRbnoOK1ns4M0Vrd/36ExpkSy+7/Llq607eADInLnHvIHHgqCyTJX2/W+H3/D/SlxS
         zjdeYSa4Y7L946ajpzWreGMXvJQko8ZttVPWP14XdUTxuzmgL6OCd3aliu4pwsIAt6WW
         ys6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1Zvk8G6jHYNN522SIz1RHiOeRTBCbbbQtGFxKqybnUI=;
        b=QDzh00WsguSRR+aLUX7x0zXeU6hdJsa0z1HMmnKJ9JHo836bqksxy1iyeKCc+54ZPW
         Z87pUEoq7uAr+4S4wFzRuKgW+0dDXjoiMOnjsq4jaxu8rd9irufPhacCn8A/CT7ZQhIt
         8dSRANku7xiEUHj7Hlmult05OPeMeTQXoGRJFFsQD9egz/Keo5P6JCPIixczAfQWeER2
         +3BQhEBQScW2M8H1KR8FIlwOrsnSOlEGvxVog3/he2dbfw07rH65kmjVhh5HShKky3VQ
         lWmk6B+Cuy51gdJKKg4shnKrBvVKVuTwvQpVy0vw7CELrEhzlQbJ0piF+WoPVIiDRZr3
         s3iw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oRo1pKDV;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Zvk8G6jHYNN522SIz1RHiOeRTBCbbbQtGFxKqybnUI=;
        b=Rwjkq0VY0Omp9madhYfn/Z6v3R1sObKRsQsliziGCCOWru4wig/TnMHtasiweT2B7k
         Pt3K0zT79OXJimZhaKYGHwCBYRsM3MgUQ/MB/Byhxo+owsXYJXqN+U0A2UZbjfGn8Eol
         iMuNotgEMnBey2alxgkZkfum2rAWY04s7Hqec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Zvk8G6jHYNN522SIz1RHiOeRTBCbbbQtGFxKqybnUI=;
        b=vTIYN2VCK4KR2KS9R/gNitPNclNsc+fFu2RvoC6dOVho4N5VCv2xNDBrol2L0WRJCw
         6Sb1QZBleeh/IsZOVc5gVKSw9AHuIrw3RSOpOC85QOY1cBHUqjNSXa/hhYltMTUFsRne
         TYxHtkz1mBOdCcbuD1FgiSVEYvGE76hq7BC/FhYIM1e1aNlY4dTyPo0p80w+lOVgFt0h
         FXxbTJmvD2Go2iL6RVJPjr0sDdS+EFrZewBEFUsrC7IRfZqoayQjoSC1TTzMTK0gQthf
         CGP+kBYVc/LxzE80GPBr4iSxBamrYsZxMe8JvXSxE4ERnvwJXRiwaarjU3yH3sSs0vy6
         twTQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf0RT47g4tntCxEr6eCDVC8H2XsYszslEZ/tfqAui1WI315/YSs7
	2nBF704Z4sQgf5CdRi1lERhrlg==
X-Google-Smtp-Source: AMsMyM7+Rx55qmFy636sYLGPY4MvboSeM8kjekUcd7tzw/+bj8pIjfJRgfcwMZhVxxtOQNhulEnoOw==
X-Received: by 2002:a05:6830:25c3:b0:661:c7e4:e785 with SMTP id d3-20020a05683025c300b00661c7e4e785mr70142otu.134.1665620257676;
        Wed, 12 Oct 2022 17:17:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:a584:b0:131:8180:91a with SMTP id
 c4-20020a056870a58400b001318180091als150637oam.8.-pod-prod-gmail; Wed, 12 Oct
 2022 17:17:37 -0700 (PDT)
X-Received: by 2002:a05:6870:f711:b0:136:b9e7:dc7c with SMTP id ej17-20020a056870f71100b00136b9e7dc7cmr4022940oab.217.1665620253549;
        Wed, 12 Oct 2022 17:17:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1665620253; cv=none;
        d=google.com; s=arc-20160816;
        b=EPZRSMOroN54KklLLfxGk8tYy42QMxKJuPLzcrySBoZU2w8NM3OiQnz2AyGTJtmIio
         qZZnIs5Aw+aKwRXYFX07U/+CxMI2hgq9zmLnvu+/zL+6dhGilY0QHxCAjbVqse+nVWSe
         tvnNYnxlYixmfYTD5OxErI8CGOHt+pgqB6BG4xp/JNxUryrKYbwUHM13CLJDH9TbecbT
         eOxdUVMFFD5Y8h1cY0nYz7rZXCEmXWstNpxEsdcbKcQJCMtHEBg67hY8wKSOYxQXGSDl
         X/XP96CeXSobrePlwFDE1aoqYaQ/3Vp8VsJvbOY+o4AvBVqYOY5yrfDuRt28S92Jn3en
         5Yfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xJQEd/tw+5bihUtS8xNDx4uOCFTFc7l87/IjfaVZf1w=;
        b=H2VaYBdj0XiuJDtUl/q3hfVvvBjbI+DL0sf4+/nEiakWtWW6CVYL6VMiRZQDsTkWEv
         DJl6J0ILSr0pk0lWrVH8jQw6RJ47pGDRhvqNqV4EDduY01W+EedeV2VglWIm+BKUXKzu
         JZMGbHGsGxXvX2aZYqANhlLQgwV55oCjUHqFWGHj+VmPIpeAiMClPsPEQGinHhWJh3gl
         s1I0DU/1T/8/4FaMRWsR406BR1SbeIR2+RMNERODs/ZJwgYEYLJdelgmg8atMJGtUpTo
         HmHHfH1ojZqBgxR5bRdrKtbLx19vxZAzGQwz5Grn6ezItVrHRwPFgdxemF8RjJPlOHIm
         wJEw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oRo1pKDV;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id z7-20020a056870e30700b001363c62fc3asi14078925oad.288.2022.10.12.17.17.33
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2022 17:17:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5DE08616BF;
	Thu, 13 Oct 2022 00:17:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E83ECC433C1;
	Thu, 13 Oct 2022 00:17:31 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: sunghwan jung <onenowy@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 6.0 42/67] Revert "usb: storage: Add
 quirk for Samsung Fit flash"
Date: Wed, 12 Oct 2022 20:15:23 -0400
Message-Id: <20221013001554.1892206-42-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221013001554.1892206-1-sashal@kernel.org>
References: <20221013001554.1892206-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=oRo1pKDV;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20221013001554.1892206-42-sashal%40kernel.org.
