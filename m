Return-Path: <usb-storage+bncBDUNBGN3R4KRBCGL7W5QMGQEJSYSYEI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DCEA06DD1
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 06:58:33 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-21648c8601csf7999435ad.2
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 21:58:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736402312; cv=pass;
        d=google.com; s=arc-20240605;
        b=eKCQVH2t3Nkd+m/8eobb2PK3owQE3Dbwpps4CXWLZo8AozHMic1dGsY6BgsJOfOCM5
         8bsNPjyF63U/ho+D26CKUFdXR2awfhz7VfS6t8+1mgj3+V9grBDYqMgoqLVw0BL4Tg+3
         a+4OJNZQUERDpDTFwin8wjkM5NjAheoVc6q0as/St93/MMoiPEGzg4WqWtRBcs0hUOP7
         VRljuvqMJp/5fMTxXVDhK3r+aoSir5c3XpvrH32Gkgln2N9fsUMPwP/l2mdL04VfCwcp
         hG7Ft3O8n3IGTKSaiLb3+n0qAYNDEgjjFa639wmWxC27VlMWV3/94jyDhjCIxCQzcffW
         1ppg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=mpna4Q12z36cxXav0IsA8S/eSnwUkXoZW1CQ7zUxXVg=;
        fh=34DE9xySxV04UZPZBdFqNxX9vrQ9Zs/Ev+XEa5SPSzg=;
        b=dKW9u/5nJ/K3oEnqsMz1a9AYtBLX7PCsRd6osxT0Re8l1rQfzeSElW3G2aFIPEjDW1
         AbqLLmIWuUTTnWU25ZUdzRBD4HHzxvJg14xiM1uYMpJyd9o0OCDSqhn/alf1RHDAuMDd
         /dB14bRbQCk3fxgBkHAO+RB7aKv680cCoayArhRFTa8cx33gF546pU8eIjTy0LnYpTt5
         o0YOCf8MI7koj9saOONTk3kDD9k1hAzu3tKpABw1egnpLRZRdtkFjkTw0jrWKoYIM/KK
         fRKvWxcjOyRVRZqtG4nYoTa4WfGkiZaurJ4AZWasrczGs0yIZbiwMtzN11/VnzBPJJnA
         moyw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=b6F1VeDr;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736402312; x=1737007112; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mpna4Q12z36cxXav0IsA8S/eSnwUkXoZW1CQ7zUxXVg=;
        b=RPGIyP8p181WaJKR6cn6N7QEvtcECySGT0lLS9456dUw8QlMOE+NGlx4kjm/ZgHaCL
         nJ2ISmFrNofwNaMH8r7zbPzUxXkISb6dQrpqB+/grcPRaU1QTzP13BfYq5BNqZKbUNF2
         Is3Z28DcfAm1Fk64lTrETfbHJEpc20ojhZ4eM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736402312; x=1737007112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mpna4Q12z36cxXav0IsA8S/eSnwUkXoZW1CQ7zUxXVg=;
        b=aWCqQKFt6I7YjXEiHU96YIYUy+oDellPAGlSUNcy9PvpE9tR6ZCwk7o3QycB/p+FCD
         Iq9CZKO5FqKUZGOQu4aJEHxR2t6LoQUDdX2GqPtKcBNCOjifQIWHggaQcaVMgfCqlvUb
         gYXQow4Jqq6g8zyUg02vBoqJwbgmx+4UdvLANbauwGkNKRVFTy4eU2eb5hI8XsCtW27D
         /dOutkc9oe3FS3A18sd6O9OerSbjrCeta/F8PdLfgg7mn0HExyAdyuvi4McYonnie5ZC
         xws5JwutAi45rBD1xoPqWBM5ItS6OksN6itLceGU2dVjd80ydaKO58h4mS2ZYhtjRZf/
         snyQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWwAyvaiY09wlNkCgyVAdYQpV/od0DvBnvVKb203H4exxjtsQtB7dR11QCjm+7nTpa2D+5bEA==@lfdr.de
