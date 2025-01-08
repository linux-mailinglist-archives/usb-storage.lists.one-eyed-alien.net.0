Return-Path: <usb-storage+bncBDUNBGN3R4KRBEMJ7G5QMGQEVPAXJBY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D90FA056A9
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 10:25:39 +0100 (CET)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-216311faa51sf14173655ad.0
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 01:25:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736328338; cv=pass;
        d=google.com; s=arc-20240605;
        b=lbUx2lfgmksrWHNBDS+csdnwajyXc6QusIvGEDXa1FdwZS4eEPoqdtS7VeTXLESD3k
         5IAedEb9duE5GgELb4ncruDuew6M6TYyhvyz3D7GM4qngoZb1rj9iBoHuy6zSO6sAoZx
         iY2ZbJP3/8ddxLOmBB7cutczaXg50ieLQKOF0pW4mprPOANQiffyO5lk9L/jHgbCesu5
         K5Ob+jRTHBrzQYxR785DZ/yHhgpz+VebcCt9Y77pxYd439PjJPGqldb8VwuSzp0DsCLX
         DVG6CVNm+mQNfdnBIqTTyE5ihGuCF5eOen2509VKkkVrOdsYMJy418uLnBPdniXyFMb5
         2+5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=uTShxQX2ngB14na86sJqN0viHkzicmCP8xDxnW+jXPk=;
        fh=1USvOhcWAnSewqtDomypIy8dwbb4ylWG4+dyh4LyrJY=;
        b=h09npbhs7rYEwhKL92rnDdSMkqXZy7G0EOq8fpBCDFP1+uHVQy3RAteeiEm1174Ucf
         XVGg3OodjdUWFxSscGhTwRaFVd54jjq9fFImQKomI3YgiTE2xrS7hRRhkptUdnIo3sBd
         IOfahD5sN6qsZX3J1kjYSlTjQkbs2VeK3DzmqxsKgR9j1czDjdKZ89LJHi60wre4bN3Z
         EXz248xQ9f0v5fglMg3pqmygD1olxyfPTTPuQ9CcBdxCoFfXnsBU3R7ceu28VLb2hxJi
         bztWZeO/6BB5ecLc3TZNcoUtINgWuhqyvtGyIeZh68mSv+GoVIE8HrrEopm5rCYTfIxu
         K2oA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=KWYgDPv3;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736328338; x=1736933138; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uTShxQX2ngB14na86sJqN0viHkzicmCP8xDxnW+jXPk=;
        b=PVRNFZAztyaJSp1Mpt6IqWguxSrGTg+LECzOWlB8zJYghv9JFD7e1D7xyJO2RpBkfT
         +o0XTPvhQG+ia+Uz38Vi8bDj/DzQ8SY6Bu1F1ha8X1hIbvFyrL/1bUMt72Kplb6qLIMS
         Rfk/3+mwMa7vNzvjbkU3D+IXNugqnlrvCWpWo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736328338; x=1736933138;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uTShxQX2ngB14na86sJqN0viHkzicmCP8xDxnW+jXPk=;
        b=oHv/gJ4a23AIS43PyL/Tq7lqI+m4gV+vhi+OtNS/LNHBuWHFE1BOCqm1oi19GmSGVV
         ZPr22hs9eEEW4fpz9Ok7t8JSRmWlAkoWys6gmEDHyel57HS22b/lrTc+jN8E5k9DhVpL
         1bzAJGJ4FPPM/imDbys7zuVRMlSGauHwzQxWukdXyPCKCwSMbxDQH3G8U6O6+pktr7U+
         MtMVg3ApUL6uVj6iBs2jad3JeH8zKkFY62r35NnQvvlklTvpQJemvQmKXIz04nHAL6SI
         r+3BKyPB5Ttlhu1p88TNINqymehZlxE/V2f2G8bj9mbQ9j4pVvjZn56UkrbiKgaduxRw
         htNA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVyxzLxZB0bYcH1itCSS5SVLPuX65esO4EO1RFJE5RtR9t6Afv7Ynb/1Ze6eajzcs5dMTw1nQ==@lfdr.de
X-Gm-Message-State: AOJu0YzX3hhynIhWCM1isxFsroKMqufIDzd/ewgKIc/AdIW7eZZFm7bw
	V5kqRUONcZZlm/kKlKx0bfXm19HKhVpo3bN423v1d07liFHRvKz3ib2TaXwoWXM=
