Return-Path: <usb-storage+bncBDF2TOFO7UMBB4W5QOEQMGQEUH5JM2I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x247.google.com (mail-lj1-x247.google.com [IPv6:2a00:1450:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A783F3A90
	for <lists+usb-storage@lfdr.de>; Sat, 21 Aug 2021 14:17:55 +0200 (CEST)
Received: by mail-lj1-x247.google.com with SMTP id bn35-20020a05651c17a3b02901b483917a19sf4208788ljb.2
        for <lists+usb-storage@lfdr.de>; Sat, 21 Aug 2021 05:17:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629548275; cv=pass;
        d=google.com; s=arc-20160816;
        b=KvNH+jqjl/DfiwSQt5M4FIPmKiu1UXt1gLnVhBtjMlH1hAyp92SlZQyVjs0VJy7enD
         irDliMSE0FtrVNfWUVdDSFT0WQW525TwWUy4P2aUS1TACa8bV/7IuzmQO/Jg4LWwuizq
         eTnbY479ntd2AVgjunymnY0dSOt4S6RI/Z/41O0O+Nq3mcfr/+tzbA9HTxuQaEHCIIN9
         Yc6bVnfqhsqrSNwYhqQ+Li0nPDrVloyimn//EvcbLXKtX1K71DfTea/kSIT34/mGWgXC
         4EjWYJGCHWDAonpuf/zJ5x0S3fb+2ryav9N1hO9A5ac3Ef8x7rmd0pvoDe6KRHhMtgvW
         EgUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=B0LRiunZavz1iwQNN3+G+MGkgyFjlvPpiqWTSxvb2MY=;
        b=lRcygryXmxc/FS9KFLnt0nQRYlGTUUVRq6JJrM+cyi5IQkAWmhB5bZQfLDCAQMhxhz
         6WBOOZoeq0LrdhBRpHNrkl0XCOA4FORc3cfVKo6UQ6uD55SjHOiIam5gKNqQob2/Pmu1
         8eEiu49IsV53Ujs+yFEk6K1AGAvocCacwEP/VHM7KoxRgB+/UyPrddledi/qQTZ2SYKM
         jBIaQdlfruTVMT7LaJBcIEwTBUnqUvPgrVHgfxVW3ev0lARMiBiahvk+ZPnQNq1SVgEF
         rtv7mEn7n1ssLuXaEn+SH6Q8voXVhk/yyKOqWrVpjxavQWzFHtMU4dTbqCaid5gt2W8C
         93bg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b007ORUE;
       spf=pass (google.com: domain of niklaslantau@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=niklaslantau@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B0LRiunZavz1iwQNN3+G+MGkgyFjlvPpiqWTSxvb2MY=;
        b=TZG3ArbONRlHKhRZLgVVYjxjdyvxiNj7c4okjbSVaiSeGwT1qFWDr6o9pHmoF9kywV
         5BESmGjnjjaEMehdn64jeWe3Kjepxq/5LiPHI0PKMX+XvYYSdyjDXmcd6XWqETlBtTvY
         CLub8uMJx0Qie2cKXP8Q++aA2uKgEt2q8dVBc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B0LRiunZavz1iwQNN3+G+MGkgyFjlvPpiqWTSxvb2MY=;
        b=O+LK4zxPIwd0gJPh0SNlQ9ty4AhgCe7aVcdEdaY750Y2hzMiyKJ6aDDrcPiFf1d23g
         wngEAVutPUrovM6q/i8XP+uPHZEaOdksfuSZ0SQSFxX/JhiqJtIUslp1ofxvqVhq919Q
         Dyc2ifh6xqYe2tjtnX1Q9UPK3OajKq3ntW2G/3+8cra5Yw5fhDMJ0TYXkGP07IcdeeQb
         99Q/EiDwNoSInN7LgPLfWGDi32V/L/o10F/pQa0W1jj3SXAq+QxtR3tX1W4dm403bDa9
         vZ9E/yrlBMwxTCe/Vy16DdZu9dGam3nnBT+2SeP7ST0ww6QQwkjH9NTiPWrb+LA6G767
         f5uA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532FYcbuyEfyCUqU3IsDMTkVlrCmrziu/HS53YFfvVwKCLXVf4Hf
	iRgufMkewzV0d/ciYAKMUJDhHA==
X-Google-Smtp-Source: ABdhPJw9PpOdtTwwShNCyZhX6gNKQUJ2wY6z/a5sdjAIxSM0Fq/dJTguMsKMphIYnBbCYU0X2Otg9g==
X-Received: by 2002:a05:6512:3e11:: with SMTP id i17mr18176622lfv.613.1629548275432;
        Sat, 21 Aug 2021 05:17:55 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:651c:1783:: with SMTP id bn3ls2041970ljb.10.gmail; Sat,
 21 Aug 2021 05:17:54 -0700 (PDT)
X-Received: by 2002:a2e:8403:: with SMTP id z3mr20602499ljg.298.1629548274111;
        Sat, 21 Aug 2021 05:17:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629548274; cv=none;
        d=google.com; s=arc-20160816;
        b=ARpPGAxcRSmF1JWouOB2rzKHYafTy6r3sskWgwMV/1aklD3M0GbbvjfX5Mz/X6QbaF
         UP/ituvd+3P3BbCYE1Lco+uZaCx0smMLkMnXnTjlgiPzjQoj2e/DmW+qD4vJTy0o0T/9
         0i/oHJov0kIVtNPt/qER/nDnhmI/rCQJrQJpi6d1ZZcWRw4NeFxQahlOvGc3TTIacVKv
         wRTgyWCYIEjgwtJbhKJji5xWvb4+BMRru4exrDVxZ+oo/9KhlJPHft2aGIQ2Lt4DlB+u
         jQ0dYjkQGxL0RoAGMpPWRUlqfH8yZUV7QVJJPFGu2PpmaFTm2w8OOZTZS1/j9vBD2oCG
         Nk2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=VTdzEtT4Wp458PIeJqhUe58FrWQCsObT9nOyzI0RjZM=;
        b=NSM0EVR66e0uVFKegi86H+ARVjVPKSPJhI40JVFKxCeyvGZ45ncbGCNeqCzJ5/0P9N
         5pIriFGSrody9R5psVnSkZV/GqLzg0N2DzYPM+cq4uzsoIAMtm4rxC5x0or4GAPJb4v1
         4GVSAb/YgUddE8h7GCUE/80ORpLHPK/tWjxnB8FfYdMvLp1LahoEJuLSOvSUh2t0OHY5
         OhWrp62ZO9U1nHPONdrMvT9cIMtpSu8GXdAfEpzTCsg+LDz4rcS7gdmVzTpWQrwa5fZy
         vHHdbfVpvFveMvEag01m2FnxeJ/QgsovHH+Cl3bvcjwnHj5WQPB2qce+ZI+msCrkjQs2
         4kbw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b007ORUE;
       spf=pass (google.com: domain of niklaslantau@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=niklaslantau@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id u11sor2391731lfm.140.2021.08.21.05.17.54
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 21 Aug 2021 05:17:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of niklaslantau@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:6512:110b:: with SMTP id l11mr18259203lfg.199.1629548273974;
        Sat, 21 Aug 2021 05:17:53 -0700 (PDT)
Received: from localhost.localdomain (h-62-63-208-27.A230.priv.bahnhof.se. [62.63.208.27])
        by smtp.googlemail.com with ESMTPSA id z11sm791481ljn.114.2021.08.21.05.17.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Aug 2021 05:17:53 -0700 (PDT)
From: Niklas Lantau <niklaslantau@gmail.com>
To: stern@rowland.harvard.edu
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Niklas Lantau <niklaslantau@gmail.com>
Subject: [usb-storage] [PATCH] Usb: Storage: usb: Fixed coding style issue
Date: Sat, 21 Aug 2021 14:16:30 +0200
Message-Id: <20210821121630.29318-1-niklaslantau@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Original-Sender: niklaslantau@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=b007ORUE;       spf=pass
 (google.com: domain of niklaslantau@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=niklaslantau@gmail.com;       dmarc=pass
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

Fixed coding style issue. Removed not needed braces.

Signed-off-by: Niklas Lantau <niklaslantau@gmail.com>
---
 drivers/usb/storage/usb.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 90aa9c12ffac..5f562bac14d0 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -926,9 +926,8 @@ static unsigned int usb_stor_sg_tablesize(struct usb_interface *intf)
 {
 	struct usb_device *usb_dev = interface_to_usbdev(intf);
 
-	if (usb_dev->bus->sg_tablesize) {
+	if (usb_dev->bus->sg_tablesize)
 		return usb_dev->bus->sg_tablesize;
-	}
 	return SG_ALL;
 }
 
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210821121630.29318-1-niklaslantau%40gmail.com.
