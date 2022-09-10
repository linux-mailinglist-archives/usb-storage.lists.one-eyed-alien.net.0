Return-Path: <usb-storage+bncBDTZTRGMXIFBB2X66OMAMGQECF5VTZY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9785B496B
	for <lists+usb-storage@lfdr.de>; Sat, 10 Sep 2022 23:19:39 +0200 (CEST)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-1278ff55da4sf2382706fac.18
        for <lists+usb-storage@lfdr.de>; Sat, 10 Sep 2022 14:19:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662844778; cv=pass;
        d=google.com; s=arc-20160816;
        b=mHppcd6iKzcbGJseYL8zkp0G7xkdyhIZXaqJYSmQMOFiCZtTwBJYQ/TfP4/5+TP4qQ
         Pi3V151mo9iqR/q47UPeIh4c7mo7aHViNCBYj3WiGRwtS4Cue3aErCtL7a68NZni3QhV
         8+Vr0kOnZXVgkgu6tLSjtst6wr8FKQ3exOyvsTG1YPyNncBEzge7atVmCDElWMqDQV6F
         XNvxA2aoUzI8d20PZK8m40WuRwHGK93sjtLykBBc+ftHCoh4EABMB1cHTPj+YFI32trX
         o2BUIN415P//cDRbYz5y7UljTplKHOXUPAT23PXXl46rkm1hZ+1EMw3D5R2z850itBsL
         7Xaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Q9g9ihcrOa1WOZ9Tz1/JrIOR2LJD0iHDCHXMvfolEQU=;
        b=Q62yscWysNDLqcoM18Sl2Lf+AbXcDk10xL41NshllE4MdX3dRRbbwvjKSMoVsHqp5v
         s+VDUD51d2s0BKpL/nkH3oU5AzHtH4in1p8LxlDytYssyO3MUGnb4C9hKJ0gNbl82Iky
         lhn6DWVd4LI8JKivkVOT9PvZYuHqHH0kR8Oy672EZ2Uu/Dg13x3elNFgIa+jmh3p5Wzl
         JrGRtRtET2Od/FhbeImrtFeUg7AeoUHI9LEHwL1f77ZqTKJbl4KcJSg2w7c6PduNPDFZ
         8c/fEuUekN4XGPJD5/kn8LLYfvNDXkD+m2Vsz1RMTzC1KcjCfHQhRnNdLdqovlN1nYQi
         R+/g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MSeuLqFs;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date;
        bh=Q9g9ihcrOa1WOZ9Tz1/JrIOR2LJD0iHDCHXMvfolEQU=;
        b=jOSqMu8rfMZ/VKTceM1+xOeKZY0P8vVH5BgjijgOTmFZgnm0JIcQd1z4Y5iOXE8DPq
         0RR4eWEhcAcxVH5Lp99iFW/JWU5oqiDmEBjzm1c1lykK/xtxaqS+IkQNIBvV8LEfqli/
         dqcZcSrjwDw6PgmwiLnP/CvodX6UM0W1Q+1Iw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date;
        bh=Q9g9ihcrOa1WOZ9Tz1/JrIOR2LJD0iHDCHXMvfolEQU=;
        b=7pxKDLxAdO51qSplzwunK85wiPbAX8+JbTZ1LRIWvjgOtaG4zqVk21/0v11yGzMSEK
         L7XL5jblkx21kxa/oI6WRPZbZjIchBZL1/StPbhqO4W70/orOkdKj0LoMR1tstbkL5X/
         3IXzDAieK+q2AzgGFC73c51lXE0h8nZwtnvWiuiXEBtPnjgmEibv1ACIeKwXB3tzc04Z
         XMuH1QneY6NzxKnOPwGzGGW6Gf8z7Zkf7bwbW4TwSPqQWaWeDxhaCh7kI5Qru3WoqUZ/
         i7RyEy61LUpCSci87Hrn6LD4uagt096CKx0SnXyiqnF+eyI4UKh/a/EWHorzBAuFD8fh
         ZdoA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2HtKL2/Q//+R4uGIaAGQamBBzhef/90audY0fBDvs5djb2aU+9
	CfjEYCPZwYllfVDWGNV638po0Q==
