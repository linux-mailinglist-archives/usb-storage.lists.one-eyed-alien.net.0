Return-Path: <usb-storage+bncBDUNBGN3R4KRB77IQK6AMGQECKXVLTQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5E6A086C6
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 06:47:45 +0100 (CET)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-2ee5616e986sf4480949a91.2
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 21:47:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736488064; cv=pass;
        d=google.com; s=arc-20240605;
        b=Yiyix40M/u075DRagI4bsrHjSmhZeQSWFdaKj74EHj1Jdy/lxkKQIJlX9cmI3OND0S
         u+RkEpVCQ+R/Y38yMFSmVoXh/6sNvcLTWyxjr3/YGixQQQJfE7xJyTELtn90FOfFMT88
         181DSrEOYj7sNw61h/BMsZyJyAeAO/T488qQjOFhDAYrTBco5ET31fJJXgx6kWaUGlnY
         6QDJSv/Q1Cjw6kYebe4UcMSdzNq5nU0qUhB9GXXtTL5y0W8cfVqEPAYnToKwtSi7OLdg
         sjPVj2LXH+yC2DA8/RaG74tB/H49vUP0isxRL0EBrauQLnghF8ssmlTZMtOa/kKLxlLZ
         voPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DFaCE8enPPCnuGFnUGH7TCWw+lw6DTE4RobzL7S3+Y8=;
        fh=zLA/Xg37LTneKIdBE15Nv7X1fwly1eJXGOSv3IEuBI0=;
        b=h1pedf3e2HG6Rwg/dwfdHEQCy7DCwMIqsDjxdrO9rLDdk4jNSQYXPEeMjEMfNTdQ8L
         ngbMmsnuPNTkic7OYZhMRDHHlSm/2XKgws/88+Ct6kKPfJG5Yy0znEWg/S/R2OAVrRDZ
         rgahsK8uD3TqIYBEUdPUQ5LWz5Ov28d07DcJLGli8j9YC8ouG4Alam5RrRfGnVc65495
         4bm8PxNplF758+EPnT/VkniTqlX3fSTz+qOB05RzZvimTfJYXr6gd9LhXCQq/a4d4/ep
         own8Qn5/0jtbvUt3pApzKxoskj9spgclAVAJvv23mW744tyrBCc2Kldx6IPt19vBPoyS
         sPTg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=cpbtTnmV;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736488064; x=1737092864; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DFaCE8enPPCnuGFnUGH7TCWw+lw6DTE4RobzL7S3+Y8=;
        b=j06AYPUvsuCcfYenasHSHTJAffJ0PXHtpx78w8phmOLoG23nt34/72uoJAAWmPjk4j
         +pAnFPMkdhktnB9rWFO0y/hXp+UWPgy+NfngovPVBGSF91DAy5QVAE74/gDaJQGp7LqM
         WrDEoD9wJAGoVXFQLD3nmzAEBsL95IS0a5cLo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736488064; x=1737092864;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DFaCE8enPPCnuGFnUGH7TCWw+lw6DTE4RobzL7S3+Y8=;
        b=qAsk2RbBvub1HZSnpi0OYZgHKTFcWtEAmwIAd1dOpQwzI84AovfamgclHG09SqiZ4l
         P+tifs7BKn7MLo23SSftbE/Xxx/jUU4v4QNbQe0YyLJuFm3iaAKG4yPhJQ/sF6cdDqsk
         0DtibpCzo+ea6WVcnjHibGokPKgvzUjI7IpWHPfZtdobTUnEzx9L2haYAx2KKO2cwPSP
         4Kd7Hynapo9wAyXeVPBl6/SFHhB1L1samykJMH/uiXiLGj4wc4ZTzevTo1KCcNkAqWEx
         eBkT0ggWX3c8ERe1fJ0nUxcBcGC1we0pzlllcPj+SfE/l5PqroIo9LTjTPURzjrRy9Xs
         oNzg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUp8J161ErfS2GP9KPr14PDur82n/83q6r4EvAmhYO5Fh/PQhq5tjXCS2r6FZQby674M8stAw==@lfdr.de
