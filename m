Return-Path: <usb-storage+bncBDUNBGN3R4KRBSUU6O5QMGQENYAKN5Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC22A037EC
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 07:31:49 +0100 (CET)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-2f129f77173sf4878377a91.1
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 22:31:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736231498; cv=pass;
        d=google.com; s=arc-20240605;
        b=k4QaSpGgUKk3DOJWy4szosW8tee2dhpRGw3pOkByY/zcs9kFqqZwz+ycodym8iGnZA
         ND79A1NQckR23ZDFn3Mzdu385QdMo0AAS7mVlty+YvEsA5W7uPEsCFMDL2pclnDWT8rr
         SYolTm7dP4MzxhJM7zmIfM5LYAzlrXetgw/Cn/fPB49SaWU2nubfLyG22rbabm54nhBo
         ze/R9A7Tt7T8meqj85x8rvum6RBONY2ZHbPVbQrisG/J8qhLvrXynwQqjifYyFu5TCKe
         sBIe588m4ZCgkixvBsR5CCF1GdFfg8rUXMYuTSyaoTuAL7Q8rT/a9noC4SCAI3yQe97I
         Lydg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Yr50ilf4z3O0174BH4MsHorDCyUUok8myDZCWKklVxc=;
        fh=2D1ZegXNW+52yMWiL2RXq+7k4J9grGB5GR/yNLx50Ew=;
        b=XRm79p5lm53ayhMQ8YZAD5RVo19q04tfKgQ5CuioeSPeS2grPzaerFXrQydqsP0d+G
         AbkVJPliK6AkUF8a9Egf88701KXHHd5b7gLtuWFat/7uKctrjJMZTVMDwhaZtzkmCZxR
         tBCweoyY8XJQf4JuZVH2BsWVCtZbjg9+oBPAMYpZlijaK7D1rKonmVaugQW/bzv+qsLQ
         CffspdYTOdXzzKWzGii9Bdd1o9IFIeZ6mCdRmZumQ/lCzU8n7V2u/qbd34WT3I8JkA6b
         uuTfoD+z+LorZa/cM8DeDAaBAfWkJWkNVpsLuLzVaDU5FObCoiAe3QZjft1NRECEIt26
         Roow==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=n2iN6rsN;
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736231498; x=1736836298; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yr50ilf4z3O0174BH4MsHorDCyUUok8myDZCWKklVxc=;
        b=LblcI5oJJ1FZwuMxaixBV7YrDQIOuyRQVunpqhMLN1sMUhIKCiKAf/yZZ3/Pgz52Zr
         5fb2b+xf7WZ84ZvZFeUZOz/lW6fjGoOdJ3DsJqL5ZLBZBLvkCNRQp48p2Iv7qspXtfgu
         Ygj4B64XFDnTn7rBLuKFXqPKEe0vQ2VhfhoHg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736231498; x=1736836298;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yr50ilf4z3O0174BH4MsHorDCyUUok8myDZCWKklVxc=;
        b=N8SKVmNE/E+TOkT0dj4yWXixauAPSreEpeF428Uka4maDxCQV/ZPujl6HZNirKjW32
         gbv7cq15hwPncDBqADS5MJsme4ShcyrvnzM6NQReWck7hh2EjbTdzhgeM76/6B3DoYel
         SG3ajD/DV7g7DMS4sY+9XZNP1NM+2tKf/nJzLqn7XHcfK1wMC50S0jBEf2Lb4kyqX8KB
         07cIeK44x02SlyLCm7NhkI87/qCdOrfUMf9WGCl03PtClO5fyjBk/Yd9Qe6wppSw+1oY
         427KWiUsrszukL+7Hh3UNGqh05yo1ciacyC4bO09IJYgff5OI+Xn3fmaqvNH3pcBrPbJ
         HSjA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW3NJN98A3DXLrIX+41aZGkvSnvuxUrf+txzZ1w38InWfABVJAdG6osex31bdlpNp1DEGWLng==@lfdr.de
X-Gm-Message-State: AOJu0Yzwx1YzKE+TFqQB9VjSIOWQgK4icXbLZWDAuunCLGwn1cVwDUb0
	in2YcNldJ/3Cv6wIGC7/iWoVWfKAnygNyy52LL3p4m4e3fm9MvfQ7zgO0qhkfic=
