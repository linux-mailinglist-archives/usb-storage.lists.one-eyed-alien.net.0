Return-Path: <usb-storage+bncBDFKTTUNQMNRBOODTGPAMGQEF5YYZPA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4EE66D8AF
	for <lists+usb-storage@lfdr.de>; Tue, 17 Jan 2023 09:52:11 +0100 (CET)
Received: by mail-pj1-x1046.google.com with SMTP id 31-20020a17090a0fa200b00226e43409c2sf13991232pjz.9
        for <lists+usb-storage@lfdr.de>; Tue, 17 Jan 2023 00:52:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1673945530; cv=pass;
        d=google.com; s=arc-20160816;
        b=pAHjM4b8AyZ2vh4rzLptXNBXWLaR6HycLYHTeYWeEav1IJ268xOvmq5Qv0DRG30P2A
         zSAN5DTJGrYDwW6IeKfdL/Erz5FdkYvqFyf13R7O9v5cXzWIZJAdgzlKPZGEA5JBawLb
         JUHE2uwFhSLeuDBcsKIznIFCB9sM18yvGS27oMC0gUSBFVtw1dDve8IEga1C9resc+z9
         80aNkakOiE6+/26c/fiL+O2kX2ysQVnBnjhiE7wBFNMVHe8/sMTLXBdtbZ0/+oDqDvay
         8264nHvWYJoNFUxbgXwZ+4fCyGanJFEuG+imtrOgLnGZF7SPczBCx9wuCIQzqBsTQxDx
         gTsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=TB+Kpb2qWQyQQJL94aTXgvW9y+EZUL2zOZw8dbp8d6A=;
        b=RzEiigfb6qw0p2/sXzi6TNWrNdGWv7ndcFmSwJxyJJGii8ReNJg/xkkA2wpskpW2N4
         bxGXRbzGbh43N58ffiGJLc8JklSgVVqWqaIzpHY5cTXc6ED3jUd4xEgQeZlvJcEWl7S6
         3ARfhBoCknEUePq2KY4TnAZOdKiENXF2ATkXAU0jV6tdAQc/AbmCNg5xF9XdOumoZ5t+
         vq1U8VJzu/9sX6ow6E/PZl0j0y8hmQjlZCs6ELk3gnEtUzMWUP5+rJNFmoMOQOP79HgO
         YcAsh3U34ymSAZ+v+Vy6f+cGeyBNv8QQOuUeGz0Y4nipgw58JNHIMg25gAeH1cBWZ3Uh
         RG8g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Bl+gDGnq;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=TB+Kpb2qWQyQQJL94aTXgvW9y+EZUL2zOZw8dbp8d6A=;
        b=b8aFqPlLefoa9dnisPC8lXsTXdrSHG0AJykw180aH6x/gL6V/57IvvMoKJlPbn0skE
         ESsmeryMUqJsE4Vz3IIE0ShvIS2NsKUHOJbCP3TbQ69Jcd4QtRHopQ/1K9FLphSs/hzU
         tFrrtzM7RQClqBXgVA/u6ZVu5zMDUqriwZd/w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TB+Kpb2qWQyQQJL94aTXgvW9y+EZUL2zOZw8dbp8d6A=;
        b=yH6LLo6GNQ+itJSlGQoexVrfFu2+alYhm4r3Mu+zxJLxuEwLqjpZViDMVXwgUlRsZ7
         KqJ+gRRyQzUG0mHWSrcq9agndaI2nOWt2pCiEpmBAuoFPZFA5n5Mjr4EyTfWJMLirQri
         5ECIp2/o5vEgg8v2qiSW2ofwv8CZfhfU2tTW4J99m63MTWGLXoyPicJy1E4ZdmykWDgd
         p7GtuAuZIrYUEgFroxrvNVUvDOU8te+JTSn6pTsSDgxJE2AQeK6bJ7tnp+vARSDCc32y
         PNcYk+PXg2Y5jiPBeCqD8AMKLqD6CHh95Xg1E31OSjOC1vCn5YM6Kc+xBrG3bnClQb4v
         Fc2g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AFqh2krnIelYqxwtfpRLeR9ASKzqfBZN4rpsI6ZSQ64AEv7qXMuWFYf9
	cwEhFxVLn6uE2eAQpbgkXy8Sww==
X-Google-Smtp-Source: AMrXdXsaFoFGHcjMpRRRhpEKT9cY0LTc37tMAviExMUx2ura+Y2rBxh32YUIOsOMQBQr/yDRe6J5/Q==
X-Received: by 2002:a62:1692:0:b0:58d:aeb6:2d64 with SMTP id 140-20020a621692000000b0058daeb62d64mr232592pfw.6.1673945530049;
        Tue, 17 Jan 2023 00:52:10 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:66c1:b0:227:1b53:908c with SMTP id
 z1-20020a17090a66c100b002271b53908cls19487784pjl.1.-pod-canary-gmail; Tue, 17
 Jan 2023 00:52:09 -0800 (PST)
