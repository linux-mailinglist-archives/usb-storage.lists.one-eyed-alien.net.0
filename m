Return-Path: <usb-storage+bncBDUNBGN3R4KRB2OL7W5QMGQELN7EO4Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id D98E9A06DEA
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 07:00:12 +0100 (CET)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-2164861e1fesf9043455ad.1
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 22:00:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736402411; cv=pass;
        d=google.com; s=arc-20240605;
        b=R1GojRAfZFlQYWmFLfpdvvSO2doUQ7tzbQWcfHZ/K7cKrCzCly8L8tNZv9ZZFfg+Pz
         cISeOcUUMok6haNMLGG87nhsXOyi/S9FSqb8f/1p+0xRORrX1yH1NH2O1oKDQSlActbg
         apSMs4K3rpRMCo8JitiVtaHu0KVbNMIo7BRB9gFWU4fJ0lsHvqXRFQjNLBFwJ131D0VC
         Ef8FewtYP7BDiwT5lE0sAPUvUcrp4Cx2W+UQ8jZM2PJaE4ZS3LLPgK10g0QpyVIfdqM0
         Bi97q3QDWF2umOyXzubWX/vJo1AIMgTljqANGCEFMNN95Z0+8N9KSmAfxkTqAcvmc+S2
         LJDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=X7aROpyOXyF0VSwR2w1qp7OwnxYMbbhrzHqV3/jOccI=;
        fh=Thz6sAxjJh3TSiW26RmmInvp68uWpiZXnBBy+wtajSo=;
        b=PVXXilWwE/Xgsi4gccSAuDQJsRoWjZlOETkdaxBI3kAH9UBvWu4iMpOHzY3lC/d3xT
         AfCJa/h0BY+lYPdezusU6qgz3DWSpWJqf1bqqnnT1zeqX2jEkcIeu3bbvudtg5SoIqb2
         EvLI5JAHxXiIgjOChzJVeGIEhBoccmhII7shm0Dp3EqIq739xy/OrNH5ZhrxW6gP5wLD
         g1ncoMTjHhOgyfTzlqwa9RjsFlY4Gm4b/1lJf5NyYKDb8S/VbhO91b2UaYBtzgeUqKKY
         FoEjr295iu4TkYpV6jC1Yxrkn6Fh0Q3zT900FYfoNFPlCxkUifNaRT3f8gAKMwTAAsVv
         F0WA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=v00tT2VE;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736402411; x=1737007211; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X7aROpyOXyF0VSwR2w1qp7OwnxYMbbhrzHqV3/jOccI=;
        b=YnDIUwzSyksf1HhoshpNQDb7goGaz6XGFBaWpbtydWhpR+FLd6Txnqdp7ZyAZ3M61s
         bn6HIk34l14b8+jkVuqPUnfg+1EuPSKgsJ6mLYVoz64xwlVbykDcUd93+LtfxaSRXtdB
         lJFPRefSoQH7DFYx9Z2TqjPdyuaJszwlSZDH8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736402411; x=1737007211;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X7aROpyOXyF0VSwR2w1qp7OwnxYMbbhrzHqV3/jOccI=;
        b=CCzumP9nJ632e6Xyi0ydueCTw2Bdh5ztBu/SdEe2gXCE7+ItgPOeGSJ0ey3IXOE0z3
         mTt7p3r8zEiF1rh5XZZIJB2Smxw1Ps9nZ5LgCrP+G3zxYIPxfXscTt2bGA2DwfUTci4I
         Hq97V2FJdDPtBw4qbwuzXr1JhiGiueRAHa5w63YKWU3V0QkB8Z4XUYpVanOhSk+RanQj
         R0xFocbswnWVNrekP2xHywGWSohk62NOYN8pNzuSFKjY28ew5OXfJSXUSKnQ+jSL2ecv
         ls/Ew4jkNEtm5wR3dqv0DRCZw/puV2iqgCZlYB384vQC9gma8gm/Xw+W5e8ILTJPofxd
         WbLA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWAvhh7PkqXQnYCwyf1Ow8J9Bn7YFU9WpDIn51sRNVH7wxNgYDcGu5Es/0NXolazt3fBwKQiA==@lfdr.de
X-Gm-Message-State: AOJu0YzoR0W4NXxgltY6PvINafMRK62oEK2RXAzujy1vcvQI6oz5ctuo
	JdWJ87Deyyx4NYHbAUv1Iz8b3ITXJ4tYjyWuQRLhX4vqngtO8+hZrBamNOYMtww=