X-Gm-Message-State: AOJu0YzcaSX81feImUhnQT5DVoP5vams/Ck5l46dmchcQilDwag2SZnR
	hAoQhL3ReN34ZS5W0+mdJj7jbvj8hCa0MzbTucjRrqgmAILcLWkOGch3dKpmQWE=
X-Google-Smtp-Source: AGHT+IFOXPYWkcXmHNbv3PHoH7em9dpUIEInrYBBiAKzv8G8iwe5YsG3J6qEvK25bmRHJUnKswaIXQ==
X-Received: by 2002:a17:902:e74a:b0:216:2e6d:baac with SMTP id d9443c01a7336-21a83f649e0mr88637305ad.29.1736402312357;
        Wed, 08 Jan 2025 21:58:32 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:cf15:b0:2ef:91e1:29f3 with SMTP id
 98e67ed59e1d1-2f553d325afls500838a91.0.-pod-prod-04-us; Wed, 08 Jan 2025
 21:58:31 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXZsl1rOaTnYFuOFm8p5Y66drUknrkdPNlUl0yTaZ4u7D6z7ZEPajxPr5QDScBkO5GVlYCTUWCjOCkRWg==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90b:1f8b:b0:2ee:bf84:4fe8 with SMTP id 98e67ed59e1d1-2f548f1d44cmr8243594a91.30.1736402310955;
        Wed, 08 Jan 2025 21:58:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736402310; cv=none;
        d=google.com; s=arc-20240605;
        b=W0gWvLWRQqWRx559MiAQQaMfzO13X4h1wRTiSdwtxO+9a6c1I+vpwl9Qd7GEfjJr13
         h2k2YNfAVLdiKjIewNVx49ihTfDdwd5ShdSviN6h9z/8HPSZkZL1Xi7Q4NCLudSiXs0F
         0CIvIFm+s/lOTKUvi7jUKhRp5WR24WslLIQ3LoV6Pl/DcHNvCHWfG0FEPjv75zzZJ3ZU
         s5EXwXGgu6IKEZ5fT6Q1eBBnTpuiTQxyXjE7YZpWZNXfHY+XAcl4YfbdHnZqjqNPEs1W
         8OBnPSXbI09EAEFcmHG7rfGlFs0nmjYZY77mCYCYooIvEEtlUuU+z3u4ISqtzQAjphOX
         Fpmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=L1KYitiaLtdyne71sYKztm9FqgieLzzoa0AoCbHbX38=;
        fh=WRAGdV8aIMVVSYoSeklSBzbPtpnXpjY3BgoNNJPLYpM=;
        b=IOEfglkBHVEsqq1aTbHsrifv1g3UOXI19tyXQMzfp2oxAudyySgElAWFgfBJ53YllB
         fbg5zsRevhVzLHz4jNCoOEOBab9f6EYOKQ9SuWWk6EjQDEvEhNiGVzPr+0nHrNEIEOWF
         OHonkCiZh37w+RkEQ+jjd+rL2iVLuwDnmxLqpdMDVh60kOF3TyYPm6Jt1Zrg7CHETwe9
         vxcwLAn7kD/++C6lsCugcH4xYfkRnfp+RM8P4g2V0UWQaFNDHOrChQdXErLr+2glZWvQ
         3pvrylOM3mdUhspbhbiu+jvPfwo8PUbBQ7zwijEqMn1wTtPbFLcwozmxQTlBrImc9lhT
         Ih+Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=b6F1VeDr;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-2f55886360bsi762539a91.7.2025.01.08.21.58.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 21:58:30 -0800 (PST)