X-Gm-Message-State: AOJu0YyyDtRYXuA48aMVxdxuYWDvqSbZPFpimwm2ccUjINJoRqEz7zrU
	m8iZpTgomDul/brF0FGsd2O8zX5R2dW/zAlrCug2KMdRiLK3Q5qLmEsrugjRAOE=
X-Google-Smtp-Source: AGHT+IEzgEU1aMaKwNh/+vQkbP0gqyNuHlE8JHeb3oBzBy/Q/ydPVEoixoBzTC2wpUy5kMRx2lFMKg==
X-Received: by 2002:a05:6a20:cd8f:b0:1e1:adcd:eae5 with SMTP id adf61e73a8af0-1e88d0fc495mr13647477637.42.1736488063721;
        Thu, 09 Jan 2025 21:47:43 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:398f:b0:725:ed76:c92 with SMTP id
 d2e1a72fcca58-72d2fb56ab2ls1934912b3a.0.-pod-prod-06-us; Thu, 09 Jan 2025
 21:47:42 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCU4BXzy4Wm0h2fuSGaOAkENMIKh1pO55SzKNFWEZ8EWH5kxLEQzGorFpbC+JNetorcLUvq/1j6YjY98dQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:4303:b0:1e6:5323:58c5 with SMTP id adf61e73a8af0-1e88cfa6845mr13375430637.12.1736488062440;
        Thu, 09 Jan 2025 21:47:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736488062; cv=none;
        d=google.com; s=arc-20240605;
        b=KVoZmscGvMamd5MB6JRaulfJXB6cNha8daBEsC98gMrrKkWVjGOr/a20eIeqKgFSe4
         O1fv5Mf5zBPnDaPsGfEbtJQRPQe9gZD+WpFC1xGeEBVBWkdwrw3kP1YxC+w0owQy6Odd
         PgZh7bqwynIpf5mGwH1+W693GB4BrnYk72rFRscjX0yXaT6BpCmtmLC1teGAljvfiUE8
         h4rL3yAl215bhhSEZGsMOoTfVEcVng/bTZRn4JGDj8EY9VJX8stvj50pFxaCLal0EBF/
         XAt05/hS0luRHPNkHYwuT1KqwLlDcDc9xRfpV6C6Y0/q9kNCcSTBAJwS+dNgQdHU/XTl
         6Brw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4+M/a1saPkRkWtbgQnGkaOBFpblhl20ESeTBBEj+2T4=;
        fh=K4mYBT/f9uT4NDiXg9vO0QvGda7RTqDR2brfxQ7Fzow=;
        b=eY4qTPKPGJenHSwf0V0sDw8Xj+xK4bhHbz2ywmQvSf41y49f2IZO2b+ddkVV2fx1xO
         6oCbmIpF6yutj9K3R3p2MMuKHvVtpcCk2htS8qJ/BvFLc+0JQqQEilRj1yJFZiixsYuH
         e4S6sb4aldgKBdOLOA83Fh8K0SOdmiV4Kpnps+vuWwZbCdf54yFVJk49NS7m/Q83VMFB
         /IIh4OAIyQA8pdUYNuH6Pp5+0JxhQnlGDkiRiDTTYi+2k2UqJmSAXFZIkG4fnC8ZIPp0
         3XFyNCDdmXg3E8sAqc62WdvYXsuGkM0ZZNaZO0KYLJJS9Ig/vx+YQcQwUv0l2JjIJaG+
         7yCQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=cpbtTnmV;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-a31e43af384si3540590a12.303.2025.01.09.21.47.42
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 21:47:42 -0800 (PST)
Received-SPF: none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-76c3-a3dc-14f6-94e8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:76c3:a3dc:14f6:94e8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tW7rv-0000000E4vS-0IAb;
	Fri, 10 Jan 2025 05:47:39 +0000
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
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Johannes Thumshirn <johannes.thumshirn@wdc.com>
Subject: [usb-storage] [PATCH 04/11] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
Date: Fri, 10 Jan 2025 06:47:12 +0100
Message-ID: <20250110054726.1499538-5-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250110054726.1499538-1-hch@lst.de>
References: <20250110054726.1499538-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=cpbtTnmV;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
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
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250110054726.1499538-5-hch%40lst.de.