X-Received: by 2002:a17:902:8488:b0:194:8a6f:ed2c with SMTP id c8-20020a170902848800b001948a6fed2cmr2621924plo.16.1673945529111;
        Tue, 17 Jan 2023 00:52:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1673945529; cv=none;
        d=google.com; s=arc-20160816;
        b=TGqhRpGe5igIfZruVUd5Vivasg29PW6g+hYNqM8Nb4eZgdYgiyeSBsjbFPeBEbxx5A
         xD4C+6Kzz/40KCMiNNiHGYNjkvG/XaMaZtRsd5Gcrs2bK8ifz805d3Gf85tJt5mpbU8A
         FWND8b8u/f8jc/wpz/iIbWnoL/6nz9spQ85Xfitae3DFqFbzOhDnTzkOp7pJFhxIJQNG
         aKiE43vS6d9C8v/B4n8B9VGLWGDlk8FhNs4PiVaLDsk20y5R0vHMCjtvxlZMllzBBBT8
         +/JwO5FjfSUbCIslPSUFiu/jAhWfHCD+lZ4UTJlZC7gA2fvF12iqkf8vhL7jhO3oOXXe
         8Xnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8J3QnLiWJRNwJkdXquw7vxE3Dsm52ATXYwWQhTUVO8c=;
        b=BKB13DkP35OB3YeOkX626xkbN9v1ccNM/ISB3t779DQ030b71fmcuiS02QHSTScyIj
         qLUcuyIb3RHEU5sr2a0cSCDmeCLHsboWaEnblr/QqUyMEtWH8TI8mI0gb4mFKvNYP/kn
         fxHAHhhh3iM4tQiEzxDtyGgNvsDD5zPSCDrII3jEyIeDdrtYsuCPV1RGlV16ii3QmYj2
         yG/ZsY86nr2S3V6ESO8cOIHRciqZkHg9qPVU2gdq9Gyo9lYMw3KAD8rFQlcn4yiI4rmD
         DdSI3Tl7jS/1cYBOESm4nJlSRNHBw25X5QME/6mpAsUSiMvD0rggfCfQBX93mq1Oknhj
         izaA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Bl+gDGnq;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id e6-20020a170902784600b00194764e91fdsor4268359pln.14.2023.01.17.00.52.09
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 17 Jan 2023 00:52:09 -0800 (PST)
Received-SPF: pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:902:e845:b0:192:f45e:4197 with SMTP id t5-20020a170902e84500b00192f45e4197mr3542885plg.31.1673945528684;
        Tue, 17 Jan 2023 00:52:08 -0800 (PST)
Received: from localhost.localdomain ([218.150.75.42])
        by smtp.gmail.com with ESMTPSA id s7-20020a170902988700b00192d9b86318sm20533801plp.137.2023.01.17.00.52.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 00:52:08 -0800 (PST)
From: Juhyung Park <qkrwngud825@gmail.com>
To: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	gregkh@linuxfoundation.org
Cc: stern@rowland.harvard.edu,
	zenghongling@kylinos.cn,
	zhongling0719@126.com,
	Juhyung Park <qkrwngud825@gmail.com>,
	stable@vger.kernel.org
Subject: [usb-storage] [PATCH v2] usb-storage: apply IGNORE_UAS only for
 HIKSEMI MD202 on RTL9210
Date: Tue, 17 Jan 2023 17:51:54 +0900
Message-Id: <20230117085154.123301-1-qkrwngud825@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-Original-Sender: qkrwngud825@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=Bl+gDGnq;       spf=pass
 (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

The commit e00b488e813f ("usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS")
blacklists UAS for all of RTL9210 enclosures.

The RTL9210 controller was advertised with UAS since its release back in
2019 and was shipped with a lot of enclosure products with different
firmware combinations.

Blacklist UAS only for HIKSEMI MD202.

This should hopefully be replaced with more robust method than just
comparing strings.  But with limited information [1] provided thus far
(dmesg when the device is plugged in, which includes manufacturer and
product, but no lsusb -v to compare against), this is the best we can do
for now.

[1] https://lore.kernel.org/all/20230109115550.71688-1-qkrwngud825@gmail.com

Fixes: e00b488e813f ("usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS")
Cc: Alan Stern <stern@rowland.harvard.edu>
Cc: Hongling Zeng <zenghongling@kylinos.cn>
Cc: stable@vger.kernel.org
Signed-off-by: Juhyung Park <qkrwngud825@gmail.com>
---
 drivers/usb/storage/uas-detect.h  | 13 +++++++++++++
 drivers/usb/storage/unusual_uas.h |  7 -------
 2 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/storage/uas-detect.h b/drivers/usb/storage/uas-detect.h
index 3f720faa6f97..d73282c0ec50 100644
--- a/drivers/usb/storage/uas-detect.h
+++ b/drivers/usb/storage/uas-detect.h
@@ -116,6 +116,19 @@ static int uas_use_uas_driver(struct usb_interface *intf,
 	if (le16_to_cpu(udev->descriptor.idVendor) == 0x0bc2)
 		flags |= US_FL_NO_ATA_1X;
 
+	/*
+	 * RTL9210-based enclosure from HIKSEMI, MD202 reportedly have issues
+	 * with UAS.  This isn't distinguishable with just idVendor and
+	 * idProduct, use manufacturer and product too.
+	 *
+	 * Reported-by: Hongling Zeng <zenghongling@kylinos.cn>
+	 */
+	if (le16_to_cpu(udev->descriptor.idVendor) == 0x0bda &&
+			le16_to_cpu(udev->descriptor.idProduct) == 0x9210 &&
+			(udev->manufacturer && !strcmp(udev->manufacturer, "HIKSEMI")) &&
+			(udev->product && !strcmp(udev->product, "MD202")))
+		flags |= US_FL_IGNORE_UAS;
+
 	usb_stor_adjust_quirks(udev, &flags);
 
 	if (flags & US_FL_IGNORE_UAS) {
diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 251778d14e2d..c7b763d6d102 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -83,13 +83,6 @@ UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_REPORT_LUNS),
 
-/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
-UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
-		"Hiksemi",
-		"External HDD",
-		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
-		US_FL_IGNORE_UAS),
-
 /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
 UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
 		"Initio Corporation",
-- 
2.39.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230117085154.123301-1-qkrwngud825%40gmail.com.