Received-SPF: none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-ddeb-cdec-70b9-e2f0.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:ddeb:cdec:70b9:e2f0] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVlYp-0000000ArG4-3Hi1;
	Thu, 09 Jan 2025 05:58:28 +0000
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
Subject: [usb-storage] [PATCH 04/11] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
Date: Thu,  9 Jan 2025 06:57:25 +0100
Message-ID: <20250109055810.1402918-5-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250109055810.1402918-1-hch@lst.de>
References: <20250109055810.1402918-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=b6F1VeDr;
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

When __blk_mq_update_nr_hw_queues changes the number of tag sets, it
might have to disable poll queues.  Currently it does so by adjusting
the BLK_FEAT_POLL, which is a bit against the intent of features that
describe hardware / driver capabilities, but more importantly causes
nasty lock order problems with the broadly held freeze when updating the
number of hardware queues and the limits lock.  Fix this by leaving
BLK_FEAT_POLL alone, and instead check for the number of poll queues in
the bio submission and poll handlers.  While this adds extra work to the
fast path, the variables are in cache lines used by these operations
anyway, so it should be cheap enough.

Fixes: 8023e144f9d6 ("block: move the poll flag to queue_limits")
Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 block/blk-core.c  |  7 +++----
 block/blk-mq.c    | 26 +++++---------------------
 block/blk-mq.h    |  6 ++++++
 block/blk-sysfs.c |  9 ++++++++-
 4 files changed, 22 insertions(+), 26 deletions(-)

diff --git a/block/blk-core.c b/block/blk-core.c
index 6309b3f5a89d..32fb28a6372c 100644
--- a/block/blk-core.c
+++ b/block/blk-core.c
@@ -951,14 +951,13 @@ int bio_poll(struct bio *bio, struct io_comp_batch *iob, unsigned int flags)
 	 */
 	if (!percpu_ref_tryget(&q->q_usage_counter))
 		return 0;
-	if (!(q->limits.features & BLK_FEAT_POLL)) {
-		ret = 0;
-	} else if (queue_is_mq(q)) {
+	if (queue_is_mq(q)) {
 		ret = blk_mq_poll(q, cookie, iob, flags);
 	} else {
 		struct gendisk *disk = q->disk;
 
-		if (disk && disk->fops->poll_bio)
+		if ((q->limits.features & BLK_FEAT_POLL) && disk &&
+		    disk->fops->poll_bio)
 			ret = disk->fops->poll_bio(bio, iob, flags);
 	}
 	blk_queue_exit(q);
diff --git a/block/blk-mq.c b/block/blk-mq.c
index 02c9232a8fff..655dcc16db76 100644
--- a/block/blk-mq.c
+++ b/block/blk-mq.c
@@ -3105,8 +3105,7 @@ void blk_mq_submit_bio(struct bio *bio)
 		goto queue_exit;
 	}
 