X-Google-Smtp-Source: AGHT+IHRiStL7YLMZRXZ8ieyihsg4rGYy9GiRx0kfLPlba/Kej9RpKKC9zbas3QqqBAeuzywRObgMA==
X-Received: by 2002:a17:902:d511:b0:215:ae61:27ca with SMTP id d9443c01a7336-21a83ca1e25mr37896925ad.26.1736328337819;
        Wed, 08 Jan 2025 01:25:37 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:2388:b0:216:5cb8:f034 with SMTP id
 d9443c01a7336-219d9f152c1ls73576725ad.0.-pod-prod-00-us; Wed, 08 Jan 2025
 01:25:36 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUaPrKVNOtub7vd0qsc7JQAEMfZHVMjEz/QAbj9TBpYYuvDqzt6bdIDfGUYHzRQTZHFn6/6Nm2GYgO66Q==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:ea0e:b0:215:ba2b:cd55 with SMTP id d9443c01a7336-21a83bb9986mr32761315ad.2.1736328336610;
        Wed, 08 Jan 2025 01:25:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736328336; cv=none;
        d=google.com; s=arc-20240605;
        b=Rj9MrfqthRQM7/WzNKzo6oyiVipu5XIdbTWAO87bLFicwn9EBtQd5Jj+5oI568UQZj
         WXcWHdxreeTI5aSt6G40RpVvUENMocxLu2KhQY/KAtv68nKG9JBYn0DD6304PivgMOJm
         KBAA5c6+EKhJ3VMwyP89Px6B8X4rzaUX01DmV/IpnqenNtoL6wwjlYZ48WKjznc5vA6v
         3cgBL+nTRSdzwfNG7cxXKZ+ivkxnM21ZVs05teqSKjOBoJ3S0bUsN7TZCapLzWam8Db1
         SfJ4y71ohSjC+M5Xzfbp+SmBTx+0+jfHRVSG86ihqxRVSshaHKiKHW4pBribF6iY/axx
         yQVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LwJvUGOXy4RYeN1gInyDZ8xq1wnoFuIWs4w04cPwF5g=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=V5bYQvhG+jEIITGMaAakfk4YXP9CNwiYwXlY2VKWM77kXFTP7vF4hUIUOWqEAT3U0k
         Yi83PU/KjJ2OtBZ18T/PrZBahtL2ArtN7JOrsy3ksbgcVDbsyqPkxwq4l+ht0zLqeDNL
         +RdM5lWwuTir4jnFY9JYP5HuzhvG0rzKTmFAKq9HzfBWa511tyqmQmwe1QDKc6RbU0sc
         zTi5NBDUixl+iXYfcN9JijRTJDJDI8JLaUAegwbQAfJ9YvzffsMUtDCu6kw6KgTKMl6j
         tDIIEdiaAqSLZeDwq5q9WS5PlDfu0gM5l9vTo4D5K8AU3znnxcb9GKDD4zoJlHDL8VTk
         IlTQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=KWYgDPv3;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-219dc976c08si167104285ad.120.2025.01.08.01.25.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 01:25:36 -0800 (PST)
Received-SPF: none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-e44b-b36a-6403-8f06.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:e44b:b36a:6403:8f06] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVSJh-00000007lU3-2wLx;
	Wed, 08 Jan 2025 09:25:34 +0000
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
Subject: [usb-storage] [PATCH 03/10] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
Date: Wed,  8 Jan 2025 10:25:00 +0100
Message-ID: <20250108092520.1325324-4-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250108092520.1325324-1-hch@lst.de>
References: <20250108092520.1325324-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=KWYgDPv3;
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
 block/blk-core.c  | 17 ++++++++++++++---
 block/blk-mq.c    | 17 +----------------
 block/blk-sysfs.c |  6 +++++-
 block/blk.h       |  1 +
 4 files changed, 21 insertions(+), 20 deletions(-)

diff --git a/block/blk-core.c b/block/blk-core.c
index 666efe8fa202..4fb495d25c85 100644
--- a/block/blk-core.c
+++ b/block/blk-core.c
@@ -753,6 +753,18 @@ static blk_status_t blk_validate_atomic_write_op_size(struct request_queue *q,
 	return BLK_STS_OK;
 }
 
+inline bool bdev_can_poll(struct block_device *bdev)
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
 
diff --git a/block/blk-sysfs.c b/block/blk-sysfs.c
index 767598e719ab..54488af6c001 100644
--- a/block/blk-sysfs.c
+++ b/block/blk-sysfs.c
@@ -245,10 +245,14 @@ static ssize_t queue_##_name##_show(struct gendisk *disk, char *page)	\
 		!!(disk->queue->limits.features & _feature));		\
 }
 
-QUEUE_SYSFS_FEATURE_SHOW(poll, BLK_FEAT_POLL);
 QUEUE_SYSFS_FEATURE_SHOW(fua, BLK_FEAT_FUA);
 QUEUE_SYSFS_FEATURE_SHOW(dax, BLK_FEAT_DAX);
 
+static ssize_t queue_poll_show(struct gendisk *disk, char *page)
+{
+	return sysfs_emit(page, "%u\n", bdev_can_poll(disk->part0));
+}
+
 static ssize_t queue_zoned_show(struct gendisk *disk, char *page)
 {
 	if (blk_queue_is_zoned(disk->queue))
diff --git a/block/blk.h b/block/blk.h
index 4904b86d5fec..c8fdbb22d483 100644
--- a/block/blk.h
+++ b/block/blk.h
@@ -589,6 +589,7 @@ int truncate_bdev_range(struct block_device *bdev, blk_mode_t mode,
 long blkdev_ioctl(struct file *file, unsigned cmd, unsigned long arg);
 int blkdev_uring_cmd(struct io_uring_cmd *cmd, unsigned int issue_flags);
 long compat_blkdev_ioctl(struct file *file, unsigned cmd, unsigned long arg);
+bool bdev_can_poll(struct block_device *bdev);
 
 extern const struct address_space_operations def_blk_aops;
 
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250108092520.1325324-4-hch%40lst.de.
