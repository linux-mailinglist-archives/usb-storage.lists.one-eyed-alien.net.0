Return-Path: <usb-storage+bncBAABB2PV46VQMGQENTV4VEY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F626811D03
	for <lists+usb-storage@lfdr.de>; Wed, 13 Dec 2023 19:41:47 +0100 (CET)
Received: by mail-pg1-x546.google.com with SMTP id 41be03b00d2f7-5ca2b4038f7sf1390609a12.0
        for <lists+usb-storage@lfdr.de>; Wed, 13 Dec 2023 10:41:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1702492906; cv=pass;
        d=google.com; s=arc-20160816;
        b=QuWYPy8BeKICdzLaVM7vY0FU33lOd6cHYb3F51H4RNkIRdsQXi0TALttVhlYlBHh5f
         sXIoicwMOqPnXpve/zOF6mmAIFoNru7G5xXDd40l+dQdCYOElB8D71OBmpW2gjXhjUwx
         ETfgLaG85A7YaD3/2k0y78eW6KsNQA42LxB4ySG7MAqRJ0faeXrDIEIiUcynSPR3LTEr
         jfTMCF4WObrZJr6/LDRYHCefxsaGmAU57yrMhFas58OFycGxFIlRZxmMpbpxndHpHP9O
         okitmwmBVVMHqm/3O0tpSurvkkdp1VF/r+DcISA/excp1TZ+yWGB5Thos1/JLfvTqZ0x
         KPkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NIKQRtkI+MmTiOve0ejqfXioLSe2ZpRJbyT+IVJgu7E=;
        fh=gsyBcawMj+Ck6At0tiYTyiegqUh0GI0JhHIk43Mf4qE=;
        b=yk4uA1uwIf8b56/oaTBsgDdwuZxUGgBn8Y6MR655CLhOnGpJZOlQOzry+MyL6QTeNT
         JrlVM4w/Rn0/O2wStBCQGsbW2lFVgryZ26q06kfCgWVCiYwdeSmDIyQiOG2fmzwucUUr
         BnqY9KorW4i9uRySIxgm4nEFi3cY2otEVdwP4UIYKhfxT+EaNTWKYa5+EqmLZOmP4iZw
         L1RN6JOsNPCarg8BxZ+3dcjAG2n/tPZonLt/2ShuEr2r8K1nB/mLbHY93zJk1edXz1Q6
         YT4vGYh7x4dJYwujPudQi7oTQEnTXY4aiYbE7t0EBPTQZzoJDM6Z0hWOhMRCN6BdIVOQ
         GikA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Dqtg2pM9;
       spf=pass (google.com: domain of lee@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=lee@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1702492906; x=1703097706; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NIKQRtkI+MmTiOve0ejqfXioLSe2ZpRJbyT+IVJgu7E=;
        b=ksSOm+RzNGeQDt4SeG2nzHmPTSYLFflTnuzhOqY22edXw+mHs3EPAJR2+q1Hxz8OYP
         WUY2N0WVQCcZpXDO81DXFoQZEwC/92wC2l+Q+n9hUTrOnVjn/RIstR0qx/AbvDZ7MoGA
         2zlV5XfBw+LVeIKUUpZJp0e2e08AVyDkcxCkc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702492906; x=1703097706;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NIKQRtkI+MmTiOve0ejqfXioLSe2ZpRJbyT+IVJgu7E=;
        b=Sp44m1qAEJhg9SCKqp+B9mNOFZZYt1BGyYGy8p0dfblYgvaL/vO2JyX8bp0o7k8KZs
         VSffWUYJeGPKEgn18VzxCRMeRjvDKe7ox3pIljogj60C640OYfalsEdVnkr2uTCiPMru
         kdfv+kYXAG9R5hRKkTrccQvT6FhYbCmGtjgv6nMtlLWD50u3a9ykY9PT/GXZUUpBIuyy
         akmXvGT5E4byRvn/1DEAwP50kOcVwCIl4mn02xBJVE3Ru/ADFC86wC69qXiNyM+02RFc
         b0Fuk3iL/wyNVsKj//SPTR+hL9MhcIny+WZFUwl+zoreO4y6SPyif4ijJ4TZcMEqTrTc
         DO6A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YySQbg1rW8U+s7UztcaM3u9BT9n4kj6fIIEVc1bLlGMdvT8vwwZ
	4tAIbhO/x+boru62WoYD9lXxoA==
X-Google-Smtp-Source: AGHT+IEH0n2T15i80h8oBJPBdw3yquhUdU2LpM22iQRiTfsAl2w+oDgBxODV+B4ncwmMaReIwZs6aQ==
X-Received: by 2002:a05:6a20:1388:b0:18c:3729:7867 with SMTP id hn8-20020a056a20138800b0018c37297867mr3232135pzc.21.1702492905640;
        Wed, 13 Dec 2023 10:41:45 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:9a82:b0:28a:f776:8699 with SMTP id
 e2-20020a17090a9a8200b0028af7768699ls379574pjp.0.-pod-prod-04-us; Wed, 13 Dec
 2023 10:41:45 -0800 (PST)
X-Received: by 2002:a17:90b:1204:b0:28a:e5d9:e14c with SMTP id gl4-20020a17090b120400b0028ae5d9e14cmr341466pjb.1.1702492904858;
        Wed, 13 Dec 2023 10:41:44 -0800 (PST)
Received: by 2002:a05:620a:1928:b0:778:a9dc:3cb2 with SMTP id af79cd13be357-77f923c4414ms85a;
        Wed, 13 Dec 2023 08:43:21 -0800 (PST)
X-Received: by 2002:a17:906:3387:b0:a19:a1ba:8ce4 with SMTP id v7-20020a170906338700b00a19a1ba8ce4mr3302252eja.130.1702485800134;
        Wed, 13 Dec 2023 08:43:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1702485800; cv=none;
        d=google.com; s=arc-20160816;
        b=pnKMcfn6BainFU1Z89C0iGlbOfikgxRIxUNypVPRlT4nUN0QDkhZ80mcFK1C97oTbE
         4QQ52jzG25SI4gWMqsTMIGP50blqezVZhgVTmk3iH/yC4K2eU/1A7YwU1v0GWCBs0A1t
         I2r7CDfLNy29cVPWZc6A+yWEUvq9erMj9sLGUfrfhPHLdDZ0STYLhlcF5gLkFWwsiyEX
         5OCwniDt4ph8APv+EpJkhcMzhqN9LBgAQFfVqZAOl/nrbbCt3m1MXP2u5zF9+ph7cnc8
         EmRuTjV4aWMnvAC1jAxVvoyrjLFATrubjPyCDztC+NgHFsiBwFlYZ8ecMGr1n2pC4sz+
         pDbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Dncxb9o+lHbEy1FoC/txVQhPN44qhDZ9VofG+3U+NO4=;
        fh=gsyBcawMj+Ck6At0tiYTyiegqUh0GI0JhHIk43Mf4qE=;
        b=lWScu7acQIQko3YpAlPaz5grmuvbsotqE6775qihpqTWC3kOE2i33WtzMZp+oDYRZA
         IUSgmBNBp8BUlTob8PYPu6ZIJMdOsJiPbFA0BS2CA8MILsbt/8bSBGt4ubSN9DLUWSs1
         16ca8H5wU0noAQwVkbj6qxyxRsmN1yr5SdXnfklf/+HDZeVeLhZENUMaZt3Hr0Squm2z
         21b/w7BJmYpfJskFZ4Ybrbhdb9lN50lXUA73ARuiKX8+teNeMltSUOc4M6O/mJe3Nrv0
         p9EJlGCK6a2B/4yu/uzKtaElLRbFoVvB3qz19FXh3zxmV3cM/o/iQ7luaHDoylRxA0dH
         A5WQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Dqtg2pM9;
       spf=pass (google.com: domain of lee@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=lee@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by mx.google.com with ESMTPS id mj10-20020a170906af8a00b00a1840097a65si5677105ejb.1034.2023.12.13.08.43.20
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 08:43:20 -0800 (PST)
Received-SPF: pass (google.com: domain of lee@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id C2772B81E80;
	Wed, 13 Dec 2023 16:43:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16B93C433CA;
	Wed, 13 Dec 2023 16:43:17 +0000 (UTC)
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Alan Stern <stern@rowland.harvard.edu>,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH 12/12] usb: storage: Remove snprintf() from
 sysfs call-backs and replace with sysfs_emit()
Date: Wed, 13 Dec 2023 16:42:41 +0000
Message-ID: <20231213164246.1021885-13-lee@kernel.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231213164246.1021885-1-lee@kernel.org>
References: <20231213164246.1021885-1-lee@kernel.org>
MIME-Version: 1.0
X-Original-Sender: lee@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Dqtg2pM9;       spf=pass
 (google.com: domain of lee@kernel.org designates 145.40.68.75 as permitted
 sender) smtp.mailfrom=lee@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

Since snprintf() has the documented, but still rather strange trait of
returning the length of the data that *would have been* written to the
array if space were available, rather than the arguably more useful
length of data *actually* written, it is usually considered wise to use
something else instead in order to avoid confusion.

In the case of sysfs call-backs, new wrappers exist that do just that.

Link: https://lwn.net/Articles/69419/
Link: https://github.com/KSPP/linux/issues/105
Cc: Alan Stern <stern@rowland.harvard.edu>
Cc: usb-storage@lists.one-eyed-alien.net
Signed-off-by: Lee Jones <lee@kernel.org>
---
 drivers/usb/storage/sierra_ms.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/storage/sierra_ms.c b/drivers/usb/storage/sierra_ms.c
index 0774ba22fb66e..177fa6cd143ab 100644
--- a/drivers/usb/storage/sierra_ms.c
+++ b/drivers/usb/storage/sierra_ms.c
@@ -98,26 +98,26 @@ static ssize_t truinst_show(struct device *dev, struct device_attribute *attr,
 	struct usb_device *udev = interface_to_usbdev(intf);
 	int result;
 	if (swi_tru_install == TRU_FORCE_MS) {
-		result = snprintf(buf, PAGE_SIZE, "Forced Mass Storage\n");
+		result = sysfs_emit(buf, "Forced Mass Storage\n");
 	} else {
 		swocInfo = kmalloc(sizeof(struct swoc_info), GFP_KERNEL);
 		if (!swocInfo) {
-			snprintf(buf, PAGE_SIZE, "Error\n");
+			sysfs_emit(buf, "Error\n");
 			return -ENOMEM;
 		}
 		result = sierra_get_swoc_info(udev, swocInfo);
 		if (result < 0) {
 			dev_dbg(dev, "SWIMS: failed SWoC query\n");
 			kfree(swocInfo);
-			snprintf(buf, PAGE_SIZE, "Error\n");
+			sysfs_emit(buf, "Error\n");
 			return -EIO;
 		}
 		debug_swoc(dev, swocInfo);
-		result = snprintf(buf, PAGE_SIZE,
-			"REV=%02d SKU=%04X VER=%04X\n",
-			swocInfo->rev,
-			swocInfo->LinuxSKU,
-			swocInfo->LinuxVer);
+		result = sysfs_emit(buf,
+				    "REV=%02d SKU=%04X VER=%04X\n",
+				    swocInfo->rev,
+				    swocInfo->LinuxSKU,
+				    swocInfo->LinuxVer);
 		kfree(swocInfo);
 	}
 	return result;
-- 
2.43.0.472.g3155946c3a-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231213164246.1021885-13-lee%40kernel.org.
