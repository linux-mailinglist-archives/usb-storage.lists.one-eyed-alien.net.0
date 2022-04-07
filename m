Return-Path: <usb-storage+bncBCIKNOFMWQGRBH4VXGJAMGQEIDU6WOY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CC94F7201
	for <lists+usb-storage@lfdr.de>; Thu,  7 Apr 2022 04:21:20 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id l3-20020a170903244300b001570540beb6sf316099pls.16
        for <lists+usb-storage@lfdr.de>; Wed, 06 Apr 2022 19:21:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649298079; cv=pass;
        d=google.com; s=arc-20160816;
        b=ifoTtmRqv8KH2p3Au8z9Q8yjTpDCEMpG2LkquX9GfjrJ6KPR8GtVBFoT3NDK3ei4rA
         ESXi3gPTUbBOqGqJWH6w9mRrZw8xLNWEwBpBFGXWdrcgJCOmIWYUUZKGNDQtacLf9Tyr
         Vypqmmf1JBhxgTwbdjS4HwTliuOlcHpQG7ofOMl++ucyyv9tk/5gJ9lphfjt7iJScIsn
         m3SLYqC1IvJNd226eU5aKea6w5/ldCmIzzMGEuivsLzTW8LTT2YPVDGeepZv3br1eOef
         DbaBJR2MrBWIH/QBeuwGHVhOJCtBJLfN81UUOF/PSmuXreCvCi2Mnb47SuBuKE+QMh6a
         UZeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=I7B2BjS2NJ09rd2Gk3UJJc84Ay7p6Em1fhBd1PKGKQE=;
        b=WSDV+bU5/43FzEicfOLykQ36kmkS44Se+Zqysf7cdlTEpsMYToMRNWBh3d5+ZSfdFg
         k4lKDf4/3Amww6TPkvqVkYR9XjTBF4Eqhdi8zr/YjJOijAzxqvHXtTSU19aYHJTpexFx
         b6rCdGyqz5XoXjYz6HH1HzVrkQvf8KFtoF+RIczQbUgHOdYpMZsCKnPV+/n4pFt0qqKS
         C9/jpXoXa106dk+DTBWyWRpexLkJF2e5m2Zf57l31iD0gmGXGM77nZM2AionXvCz+3Wq
         qTWhXIGtGvN1u5Hv49yyNqubYWZofgtrJMVrySyYQax+ncGjtnifAWGKJmovc0vsQ75Y
         wHgQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I7B2BjS2NJ09rd2Gk3UJJc84Ay7p6Em1fhBd1PKGKQE=;
        b=MyOA69wq21xrk7ri6OLGIv0C3rvhIKP+YFtqPynlR1YGG/Hy8Kdvdy/QW7sa3FrXNk
         SoiVXObnRSss0Wb8h0kHt27NvmkrSm9qTlcI6KsA7w9/NiHkeSoEmPIIzYrTwnl2jlz0
         1g3/UOtem7stdntEDla62VN3rs+R4kGzw1GbM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I7B2BjS2NJ09rd2Gk3UJJc84Ay7p6Em1fhBd1PKGKQE=;
        b=3ubVB5XtuNeo1llcsWpqLh8sqMBW/dElMVWPRUArqJROmLX9/mMoNuGGEwrOl2ryf2
         CasDM/2nk+ZjFOXhqLdJT5ihClBJ0/06VSLwY+CO8f1E+t3EcrDWcyAHUpoMRgiHF9Gu
         Is5vRxJt18Q6YmiZyZ5nhwzFkkDqhCFwBarqxMk8WbOiR2RKtIg8DNTT9GzmvRFiw5OI
         tKaFOLGaI4sy71lXYLl30/2+nENfdgo3O07z/A6P9UZlyyeXNZlVi2sbOUg+HHTY2ti4
         mG2qkWmf8y/T/f50WFGwFEMYLFzkQlobcp6432ptPoS3OfzrpOTAwEHpH/8IgYm4SI6V
         foxQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532Ka6gzCqXKDufGO75l4vaJJFMIGCDtPGF2VlUEwJq2B3Nw4BVs
	mQB8h4dEigYkc/WSeE486VdPPw==
X-Google-Smtp-Source: ABdhPJxf0mc/J4M/UGXd7QmzNY723PjeO4+ypQlu04/tNLPqPax7/4JQJDVA8I4oY3+F3Ssuyy0gWw==
X-Received: by 2002:a17:90b:3e8c:b0:1c7:3001:f359 with SMTP id rj12-20020a17090b3e8c00b001c73001f359mr13281727pjb.179.1649298079384;
        Wed, 06 Apr 2022 19:21:19 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:3307:b0:4fa:abb2:817f with SMTP id
 cq7-20020a056a00330700b004faabb2817fls830459pfb.4.gmail; Wed, 06 Apr 2022
 19:21:18 -0700 (PDT)
