Return-Path: <usb-storage+bncBC46RKEB3EGRBCMK7PUQKGQEBPL3WII@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1EE78936
	for <lists+usb-storage@lfdr.de>; Mon, 29 Jul 2019 12:06:03 +0200 (CEST)
Received: by mail-pf1-x447.google.com with SMTP id g21sf38182570pfb.13
        for <lists+usb-storage@lfdr.de>; Mon, 29 Jul 2019 03:06:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564394762; cv=pass;
        d=google.com; s=arc-20160816;
        b=JT1JKXzmwS2nKIdMevgIJ14V9Bl2BWOfCEkQ6AmoKRIF8nc42aWo0bTylYcONGcm9g
         sVOPp9QU5rq0NV+qG/lOb/EQcdxJLCryVcxW/OTqXzPki1Bhh2vSWjgqoBRqoQsg7ZD8
         PgHRrebWAJmdE4fOJWm9BlZGjfBSxIAFRTJuPVIg0c/bwC49G78BCBT9pqBmUMtTn93v
         SwilPv22U1IkORHLS4mTDZccfGPOfl54UF50gbrvPYG9n+QQvrpvR5up9joVKMNRK6ZC
         +vTZVWo1ShItktW0RmCQn5diq+4x5Opj8fBodtupTGX7BVfyKEabTx5fRlXAC3wCIX75
         nTDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=7DITu0r/S4DdMCHTis7HxWjrKx2FPko8BW3b/JhJPKM=;
        b=h69eEYXNjrii7MghEIBIX2eMgCkoP/6+lqaCGfP4QqRNDidxNoltQ/lz0JP3+pHcVb
         ff+AF/Ecwf7bnV4+BClJIkstu9be/UnG5tB5SkEJtbqo0DDQYdiyDO+HdCHG+AcVqOUu
         iRJeNYJ1trdnLfDzPgkf0j6R99GfLl082E3BpZ10JBWkA6iSOrjKQmPyvMvFTLfcPJVL
         IQE6Q5twFouo6OQpZchAzdByyfW22k7DFHpxHttPHXo+HpqkFZRHJxxv2SB7Izoq/zij
         pbRuyiHBMvcSnYPtnj7bBxC2qdF2pItPT1aJSXZcWypJ/WfnNubksOnf6ikDSEp88/cy
         R/cg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I3Ym0l93;
       spf=pass (google.com: domain of baijiaju1990@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=baijiaju1990@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7DITu0r/S4DdMCHTis7HxWjrKx2FPko8BW3b/JhJPKM=;
        b=canP/PacbCqqK7zLrf66sJWlxn4u1zaWuM3bc5OwNwGvIImo0W6mNUt0YADxS0kGP3
         2QntvS0FMTXdRP2iHYvyj4grOCqBg7UH9jqRy9om1Jg5U39A4zaTbx1RlRTYffNPI7wQ
         I/agy+Pqplfi9WrC2KEFilvUpPwKPfZYDUyBg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7DITu0r/S4DdMCHTis7HxWjrKx2FPko8BW3b/JhJPKM=;
        b=YBLdYPbbP2KvFJ/PSJSDeI2ti83IIxKqKcPJ29Oj0sZKwDuVIu02PHRVjGlWZ3qzCQ
         Jv10LkgMk5TXZm6W0jBBjNnXvqWM2RC9BoqmD1kDBpHQCk43tnShgVy0cGn1QaWC+q2x
         68rBn/ZBjTLT7pa/2b1GWNzonNEQgCs4x/Z4EcRDK1+5b8YauuOYKhbDCT1Q/zjgiCks
         z/jstS9PZuWTBpQfSDD9tle/NF+H8eaNUZ0gbDazPyAHXO81VjitRYatEHyG6+f3NonU
         BAjTIv/a8jS//ArLoWwtJ3mRdeh8bu/1fuu4XvZYt7c1Re5+E1laAutuf7PjRVgOfow0
         XK4A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAV6lyWm14DRdve8iSEJtUvDhsa2dhK1AkKFko3OKb5AKa212rBV
	E9USD15SXPkUKyr3j/HKnaQ=
X-Google-Smtp-Source: APXvYqw8ghdMI8ruiW9GhqOSzv1neMksfs8jVPDdsDRS6q5z54y2CIcImqJvStIuNRG60HmA+6LDuw==
X-Received: by 2002:a17:90a:d593:: with SMTP id v19mr111116977pju.1.1564394761829;
        Mon, 29 Jul 2019 03:06:01 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:90:: with SMTP id 138ls7210630pga.1.gmail; Mon, 29 Jul
 2019 03:06:01 -0700 (PDT)
X-Received: by 2002:a63:6947:: with SMTP id e68mr67662056pgc.60.1564394761208;
        Mon, 29 Jul 2019 03:06:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564394761; cv=none;
        d=google.com; s=arc-20160816;
        b=XFZHl4VOICr23nxyG6ZwzfptLBfKIrzpZlBORCGKa1GIzOUKCxJ2lHV1mHg76qaxsY
         ZqXG8ip1ePv0Ypux6a8QjOiDF5QC1ojP51A7ffWgnrTozae10xizDkmtLWBVd8sYcNtm
         6BzEVz4qNEQMb97j7PjtXMswg9cIi0UTUTyHfXGNKiYGxRfNFUjzAimpK0oWbf8aotqa
         A4aWfrABKxvfx2fL/XJIfd71kowgEJqfB4Ps3rvVJvM5uQl5fqA2I0SGi/aXj9beN2aY
         xtV3us8Lx95Nr6NoW+/QNW8HTmuJJ8F5bbIVcuZJJcFMyy0dCtiPT84KEUm/yDVaMXnY
         qC0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=hlsQgLiK4mBtl4yaP1HBcLTCJDJdOymPRcLvjAE6BgQ=;
        b=Zyp0AXEcn/qHyoZCSggCnYK1nHJav3HhsKgX3VUKFjVj9Nhhe/9aqKKMkZXgxh0Icv
         OTMIYSCAw8t4b+qdSFRxXlROhH/ShbNF6ks0VcsQ4G2rHpoFHJkW+GT44IKhouTTfwwk
         tO/1iXep7TB8mkvADnwPv4Nfuel6qQgKj4U9sLhOLVGBXWmhFuBA0CdtKgqLulXznZ08
         LKZ8RF6LXA3Jb2a2n1tJfbE9Fa/dg9mwqNlNWcZLdcKdRdthN918Go3Hkaey6fXYa2jT
         jhtkmNPjd9xYi+WcyIffprR3iIxh68j5bWchBEK+j2Xhg1layWX4S0MUwLsSLcK5Mofg
         w5Iw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I3Ym0l93;
       spf=pass (google.com: domain of baijiaju1990@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=baijiaju1990@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id j8sor74237376pjz.15.2019.07.29.03.06.01
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 29 Jul 2019 03:06:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of baijiaju1990@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:90a:e397:: with SMTP id b23mr109888947pjz.140.1564394761032;
        Mon, 29 Jul 2019 03:06:01 -0700 (PDT)
Received: from oslab.tsinghua.edu.cn ([2402:f000:4:72:808::3ca])
        by smtp.gmail.com with ESMTPSA id bo20sm45654982pjb.23.2019.07.29.03.05.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 03:06:00 -0700 (PDT)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Jia-Ju Bai <baijiaju1990@gmail.com>
Subject: [usb-storage] [PATCH] usb: storage: sddr55: Fix a possible
 null-pointer dereference in sddr55_transport()
Date: Mon, 29 Jul 2019 18:05:55 +0800
Message-Id: <20190729100555.2081-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.0
X-Original-Sender: baijiaju1990@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=I3Ym0l93;       spf=pass
 (google.com: domain of baijiaju1990@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=baijiaju1990@gmail.com;       dmarc=pass
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

In sddr55_transport(), there is an if statement on line 836 to check
whether info->lba_to_pba is NULL:
    if (info->lba_to_pba == NULL || ...)

When info->lba_to_pba is NULL, it is used on line 948:
    pba = info->lba_to_pba[lba];

Thus, a possible null-pointer dereference may occur.

To fix this bug, info->lba_to_pba is checked before being used.

This bug is found by a static analysis tool STCheck written by us.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
 drivers/usb/storage/sddr55.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
index b8527c55335b..50afc39aa21d 100644
--- a/drivers/usb/storage/sddr55.c
+++ b/drivers/usb/storage/sddr55.c
@@ -945,7 +945,8 @@ static int sddr55_transport(struct scsi_cmnd *srb, struct us_data *us)
 			return USB_STOR_TRANSPORT_FAILED;
 		}
 
-		pba = info->lba_to_pba[lba];
+		if (info->lba_to_pba)
+			pba = info->lba_to_pba[lba];
 
 		if (srb->cmnd[0] == WRITE_10) {
 			usb_stor_dbg(us, "WRITE_10: write block %04X (LBA %04X) page %01X pages %d\n",
-- 
2.17.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190729100555.2081-1-baijiaju1990%40gmail.com.
