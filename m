Return-Path: <usb-storage+bncBDUNBGN3R4KRBCMJ7G5QMGQECQOEI4A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id A6913A056A3
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 10:25:31 +0100 (CET)
Received: by mail-pl1-x647.google.com with SMTP id d9443c01a7336-2163d9a730asf12714645ad.1
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 01:25:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736328330; cv=pass;
        d=google.com; s=arc-20240605;
        b=iKvudyjmf15vgRVEt+VhJeDjmqk8zOGACmz3iO4dAx+PDXPR6IulMXC0EwGWH60lKt
         13BNG/T3TFzjidcksCW2XJ26ekx3tgyVn2cMT4+R+276rFP17RN6th3q1qjmNraOyL0Y
         CRjQrq6BqDGGoKsfuR1b639ek34MGnSqocs58xFBLXVqC1pA6HDfaNQGDfbxdwATqQDX
         fglEbJ/8cV+ZtSaihU/83tZsHba+Se1oEeVc/YZrzbySXzQZoQOs+L/UZJ9VtxKSMO5l
         U4EUNVbWOZvMsns2mHk9cR3JJZfSA4ASJqJCTB2QD065XPHW98HwN0iG9aokBLASiiU2
         Bj8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=buEUozIjnXtcw4NQcURg9mXXj2BgBSodfw2z/X2+n8A=;
        fh=DlG4x/uzld5eHkLrb1HzUnfQsSNBpSk7xGBlrPwVqOw=;
        b=AYM83P+BlkBwLcMlHx8j/q71wP8I9LBG+9xSJkSsU/t1Vcj0dKZQATeEN5Ax5gX63y
         OhXJ/Mpkn6MLep3wrAodo0KzHw1Ipoqk3PFdM3ub/Mz4Bcv67VffTAU23WjUMBaI7Y0f
         m5X4tjlo5JBx6MZ+Gxnf2r+hAKkTpUH2kYHTV+J15TR5iScCX5tb51PE3mhibaSvySYK
         OCGS18aEfjZL4hQzXCFxlMl+Ri8ZwbnJwgnnqf3e2z6FQf/LCnJDcTV+1Mf6bmjHlNmX
         cI9/9DXHI4NyopHn4BHywGGgIEhytpX8VduJBPgm/GTdqb1lHLsXIsr1KH2q0Rd3kvGF
         sJXA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=CqRbcX46;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736328330; x=1736933130; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=buEUozIjnXtcw4NQcURg9mXXj2BgBSodfw2z/X2+n8A=;
        b=NDmYzA/IAhPIaMGyCpZ1gU5P8OyFTWKb4R61dsQ/LS6gX866I7uWds3zBHxy4PAei9
         puRy9Jq6UHwbk/icDHrR9t1XkljQzL5v0Gc5lsttkCXwz8eKewKRMZvLQPXyT/OQa74T
         Cxfp3MD3gcqVd/Ox/qhZMTiA7JwGIFBnaqGpw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736328330; x=1736933130;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=buEUozIjnXtcw4NQcURg9mXXj2BgBSodfw2z/X2+n8A=;
        b=FFounzLPcjbtjc3JS4/UdTmAEnyy3zcdd/5Dnl6h37MSe9hAc+Z3gSLF5+kgDaOFVN
         MsTMT7DIuR0vfzenCqqvDb1ZuXRDrfu7BiL3sJx/mTHXfhXY4sY7zUguKvxPpcc3GNpU
         hGbjZhbjug4G0qSYKSJ6VtEwlGagdv/r2CvdIDlwLUDFFte1+YJpktQOwLdXbNVVk6/o
         glWA5TRSXmL27G3hPSABGyJEZBpNkqJOzGbJDFOLdEHx5ledqR9KjqK58gtyDogQE46p
         F5N50+/bBfGq+B5DyMT4CeadUi7dLG2+01rmiNCvcW6FCOBzckIfJZC/OZevkTdmMOGI
         UqkQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVGM9IQ/Q3zjtBoEVDhW+HD8VJ/awh572HJHtfJLyb+JnQ4Nj0otK7hSBF/J1wITXD5WJ7fIQ==@lfdr.de
X-Gm-Message-State: AOJu0YwytaUVIGleMAZ7hE3qLb+qf4sdbdILqlgmF1FPYAxsaWAxgQ5W
	2hABxNIMz75jOPRV+Bm69azhipAzvSuNtM/3Ip18dW+qfUrB9ROP5pzB9Gz1Hl8=
