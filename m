Return-Path: <usb-storage+bncBAABB4MHZSLAMGQELJCF4DA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x346.google.com (mail-ot1-x346.google.com [IPv6:2607:f8b0:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id E92895770BF
	for <lists+usb-storage@lfdr.de>; Sat, 16 Jul 2022 20:31:15 +0200 (CEST)
Received: by mail-ot1-x346.google.com with SMTP id c17-20020a056830001100b0061c56288049sf4477947otp.22
        for <lists+usb-storage@lfdr.de>; Sat, 16 Jul 2022 11:31:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1657996274; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q/Wd36FI7RBhl6895GkQFLu107OTnv/ARXiLTsl2aXSi+Z9D6kSpsrAYqmuA/VA470
         qE2OhhFqFlLdUT6no6FFwP3Nn4FqX/WcWr9DWVNmFPG6cqJ7yBDyh+7xLZ+89gzLlk6Q
         /NKLUadBjZgRRUBruUz3Fltx7sI2zB1ged1xCqmkiNrtR5ELy5gU9YqxGLOQP85u/dEd
         JVf5/WbLImiXqOSeSF3RdC5q5fZrb3bzsy4TDXzEbKlxTiW8Lq0R/3OsrLcTxsU2adJT
         te1fDEP2r84BM9Jl4y/pCw6MRScWpzj9o/s+IFnfx3Gza7rupskm1dD75mafHtSxoWWt
         ebsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:feedback-id:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=Y7GYFM5acvLZtkYF8PVHj3jbv7m7F0MZSIVHOXVZkqk=;
        b=QVWgB/loNmv/bgWNQor6tahMaYoU04tsYxIoVLluoXTtZm5/a2an2/N1Bgqgnq+mSa
         CUBG3TY+AD8Cme3IIiHHedIVSG6NMI9BjYsjPXLa0IzKPTf/rI8TTVPPF1rNtVc2SkE4
         ujacF1bgukHCBL3eB+ETmT90PnEV2Mmc48RRT5hX/aAxeHUNc7ufJ3JCZzh+J5ETFMpd
         t1WRRvhIKSy1+NdT0COxFcbAAKSsyHKzQN0A3zdOsQg9g7uGT/Po4yjGr1Ty0JhNiExt
         oFW92wqG2eszmySrPuBV+9z+lxDrbIl26mAM/X14aocZ67i1CvPMoIxzFKClZRieWoQ0
         J7wg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of yuanjilin@cdjrlc.com designates 43.155.65.254 as permitted sender) smtp.mailfrom=yuanjilin@cdjrlc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version:feedback-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y7GYFM5acvLZtkYF8PVHj3jbv7m7F0MZSIVHOXVZkqk=;
        b=hlKDz564vY37PWX1z42CbLh3LFiTSkT5IuYB9l1tB/DYONo9hsJF2s/RNwTq18ljtv
         xCf9schgjpMavtld/M9ESfK8eO2pDdvMgPgBMKtC6WNHac4OSej2kjkD2zzXqUS+YVy2
         6jt/HnxTxcaNwNcxJ4RmwwNGTllXkyHTvKQvE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:feedback-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y7GYFM5acvLZtkYF8PVHj3jbv7m7F0MZSIVHOXVZkqk=;
        b=vY6Gr23Bi+Hy8W07zrCk+6n2g77fW4db3xAgjYPa3j4IpmoesOl8eAmWgYkujXo3V9
         EWWkRxq35oRTyKpMhdgldfkpMNd3EJd8XuSh9jl2gPy9dya3YwmU++ZZEF8Zhk0V4JWN
         HV8OhVWKDvpk7WzO46jnm259zV5ozilrbaeOJdXu/ePcRMmgxJ0sNy9Rk+lulIIxSCSv
         pKTeJgbaFVa/pRdlfB0Qo4he5hGRBdAuP2mxX6CYGupgVhe0W3I/Nqs/LxmPjMwnMxUd
         JPGogWAg1KndLIW/8x3tqxKbu9UFCZBUPfc+SAiQ8OTi2slnASMnq3dx1Eebhv9ulRgn
         vHbg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AJIora+PqMyUolIvh9qJUosmemMvfXFEPsNpvRQG3c7PamD2JwR3+LiN
	rpS1ZC0JrQVTj34+xnQg9w15Ng==
X-Google-Smtp-Source: AGRyM1sWHphMuZzEmD9i2cQwrSbVv3YLy24/aqeCpB1AjkrlvkCyeO2FQf5A4B6x7PeNJPfteO9wUQ==
X-Received: by 2002:a05:6870:15c3:b0:ed:9d61:a56c with SMTP id k3-20020a05687015c300b000ed9d61a56cmr10586055oad.152.1657996274217;
        Sat, 16 Jul 2022 11:31:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6830:610d:b0:614:d16e:f30b with SMTP id
 ca13-20020a056830610d00b00614d16ef30bls12792928otb.0.gmail; Sat, 16 Jul 2022
 11:31:13 -0700 (PDT)
X-Received: by 2002:a9d:2922:0:b0:616:a330:b8f0 with SMTP id d31-20020a9d2922000000b00616a330b8f0mr7895295otb.133.1657996273614;
        Sat, 16 Jul 2022 11:31:13 -0700 (PDT)
Received: by 2002:aca:3b09:0:b0:339:f605:371c with SMTP id 5614622812f47-33a4d673227msb6e;
        Sat, 16 Jul 2022 06:52:53 -0700 (PDT)
X-Received: by 2002:a17:90a:b114:b0:1ef:7d95:347 with SMTP id z20-20020a17090ab11400b001ef7d950347mr28890404pjq.137.1657979572856;
        Sat, 16 Jul 2022 06:52:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1657979572; cv=none;
        d=google.com; s=arc-20160816;
        b=mr9uJ6g4TiM69VahbdRuJ7zMRbkTBRz5VmhLBn0QN13oM1mPYIgN3kRxv+GtBlIJQl
         WlV4CHm4eNKPrhELe7+hpz+LQodTsUyYVYGOoa33+SIgvhsb9uTQQzt+wrU4qEzRgyLf
         iTGOjwWbokMtCqzK/Aaq7tzZ7RetLbXD+3Evflaeoh4yVPFxSLxNYXJs69UwWT1VEQu+
         +lu7RaFZwWoLn+rRJF0MGkecwhrgLfBf0/rsfAMD8vNRkhYEG/TSBjzEUE75j6VOE5ZT
         KCOWkbzK9KcslzXrNmv7WynkHnMi94JBPEiXcE8QvzBDhY7DlAeYdSIiOhoBjJwgwrIa
         IbxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=feedback-id:content-transfer-encoding:mime-version:message-id:date
         :subject:cc:to:from;
        bh=E6rq/oOCdCZ2xM9JHaLRGqRpMq3pcXanmtQcsUMHgmU=;
        b=b9LUg5eZF+1mG7VQP4Rz5QX8sH15P5U7B+89/tILlqbkVDcGXjN/WAzC7v/wsH9W+i
         HlXHHQd19UQCKNhOV0fS85WMQHVgMsUqyNQoaevSczvoTHnSldTOLhyRCwyyj2mJj2z6
         E6rcebK710eP2Uh3oSr0Gc3ntEpmHcRFBstBnsUx0S4HtGbBSS4Hge+YgYtRSJ+FBrtg
         MavqgbeCI8ngC1ypR0kniYeo6x3/STMspaMa7ncDWOP5Zi5lr0mtL89+ftCitGlJk31B
         yF8IlJDodPSk4B2btdMsr1r4xqTXjVbaDLoPFr/Cd3AV3T/SaMhmPG88hmO3PHicNXfr
         7O+w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of yuanjilin@cdjrlc.com designates 43.155.65.254 as permitted sender) smtp.mailfrom=yuanjilin@cdjrlc.com