X-Received: by 2002:a63:5c03:0:b0:382:70fa:4294 with SMTP id q3-20020a635c03000000b0038270fa4294mr9677300pgb.580.1649298078677;
        Wed, 06 Apr 2022 19:21:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649298078; cv=none;
        d=google.com; s=arc-20160816;
        b=U6nHE81aCGaJMHRwXNxMHWC7bCa1jU4P20Nan3POpDCkow38EXUlLMDvaxMXG2i1nI
         UoKeGSAGA6+oeqbWz64VTjIx+83/IHUKjtKO7VXjv61Uapc2GxWpiFYVlfQVlZiGJ4Tr
         2xz4a0TEkUv+hIJK5F1YSrhhQR+jG/uJ+LXaerDvs43jNTJQr3E6+R60GhgYyuLsXpWM
         ZNPUES9pDc6Z3ydWEpIW+Igfq0vaFfIRDvYqlZMjwP4mD29Hgl+eOngCgviZcu/cvqk5
         GkKi23wVlW22gQe0LVb4OQScKzrVUAU71+9XDzPuZOLhGQhIDoSyfNWX6Iux1srkVsTd
         I/Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=d6+R+JF4AxxDJS51SAFHyKWCaeDJWrpIHcUHiuqKfEk=;
        b=ambLqpxeE8ii00svfaV3VjuNrfYgRks1m3WOXAUsEZB/O1HbnjRnt/tjhx9BwdDAu6
         yTUzT1fFjFXjlurdlW8RGYRJuUCyEekg2IhMGOkoRuuJo7GO3ZgmGgEEbnDCTLVj3UIR
         KtD7b7luFY7XXKsye1Gd1rN61ccpwhYYDTPEe/Z+/pUXzqUzDR3EbDY3cdw7opWc/+04
         ayJ+sXL+webcVbhByfVp6qwQ1r3rNuOnbCHnIYCcLsDlX9FpBSFJL/l7MeEHN8AMqInv
         3criNRYmItGHjqmsjLi0G9oa1dNM4Mh1p9I1IIDjNSmwW7USqvWt4Ws5UYfHzc6ofVbu
         1qLg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Received: from zju.edu.cn (mail.zju.edu.cn. [61.164.42.155])
        by mx.google.com with ESMTP id cp5-20020a170902e78500b00156ea908d59si3179456plb.304.2022.04.06.19.21.18
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 06 Apr 2022 19:21:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) client-ip=61.164.42.155;
Received: from localhost.localdomain (unknown [222.205.11.114])
	by mail-app2 (Coremail) with SMTP id by_KCgCHb56cSk5iC6VCAQ--.41141S4;
	Thu, 07 Apr 2022 10:21:16 +0800 (CST)
From: Lin Ma <linma@zju.edu.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	mdharm-usb@one-eyed-alien.net
Cc: Lin Ma <linma@zju.edu.cn>
Subject: [usb-storage] [PATCH v0 3/3] usb-storage: shuttle_usbat: fix
 initFunction error return
Date: Thu,  7 Apr 2022 10:21:15 +0800
Message-Id: <20220407022115.3773-1-linma@zju.edu.cn>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CM-TRANSID: by_KCgCHb56cSk5iC6VCAQ--.41141S4
X-Coremail-Antispam: 1UD129KBjvJXoWxAFyrXrWUGr1rCr1rWFy5CFg_yoW5tF43pa
	nxG398AFy8tanxXry8tw4DJ3W3ua1xJry7KrW7Gas3uw10g3WIkr13Ka4vga4Yg3W5Xa4I
	qan2qF45Cas7G3JanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUv01xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AE
	w4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2
	IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW0oVCq3wA2z4x0Y4vEx4A2
	jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oVCq3wAS0I0E0xvYzxvE52
	x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUXVWU
	AwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI4
	8JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwCY02Avz4vE14v_Gr1l42xK82IYc2Ij64vIr41l
	42xK82IY6x8ErcxFaVAv8VW8uw4UJr1UMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I
	8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUAVWU
	twCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x
	0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_
	Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUb
	N6pPUUUUU==
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/
X-Original-Sender: linma@zju.edu.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
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

The initFunction is called when probing a new device, its call relation
is like:
USB core: probe() -> usb_stor_probe2() -> usb_stor_acquire_resources()
-> init_usbat_cd() or init_usbat_flash() -> init_usbat()

That is, the error return of the initFunction should tell USB core what
happened instead of using constant or error code like
USB_STOR_TRANSPORT_FAILED.

