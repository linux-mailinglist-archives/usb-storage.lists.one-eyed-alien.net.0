Return-Path: <usb-storage+bncBDTNDO5RRYJRBFWLWOUQMGQE6GKZYXI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id A88C47CA078
	for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 09:26:15 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id 4fb4d7f45d1cf-53ec72af708sf526848a12.0
        for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 00:26:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1697441175; cv=pass;
        d=google.com; s=arc-20160816;
        b=T+7twVucAYJalTcjr8DM++40tpqF3twQXZk5YxAm24v1fFYQp8yY7AHQ1K1U8+JuZY
         Oe1DibbZwsqMwTvwJON7wQA6uSzcpccyUcEM/tCnILdQVBIrQXR8Yd+RFq+iEfh3ZBEN
         Shvj9tuvDk5wxkFSNqWnuMxL/imnrWlZTZ4Jsap4TFZyD5yL2eUsjx8W/7xbgEKSHRH+
         fzd+clcJGb/pQMRTqLQJLaSGS6T14jimMTgmEdDlu7eT6Sg2gUKGreYncxjpWVLI9WU9
         kqe75TpmbVInpiLOjqG5A3W0ChjaRobygzwKtaTjfOgjTtT9EJlyDKZz6lvK6TSF17kQ
         Ia2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=zQSoBR9z0cwpONdYocLcnKd4keOlMRGOYHgfH8QOzOI=;
        fh=qb5W/8HITKC89mNaBbNAGCcLaXj6l7L8f0MvdHCcfUs=;
        b=BoWhrtex6BFKQph30IPCWJ1+JRsT2eaBUVPDrWewLbGHhDBIqDxHgm2P/sEw8IZdZ6
         93yAR1jfJ6B0XZYKDTj6ZFPWXz3wVIBSsTyvdRgniG8VJ2AthpCI/H6mqIeimRPGdVxP
         WwqBuwhLepgtqTFnRf0vkAh7SMnILo+aMBF21YHfDxSJmsA2KabN5ljBvPuvkJoXUW1N
         KIq88OdhVFl5SWzoHS9hrZXPMCXGTgBJqJYDGu1HQs3ii7s20ZbBgS6XhH0TLsr350sK
         c/f28NeVRhQYBigZ/j+4cmYry92LylMLr3Ki/CQLkWOitU7lPNpC0x2nxplodihqBXyq
         HQAQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="G1gOwvB/";
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1697441175; x=1698045975; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zQSoBR9z0cwpONdYocLcnKd4keOlMRGOYHgfH8QOzOI=;
        b=Dux/Db8yrXnQTI22ihx7yktS4Q6i7gPvKoOBToYXxV3DL/R0oGwjAiTAdmWgcNAU4s
         zr1I8S6478PkuLdAGh8iAEJ362AwIDdN7wkikEoTbNomWBJUtI+t25VMHWrPb4CoRUlB
         pjSF2nsghS7Foidk2sXzJeJuCSNlGykfSCR78=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697441175; x=1698045975;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zQSoBR9z0cwpONdYocLcnKd4keOlMRGOYHgfH8QOzOI=;
        b=bDVw62OT6ZSbRPHj+2yNeK2QkeyRPziwMb9UW+1p/GH9oDbFccd7gQLlX6ku3HxDdZ
         ek6g/FaUA7uZBzt8k1IC7JAlAbGvXIhwh0TNwplZz0g8jBf2eaN8ULLyAk/psSDXz4ZA
         EsT/iAtE9c/SYAXgh3W8k1TzLAotiPpHh5KbwR5ZKriRhoxhNBq4JXFsTbA3LBVbziET
         X8Ad0t58pdd3/unPdFJyde3HBuVPgtW6pDjcmnnZ5EF9cUrJS1+fVVkYYm4DeE1RUYDs
         JCd3EESkUHItAqJAKTi5TFZbtKrdhXk6MuYiNO3USEdvPV/3N5KiJeM2eZEP2/AUbkzN
         C+BA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YxEs2OeKKcNm1eEDSln3JKf4y5vtqjXJN8G+jX3Q3xVAkAItdFb
	xS5AohdO96nUQBPctbrwr4+LQA==
