Return-Path: <usb-storage+bncBDTZTRGMXIFBBWX66OMAMGQEKWTCGAI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E805B4960
	for <lists+usb-storage@lfdr.de>; Sat, 10 Sep 2022 23:19:24 +0200 (CEST)
Received: by mail-oo1-xc46.google.com with SMTP id x29-20020a4a2a5d000000b004729980dde0sf2210688oox.17
        for <lists+usb-storage@lfdr.de>; Sat, 10 Sep 2022 14:19:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662844762; cv=pass;
        d=google.com; s=arc-20160816;
        b=vtLEy3GgGY+fSPry9xX7V/Pjlb8h4MRbdjZtelaFzPIVjsd/OvzIV52Jn7+8X/fGXg
         JO1jdfxEeZV1cb4K6/UF3Rthvr/dIAdkoIr5blPKnk0TMvYb7LgIRyFSB3VlVhODiIF4
         gaWyM8NFy546UJ+KRhU0DUTkdR7FcdbFjrDfO5A85mmZ+pB7IZkKJfrmnPpMOfosaE6E
         YZxepOGD/kEPus3OzRnFH6cWB8gZn2NSCpEFklfFtbQAMIcqKUDhuqKfuD5NgzOCLCvz
         WDWWVaUVQqpKFACzhHSUGlCoOF9TqzzbLjqi3w67/FLcyweejdTPF/mIWlk4ARbxPBMK
         a2bA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=a3uE3vOahlG7jexaudB7IDRjfbFYrhmN7UJMbtQfVJE=;
        b=f24OaFHeAadUzGyGAK2wykKd7NtIYEIXzUk1wIyoXIhuY+Z67uWmkz1jvT4gypTo22
         KG3r6LHFpoGdoUZGJ0Cn7/IAy9upfxXoiBZGl6ba/NblwmGrs2LMyxTO1ZBuYakH0WIi
         4r929RdFdGBlaONRAwcMkhvlOtAUADEo54x97xzj6TZrRwjmW9M0Rt4+vN59Z6u8F+QC
         XgK/7ZAdPJY3WmqwwK16LzLfryZ+ASzhbTMX1er2dgUz+vZIKXLB2dwWwhq3TnWbQOcq
         TNXwHjLPG2FnOvACfOGw9Oz5O5JlLsTdU/+4LcAEaRBkS0+1xb/mv+zfgtP1QS7jZ27I
         p5NQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=s8dOH2de;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date;
        bh=a3uE3vOahlG7jexaudB7IDRjfbFYrhmN7UJMbtQfVJE=;
        b=JLPiYwS1JcY1IgmJTaM7jbrvs1q36tsLzXjfvQtirYCIs5xM1aJl0x9iN5Pbh1jGHG
         1a/7oEqgVDJpGwWc9y1tf9Ust+mCkRZOLM4qMlIZFMvx9W6ocTHoH02JV91fUn693g9c
         M0QvbPav5D2mXwqBfvQKDUECf1XEY6YovNTlg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date;
        bh=a3uE3vOahlG7jexaudB7IDRjfbFYrhmN7UJMbtQfVJE=;
        b=ZtCVR2lJNWWHldLuxQ74nQ/QcD4oOP3GjX7tUkBLFQ8BXRQ6ipv1B0SHOsAvXavZhE
         r1dAA6gv9RTZDBhM/EoEKJ5zHIEXUUO/2/J8JUMUP5vJkMesfjdVjIjVO/GKgiUdB4dW
         S4NXVo8t8JQco/4TfCHWlJKi06RfqSLcaHb4PmV/bd7ixP57x3usRWxtgFaHTJ4PPDql
         pPlUxHdgXmpeP9A6z/usuwh6efYsk5k0eIs5SgopBLZ0lQSH+mVd5yuey1hmDdldut2u
         qZKsvJ6BrLElav7miI9YnfR/iF9pPklhvmi/xeS18EL4FbCK/Yi+KX0LubZqpW2faMeb
         p78w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1Qde8dk2gi5AxPa/eQIWZPX9W5j5gFfwhlt1lGZQk3VEQoiSJ6
	DRSinBrJqP3K26rbkgkBbq1hKg==