X-Google-Smtp-Source: AGHT+IFTPQ+VEq7D43GEH2ZbWYqT6BgsXrUWYLeyW+N7Iqz47/9jNBPWd1vKjIIwVHMzU+tVK9+VPA==
X-Received: by 2002:a17:902:e747:b0:216:3c2b:a5d0 with SMTP id d9443c01a7336-21a84002a70mr67905805ad.51.1736402409938;
        Wed, 08 Jan 2025 22:00:09 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:d2cd:b0:216:56be:c7bf with SMTP id
 d9443c01a7336-21a8d38d761ls6636065ad.2.-pod-prod-09-us; Wed, 08 Jan 2025
 22:00:08 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXmrHvtpGaCQLo4IzQu97DeTGFvFwmvhdP6BP6wqzH+zK2/L012iNJYr9dCyvXHdv/1c6An1WnTKZ53Kg==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:ea05:b0:215:e98c:c5b5 with SMTP id d9443c01a7336-21a83f440a8mr93617915ad.1.1736402408569;
        Wed, 08 Jan 2025 22:00:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736402408; cv=none;
        d=google.com; s=arc-20240605;
        b=f9b88mTn//rQBvXk/+5veN+qGJkhasoaJsv/b4hgTR63/3EzfjhihoJ1Vi6Dln8O5q
         I7nCtQtvcQl3xYVPM9X9NvAHbeInXHC3MaVKd5IQ/fDCktTyb2kFjR9mqdl29iHP+T7l
         KMvaVwVDirQxJzIc1XNPqOrdJDxtIa6daxgoLed4F7dlcLL65UIDKhWpgZ6791oAjc9C
         AuL/nOCL/MpDewUeHJH7LCch4G18lXXt/TArkxTxgCTDS6FmS61b9CJnwiav2pIgCSki
         ubqanrd87P6BBQ2341B+Dx3M6zP7sFk8WIrSKUStGDK8rDxvamoVe26+E053SR0qgU+h
         XDgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QYjYnvJCCu85L8ZQwU17Zz1hszoqzw6yMycLiSn8ENM=;
        fh=WRAGdV8aIMVVSYoSeklSBzbPtpnXpjY3BgoNNJPLYpM=;
        b=QgK4cEdKvBdceZuEomN3zhN6be2sAi3kuF2j9EOL3mG+grcFcplqIquV/2ufOUkITr
         UmYrVqSVVXMhCxnqKMwTyz8b77fiG3k3EIKz3cj/JmVBwwbEKdMZN1/+5DP04U6eYf4Z
         ixXxT9DGdeLYP8u41qGoGFo12DZLq/Xj86Mz0AqfLIlqswExiFQSGLWXOGvijYWGT8FC
         in2/5gnbnLvs9hfOhcjutqhXABb8DUcgrcRtaJjDxi6UtHQT7m0ZaSCnF+zhMTpckVLu
         q/V63DjvChld88X5R2J+AlRJIgFxdAjLjB7Q3xuxUN+kHAd4D21IX68mcFy1DukqBEFJ
         2YTQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=v00tT2VE;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-21a918b7e09si7061695ad.291.2025.01.08.22.00.08
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 22:00:08 -0800 (PST)
Received-SPF: none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-ddeb-cdec-70b9-e2f0.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:ddeb:cdec:70b9:e2f0] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVlZF-0000000ArfV-2ZaU;
	Thu, 09 Jan 2025 05:59:22 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Ming Lei <ming.lei@redhat.com>,
	Nilay Shroff <nilay@linux.ibm.com>,
	linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	nbd@other.debian.org,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Johannes Thumshirn <johannes.thumshirn@wdc.com>
Subject: [usb-storage] [PATCH 11/11] loop: fix queue freeze vs limits lock order
Date: Thu,  9 Jan 2025 06:57:32 +0100
Message-ID: <20250109055810.1402918-12-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250109055810.1402918-1-hch@lst.de>
References: <20250109055810.1402918-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=v00tT2VE;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
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

Match the locking order used by the core block code by only freezing
the queue after taking the limits lock using the
queue_limits_commit_update_frozen helper and document the callers that
do not freeze the queue at all.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/block/loop.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/block/loop.c b/drivers/block/loop.c
index 560d6d5879d6..15e486baa223 100644
--- a/drivers/block/loop.c
+++ b/drivers/block/loop.c
@@ -311,6 +311,13 @@ static void loop_clear_limits(struct loop_device *lo, int mode)
 		lim.discard_granularity = 0;
 	}
 
+	/*
+	 * XXX: this updates the queue limits without freezing the queue, which
+	 * is against the locking protocol and dangerous.  But we can't just
+	 * freeze the queue as we're inside the ->queue_rq method here.  So this
+	 * should move out into a workqueue unless we get the file operations to
+	 * advertise if they support specific fallocate operations.
+	 */
 	queue_limits_commit_update(lo->lo_queue, &lim);
 }
 
@@ -1091,6 +1098,7 @@ static int loop_configure(struct loop_device *lo, blk_mode_t mode,
 
 	lim = queue_limits_start_update(lo->lo_queue);
 	loop_update_limits(lo, &lim, config->block_size);
+	/* No need to freeze the queue as the device isn't bound yet. */
 	error = queue_limits_commit_update(lo->lo_queue, &lim);
 	if (error)
 		goto out_unlock;
@@ -1151,7 +1159,12 @@ static void __loop_clr_fd(struct loop_device *lo)
 	lo->lo_sizelimit = 0;
 	memset(lo->lo_file_name, 0, LO_NAME_SIZE);
 
-	/* reset the block size to the default */
+	/*
+	 * Reset the block size to the default.
+	 *
+	 * No queue freezing needed because this is called from the final
+	 * ->release call only, so there can't be any outstanding I/O.
+	 */
 	lim = queue_limits_start_update(lo->lo_queue);
 	lim.logical_block_size = SECTOR_SIZE;
 	lim.physical_block_size = SECTOR_SIZE;
@@ -1471,9 +1484,10 @@ static int loop_set_block_size(struct loop_device *lo, unsigned long arg)
 	sync_blockdev(lo->lo_device);
 	invalidate_bdev(lo->lo_device);
 
-	blk_mq_freeze_queue(lo->lo_queue);
 	lim = queue_limits_start_update(lo->lo_queue);
 	loop_update_limits(lo, &lim, arg);
+
+	blk_mq_freeze_queue(lo->lo_queue);
 	err = queue_limits_commit_update(lo->lo_queue, &lim);
 	loop_update_dio(lo);
 	blk_mq_unfreeze_queue(lo->lo_queue);
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250109055810.1402918-12-hch%40lst.de.
