Return-Path: <usb-storage+bncBDTNDO5RRYJRBIMHQCUQMGQEWE7HBAI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FA27BB82B
	for <lists+usb-storage@lfdr.de>; Fri,  6 Oct 2023 14:54:58 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id 4fb4d7f45d1cf-537a183caa3sf1908301a12.1
        for <lists+usb-storage@lfdr.de>; Fri, 06 Oct 2023 05:54:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696596897; cv=pass;
        d=google.com; s=arc-20160816;
        b=yb1EPFiekoGa6cxHr/2MJRHJgHd1LzX7/ggUq7IK7yyaKfbHLomtkeV7cbyAfHM64A
         aX7yZqUGWLX8Cg6jXLquFqK0p/XzuJEkTo/YdMLkRQ34C9WntD14cpylyJY/Uoo21mCB
         AOZVttfpce932VzjLcbjSi/mJlV0suomR48ZULzsKReymoD0Aldz0IT5YWG0Ym3bWd1+
         hcD0qo1HEZ5QfqcRMcf8cie3QWeJE+0YMdDMBYWTQBXQmAREAeSknOqODsibGz354OPX
         6ofJxl9c4U66monKOIY7C7LP2RHo4w9uGh0RjUDWqucv29PojpHYMq+At+CKZiDvZWLQ
         EXdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8Ey2D+VxEnk6Esf53ts0NgfQqx1kwNz+wQ1+rWwHLJY=;
        fh=a0TltY5qNwl0Oa9ebjgPj0wI1noiSzhlLA8n7ahwZlA=;
        b=Ft9jI3HIIprjdZv5XAZ0fTIS2aIKLNxyNHlmOwWpznkrzGerDUkLJa+G7Ke0i50yGQ
         1cC/Mo6euQ6xiBlWqwCHLraq0Of6Tx5xatvOqmYRyOZQfoMt5NGORsU6Kx3NacVCXEfW
         nEPxVMkTywR6quW6w8xNzVh2iJ/b6qeZea8iWfaXNpWGTHalI2cmt6XL+Al3DYETmAHC
         8NH7jBOcwv7iuRJ7sSFarGYjy3j4u1KHTlYVf8cOtj8zeBnkshNgfsGIzgeY5FUt9rTz
         sptpR5hCfSZOiZvHok0pJf+vdIXUtMpZNciIgbdZfEqdlX8jBLNClPgKWIJ2uyPxMUem
         B7kw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=S1EoQcwC;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1696596897; x=1697201697; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Ey2D+VxEnk6Esf53ts0NgfQqx1kwNz+wQ1+rWwHLJY=;
        b=ioI7ztFkCD4r1Q6tlky4rH26KmjvpOcLIDQe7Lb2t3Zgfh+grNroMiDEQ2GVtsqFql
         jz9jAq4CEI+yHDJpfHNOcQ/y51SRPXeOI625CcFxWLbg+YyZsjkUPl3QQRJwh3IdyeoI
         1yZQlddj0NgluWRjP1OeqiYV2OQQudNfDdRMw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696596897; x=1697201697;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Ey2D+VxEnk6Esf53ts0NgfQqx1kwNz+wQ1+rWwHLJY=;
        b=pUexIyQcBI22fAfPZ1z1cuAxP/l6EVjqmcid3z3TgLknlfL8hxH4slkiuX4BDs5X6s
         vR7GsH41Eu2YHZcxqYGHQ4HKREhmRTx2IPSezo+ftKnAqC+tly2UZDqXTPEhKll5Q1g1
         TqD7+849yGUBaQDP1NQL5ZfCnsDkOyUkirGdQ1PacdkIo4Gcq4E8E9M/3BLPBLvfPVe1
         gSW7aIa2tBw8HX008T4svs9FVh+twhBovlKxqsczNQ0uvu8Hp6aNubz3ruoXHTSwO109
         JG9UhdTLsk4fBeDmpg3bBTNTzbV3OAJQdqrLMZkeGJq0z8s/brJQvjP/35wFvvsLeA31
         xcTA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YwmPicyvU/HlIAikKNzFZCf5VEDSgd/ZDS28XRpTSgM/6yMV2RT
	JdKAMETP+OM1Iv5tNF1PTP+03g==
