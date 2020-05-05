Return-Path: <usb-storage+bncBCHZVHVFVMARBAHRYX2QKGQE7FHNS6Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x448.google.com (mail-wr1-x448.google.com [IPv6:2a00:1450:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7741C598E
	for <lists+usb-storage@lfdr.de>; Tue,  5 May 2020 16:30:24 +0200 (CEST)
Received: by mail-wr1-x448.google.com with SMTP id e14sf294891wrv.11
        for <lists+usb-storage@lfdr.de>; Tue, 05 May 2020 07:30:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588689024; cv=pass;
        d=google.com; s=arc-20160816;
        b=IRLsfkHFEjfWUVA78d+1mGoUbCTbpzCktZmd2Y8RNl2CVbT/Yxnskat1hBVap6g609
         JOYPUgHLbfZDpSxCrpr7oXypHoxJDT4QQHlE8OnYRmKzcqPwLWGYL602ZMEvTiGv7JZQ
         C/LS/gM5UGxvhf5urAnhWUII/osdobs1GzcvqYL04WlcneN1uSzR6YygUT0KKSsyZxVy
         OCfXIWbaKFTrm//AR8FE4YaD2ZfSlk/4r0NYTX3MLXTYBBL4g4seTE/u/KrJ6tdVnupg
         1FYnHPSFJx6+rnJALnHCU56vd5iNbgl9U5Ekb2rKn3bcjUvAS0ahV7fA2Bz8avMC33wg
         /j7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=0bwWN/BzHNXVc27jlOiMeeGEusj8kdb4+SLsdDXd6IM=;
        b=rqasXfYraL/R9XIfw8u/hDD2KlZFAbLeum43xZhnkwQSmU/dE3ujA3k2RN4/Dvaa9d
         xj47d6CCfAdUXnH5weIKD4QRhmUhdGVqpT17dIOqPCR6L0FSUFGRrP4EKNaCrW/ryuFZ
         StiYsWAaFNQ4oJ8qBbpehU9NA22ZeoKod472BX1GT5mlAyyshq2Uze6q1gJiHxRo4nFg
         2pYLBI1h1Sa90wpnugkuM0kQ3+Vn8iG1LEAdDprEG6vIZCeAOJxxxu914sS7hnQQG8mh
         DsPFGyQ/B+bJfXfhyZSN5W3SH6ONDIMlk/ZHSrNhjAAmK04bnYBnesgiwAgapXxEi9m9
         O0DA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0bwWN/BzHNXVc27jlOiMeeGEusj8kdb4+SLsdDXd6IM=;
        b=XBD8EVjhcVFyq2adbPgVw0TZxK8oNGkzdEq9nLfMtZUuGq2HaJintNkhz/2Uf6s4ts
         OqiQzzh3BYNNLwDSSlAZghLo7wo+/pQWVYhcL56nZVFmrZJEk9RQsjQJndWgStWMastl
         54XRFpRFjuo49wCC/mxHBGoktnXlhpxXH9jAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0bwWN/BzHNXVc27jlOiMeeGEusj8kdb4+SLsdDXd6IM=;
        b=pzPAglpFjfTWpoVQUUGhf6TrT8eYCVGpoLxNTABHik80XDs5jFm27czcx4Y6H8xl/5
         vExHUufMvYAMabZbBY6VPytsTvyEvGSIKOgxtP0ZJVUUb8KQvJbAOuZupW57gP7sgUsy
         SYc8LiU6T7Vcmsk61t3Z3ACIhFOvYQfGc2RVachW6D32EhDlpehNt3wEsgGVw+gjB0Dh
         IYKnHMgflTeRCq/6NFzVyif8HcVmT9+Xjgjy7YdOCl3fulcRdkXu1exqyILth7g+JS9Z
         pb3W4Ir4jKnrWoLN1HCkGHzVfb6yXBVpPpMvheO1kPVhOQMg7RJLd0ot+5M3wuWB5dU/
         ux9Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AGi0PuZ3cv/Z6IX+rUmHHt8Zy2YYgFDoQdVQtwfQw2N86g5FltB+pS7f
	VK6goRpEmPrmhOY4KAppYHXgQw==
X-Google-Smtp-Source: APiQypI4xYkMuRq5EwZylS2sItvw6x/Vovl8glBr+8Gf6g5DhDA3Yk1Lkr0MOKVC31/HVhS4p64KJg==
X-Received: by 2002:adf:9564:: with SMTP id 91mr4142918wrs.246.1588689024562;
        Tue, 05 May 2020 07:30:24 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:dc85:: with SMTP id r5ls4255003wrj.5.gmail; Tue, 05 May
 2020 07:30:23 -0700 (PDT)
X-Received: by 2002:a5d:6a8b:: with SMTP id s11mr3979986wru.258.1588689023698;
        Tue, 05 May 2020 07:30:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588689023; cv=none;
        d=google.com; s=arc-20160816;
        b=qz7JbZx3tSH83qQeXpdYvrgX8wAJYWgI240feXUk4myRYe3rE5IGBWuYK2BZ2ztING
         t0hLfNh33PlDifwyV5d2n9tCXw+3NYlTlmRdG/RxPa5itC7SYFdtHmQXA48+GteA9I1P
         EUAkaqiqbTRSuVt6ka7rlzjo+4rBHglFD99mS4MAgJGVe9v8eDj2finVDiVEaGUIgMUu
         0HXrBVF269Mi4BVfzES2NjKaJrA31LY8c+7LZn8tiwcwKGfmReXqVwUr1oujRbUE26rN
         8pvUDJRHi5sNHdkLw/Rk+n3zvphT0NXypoSQ5s5rKwt0G6oKALK4iwiUYcq64+UAuSUm
         ThJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=vosS4EOv1yoSMD3bGQ4VxynvqW4OnTiFYmXw05aQ6cs=;
        b=sxUXeogSXB7dn2vhnZ9EQA7LbT94OnsRGQa14bjJPTw/9JxROjZqNCBN2iwMkMyXxy
         BDLMGpMBO/9A6JRt/qKtEDHzYKeBEMGhktBzf3FDDCBvDLt4NQZJw2UgomCUEf7GKCrM
         ZlyA5qeLD4tYNW9FDaOS+1tHgGFzhj0yLKjRB3nDu+PGwDIoffJ/OV9ptSDXYw9G8nz1
         x8QfuYbYPsIF5aQikTa56to3fwXZ9LJnJuf8Gb6N0nh4TY8TO0FSSTFLaxM6JbGKgan/
         oYMlgoL/vMUQokSjT7inF/i0/MDZcbkBZamA0cHQZZdcuBMP9OK9aUkBr27+S6Hu+y8b
         Ty9g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by mx.google.com with ESMTPS id m18si2172419wrn.572.2020.05.05.07.30.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 07:30:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 1A9F0AD03;
	Tue,  5 May 2020 14:30:25 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Oliver Neukum <oneukum@suse.de>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Hannes Reinecke <hare@suse.de>
Subject: [usb-storage] [PATCH] sierra-ms: do not call scsi_get_host_dev()
Date: Tue,  5 May 2020 16:30:19 +0200
Message-Id: <20200505143019.57418-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
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

scsi_get_host_dev() will create a virtual device such that either
the target id is ignored from scanning (if 'this_id' is set to
something which can be reached during scanning) or if the driver
needs a scsi device for the HBA to send commands to.
Neither is true for sierra-ms; 'this_id' remains at the default
value '-1' and the created device is never ever used within
the driver.
So kill it.

Signed-off-by: Hannes Reinecke <hare@suse.de>
---
 drivers/usb/storage/sierra_ms.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/usb/storage/sierra_ms.c b/drivers/usb/storage/sierra_ms.c
index e605cbc3d8bf..b9f78ef3edc3 100644
--- a/drivers/usb/storage/sierra_ms.c
+++ b/drivers/usb/storage/sierra_ms.c
@@ -129,15 +129,11 @@ int sierra_ms_init(struct us_data *us)
 	int result, retries;
 	struct swoc_info *swocInfo;
 	struct usb_device *udev;
-	struct Scsi_Host *sh;
 
 	retries = 3;
 	result = 0;
 	udev = us->pusb_dev;
 
-	sh = us_to_host(us);
-	scsi_get_host_dev(sh);
-
 	/* Force Modem mode */
 	if (swi_tru_install == TRU_FORCE_MODEM) {
 		usb_stor_dbg(us, "SWIMS: Forcing Modem Mode\n");
-- 
2.16.4

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200505143019.57418-1-hare%40suse.de.
