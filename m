Return-Path: <usb-storage+bncBCLNZ6OO5QHRB6N2QGMQMGQERYORXOQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 258615B6BBF
	for <lists+usb-storage@lfdr.de>; Tue, 13 Sep 2022 12:37:48 +0200 (CEST)
Received: by mail-pg1-x545.google.com with SMTP id m188-20020a633fc5000000b00434dccacd4asf5568181pga.10
        for <lists+usb-storage@lfdr.de>; Tue, 13 Sep 2022 03:37:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663065466; cv=pass;
        d=google.com; s=arc-20160816;
        b=o2UVlk8hst4Q4JmzNJ+YLuF8LqT7F2SSH7I9AqVDA7SjhR3QXIuIMiS8UjlXb3+/H6
         kdODGAauF8cfUZPMsVCI1eXQtbyQoii27G3XWgeIlkee406NbQXeGY/8LHX7cswJU+oJ
         phpDk3Pca5rtwQCI+YQ1MXrAtU5t1SsUb/ZYnAXmNKNGBIZnnd1eBe63caoSsAa6wviI
         z6+fc+zeMMcfYp0RDi76C5qAtjTUxypid79qp5pdwBt64rQa9DfxQPYdqmcpKTgs/qfU
         FjqR+FJnvV83d4wZMnTkX54uaLcI9XFbMkY9WUsyl6Fu0uVhS3Ir3oOTAOlS/K42WsKk
         XqjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=HqoDBsS2jPeuiKZ/3Y+ahrhPGHFy+rOa4ii0D4szO+Q=;
        b=QUP76hbMBZdnGx6LkzHPx+4C1ur+P34yyJ3O3YIOmyEpS9l7qdfXnk00bwQvva01T3
         FU/P4ndXZ/Kl/vU5/uIcrGi43lDqkwHY2x52Ex2Fx4yPbOmjMZFgDfwUxXb3XJSehbaJ
         62EuHpQq7SMs1VilyFArbPlk8yJPLePAoluajroH5ZWb/7wGXH5O/fILIf40LLEcXS4Z
         TUWoOgviV0EPaTPsjupFhzAg/B7kV7j91HVck5Pke+eyP+PK++youeb0MTB9PnuAV+mX
         kZq6nKrew/pUjii2v0uy+7jwsEJmr8CbQ4TBPZ6tTHW/0RNyJWjQNEaRMZD0CldG1BMh
         7RIA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=EyDg6zl+;
       spf=pass (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=onenowy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date;
        bh=HqoDBsS2jPeuiKZ/3Y+ahrhPGHFy+rOa4ii0D4szO+Q=;
        b=TyngAO+F1MN55l/GSJ11Zm0zS8/G3YEN7wVelLmDSNJzNFmuQq9LBpbfUL3zVuVYDK
         yNu/HbhsyztfTq/4TWuBcqDqb6/dMXH/sEwPRiIiqKeLyAvOIqqLsTTp8PgR81A3m/jv
         Kw+egVhaDzI2RCx9k1r5zpNdUsbFhl4jPdRxQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc:subject:date;
        bh=HqoDBsS2jPeuiKZ/3Y+ahrhPGHFy+rOa4ii0D4szO+Q=;
        b=FCbNMTTB50AsLwGeEh9C+VmEPtBkWPc3QEB6h0mHbAiqBcR5ByYyU3wFGKErepLBP0
         DFtNWKZls7DbYmrrINBHowDj2MJL9mgNoWIs2KTRx2DHViD5t40CjaxvMG52ijiWPJ8k
         PO6XSCg1JFnk49Noo5xUrIeJ5erjPMoPkLf4iq/L21r6uTHRoEq35Tv/1A9tRTnOT6rN
         Lh3goKU0vu+9RLFOjoqcBmu8Mwes9lzM6fqK43ODLFsRsEaW93lM2x0vlXfDwL0F9VJ6
         m4bQZ73sx9507VT1s8iCOzz+K+47xLgr4qxyt7Wqib8LzeFELHI1CXIm3BmPNG9augra
         wqJw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0Hi6qS3MhtfCew0NnvWcjSRxElObtAvNspyOoTn5EPL3VXMy5l
	UY5bopiEVvO5xRdpx5mE+iXaBg==
X-Google-Smtp-Source: AA6agR6CXV0fyzjyKR1nQ8a+SrvL5vd9EN3nM5NCRZyQ27dnHJ0nDEhbYGBwj2SPgZtAVdelzf6qkw==
X-Received: by 2002:a63:1302:0:b0:438:e83a:acd5 with SMTP id i2-20020a631302000000b00438e83aacd5mr9296402pgl.510.1663065466340;
        Tue, 13 Sep 2022 03:37:46 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:4fe5:b0:1fb:a751:8707 with SMTP id
 q92-20020a17090a4fe500b001fba7518707ls11308681pjh.2.-pod-canary-gmail; Tue,
 13 Sep 2022 03:37:45 -0700 (PDT)
X-Received: by 2002:a17:902:ce8b:b0:178:4b73:8233 with SMTP id f11-20020a170902ce8b00b001784b738233mr1468849plg.93.1663065465349;
        Tue, 13 Sep 2022 03:37:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1663065465; cv=none;
        d=google.com; s=arc-20160816;
        b=u87yTvKFLGC/n2WWJX2AXTSiYxRXMEYYi0gUPKqpQoQF40a4MsYuEGF/5B8BZhmPB8
         6E6XxaqkoxQ16CrOccM5Ocy478/qhY+QMZnGgVzm3yN6OF7T+blyriEaSDDHHDu4Fr4v
         5I6mkNmYGRhwSLkFlAm7iDPzniOBDMRO0HcOTpZOVDs3/UTOv0VJA1XcijNW5H9Xq0Ee
         HVBb1laIvH7txDTIdT4lCUnIbEw9qEEdHeURqTHAjVARpJae4sX1u0+uRlkOPwO6cTsM
         VoLqRiv+yVEWC8KFWzXGbP0aBCGdPWIRnZq0hU6ZnMK7K2d9ZEXTzQXOU/VAzWLoCuLS
         j02Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=N8hy1dIcQisjqhDY6MA/ldhQ7my+rp3krWj8FtUHCYU=;
        b=H0BoXy9dYwmsUZfFGm0JOQIRji4y2n/J3G3dFF0Rd8Ytaf5zHEWz6q+Z/3gmasFwtM
         GN59GPhuu9KheKUEL4pLtblXlPtKT6mVh2g2UNMAlX6viunovNf2LmoOrtEaT95lBFj6
         KI4iQxL80gKebrI6UhOYxvaWHg86leeFoWi2d6mY4vzRMHUDjaLXMJzu9jZwO+/oWtuG
         hGe50ivg8Y9H7zosYWbp7k8rBPHywFGf2btN3Wh45IMMxoUZl6swi3XY2mz4tv3iWDss
         50s/wbFsWDS2slJZyuBnuADmprriQEJjMqxU6D44EXk1rAYIFZ4KfgoKWrQ39jEBoCq7
         q33g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=EyDg6zl+;
       spf=pass (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=onenowy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id i17-20020a63cd11000000b0042b5588165fsor4687438pgg.57.2022.09.13.03.37.45
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 13 Sep 2022 03:37:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a63:1b21:0:b0:434:7610:11ba with SMTP id b33-20020a631b21000000b00434761011bamr27599552pgb.396.1663065465029;
        Tue, 13 Sep 2022 03:37:45 -0700 (PDT)
Received: from localhost.localdomain ([110.46.146.116])
        by smtp.gmail.com with ESMTPSA id mn19-20020a17090b189300b001fbb6d73da5sm6944743pjb.21.2022.09.13.03.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Sep 2022 03:37:44 -0700 (PDT)
From: sunghwan jung <onenowy@gmail.com>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	sunghwan jung <onenowy@gmail.com>
Subject: [usb-storage] [PATCH] Revert "usb: storage: Add quirk for Samsung Fit flash"
Date: Tue, 13 Sep 2022 19:37:12 +0900
Message-Id: <20220913103712.9267-1-onenowy@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Original-Sender: onenowy@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=EyDg6zl+;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220913103712.9267-1-onenowy%40gmail.com.