X-Google-Smtp-Source: AGHT+IEcviHdIVlQQ7/7UnNdN01x1MCRCZ1/PIIMoFB2QNHM5PLTJnP0amw30SGSRVbZydb4HRo4ow==
X-Received: by 2002:a05:6a00:1309:b0:725:b75a:1c13 with SMTP id d2e1a72fcca58-72abdf0ec10mr29799658b3a.4.1736231498269;
        Mon, 06 Jan 2025 22:31:38 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:8752:0:b0:725:d903:a684 with SMTP id d2e1a72fcca58-72aa9935674ls7759199b3a.1.-pod-prod-01-us;
 Mon, 06 Jan 2025 22:31:37 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCU8UlzL4o0L5wifiMT4nT6Q3PAQdZi4oTb5Muzzb0wQsPkljQkrUN2RAa02JolJFaNzZPUk1yxr2KgrMA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a00:a908:b0:728:cd4f:d5d7 with SMTP id d2e1a72fcca58-72abdbe8b1dmr80246922b3a.0.1736231496946;
        Mon, 06 Jan 2025 22:31:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736231496; cv=none;
        d=google.com; s=arc-20240605;
        b=ap08CWq3u7ezw/l6MyKxgmdlMYu56u4MSXldfyJdZFdTb9ng12VREWu8CBR9MeyP2g
         PiqOFXjIKmJdyw3yk3TYEgLSSlSamIhpphpVIUFxO+G3F3dgmVpSYwsiwq5Lfv2c2Jse
         BFuTHYmwAfKUvZYZRKVijyoFzPei7F0fk/AwqPzVMEnvmZaZ4FMcCFIXktY9X00DigMj
         I5iJFC3pPzyhwMq5O2VxNjeJw7cxlLWJF3KIdncGoUD3n2wz6svQWMB51wbtL99245ph
         KGtuKispf8fAn00jPK6mYd+iON1rKlcc0kpPtegr9Ro63k4EPgsvdvUhLbOEuovpkSir
         jpng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=td9hXTRm3bIkt4nDSZFirDvnCCVcnWUnxIQRddOHupE=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=kEPW19XjnVzKTfh3rrjGUsxKtL+2DEKGDh6tep+47GAw1omChHZc7LVioH+vQ43I7q
         xyKV2TI8gsM7ivlYo5qBeAtKdIAdLNeXxDFeN/byNYpYFY1vrIRVGDxliXlnhZsKC0uj
         HGM1Qoul+zQvN/xWFP1pbT1sEhpG/igPopLyo2VsuoHvn4c+pn4yjVXombIaBQNjRZLB
         yYoWbKrsOu2PrljTXMMCMLf1qKNiDchCb6/ZSRJ/yhg89AwnEnasPzT8aF8J4cd2eZIp
         4wpgJfjuqYX9fkCGIslmfygyG1uFxmZurT4454WOhPjN9rdpf/ORYYzmiG/D1tLwKiid
         VGeg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=n2iN6rsN;
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-842b63918f5si44756592a12.229.2025.01.06.22.31.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 22:31:36 -0800 (PST)
Received-SPF: none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-d467-d75d-35bf-0eb6.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:d467:d75d:35bf:eb6] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tV37j-00000003ds7-1Qz0;
	Tue, 07 Jan 2025 06:31:31 +0000
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
Subject: [usb-storage] [PATCH 3/8] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
Date: Tue,  7 Jan 2025 07:30:35 +0100
Message-ID: <20250107063120.1011593-4-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250107063120.1011593-1-hch@lst.de>
References: <20250107063120.1011593-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=n2iN6rsN;
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
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
---
 block/blk-core.c | 17 ++++++++++++++---
 block/blk-mq.c   | 17 +----------------
 2 files changed, 15 insertions(+), 19 deletions(-)

diff --git a/block/blk-core.c b/block/blk-core.c
index 666efe8fa202..bd5bec843d37 100644
--- a/block/blk-core.c
+++ b/block/blk-core.c
@@ -753,6 +753,18 @@ static blk_status_t blk_validate_atomic_write_op_size(struct request_queue *q,
 	return BLK_STS_OK;
 }
 
+static bool bdev_can_poll(struct block_device *bdev)
+{
+	struct request_queue *q = bdev_get_queue(bdev);
+
+	if (!(q->limits.features & BLK_FEAT_POLL))
+		return false;
+
+	if (queue_is_mq(q))
+		return q->tag_set->map[HCTX_TYPE_POLL].nr_queues;
+	return true;
+}
+
 /**
  * submit_bio_noacct - re-submit a bio to the block device layer for I/O
  * @bio:  The bio describing the location in memory and on the device.
@@ -805,8 +817,7 @@ void submit_bio_noacct(struct bio *bio)
 		}
 	}
 
-	if (!(q->limits.features & BLK_FEAT_POLL) &&
-			(bio->bi_opf & REQ_POLLED)) {
+	if ((bio->bi_opf & REQ_POLLED) && !bdev_can_poll(bdev)) {
 		bio_clear_polled(bio);
 		goto not_supported;
 	}
@@ -935,7 +946,7 @@ int bio_poll(struct bio *bio, struct io_comp_batch *iob, unsigned int flags)
 		return 0;
 
 	q = bdev_get_queue(bdev);
-	if (cookie == BLK_QC_T_NONE || !(q->limits.features & BLK_FEAT_POLL))
+	if (cookie == BLK_QC_T_NONE || !bdev_can_poll(bdev))
 		return 0;
 
 	blk_flush_plug(current->plug, false);
diff --git a/block/blk-mq.c b/block/blk-mq.c
index 2e6132f778fd..f795d81b6b38 100644
--- a/block/blk-mq.c
+++ b/block/blk-mq.c
@@ -4320,12 +4320,6 @@ void blk_mq_release(struct request_queue *q)
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
@@ -4336,7 +4330,7 @@ struct request_queue *blk_mq_alloc_queue(struct blk_mq_tag_set *set,
 	if (!lim)
 		lim = &default_lim;
 	lim->features |= BLK_FEAT_IO_STAT | BLK_FEAT_NOWAIT;
-	if (blk_mq_can_poll(set))
+	if (set->nr_maps > HCTX_TYPE_POLL)
 		lim->features |= BLK_FEAT_POLL;
 
 	q = blk_alloc_queue(lim, set->numa_node);
@@ -5024,8 +5018,6 @@ static void __blk_mq_update_nr_hw_queues(struct blk_mq_tag_set *set,
 fallback:
 	blk_mq_update_queue_map(set);
 	list_for_each_entry(q, &set->tag_list, tag_set_list) {
-		struct queue_limits lim;
-
 		blk_mq_realloc_hw_ctxs(set, q);
 
 		if (q->nr_hw_queues != set->nr_hw_queues) {
@@ -5039,13 +5031,6 @@ static void __blk_mq_update_nr_hw_queues(struct blk_mq_tag_set *set,
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
 
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250107063120.1011593-4-hch%40lst.de.