X-Google-Smtp-Source: AGHT+IH5u3HxNmQji82lzh2Q0Ze7hDRJXCRcwQApdQs1Yql5ok7jY8yqcZ+WlPJYWyrWjbbk5TMPTw==
X-Received: by 2002:a05:6402:2289:b0:53d:9d26:124f with SMTP id cw9-20020a056402228900b0053d9d26124fmr13798788edb.30.1697441175331;
        Mon, 16 Oct 2023 00:26:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:3211:b0:536:17f7:9f24 with SMTP id
 g17-20020a056402321100b0053617f79f24ls5997eda.0.-pod-prod-08-eu; Mon, 16 Oct
 2023 00:26:14 -0700 (PDT)
X-Received: by 2002:a17:907:7253:b0:9c4:41c9:6ac6 with SMTP id ds19-20020a170907725300b009c441c96ac6mr1384443ejc.33.1697441173956;
        Mon, 16 Oct 2023 00:26:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1697441173; cv=none;
        d=google.com; s=arc-20160816;
        b=xet1IF23BQIRxdofqpDjPiyNpCCksLzIrdf9OkR6tR9B3a1I947MNYF53WaFliAV14
         2aMoiJwbFUgHvGaftAIAPKA6i0Q1aCYWJNTRhc9NzWFLpgqTxmlJSIM3oJIpDOLhe3a2
         KybEqte+nsOXH9sMtSpgXU0yeeJV2m8M/R+qn6OdmkGApXuAheCNOh4z4q7T8xwn4YLG
         CxBFVoBAhtIl1WSnEknpriVbX4edul9O97igOHY6FqNkELS4DyGQW5HJYUBYIf3aQsEN
         Vbu+bwUDTJ+yJJOTKI2meemNpKiTL+ROGo7l4rewCayTxOieJYemdgkEbTg9sesEHOWV
         xxIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fOSXwcuF+GSDreunSXbhvKj4nQkeji3aVTKc3F8VpKY=;
        fh=qb5W/8HITKC89mNaBbNAGCcLaXj6l7L8f0MvdHCcfUs=;
        b=NIUTsnxFJx/qxLT3PZE1GmAEu4qC7vy7Kenb9Q/c2SV23lJKTxDA36OW9gSm5sxCkC
         SKUDbdGg/lCBFBw6EpxE0zjsRLz2xYFRqg9Hi3tXdU08d7o48DejzC0NSROZaScDk4o0
         0eHvmLfW7ucLPfWG4dtCsIQ9FWL9LU6XC1znLKK3qL6qgmTRGeSEn2mzIeps7AG/Ty2v
         eUBCjDj8WHhOM2XJEbkpTMqeoOXp2g+4Gc51q2BoT58p5oELBzzIZ4XeY4u6Kpcmq/G0
         5K5MJTHZxJ7QHvdzX+4dqSt4bmzfDn5tFgdAQdPW516IawonAtzNWrDLVzoe4sKvTQx7
         u3zQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="G1gOwvB/";
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id oh7-20020a17090784c700b009bf29c53836sor873836ejc.12.2023.10.16.00.26.13
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 16 Oct 2023 00:26:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:906:3050:b0:9ad:df85:97ae with SMTP id d16-20020a170906305000b009addf8597aemr27905837ejd.66.1697441173435;
        Mon, 16 Oct 2023 00:26:13 -0700 (PDT)
Received: from sauvignon.fi.muni.cz ([2001:718:801:22c:bdcb:518:be8f:6a76])
        by smtp.gmail.com with ESMTPSA id n25-20020a17090673d900b0099297782aa9sm3399980ejl.49.2023.10.16.00.26.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 00:26:13 -0700 (PDT)