X-Google-Smtp-Source: AGHT+IFNOAJYLDcEu6IRRY4qAPuMBuQqks2JODeZ1OlJ7vICSv4h+cXEd80Iq34YyZo5jo648NJQdg==
X-Received: by 2002:a05:6402:1651:b0:538:26b7:a525 with SMTP id s17-20020a056402165100b0053826b7a525mr6822077edx.19.1696596897358;
        Fri, 06 Oct 2023 05:54:57 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:fb0f:0:b0:52f:3b2b:a27c with SMTP id d15-20020a50fb0f000000b0052f3b2ba27cls277020edq.2.-pod-prod-01-eu;
 Fri, 06 Oct 2023 05:54:56 -0700 (PDT)
X-Received: by 2002:a17:907:2cf7:b0:9ae:7870:1522 with SMTP id hz23-20020a1709072cf700b009ae78701522mr7179544ejc.53.1696596896062;
        Fri, 06 Oct 2023 05:54:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696596896; cv=none;
        d=google.com; s=arc-20160816;
        b=jLvbOBl/Eoeg58fRIJr1wcELyKQIVYfO1Enl4JgBnbDzrdaouFK3Bcqu9ue9x14NxY
         ZdQyKJ4bM9Ij9jA5OqmmLRzLgnZ0GK1WjGrbODgq4liUClC0vXgryLeSkQyIV3U5lCkb
         vxxkK+lUEQXGfEXGbTh9GRKzUXh3ScSXZGDCAhg+LQ/0bXoX3GK44+08I71kxYOnXRf/
         2joJOAyMF2hwPOfBOWMrfFb4oZ2PsI8bxGSolc2VwONhXxATgollq3uZBls4JJO1MnwP
         k9il5tY6sz6lICqx83nmKxkgxpvK4P2ym1AScL1BOZKpO7+52xJ8ADU+8D0knOZGKXr2
         4flQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=q9jys0TJCo2/tcWQSVAiB+IlHESLf7hj3/oGQc7ywDY=;
        fh=a0TltY5qNwl0Oa9ebjgPj0wI1noiSzhlLA8n7ahwZlA=;
        b=KNdlc6/BL9Jhn4QAOt0e5BxcNrvUyYyFM12OgOPEbKMD+dAtEK3q84HHAABinwGKZc
         RX8qaAnwgrXKeXYorv1GLCNIJSLt1mBzELZOj94Utgt/+WWllu8NcryexcOXbc4GDIV1
         o4BuTtoEt+XMhEt0e62pQ6HqTivSt4EuUilyxtFP6DgmSQF8qZlim6xQwAUE9mBe36yp
         kiBlrSH3ZrayStU9xlJnuzfa6mo2M2zJDDe6U5jnO2EsxjBJfpHyrR5hCe3ufAkWThNK
         9NGhYo1e9H1A/s88IlPot5owz0LbNTMsBWsvCtuZ1uc/VyMki4f3rY/2JWRVok8x9j5q
         iCdQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=S1EoQcwC;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id n14-20020a1709065dae00b009adae2687a9sor1506750ejv.18.2023.10.06.05.54.56
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Oct 2023 05:54:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:906:30db:b0:9b2:f941:6916 with SMTP id b27-20020a17090630db00b009b2f9416916mr7683708ejb.17.1696596895393;
        Fri, 06 Oct 2023 05:54:55 -0700 (PDT)
Received: from sauvignon.fi.muni.cz (laomedon.fi.muni.cz. [147.251.42.107])
        by smtp.gmail.com with ESMTPSA id p26-20020a1709060dda00b0099bc08862b6sm2894660eji.171.2023.10.06.05.54.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 05:54:55 -0700 (PDT)
From: Milan Broz <gmazyland@gmail.com>
To: linux-usb@vger.kernel.org
Cc: usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org,
	linux-block@vger.kernel.org,
	stern@rowland.harvard.edu,
	oneukum@suse.com,
	jonathan.derrick@linux.dev,
	Milan Broz <gmazyland@gmail.com>
Subject: [usb-storage] [RFC PATCH 1/6] usb-storage: remove UNUSUAL_VENDOR_INTF macro
Date: Fri,  6 Oct 2023 14:54:40 +0200
Message-ID: <20231006125445.122380-2-gmazyland@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231006125445.122380-1-gmazyland@gmail.com>
References: <20231006125445.122380-1-gmazyland@gmail.com>
MIME-Version: 1.0
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=S1EoQcwC;       spf=pass
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
by commit that was reverted in
 commit ab4b71644a26d1ab92b987b2fd30e17c25e89f85
 USB: storage: fix Huawei mode switching regression

Signed-off-by: Milan Broz <gmazyland@gmail.com>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231006125445.122380-2-gmazyland%40gmail.com.