X-Google-Smtp-Source: AA6agR5ddqokVFwDjqJxwlQPlO1M3TfuCZ+gneB+SA9raFeQOzEzEUuqzA+jpbxxTWMkFU7Z0l9m4Q==
X-Received: by 2002:a9d:7dd6:0:b0:637:3819:baf6 with SMTP id k22-20020a9d7dd6000000b006373819baf6mr8122666otn.365.1662844762639;
        Sat, 10 Sep 2022 14:19:22 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:32c3:0:b0:33a:322:8c2e with SMTP id y186-20020aca32c3000000b0033a03228c2els2300036oiy.0.-pod-prod-gmail;
 Sat, 10 Sep 2022 14:19:22 -0700 (PDT)
X-Received: by 2002:a05:6808:d54:b0:343:53bf:322a with SMTP id w20-20020a0568080d5400b0034353bf322amr6135721oik.124.1662844762133;
        Sat, 10 Sep 2022 14:19:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662844762; cv=none;
        d=google.com; s=arc-20160816;
        b=m4rDh8B1/MS9iJ5OUgLmin3+vzJlZggmqL64j1bBg138FNIUCdphV1wmoPCvNBvyzY
         mHz3VcxpUQNheu+yHLkFlAjAXddaZ5LqKnm0hQfMjkgXredxNL0kzpT6qafAkdUY7BN2
         0Jd/UUJdrHLvrtQwmjez2JPafFUn+uOr3dl4u0YWqorC/ceS+gr2wgkjnvJcm8yGGLVZ
         wwpxyXv3PHANk9fVUIBBtwRXHZB75j0PRxo8V5Wd3T01h8+5k5FZY2JleWXlZQ9j5GXU
         lgxLlxDfmF9wgTMJd0lEhviwJ446v4AU0CKUOlvCuLh8/g9BSp6bcLLnwdePO+bQUUmW
         XuvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Lqyvs5lVg4q2gbeESj6cOQDna6mNhnLCh5NjTaWla88=;
        b=V8bz15XUDcomRdm/fvAbgPzfgvlgXa4cHDXEnEpIe+pGCnh2ke7QFtwlP92rh6C58Q
         kiEPpWX8wnsWaXQedHKHz2M8AGR5c4rl2OSGoddS+lOC0R5GKXdX8Yw5NP6wVHq3mLt7
         EbqUKZ7+6YOAhD19z1jBvBdj1CnWVzQNGfNIF2Kui41Wm3Ttri6T1ahNPQa6avYqqfaX
         VOVMBmGIZP7KCRya44l5bgZ5uS0VnzlYJZonONBIItMQWdwP9WoheScuHQmB0rDF7Drn
         8jfKEs070Epvh7PdNABXFXwYcKIsUEKQrgpqwqK7icH6HDBYNcoclebkJ5GS9N9X006u
         mMaw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=s8dOH2de;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id be6-20020a056870588600b0012b542be641si1131737oab.79.2022.09.10.14.19.22
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Sep 2022 14:19:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E7A5F60E9F;
	Sat, 10 Sep 2022 21:19:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C4BEC43141;
	Sat, 10 Sep 2022 21:19:20 +0000 (UTC)
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
Subject: [usb-storage] [PATCH AUTOSEL 5.4 10/10] usb: storage: Add ASUS
 <0x0b05:0x1932> to IGNORE_UAS
Date: Sat, 10 Sep 2022 17:19:01 -0400
Message-Id: <20220910211901.70760-10-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220910211901.70760-1-sashal@kernel.org>
References: <20220910211901.70760-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=s8dOH2de;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220910211901.70760-10-sashal%40kernel.org.
