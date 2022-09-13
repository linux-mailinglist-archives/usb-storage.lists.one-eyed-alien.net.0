Return-Path: <usb-storage+bncBCLNZ6OO5QHRBHGBQGMQMGQEHW5SAYQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0F35B6BF0
	for <lists+usb-storage@lfdr.de>; Tue, 13 Sep 2022 12:51:09 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id z24-20020a056a001d9800b0054667d493bdsf630194pfw.0
        for <lists+usb-storage@lfdr.de>; Tue, 13 Sep 2022 03:51:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663066268; cv=pass;
        d=google.com; s=arc-20160816;
        b=hv6++thRJ7L1IyrI+nEFoMQDZ46DHTXfHSr7mte2XyvuwF8F3u8adXwSaGUju/AGTA
         IH9c1BrBkFiSA6o9cwoObuExo5UhwXzmvLj+9xcvXwN4FKEa3ON8kc47y2A+IddM3mVJ
         2k/7lZrDI30XtSOrYaA03PXf376kXq6HLSg4brlLUJ9Mwiptxf57vPSzlWwkr9Ghuo3u
         VPYyJ8dyYm/tTYLMvP+afUCEkXdpXNz+NFrjvz2MKfSpBd3QfPPE0yGRTbHi3vm/Hm86
         jAmzVPkj1ziX62jNHpg9oQFeVk1N371YSUlRbJQ2VbaqwDfjwhjWdg3lDL014r5ffgYT
         wqUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=3352/bxU2ROYrf2dGt2/pa5oomdVSVT2S0yZMzVPodM=;
        b=GQWbM6D148JTaxV3TyFwIC+dEeV7+2f3EU7FehUPs1rScWZZTes3cWR0oUTvwRJLBm
         Pd2VDS1vKVlTe1pCoGjfDUUj+tt41HasaICLdE9pgY99pNK5Tt3pTKoTK6hyH9pXf2z6
         QmwPFG192rbUjE/Vu5Qo77BY3p4clwHGHy4oKGOzST39s+HPmW+e3HDt5G5t0+25TqBy
         fRiGfzR/RSpHm9OeTfY/a8YM2A0WJSN6TYgmC+Kw/M3lO0Ovc7MpQWgzrNjoxZC1Vl16
         ck/Ue1bqk2Born5RELL7A1ANJbCMxKTVykJWSXj4cdMDsOs8mP7mmZUEdQB6sABmPcHs
         poNA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ya0kIqgD;
       spf=pass (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=onenowy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date;
        bh=3352/bxU2ROYrf2dGt2/pa5oomdVSVT2S0yZMzVPodM=;
        b=jamIudHCAUS/NuK0zqXrnjWV2BiR1HMiNa6OJBIdRWJq8jgryn8oMrq6V6yzeTfxuv
         QECcljQEOZr7undkbr8zFNsaMkE3pHjsAE0U6DJbf/bghIhflJ0slWXGfs/t3S5qPOBM
         Rd1jlj+dYfGmYv2Wk+JqQi+Qv+wHZbCUcyUEE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc:subject:date;
        bh=3352/bxU2ROYrf2dGt2/pa5oomdVSVT2S0yZMzVPodM=;
        b=tNWA7gcDX2yHKoG/R7vSOjD3SQP8It3xNaKARYZrvDeUKPS2Xd5itRiIGPoXvOA4qF
         bRryXdUD0nRKFLHLOGjBqM/4socSQnO20vbAH5WyLmiILntThQQz2iqjhEAXHOGaP0k2
         cOSrfUDW0AmTuQFODgibzYeZ3smkNotWT5ZNUT/tLJK2znA/38VsBIb0onv+XtAb78V4
         lJ9TFlv9y3svSZd1BOYJGScIHiUgCB3O04p8UiDarfLMaowoYBp17PEfE2cY/pX4Lp+e
         IyHlFQLJG0Y+5bnSXW4amp2DoVRQBmai9cNVZMaqwKems7d7UCH6tQn0ks3pbz9Pmqw2
         BhSw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0umfPfrkYiyg1MmEQmz/7mQ0bZw/qbsWe/WyArorRDYTg7Wmxn
	CZEqcDcCQgw5+P0GKSp6s/ZfRA==
X-Google-Smtp-Source: AA6agR5cfRoV22wFcQG3VFzLy5OQXW8moJqsUTX1JKNnCFSMO6M/5DkVY91YBHJngNlEXDxtxLHYSg==
X-Received: by 2002:a17:90a:cc7:b0:200:3b3e:4e00 with SMTP id 7-20020a17090a0cc700b002003b3e4e00mr3249356pjt.201.1663066268221;
        Tue, 13 Sep 2022 03:51:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:a00d:b0:1f3:5f7e:7a34 with SMTP id
 q13-20020a17090aa00d00b001f35f7e7a34ls9284952pjp.2.-pod-control-gmail; Tue,
 13 Sep 2022 03:51:07 -0700 (PDT)
X-Received: by 2002:a17:903:1246:b0:171:5033:85c with SMTP id u6-20020a170903124600b001715033085cmr31269753plh.146.1663066267422;
        Tue, 13 Sep 2022 03:51:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1663066267; cv=none;
        d=google.com; s=arc-20160816;
        b=SeGwVSuZn4TqxHtoWFTz/jdlOflrpbc/8MF6vT4cTHdr5NdlkAgS2QHxqNHF3h4qI0
         4dyuUhG8gi6c+zsPiVS6N+xJUjNBY4SUOIlnXsAwMBVOYvkMFU+DSogMDuqwf/r5mj7c
         TiefGzS2nw6npItSP9wpE+ySr7Igf6/Ja8m66aDYHUnuMo836vZN8eCrlTucooE9VpaM
         a2Oxb9zEpQEQeYW7S471EYXFwPAQEbMnQvpRmtu8TPmQDYDnvkBT7qUUkSgTtkCiq2GR
         AnI/JAgTLMjTfnj7tK8vivgYN+wVGz8qif9EBXtoMdG3dGxhXeqzhWqOGilDN7pQX1zv
         +jIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=pTq+Xcvl1e+n0GZWfkJLZOf0hA1PRIqXZ+u1gIefpbQ=;
        b=sMFNCCvVfoyV+1EpvIUmfkmjzX7XitGZcjAoNEVpf+TOAd+ktIxBPeujlmeBkd9w1o
         +aCdOqsrSI6Rk3mZDH2Y7c/eT/y0W3Lnyc6Of1iZbDZWNfcFTZqZ7M7um7SkpQstNDsv
         mHDpogy0lwgZFvQDtYw97O3Ts7lONtUD3eu+xPqmOe1grA02f5A4x1NlRKyEw5SJXyZN
         bnJjQx3gErnmqiMJ2Q7G7+3tGJPe7sZj97Q3EfAnv7pNJVGwhn/v8dQwK33RdB7Vl1hE
         zvcLpKPZtrovL649IcDFMzBnDvW+BgOAvwXB4lQug1DCj5EfvKgzq6NqGvhp0Sv9OPP0
         nwpQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ya0kIqgD;
       spf=pass (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=onenowy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id t2-20020a17090abc4200b001fe1cb1021csor3783977pjv.42.2022.09.13.03.51.07
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 13 Sep 2022 03:51:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:90b:4c8f:b0:202:bcbb:1984 with SMTP id my15-20020a17090b4c8f00b00202bcbb1984mr3282768pjb.64.1663066267101;
        Tue, 13 Sep 2022 03:51:07 -0700 (PDT)
Received: from localhost.localdomain ([110.46.146.116])
        by smtp.gmail.com with ESMTPSA id nd3-20020a17090b4cc300b00202df748e91sm3000651pjb.16.2022.09.13.03.51.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Sep 2022 03:51:06 -0700 (PDT)
From: sunghwan jung <onenowy@gmail.com>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	sunghwan jung <onenowy@gmail.com>
Subject: [usb-storage] [PATCH] Revert "usb: storage: Add quirk for Samsung Fit flash"
Date: Tue, 13 Sep 2022 19:50:59 +0900
Message-Id: <20220913105059.10248-1-onenowy@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Original-Sender: onenowy@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=Ya0kIqgD;       spf=pass
 (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=onenowy@gmail.com;       dmarc=pass (p=NONE
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

This reverts commit 86d92f5465958752481269348d474414dccb1552, which fix the timeout issue for "Samsung Fit Flash".

But the commit affects not only "Samsung Fit Flash" but also other usb storages that use the same controller and causes severe performance regression.

 # hdparm -t /dev/sda (without the quirk)
 Timing buffered disk reads: 622 MB in  3.01 seconds = 206.66 MB/sec

 # hdparm -t /dev/sda (with the quirk)
 Timing buffered disk reads: 220 MB in  3.00 seconds =  73.32 MB/sec

The commit author mentioned that "Issue was reproduced after device has bad block", so this quirk should be applied when we have the timeout issue with a device that has bad blocks.

We revert the commit so that we apply this quirk by adding kernel paramters using a bootloader or other ways when we really need it, without the performance regression with devices that don't have the issue.

Signed-off-by: sunghwan jung <onenowy@gmail.com>
---
 drivers/usb/storage/unusual_devs.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
index 4993227ab293..20dcbccb290b 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -1275,12 +1275,6 @@ UNUSUAL_DEV( 0x090a, 0x1200, 0x0000, 0x9999,
 		USB_SC_RBC, USB_PR_BULK, NULL,
 		0 ),
 
-UNUSUAL_DEV(0x090c, 0x1000, 0x1100, 0x1100,
-		"Samsung",
-		"Flash Drive FIT",
-		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
-		US_FL_MAX_SECTORS_64),
-
 /* aeb */
 UNUSUAL_DEV( 0x090c, 0x1132, 0x0000, 0xffff,
 		"Feiya",
-- 
2.37.3

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220913105059.10248-1-onenowy%40gmail.com.
