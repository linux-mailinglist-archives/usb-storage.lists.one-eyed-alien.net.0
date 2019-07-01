Return-Path: <usb-storage+bncBCF37CNFREKRBN5P5DUAKGQE57IKIGQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-xc48.google.com (mail-yw1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6B95BE26
	for <lists+usb-storage@lfdr.de>; Mon,  1 Jul 2019 16:24:57 +0200 (CEST)
Received: by mail-yw1-xc48.google.com with SMTP id b188sf41104ywb.10
        for <lists+usb-storage@lfdr.de>; Mon, 01 Jul 2019 07:24:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1561991096; cv=pass;
        d=google.com; s=arc-20160816;
        b=yAuXJ5pK2ldGzfkToI1vc/Pwm1RgmRySOtrtaz0ht35XqbgP4ZYbaOxuR1d1SxsqWp
         wuncnWIzhjdGWJGxjyGOtb1zx9evElW9gyvzCOcr0YSemNrIoQ9YJ18rAPWOMn2SydWf
         p3b36XoJjYxRqevLx2TbqzLjwZh6wFFfmi7DLsgPYcmSmhomqXgv8gcPO5YfBxlVMcdt
         JVWXBQyUxIupEMxj2T/T93RHAS6YRho4zvK7CTFv5OvG/1b598T+KBh/FI6sBv3AKknS
         atqaujAIFdKYaibJvSoU2/bxgoKWtTFaLA5zDSgwUCnURJbxMRkXTlDNqhRAPj64G/wf
         ZGjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=kcmlw1SDMt2YlZ72wvIfzI81ou72AWjUr/LQRUrN5Yc=;
        b=cy9m9OYO6azEEFscZ0iXkHQcimuYlY3MEBb+3HakgvOjvTMrtZ5qCVTYUVDifzapCp
         1ac9mqOD/akG865oaJVu/Nu25jl3YakOViMhTMLfSmkqSJEkhnN0gQ5JhxlvuuDskWbV
         Y8HioqVMz48rUGIb/Pl4YwTm2ZbiWsE/uMeC2wcUOfQPZQnZ+M9LSgkbrGblpgSFlgV8
         55nHyjAt+jwRCl1IqDD4Z0krVcjudGNpc+N5UwlePXXezlvURoxudaTCgUwoQpkqU4Cn
         IZ4G0NLOBaMOP2oTsfv+Dh11FNnex1Acj8EvEndWxS39ASDF0udm4Fd3x9ZeIMCACw5s
         PEfg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=UELMapZm;
       spf=pass (google.com: domain of jckuo@nvidia.com designates 216.228.121.65 as permitted sender) smtp.mailfrom=jckuo@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kcmlw1SDMt2YlZ72wvIfzI81ou72AWjUr/LQRUrN5Yc=;
        b=Uk6XcXhzPXNIiqn4QuZ7EJ8A6hooWau7JZYIgNBZnHCG2cyqIMYT9NqC0Xv9+42DlL
         yrOl1CP1ivUb3V1R1efIW9jJWgagoyyKstlcAg4iCZ8gCEJRM/gfuAdolLZUor4DesuO
         r6qRhP/8TD5d+DF434bp7pMqnCJGApUPrMONo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kcmlw1SDMt2YlZ72wvIfzI81ou72AWjUr/LQRUrN5Yc=;
        b=U0o7oR2pAHhL03LvdeCE2HWBYnQQ7nw2BrSohyTCUxJrwsombN61iQEfnKE+Kxcpma
         vvI2yKwGpTLv538Je4pzDCVy4nRgSu9v/lOGOKeeYQhzTumzy7F+ML57sTMk1j8PoUju
         Xi0gH424MzKEdtIccaylIAN5u/3NbNZrHAjH/CiSNTnTb7AFlkVfbd/2bc3YFOxhvBGg
         3MtgfF9oS2FMCTt+JRHr8qpNDgT1GmrUCKLznB9f3wNiBEyuezEDHiHvVtXav4y+0zV+
         d9SQN4M769vYJ4mXMzQi6Ag1VkMO3DzyON52cqXJ3q8fdO+vqAmJfCHKUIm9z0jeK80u
         kNMA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUKYWR8L069wWFLHnXxHZsOYtBw7hN0PcqKsoa9SP06nWwkHtX/
	Tv+uD3Cp6bIwDyl11nnyxuLuhQ==
X-Google-Smtp-Source: APXvYqyN2DvLYo5ml525j+E4RjRlHbKKEinie9BQb6CxhGMmtwpCUObo0RkUAJpbn5VSDXFB6KkCpQ==
X-Received: by 2002:a81:2445:: with SMTP id k66mr15617073ywk.94.1561991096133;
        Mon, 01 Jul 2019 07:24:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:7204:: with SMTP id n4ls1412563ybc.1.gmail; Mon, 01 Jul
 2019 07:24:55 -0700 (PDT)
X-Received: by 2002:a25:8602:: with SMTP id y2mr2325680ybk.483.1561991095931;
        Mon, 01 Jul 2019 07:24:55 -0700 (PDT)
Received: by 2002:a81:980e:0:0:0:0:0 with SMTP id p14msywg;
        Mon, 1 Jul 2019 01:49:02 -0700 (PDT)
X-Received: by 2002:a5b:90f:: with SMTP id a15mr3411333ybq.76.1561970942606;
        Mon, 01 Jul 2019 01:49:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1561970942; cv=none;
        d=google.com; s=arc-20160816;
        b=kStClHosTkPo3oebcECWL1hoixbZxHHVDLlWEo5DEkbhkV0MEHVjcAG8oH466LJYi7
         VObDNTw5BNafa+QFLOAJYXJbNEb0ZAH1i8gJ+LI39q7rz6PFfB4vuNiGJUVcuvkoZ35J
         XtkxMAuIldGBUbcU+NNOTwaSc//18ICzVw+BsOPhTd/PY1dzRNF+28pJOieWvW/0+von
         jSTdpIvq5+CC+/GWfSaa1BRT94esEJ7RMrIpbncqZZvMEPGPdWVCbANpYjSpvlrFusas
         Rp3JcegFBtVjcg3Qyni+rnl02Q3/ZRUFJflJd6OCj5RsKkXcVxcOJi+6UpMgo/QypDvS
         6nhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:mime-version:message-id:date:subject:cc:to:from;
        bh=NMa2kpkFyVuDAYM2DG7p4ti7V3iwbEjLpuSET89Dm/I=;
        b=hNjKFycrkCEOUwplA8PZz0X81L1hfbu6pB1eQ9f+ioCx1uWzLxvMCGD7MiJkSfXUNI
         3pMcBP/fUcEPVNLdgEb/n2TDkEPIwEk3SuO1Qxo0silYIOjhkgXj0RkTdd3RAgcKkP7Z
         4ZlQjR9QXuh73cajc+vDswqAXXAc51uF5rWRY4VuClKC4fLwqeCVZ06xByhgtkDcoAqF
         daDlblJlIXdBAzBHgiYoO7FLMcw1l5K8Sx2VjCz7Xd6sqV1Pg4hxKaYRcoFlxzprFokQ
         cGDXNcla8OqVTrCJHYty7x4UDqLKk8GIwOGQV95YaWNfqJMvwDtGeoQCXdvqGp0u4aQI
         WWPw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=UELMapZm;
       spf=pass (google.com: domain of jckuo@nvidia.com designates 216.228.121.65 as permitted sender) smtp.mailfrom=jckuo@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqemgate16.nvidia.com (hqemgate16.nvidia.com. [216.228.121.65])
        by mx.google.com with ESMTPS id d3si3934966ywa.203.2019.07.01.01.49.02
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Jul 2019 01:49:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of jckuo@nvidia.com designates 216.228.121.65 as permitted sender) client-ip=216.228.121.65;
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
	id <B5d19c8fc0002>; Mon, 01 Jul 2019 01:49:00 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
  by hqpgpgate101.nvidia.com (PGP Universal service);
  Mon, 01 Jul 2019 01:49:01 -0700