X-Google-Smtp-Source: AGHT+IH+91haoW20ku4jC5ZrjwBKodm5YlqwwNqkchnbFXA0bMOdZ0dHqbCaEk0nBWtEaXwdfMNFvQ==
X-Received: by 2002:a17:903:1450:b0:216:3e87:ca00 with SMTP id d9443c01a7336-21a7a29de91mr101783015ad.28.1736328330104;
        Wed, 08 Jan 2025 01:25:30 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:2388:b0:216:5cb8:f034 with SMTP id
 d9443c01a7336-219d9f152c1ls73575735ad.0.-pod-prod-00-us; Wed, 08 Jan 2025
 01:25:29 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXOGtmYvwGOsiCDw+R8KG8qStkF0UhIkWom7WYsgUy8wJ/hjk28+rkEPRj7P4tz5XSRYrLSJCzuYm4ARQ==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:340e:b0:216:11cf:7b1 with SMTP id d9443c01a7336-21a7a201b0amr78175695ad.15.1736328328637;
        Wed, 08 Jan 2025 01:25:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736328328; cv=none;
        d=google.com; s=arc-20240605;
        b=ZabaFQf14l9SXdz/pqVYbz26voWk694O0SbjStk7Q9Oy8R7TJc4xaseOYNA4F/AvNX
         r6noPV+2a9XL4H2CSSnY6hfJQktJS85IhGA7jaAubfuhReDjcL+U3wVjXVY4EbtL/PY5
         zb5WsdbZjdQluv29RhSktx+czgLvOXm/jjo6c6aLOh05T1yL7W1zIkyhlI7l/FRwZ3RN
         1LIeP7asNx+BdxfyfZDgM2H3wVQp+cXCpbpzt/svvZ+tmDme/0g5NAzzLWPJORG2U1PL
         1zhPOgAvim9odjWGxqotHPl/5W5KTy46DoMllQzC/yuMS44Rk2rSrGLTTjS2zJuLm88/
         Ct/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jNlH9hTwzoW9j2vVQOHx5Cm68J7JBPjoUbePjMLTFwc=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=TVuVcmrO4EZHprRMrspt/5aCrkNC4g77GmIhzq7J2nV5c+UYZWd8z7MEJ9OdizAYOM
         Dkr0iyMh64LNjR99RvqwxqXnz1pRz2zUP+1rzt4VBTJOgjLFPRLQBvw7+B3QXM3q1LWc
         p03mZFmawRlszuHGwnNwwDhjLAHcPkWsb95wSmgaBZkVb5XIaTG5Ad5tJlFCN2O/X62H
         gS+hX925KQXGsKOOLLlxQpuIRHx1J8mEVFbCzECLsjJAEV/ZBAJXHU6s2d9R/O0zumFl
         f6aOtMngQVxbUNWpksi+C33JtuCaJ2eEfVmZZSWZT5HgiWPpY2MQ6WD8HqTYTOxf7bbN
         27rQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=CqRbcX46;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-219dca04f19si119146115ad.307.2025.01.08.01.25.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 01:25:28 -0800 (PST)
Received-SPF: none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-e44b-b36a-6403-8f06.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:e44b:b36a:6403:8f06] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVSJZ-00000007lPu-4C7k;
	Wed, 08 Jan 2025 09:25:27 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Ming Lei <ming.lei@redhat.com>,
	Nilay Shroff <nilay@linux.ibm.com>,
	linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	nbd@other.debian.org,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH 01/10] block: fix docs for freezing of queue
 limits updates
Date: Wed,  8 Jan 2025 10:24:58 +0100
Message-ID: <20250108092520.1325324-2-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250108092520.1325324-1-hch@lst.de>
References: <20250108092520.1325324-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=CqRbcX46;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
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

queue_limits_commit_update is the function that needs to operate on a
frozen queue, not queue_limits_start_update.  Update the kerneldoc
comments to reflect that.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
---
 block/blk-settings.c   | 3 ++-
 include/linux/blkdev.h | 3 +--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/block/blk-settings.c b/block/blk-settings.c
index 8f09e33f41f6..89d8366fd43c 100644
--- a/block/blk-settings.c
+++ b/block/blk-settings.c
@@ -413,7 +413,8 @@ int blk_set_default_limits(struct queue_limits *lim)
  * @lim:	limits to apply
  *
  * Apply the limits in @lim that were obtained from queue_limits_start_update()
- * and updated by the caller to @q.
+ * and updated by the caller to @q.  The caller must have frozen the queue or
+ * ensure that there are no outstanding I/Os by other means.
  *
  * Returns 0 if successful, else a negative error code.
  */
diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
index 5d40af2ef971..e781d4e6f92d 100644
--- a/include/linux/blkdev.h
+++ b/include/linux/blkdev.h
@@ -944,8 +944,7 @@ static inline unsigned int blk_boundary_sectors_left(sector_t offset,
  * the caller can modify.  The caller must call queue_limits_commit_update()
  * to finish the update.
  *
- * Context: process context.  The caller must have frozen the queue or ensured
- * that there is outstanding I/O by other means.
+ * Context: process context.
  */
 static inline struct queue_limits
 queue_limits_start_update(struct request_queue *q)
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250108092520.1325324-2-hch%40lst.de.