Signed-off-by: Lin Ma <linma@zju.edu.cn>
---
 drivers/usb/storage/shuttle_usbat.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/usb/storage/shuttle_usbat.c b/drivers/usb/storage/shuttle_usbat.c
index 54aa1392c9ca..f0d0ca37163d 100644
--- a/drivers/usb/storage/shuttle_usbat.c
+++ b/drivers/usb/storage/shuttle_usbat.c
@@ -1456,7 +1456,7 @@ static int init_usbat(struct us_data *us, int devicetype)
 
 	us->extra = kzalloc(sizeof(struct usbat_info), GFP_NOIO);
 	if (!us->extra)
-		return 1;
+		return -ENOMEM;
 
 	info = (struct usbat_info *) (us->extra);
 
@@ -1465,7 +1465,7 @@ static int init_usbat(struct us_data *us, int devicetype)
 				 USBAT_UIO_OE1 | USBAT_UIO_OE0,
 				 USBAT_UIO_EPAD | USBAT_UIO_1);
 	if (rc != USB_STOR_XFER_GOOD)
-		return USB_STOR_TRANSPORT_ERROR;
+		return -EIO;
 
 	usb_stor_dbg(us, "INIT 1\n");
 
@@ -1473,42 +1473,42 @@ static int init_usbat(struct us_data *us, int devicetype)
 
 	rc = usbat_read_user_io(us, status);
 	if (rc != USB_STOR_TRANSPORT_GOOD)
-		return rc;
+		return -EIO;
 
 	usb_stor_dbg(us, "INIT 2\n");
 
 	rc = usbat_read_user_io(us, status);
 	if (rc != USB_STOR_XFER_GOOD)
-		return USB_STOR_TRANSPORT_ERROR;
+		return -EIO;
 
 	rc = usbat_read_user_io(us, status);
 	if (rc != USB_STOR_XFER_GOOD)
-		return USB_STOR_TRANSPORT_ERROR;
+		return -EIO;
 
 	usb_stor_dbg(us, "INIT 3\n");
 
 	rc = usbat_select_and_test_registers(us);
 	if (rc != USB_STOR_TRANSPORT_GOOD)
-		return rc;
+		return -EIO;
 
 	usb_stor_dbg(us, "INIT 4\n");
 
 	rc = usbat_read_user_io(us, status);
 	if (rc != USB_STOR_XFER_GOOD)
-		return USB_STOR_TRANSPORT_ERROR;
+		return -EIO;
 
 	usb_stor_dbg(us, "INIT 5\n");
 
 	/* Enable peripheral control signals and card detect */
 	rc = usbat_device_enable_cdt(us);
 	if (rc != USB_STOR_TRANSPORT_GOOD)
-		return rc;
+		return -EIO;
 
 	usb_stor_dbg(us, "INIT 6\n");
 
 	rc = usbat_read_user_io(us, status);
 	if (rc != USB_STOR_XFER_GOOD)
-		return USB_STOR_TRANSPORT_ERROR;
+		return -EIO;
 
 	usb_stor_dbg(us, "INIT 7\n");
 
@@ -1516,19 +1516,19 @@ static int init_usbat(struct us_data *us, int devicetype)
 
 	rc = usbat_read_user_io(us, status);
 	if (rc != USB_STOR_XFER_GOOD)
-		return USB_STOR_TRANSPORT_ERROR;
+		return -EIO;
 
 	usb_stor_dbg(us, "INIT 8\n");
 
 	rc = usbat_select_and_test_registers(us);
 	if (rc != USB_STOR_TRANSPORT_GOOD)
-		return rc;
+		return -EIO;
 
 	usb_stor_dbg(us, "INIT 9\n");
 
 	/* At this point, we need to detect which device we are using */
 	if (usbat_set_transport(us, info, devicetype))
-		return USB_STOR_TRANSPORT_ERROR;
+		return -EIO;
 
 	usb_stor_dbg(us, "INIT 10\n");
 
@@ -1539,11 +1539,11 @@ static int init_usbat(struct us_data *us, int devicetype)
 	rc = usbat_set_shuttle_features(us, (USBAT_FEAT_ETEN | USBAT_FEAT_ET2 | USBAT_FEAT_ET1),
 									0x00, 0x88, 0x08, subcountH, subcountL);
 	if (rc != USB_STOR_XFER_GOOD)
-		return USB_STOR_TRANSPORT_ERROR;
+		return -EIO;
 
 	usb_stor_dbg(us, "INIT 11\n");
 
-	return USB_STOR_TRANSPORT_GOOD;
+	return 0;
 }
 
 /*
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220407022115.3773-1-linma%40zju.edu.cn.