X-PGP-Universal: processed;
	by hqpgpgate101.nvidia.com on Mon, 01 Jul 2019 01:49:01 -0700
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 1 Jul
 2019 08:49:01 +0000
Received: from HQMAIL105.nvidia.com (172.20.187.12) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 1 Jul
 2019 08:49:01 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Mon, 1 Jul 2019 08:49:01 +0000
Received: from jckuo-lt.nvidia.com (Not Verified[10.19.108.127]) by hqnvemgw01.nvidia.com with Trustwave SEG (v7,5,8,10121)
	id <B5d19c8fc0002>; Mon, 01 Jul 2019 01:49:01 -0700
From: JC Kuo <jckuo@nvidia.com>
To: <linux-usb@vger.kernel.org>, <stern@rowland.harvard.edu>,
	<usb-storage@lists.one-eyed-alien.net>, <oneukum@suse.com>
CC: JC Kuo <jckuo@nvidia.com>
Subject: [usb-storage] [PATCH] usb: storage: skip only when uas driver is loaded
Date: Mon, 1 Jul 2019 16:48:48 +0800
Message-ID: <20190701084848.32502-1-jckuo@nvidia.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jckuo@nvidia.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=UELMapZm;       spf=pass
 (google.com: domain of jckuo@nvidia.com designates 216.228.121.65 as
 permitted sender) smtp.mailfrom=jckuo@nvidia.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=nvidia.com
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