Received: from smtpbg.qq.com ([43.155.65.254])
        by mx.google.com with ESMTPS id d31-20020a631d5f000000b00414dde80438si6352239pgm.348.2022.07.16.06.52.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Jul 2022 06:52:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of yuanjilin@cdjrlc.com designates 43.155.65.254 as permitted sender) client-ip=43.155.65.254;
X-QQ-mid: bizesmtp87t1657979555te152duc
Received: from localhost.localdomain ( [182.148.15.157])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 16 Jul 2022 21:52:24 +0800 (CST)
X-QQ-SSF: 01000000002000B0D000B00A0000000
X-QQ-FEAT: GfaJPLQO2RkAZyVAnW5Q50RJZpZJuWxwg0XOkRVupOsUJqEQb/8Qy5VaxvG2L
	fHetyB0DZnl1ft9VJtsVi/vQh79La6nDpc+hLtgZ9DitJPpE9cEdcRgzfVYqKvMVz/zpRYs
	UbQTBmdRXJKVN+n1t5GeFsQgDhqRIboTWPURw0/Fub5szXzanwtpZ2rfl/dAPuQk/oDenX9
	VqKfSjqan5d35R+Kj4LB2l/RKi74H+n9hMa91ECax46JCdY4id92kh8emywLKUOSqtcXSej
	QaX4t0wahHv7LzNjn2kOWX5ixX58luXAnlS1ThaSsQsf2p8IXyKKA9sQgahYO6gi47TWQLY
	1bdj9wrl3T8B7wW+Uv+NZjG21Whd4c7Jmtbbstts2+Se2nMshOUvAwh0p2eZg==