-	if ((bio->bi_opf & REQ_POLLED) &&
-	    !(q->limits.features & BLK_FEAT_POLL)) {
+	if ((bio->bi_opf & REQ_POLLED) && !blk_mq_can_poll(q)) {
 		bio->bi_status = BLK_STS_NOTSUPP;
 		bio_endio(bio);
 		goto queue_exit;
@@ -4328,12 +4327,6 @@ void blk_mq_release(struct request_queue *q)
 	blk_mq_sysfs_deinit(q);
 }
 
-static bool blk_mq_can_poll(struct blk_mq_tag_set *set)
-{
-	return set->nr_maps > HCTX_TYPE_POLL &&
-		set->map[HCTX_TYPE_POLL].nr_queues;
-}
-
 struct request_queue *blk_mq_alloc_queue(struct blk_mq_tag_set *set,
 		struct queue_limits *lim, void *queuedata)
 {
@@ -4344,7 +4337,7 @@ struct request_queue *blk_mq_alloc_queue(struct blk_mq_tag_set *set,
 	if (!lim)
 		lim = &default_lim;
 	lim->features |= BLK_FEAT_IO_STAT | BLK_FEAT_NOWAIT;
-	if (blk_mq_can_poll(set))
+	if (set->nr_maps > HCTX_TYPE_POLL)
 		lim->features |= BLK_FEAT_POLL;
 
 	q = blk_alloc_queue(lim, set->numa_node);
@@ -5032,8 +5025,6 @@ static void __blk_mq_update_nr_hw_queues(struct blk_mq_tag_set *set,
 fallback:
 	blk_mq_update_queue_map(set);
 	list_for_each_entry(q, &set->tag_list, tag_set_list) {
-		struct queue_limits lim;
-
 		blk_mq_realloc_hw_ctxs(set, q);
 
 		if (q->nr_hw_queues != set->nr_hw_queues) {
@@ -5047,13 +5038,6 @@ static void __blk_mq_update_nr_hw_queues(struct blk_mq_tag_set *set,
 			set->nr_hw_queues = prev_nr_hw_queues;
 			goto fallback;
 		}
-		lim = queue_limits_start_update(q);
-		if (blk_mq_can_poll(set))
-			lim.features |= BLK_FEAT_POLL;
-		else
-			lim.features &= ~BLK_FEAT_POLL;
-		if (queue_limits_commit_update(q, &lim) < 0)
-			pr_warn("updating the poll flag failed\n");
 		blk_mq_map_swqueue(q);
 	}
 
@@ -5113,9 +5097,9 @@ static int blk_hctx_poll(struct request_queue *q, struct blk_mq_hw_ctx *hctx,
 int blk_mq_poll(struct request_queue *q, blk_qc_t cookie,
 		struct io_comp_batch *iob, unsigned int flags)
 {
-	struct blk_mq_hw_ctx *hctx = xa_load(&q->hctx_table, cookie);
-
-	return blk_hctx_poll(q, hctx, iob, flags);
+	if (!blk_mq_can_poll(q))
+		return 0;
+	return blk_hctx_poll(q, xa_load(&q->hctx_table, cookie), iob, flags);
 }
 
 int blk_rq_poll(struct request *rq, struct io_comp_batch *iob,
diff --git a/block/blk-mq.h b/block/blk-mq.h
index c872bbbe6411..44979e92b79f 100644
--- a/block/blk-mq.h
+++ b/block/blk-mq.h
@@ -448,4 +448,10 @@ do {								\
 #define blk_mq_run_dispatch_ops(q, dispatch_ops)		\
 	__blk_mq_run_dispatch_ops(q, true, dispatch_ops)	\
 
+static inline bool blk_mq_can_poll(struct request_queue *q)
+{
+	return (q->limits.features & BLK_FEAT_POLL) &&
+		q->tag_set->map[HCTX_TYPE_POLL].nr_queues;
+}
+
 #endif
diff --git a/block/blk-sysfs.c b/block/blk-sysfs.c
index 767598e719ab..e9f1c82b2f3e 100644
--- a/block/blk-sysfs.c
+++ b/block/blk-sysfs.c
@@ -245,10 +245,17 @@ static ssize_t queue_##_name##_show(struct gendisk *disk, char *page)	\
 		!!(disk->queue->limits.features & _feature));		\
 }
 
-QUEUE_SYSFS_FEATURE_SHOW(poll, BLK_FEAT_POLL);
 QUEUE_SYSFS_FEATURE_SHOW(fua, BLK_FEAT_FUA);
 QUEUE_SYSFS_FEATURE_SHOW(dax, BLK_FEAT_DAX);
 
+static ssize_t queue_poll_show(struct gendisk *disk, char *page)
+{
+	if (queue_is_mq(disk->queue))
+		return sysfs_emit(page, "%u\n", blk_mq_can_poll(disk->queue));
+	return sysfs_emit(page, "%u\n",
+		!!(disk->queue->limits.features & BLK_FEAT_POLL));
+}
+
 static ssize_t queue_zoned_show(struct gendisk *disk, char *page)
 {
 	if (blk_queue_is_zoned(disk->queue))
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250109055810.1402918-5-hch%40lst.de.