X-Google-Smtp-Source: AA6agR5+b77f5FB7Fqu+GsJzL94G7JWlADC2ZG2igKCRsWATioagSMA8vt65wDUh+D38hH8KLuLcOA==
X-Received: by 2002:a9d:12c2:0:b0:655:cce5:3bda with SMTP id g60-20020a9d12c2000000b00655cce53bdamr1008327otg.23.1662844778404;
        Sat, 10 Sep 2022 14:19:38 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:7c6:0:b0:344:ef1b:a321 with SMTP id 189-20020aca07c6000000b00344ef1ba321ls2283026oih.9.-pod-prod-gmail;
 Sat, 10 Sep 2022 14:19:38 -0700 (PDT)
X-Received: by 2002:a05:6808:f13:b0:344:81ce:7f7b with SMTP id m19-20020a0568080f1300b0034481ce7f7bmr6488633oiw.248.1662844777915;
        Sat, 10 Sep 2022 14:19:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662844777; cv=none;
        d=google.com; s=arc-20160816;
        b=zDgfROWQ4OsPxIsQftxZnrTbLCKLVIPrkBnNHXzwiV29crfSLuXuQ/+xTtSSn8kBRB
         mZsVf7EVa70YBt5S0r3d1OWrSyopRuQINx1zYKBrcwLXJm1IdKzeFini1AUVmhOHNRvd
         5NTxwweErFXH8Dr4fG1D1ZKAJKZJnHOgUphCrytlMjrkmR6CUPZvrN3Puv5vL19Faj0R
         y+8eGCmRP4YVWvUCc9dzWqu5dNyRvuKQ5XAE87WvQk8Lo/OId9lw4TGaZydjHe+uilGg
         qpVFAwEkh+NXmzOfEYz8Dzoiw+Qa1Dso5MoBSmapZSqSskY2Q8CgAULe/+qpWbAHY5uM
         bhAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Lqyvs5lVg4q2gbeESj6cOQDna6mNhnLCh5NjTaWla88=;
        b=NWQef4n0EAkujbD9M9a9MgAQd8I03HKNmJi6n+X3rvBk6tcQOIgWz5pAYY0Vrz77GD
         J9cCRYQbbQfOcpd1Nn0lTW0ODA8l37bMMNbhPYjtcHLRWWl9i8+HWfjXc/RWW2RWRAS+
         Tb62fwiWlHfxdW4vUTLBjtMSXSVMzDJopZw/w8zNb0snk/NgEoQJtYYQjZUJqhjewYQj
         STztgeDp+B34A/bA6Q0DbaRXNw3qGoPg01KqIrAdkU+rDgC1aZ10lvZeFPCaUVWCVTbL
         tikQUGMpjK/rCcWKOUfa8eJVj7JPdxA/4RL7c0iuy0aFP23m7L3thnlFlD4O0nJiB1x/
         I4IQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MSeuLqFs;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id u25-20020a544399000000b0034f6629d674si2387267oiv.215.2022.09.10.14.19.37
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Sep 2022 14:19:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B31F060EFC;
	Sat, 10 Sep 2022 21:19:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 992ADC4347C;
	Sat, 10 Sep 2022 21:19:36 +0000 (UTC)
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
Subject: [usb-storage] [PATCH AUTOSEL 4.19 8/8] usb: storage: Add ASUS
 <0x0b05:0x1932> to IGNORE_UAS
Date: Sat, 10 Sep 2022 17:19:21 -0400
Message-Id: <20220910211921.70891-8-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220910211921.70891-1-sashal@kernel.org>
References: <20220910211921.70891-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=MSeuLqFs;       spf=pass
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
index 2f72753c3e225..0b37c8e550e7d 100644
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220910211921.70891-8-sashal%40kernel.org.