X-QQ-GoodBg: 0
From: Jilin Yuan <yuanjilin@cdjrlc.com>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Jilin Yuan <yuanjilin@cdjrlc.com>
Subject: [usb-storage] [PATCH] usb/storage: fix repeated words in comments
Date: Sat, 16 Jul 2022 21:52:17 +0800
Message-Id: <20220716135217.49866-1-yuanjilin@cdjrlc.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr4
X-Original-Sender: yuanjilin@cdjrlc.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of yuanjilin@cdjrlc.com designates 43.155.65.254 as permitted sender) smtp.mailfrom=yuanjilin@cdjrlc.com
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

 Delete the redundant word 'the'.
 Delete the redundant word 'buffer'.

Signed-off-by: Jilin Yuan <yuanjilin@cdjrlc.com>
---
 drivers/usb/storage/sddr09.c    | 2 +-
 drivers/usb/storage/transport.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/sddr09.c b/drivers/usb/storage/sddr09.c
index 51bcd4a43690..cb0ae82b4abc 100644
--- a/drivers/usb/storage/sddr09.c
+++ b/drivers/usb/storage/sddr09.c
@@ -1215,7 +1215,7 @@ sddr09_read_map(struct us_data *us) {
 	/*
 	 * read 64 bytes for every block (actually 1 << CONTROL_SHIFT)
 	 * but only use a 64 KB buffer
-	 * buffer size used must be a multiple of (1 << CONTROL_SHIFT)
+	 * size used must be a multiple of (1 << CONTROL_SHIFT)
 	 */
 #define SDDR09_READ_MAP_BUFSZ 65536
 
diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index 64d96d210e02..aa96f97e5ac4 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -1179,7 +1179,7 @@ int usb_stor_Bulk_transport(struct scsi_cmnd *srb, struct us_data *us)
 		 * If the device tried to send back more data than the
 		 * amount requested, the spec requires us to transfer
 		 * the CSW anyway.  Since there's no point retrying the
-		 * the command, we'll return fake sense data indicating
+		 * command, we'll return fake sense data indicating
 		 * Illegal Request, Invalid Field in CDB.
 		 */
 		if (result == USB_STOR_XFER_LONG)
-- 
2.36.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220716135217.49866-1-yuanjilin%40cdjrlc.com.
