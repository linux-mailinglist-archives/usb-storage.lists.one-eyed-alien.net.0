Return-Path: <usb-storage+bncBDMYPB44VAFRBCGQQXWAKGQEKA4D66A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vk1-xa48.google.com (mail-vk1-xa48.google.com [IPv6:2607:f8b0:4864:20::a48])
	by mail.lfdr.de (Postfix) with ESMTPS id 3039BB586A
	for <lists+usb-storage@lfdr.de>; Wed, 18 Sep 2019 01:11:06 +0200 (CEST)
Received: by mail-vk1-xa48.google.com with SMTP id y11sf1960513vkb.20
        for <lists+usb-storage@lfdr.de>; Tue, 17 Sep 2019 16:11:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568761864; cv=pass;
        d=google.com; s=arc-20160816;
        b=oYIh3E+yXYuUv2sUDGiShripxXKqTSBRduR3zuQ2nJ+TNOh0kYU77MmmrMd1erUBfp
         ZUaIII+RkIFxAfnDLytbjZcvTOxKbVovDa/5cmFxrwr68EciG3TIWdZSvsgPSSSEeUA3
         E6z1r/Do+oRMbuGX2lAlaN64fiEqy+hTxJGGCRbhC6bzTcfLA745XHB38FwoXX88ZVAZ
         QapluYgsKZF+AfHR0XWiMGdeV7ieFfKL3A+0JUYw0asQDpWnicSXKEoKNWZGwZKVpQId
         HXGQqj98WoHUqsDE3JSX+4RRZ4/mX6JsGtN+/BOOakYDkFR+t7kUeopJVCkVLtS5Zz8o
         farg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=XvIo7VlG/A9IELs0RhbmvJYvTIY0h2iVYYkA7Lo2TJI=;
        b=wgBy6dEgdpAyCBPRn8skrjSSRzfL655Vk3yxkL1MLQzKl95sVfpkyrCMkWlhlfHgR5
         EvYHFQWMl/iXKZehe5w550skx+niMoOaOCoMrAP/p9zqicxKmWCW9RB2CMzpCibakXVI
         3F0c+oqhLDrvZDzBYfMo3IQGj6LUFtOyxNOIEGfZXiEChZA6CtuKDXK+TJ9Re3aelHX5
         YNnsIPgoI7qvDOJBs9lt2Vak0LnKBar6Gv5PsRqRnb2Ts/nL4aucTO+tB9VkbvJtLhX8
         49bWnU9TzgiKTnaOCqF1yAijNjtJAmgY4LjzMD4dS8fCDhohDRXc2DStp1pN8QazCZc8
         XJTA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iIiPJdSh;
       spf=pass (google.com: domain of 3b2ibxqgkam46uy772w108805y.w86@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3B2iBXQgKAM46uy772w108805y.w86@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=XvIo7VlG/A9IELs0RhbmvJYvTIY0h2iVYYkA7Lo2TJI=;
        b=FAEuLceTC1Ph8yu3EdvAkoExtM3Bqbr/OxWEMAn6csPWXhyPo7V+n8obbMPxt3Z23j
         1hNzlHXPTrNMCCqlSnIcC2RQwMEMNnniuXgT2mtBhxzxm44L6aoOVET39MMMquqiobGD
         Uo3ES5fkwKHMLbfhb1gnxf5Thgx94WMrojCI4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XvIo7VlG/A9IELs0RhbmvJYvTIY0h2iVYYkA7Lo2TJI=;
        b=AxNLlDWyog0vWVRB3KDhz0XO+ByqU8/1/G8qAlsnQ+tEUknAUQw+6D2poWYWvqeN3Z
         TRcOCiGmxp1rYC7bLKTR4Y6NJQtQVMmrsTWSsX1TJ3dX2jC4XonBb24FeCrjFziuo78F
         GpkvmLPd6It95D6rNvJNTq/oNaA4e0PreTbojZeUQR1Mb0/pMOOFtQ7gnA4cGKhlUyQ6
         1tjDeH9ZEeicknMza7HQYClu47TzmQXdrgZ5vUet1DuxJFql2iHX4qO96NCtcxU6e/l8
         BP4a97N9CuLxwth38TGFY+sZdzzZ8Ylezqty9ponvvLGo6sFs7PR7wFJYcj2Sgl20QkX
         h0Qw==
X-Gm-Message-State: APjAAAWbPrDHQOVXE9AVBHIOUCr/aPPPW88Vi8QlcaSbWXeCpwfBpFo/
	5x+wxnTaR7zt/31U3uDly2Nhzg==
X-Google-Smtp-Source: APXvYqwkjsbk8GHhbOYerSPzteD525lBiwgB6166E+vHVMb6NvUcCX24ZxMO6WaNwF+Hm9CURbXZXg==
X-Received: by 2002:a67:fd63:: with SMTP id h3mr565473vsa.102.1568761864829;
        Tue, 17 Sep 2019 16:11:04 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a67:fc55:: with SMTP id p21ls519872vsq.9.gmail; Tue, 17 Sep
 2019 16:11:04 -0700 (PDT)
X-Received: by 2002:a67:3147:: with SMTP id x68mr638705vsx.29.1568761864391;
        Tue, 17 Sep 2019 16:11:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568761864; cv=none;
        d=google.com; s=arc-20160816;
        b=t0+2ovzGNMZY7BOWGjIiAMe3/hMoIdr05vU79BVal9qUAPJNvQikRMfNJaUTTwuuxI
         fv9koMbwJ16IZ71sIXFASElDh97taJqCwNKuYo0q47Ghg0Z7jkAI87orjJ63dlXfx5rH
         Ypbq3U6GyP/OaHkiHGC39XaPR9qWEnVXmAKHWtAOY+7nj6t9VYOrnAWPaadOz5r/GDem
         BY/ImFYyhFFgbr58wcee+QJrLzHTaSla0QYeFgwaj6hv2npHlVs14YKVV/1Kflv4Wy64
         seoz9LN4droK8+lAfbz+omJ7XVHPYs7gEqNgGb6ow6s+aOSQrbrtI7QWbFaR5LuSJlbY
         6n5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=jlMHw/lJbiY9oSEnSweuao0JSeVWEh3JbwJsg89mwrI=;
        b=UEO/XdSPRSueVTEKuiTpMY046n3qU380C14duoRcUw1Dxb1uawOCvr74CCPidEE2KL
         QFZHdo3XNvrXy3q/Mwj5BI8/fFwUrb5aA/Sv5uV0Q7dxMsDHpRl3CphP4rn/sOKPsKLo
         aRY28E0Vq7L50a5Dwkf9C8gIN4iKLlp1SO2sjg+QZRLWwAc7UB7X4FL7avX0PFpXNM9Y
         Czwk3vEqyKwOwVPXTFMU9dDQRnLfZp6W+kUG59RHzkxAGS2T591iM8fMNilnWYgbOW2i
         6+7PDAZyU8GVcSUZGtNG7Xdbz0pbg81vRUbeccqSz5ZSGXVzbgAs9YNM5KVmS6SMhPDL
         c03g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iIiPJdSh;
       spf=pass (google.com: domain of 3b2ibxqgkam46uy772w108805y.w86@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3B2iBXQgKAM46uy772w108805y.w86@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id r11sor1756395uao.53.2019.09.17.16.11.04
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 17 Sep 2019 16:11:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3b2ibxqgkam46uy772w108805y.w86@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:ab0:4203:: with SMTP id i3mr823027uai.53.1568761863903;
 Tue, 17 Sep 2019 16:11:03 -0700 (PDT)
Date: Wed, 18 Sep 2019 00:10:31 +0100
Message-Id: <20190917231031.81341-1-maennich@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.237.gc6a4ce50a0-goog
Subject: [usb-storage] [PATCH] usb-storage: SCSI glue: use pr_fmt and pr_err
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, 
	Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iIiPJdSh;       spf=pass
 (google.com: domain of 3b2ibxqgkam46uy772w108805y.w86@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3B2iBXQgKAM46uy772w108805y.w86@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
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

Follow common practice and retire printk(KERN_ERR ...) in favor of
pr_fmt and pr_err.

Cc: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: usb-storage@lists.one-eyed-alien.net
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 drivers/usb/storage/scsiglue.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index 6737fab94959..0b6fa225b352 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -28,6 +28,8 @@
  * status of a command.
  */
 
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
 #include <linux/blkdev.h>
 #include <linux/dma-mapping.h>
 #include <linux/module.h>
@@ -379,8 +381,7 @@ static int queuecommand_lck(struct scsi_cmnd *srb,
 
 	/* check for state-transition errors */
 	if (us->srb != NULL) {
-		printk(KERN_ERR "usb-storage: Error in %s: us->srb = %p\n",
-			__func__, us->srb);
+		pr_err("Error in %s: us->srb = %p\n", __func__, us->srb);
 		return SCSI_MLQUEUE_HOST_BUSY;
 	}
 
-- 
2.23.0.237.gc6a4ce50a0-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190917231031.81341-1-maennich%40google.com.