From: Milan Broz <gmazyland@gmail.com>
To: linux-usb@vger.kernel.org
Cc: usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org,
	stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	oneukum@suse.com,
	Milan Broz <gmazyland@gmail.com>
Subject: [usb-storage] [PATCH 1/7] usb-storage: remove UNUSUAL_VENDOR_INTF macro
Date: Mon, 16 Oct 2023 09:25:58 +0200
Message-ID: <20231016072604.40179-2-gmazyland@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231016072604.40179-1-gmazyland@gmail.com>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231016072604.40179-1-gmazyland@gmail.com>
MIME-Version: 1.0
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b="G1gOwvB/";       spf=pass
 (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=gmazyland@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This patch removes macro that was used only
by commit that was reverted in commit ab4b71644a26
("USB: storage: fix Huawei mode switching regression")

Fixes: ab4b71644a26 ("USB: storage: fix Huawei mode switching regression")
Signed-off-by: Milan Broz <gmazyland@gmail.com>
Reviewed-by: Alan Stern <stern@rowland.harvard.edu>
---
 drivers/usb/storage/usb.c          | 12 ------------
 drivers/usb/storage/usual-tables.c | 15 ---------------
 2 files changed, 27 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 7b36a3334fb3..bb1fbeddc5aa 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -110,17 +110,6 @@ MODULE_PARM_DESC(quirks, "supplemental list of device IDs and their quirks");
 	.useTransport = use_transport,	\
 }
 
-#define UNUSUAL_VENDOR_INTF(idVendor, cl, sc, pr, \
-		vendor_name, product_name, use_protocol, use_transport, \
-		init_function, Flags) \
-{ \
-	.vendorName = vendor_name,	\
-	.productName = product_name,	\
-	.useProtocol = use_protocol,	\
-	.useTransport = use_transport,	\
-	.initFunction = init_function,	\
-}
-
 static const struct us_unusual_dev us_unusual_dev_list[] = {
 #	include "unusual_devs.h"
 	{ }		/* Terminating entry */
@@ -132,7 +121,6 @@ static const struct us_unusual_dev for_dynamic_ids =
 #undef UNUSUAL_DEV
 #undef COMPLIANT_DEV
 #undef USUAL_DEV
-#undef UNUSUAL_VENDOR_INTF
 
 #ifdef CONFIG_LOCKDEP
 
diff --git a/drivers/usb/storage/usual-tables.c b/drivers/usb/storage/usual-tables.c
index 529512827d8f..b3c3ea04c11c 100644
--- a/drivers/usb/storage/usual-tables.c
+++ b/drivers/usb/storage/usual-tables.c
@@ -26,20 +26,6 @@
 #define USUAL_DEV(useProto, useTrans) \
 { USB_INTERFACE_INFO(USB_CLASS_MASS_STORAGE, useProto, useTrans) }
 
-/* Define the device is matched with Vendor ID and interface descriptors */
-#define UNUSUAL_VENDOR_INTF(id_vendor, cl, sc, pr, \
-			vendorName, productName, useProtocol, useTransport, \
-			initFunction, flags) \
-{ \
-	.match_flags = USB_DEVICE_ID_MATCH_INT_INFO \
-				| USB_DEVICE_ID_MATCH_VENDOR, \
-	.idVendor    = (id_vendor), \
-	.bInterfaceClass = (cl), \
-	.bInterfaceSubClass = (sc), \
-	.bInterfaceProtocol = (pr), \
-	.driver_info = (flags) \
-}
-
 const struct usb_device_id usb_storage_usb_ids[] = {
 #	include "unusual_devs.h"
 	{ }		/* Terminating entry */
@@ -49,7 +35,6 @@ MODULE_DEVICE_TABLE(usb, usb_storage_usb_ids);
 #undef UNUSUAL_DEV
 #undef COMPLIANT_DEV
 #undef USUAL_DEV
-#undef UNUSUAL_VENDOR_INTF
 
 /*
  * The table of devices to ignore
-- 
2.42.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231016072604.40179-2-gmazyland%40gmail.com.