When usb-storage driver detects a UAS capable device, it ignores the
device if CONFIG_USB_UAS is enabled. usb-storage driver assumes uas
driver certainly will be loaded. However, it's possible that uas
driver will not be loaded, for example, uas kernel module is not
installed properly or it is in modprobe blacklist.

In case of uas driver not being loaded, the UAS capable device will
not fallback to work at Bulk-only-transfer mode. The device just
disappears without any notification to user/userspace.

This commit changes usb-storage driver to skip UAS capable device
only when uas driver is already loaded to make sure the device will
at least work with Bulk protocol.

Signed-off-by: JC Kuo <jckuo@nvidia.com>
---
 drivers/usb/core/driver.c | 1 +
 drivers/usb/storage/usb.c | 5 +++--
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/core/driver.c b/drivers/usb/core/driver.c
index ebcadaad89d1..265c5dd490d2 100644
--- a/drivers/usb/core/driver.c
+++ b/drivers/usb/core/driver.c
@@ -1923,3 +1923,4 @@ struct bus_type usb_bus_type = {
 	.uevent =	usb_uevent,
 	.need_parent_lock =	true,
 };
+EXPORT_SYMBOL_GPL(usb_bus_type);
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 9a79cd9762f3..d8f64e808783 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -1097,9 +1097,10 @@ static int storage_probe(struct usb_interface *intf,
 	int result;
 	int size;
 
-	/* If uas is enabled and this device can do uas then ignore it. */
+	/* If uas driver is loaded and this device can do uas then ignore it. */
 #if IS_ENABLED(CONFIG_USB_UAS)
-	if (uas_use_uas_driver(intf, id, NULL))
+	if (driver_find("uas", &usb_bus_type) &&
+		uas_use_uas_driver(intf, id, NULL))
 		return -ENXIO;
 #endif
 
-- 
2.17.1


-----------------------------------------------------------------------------------
This email message is for the sole use of the intended recipient(s) and may contain
confidential information.  Any unauthorized review, use, disclosure or distribution
is prohibited.  If you are not the intended recipient, please contact the sender by
reply email and destroy all copies of the original message.
-----------------------------------------------------------------------------------

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190701084848.32502-1-jckuo%40nvidia.com.
