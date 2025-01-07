Return-Path: <usb-storage+bncBDUNBGN3R4KRBRUU6O5QMGQE4EA3U7Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 11790A037E6
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 07:31:49 +0100 (CET)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-2167141e00esf211134475ad.2
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 22:31:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736231495; cv=pass;
        d=google.com; s=arc-20240605;
        b=Y2i0f516V4XegcQCzwMF1baIvYIbz/X3SCE5EtzswSGTY0ISZN2qvmzSbw5KB7rhPo
         U3C94WVX6EB1yxccj2ykv51BM3ke3XoCoh9s+knQ6+oEd6qhQhWd9ChaCaAxwUbgV0MK
         HQM2J2SYcQFjWHiOmH3g+yNVkacijxMBa0PIioVcEyrljnBDsWbmJRg+DsxjhIVfHIRQ
         a8xwgdUNDQQrK+VAJ9UkWCnk9OhIsSAT4ueC0XJ5oZa9ZFpqOvsFv5IbHd7gbCLhqc9A
         rCfh2+sA8o4dt0jHlOll4OclYg6NprPegWFqPKqARYKt4ORP6SLhYFExjMJ6RY0Y9NQ9
         ThLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Duq4k/SE9LEYR+mLMPx8l7yV7OsjnrH0J4XTi6eqknQ=;
        fh=qTFAWI3WROCb85+PfcEzmnx+tXhpToq51rQ/CUyCnXI=;
        b=PzsFLA0BtpeyShJP93B3kTkk79rCSS4HNcbrEvIgWXXMdO3T7xgtKVgKQXnEtmoLu+
         nDI9GZ5yTb83+tnoDnyTz5A1QQNAXSyc+97pSwTQC0reOYpB9USmJ5GbaNcERT9QBP6N
         0Alv4j9nWkQCibFR9DNAiTKtzxifFbjeW2fnp8QpqnuBh4O0W7uciq0WbyG3fJyjWljC
         CWzlR0Cq7VoiWDtxXMHHxfC29jvBlLfh8v/bu35/uYQo4ZKhnwk94/vJ9mkux6wcfPTs
         QL7iH3RO8vuXkSlhnA/CLfjE01Y0SSKn6v7lnjILnB9QqBQ7JHg0LIlSEVBT8fSYfgZm
         KL3A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=fr+rWfYm;
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736231495; x=1736836295; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Duq4k/SE9LEYR+mLMPx8l7yV7OsjnrH0J4XTi6eqknQ=;
        b=gXMX3/WZ3RxaVVvewtIK0nAj7o5vr0ZVf9NAZCmVLjRbFrOCrd4VHEIiyc0ADxuK8L
         B69Tm6L2LQxANM7+qUCd6d7QObYyG15qv+AGa6Nm/LpbEpDWYZxF+lVpQ246qulSM2ir
         /1BVAdt74zbmjXMFPPn3iDcScHOwNRjLt9QJU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736231495; x=1736836295;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Duq4k/SE9LEYR+mLMPx8l7yV7OsjnrH0J4XTi6eqknQ=;
        b=riaYBVOgZ9dv+oKg+81BDL4IpmaAqgos0CwwGhg8S8klzroJzzCOgr+6UFUAimi86t
         ornLLbxP6s2TMiPdnEFnW9rnnckGA0VY8toUYz4BCTiVZunVS6SYgv7t5dIQIq7Q/IEA
         gIKfn4ce/OhZCCafaN4yYgnP7eoWTvOXpiYXaelwR0qQvuf5EqNUMDC/L1DNt6MjP/nN
         uTc1nv8eK/YXd8AtHHJ7Lpg1drN3AO/e+GhEt8EFHFc1PjnI8tkROqs+UsYC7mbFTMKg
         e4I3Pj7y06VyB3tF9yl/r+jhQOyRYXGfr6clmXJpr+P1GJP2gzam6YoEOf9sx36rSNr+
         HGNw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWBeASUj8sULk5LRbu1ZsdTGkxZu6wOQm+CYaJebbh/qkEngMTxDgEGs8A0Rx/QUa3M0/Kr3w==@lfdr.de
X-Gm-Message-State: AOJu0YxNywj6pXUHm5Vyc/5htMBvPRryMp1MetTFpcfc7VigdO2cSSoe
	udQnjJJZGSK3QYZA0k/jjDd/0QolAKV6JJi6cfo3NLAuS9gsfyFKW9Nz3C7zniU=
X-Google-Smtp-Source: AGHT+IEVlY3IDDTTjbR5LRNWNJ2jxHWCsiO3LfB/KvZw5B2MJXjDR8jEVsaXa/yF3T3tfMkfe2779g==
X-Received: by 2002:a17:902:c409:b0:216:6fb5:fd83 with SMTP id d9443c01a7336-219e6ebdd95mr880684925ad.29.1736231494392;
        Mon, 06 Jan 2025 22:31:34 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:dacd:b0:216:7a9f:41cb with SMTP id
 d9443c01a7336-219d9fc2e2els11730045ad.1.-pod-prod-09-us; Mon, 06 Jan 2025
 22:31:33 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVEbR3DjRLA7RWj2cKkJFPkF1CPw08WOsXGr1X0dbtolFqiND6B2rmP2/COP+ugxeOhFfvIDmttlhwHVg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6300:6681:b0:1e0:c6c0:1e1f with SMTP id adf61e73a8af0-1e5e07f8a98mr86999908637.36.1736231493073;
        Mon, 06 Jan 2025 22:31:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736231493; cv=none;
        d=google.com; s=arc-20240605;
        b=gQVQn8ypTOjLTQE2hbfBspZlD6lm+QThXrG1qZroDd38eJ5z1iGRl3yEJGPkrqZYlr
         YOqfT6YuPspSOqLUrzPelgdBUR3oFHULehuC5rexk/4Vk0JqdVJIQ9RlC3AWy6bWMdg+
         fH8HB79szf/IYTBDRIJbFCNp1fPV3UlV63LbQCe4kfjsEld22KyslbqP/dzxLhvA1G/U
         UUcoDkK6aRhVuSVu1Jlu7UC031Is7/bheygplhHs8dc5Xs4XZkW5I3C4VLOUuVWUVVsZ
         d6M7BX5iDlDU36hJ8xwVSR+nwBiLHligmjD5KYcfC48xYUaP2YpQITIOefEIs6z2EWEg
         W5Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AXp5b/SaMnyr0NyPtwbboGVI2AIHtcycWI2fx/lObGg=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=RXL494Q0Em4CUbwUb3HYKPGwSXaHvUHlICGAE7r7rYMRoCCPvYMMMTO0WwT/rNEZFB
         ueoIIWiWI3R1m4ciJrWsjhvteJzDe0YIMt3g48I1JOE0/FrqJ+AkXuQlFEZXLdedSvxB
         kxccCOlTTuKQ4ynhOO9RtQXK/eExuJ6TqzDac9jJ1ZO4NjeNcerlJtrmEfE9UfoHRzDx
         HFeBblQQ0wPPmJfyQHErnCvuHamIuRwnPqAXEMZr3ZlQ9sKVWzHFDMBOe6d1iLJ9hgSO
         4lKNf542IZ4oe0D7DEdfxI3WnECejlgKJ05/etvChWvUK5+YEzyPrXxLRVOiqh93rT+3
         4xRQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=fr+rWfYm;
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-842e91a0814si32020510a12.320.2025.01.06.22.31.33
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 22:31:33 -0800 (PST)
Received-SPF: none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-d467-d75d-35bf-0eb6.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:d467:d75d:35bf:eb6] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tV37g-00000003dqF-3fMc;
	Tue, 07 Jan 2025 06:31:29 +0000
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
Subject: [usb-storage] [PATCH 2/8] block: add a queue_limits_commit_update_frozen
 helper
Date: Tue,  7 Jan 2025 07:30:34 +0100
Message-ID: <20250107063120.1011593-3-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250107063120.1011593-1-hch@lst.de>
References: <20250107063120.1011593-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=fr+rWfYm;
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

Add a helper that freezes the queue, updates the queue limits and
unfreezes the queue and convert all open coded versions of that to the
new helper.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 block/blk-integrity.c      |  4 +---
 block/blk-settings.c       | 24 ++++++++++++++++++++++++
 block/blk-zoned.c          |  7 +------
 drivers/block/virtio_blk.c |  4 +---
 drivers/scsi/sd.c          | 17 +++++------------
 drivers/scsi/sr.c          |  5 +----
 include/linux/blkdev.h     |  2 ++
 7 files changed, 35 insertions(+), 28 deletions(-)

diff --git a/block/blk-integrity.c b/block/blk-integrity.c
index b180cac61a9d..013469faa5e7 100644
--- a/block/blk-integrity.c
+++ b/block/blk-integrity.c
@@ -218,9 +218,7 @@ static ssize_t flag_store(struct device *dev, const char *page, size_t count,
 	else
 		lim.integrity.flags |= flag;
 
-	blk_mq_freeze_queue(q);
-	err = queue_limits_commit_update(q, &lim);
-	blk_mq_unfreeze_queue(q);
+	err = queue_limits_commit_update_frozen(q, &lim);
 	if (err)
 		return err;
 	return count;
diff --git a/block/blk-settings.c b/block/blk-settings.c
index b6b8c580d018..2afc67182efd 100644
--- a/block/blk-settings.c
+++ b/block/blk-settings.c
@@ -444,6 +444,30 @@ int queue_limits_commit_update(struct request_queue *q,
 }
 EXPORT_SYMBOL_GPL(queue_limits_commit_update);
 
+/**
+ * queue_limits_commit_update_frozen - commit an atomic update of queue limits
+ * @q:		queue to update
+ * @lim:	limits to apply
+ *
+ * Apply the limits in @lim that were obtained from queue_limits_start_update()
+ * and updated by the caller to @q.  Freezes the queue before the updated and
+ * unfreezes it after.
+ *
+ * Returns 0 if successful, else a negative error code.
+ */
+int queue_limits_commit_update_frozen(struct request_queue *q,
+		struct queue_limits *lim)
+{
+	int ret;
+
+	blk_mq_freeze_queue(q);
+	ret = queue_limits_commit_update(q, lim);
+	blk_mq_unfreeze_queue(q);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(queue_limits_commit_update_frozen);
+
 /**
  * queue_limits_set - apply queue limits to queue
  * @q:		queue to update
diff --git a/block/blk-zoned.c b/block/blk-zoned.c
index 4b0be40a8ea7..9d08a54c201e 100644
--- a/block/blk-zoned.c
+++ b/block/blk-zoned.c
@@ -1444,7 +1444,6 @@ static int disk_update_zone_resources(struct gendisk *disk,
 	unsigned int nr_seq_zones, nr_conv_zones;
 	unsigned int pool_size;
 	struct queue_limits lim;
-	int ret;
 
 	disk->nr_zones = args->nr_zones;
 	disk->zone_capacity = args->zone_capacity;
@@ -1495,11 +1494,7 @@ static int disk_update_zone_resources(struct gendisk *disk,
 	}
 
 commit:
-	blk_mq_freeze_queue(q);
-	ret = queue_limits_commit_update(q, &lim);
-	blk_mq_unfreeze_queue(q);
-
-	return ret;
+	return queue_limits_commit_update_frozen(q, &lim);
 }
 
 static int blk_revalidate_conv_zone(struct blk_zone *zone, unsigned int idx,
diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
index 71a7ffeafb32..bbaa26b523b8 100644
--- a/drivers/block/virtio_blk.c
+++ b/drivers/block/virtio_blk.c
@@ -1105,9 +1105,7 @@ cache_type_store(struct device *dev, struct device_attribute *attr,
 		lim.features |= BLK_FEAT_WRITE_CACHE;
 	else
 		lim.features &= ~BLK_FEAT_WRITE_CACHE;
-	blk_mq_freeze_queue(disk->queue);
-	i = queue_limits_commit_update(disk->queue, &lim);
-	blk_mq_unfreeze_queue(disk->queue);
+	i = queue_limits_commit_update_frozen(disk->queue, &lim);
 	if (i)
 		return i;
 	return count;
diff --git a/drivers/scsi/sd.c b/drivers/scsi/sd.c
index 8947dab132d7..af62a8ed8620 100644
--- a/drivers/scsi/sd.c
+++ b/drivers/scsi/sd.c
@@ -177,9 +177,8 @@ cache_type_store(struct device *dev, struct device_attribute *attr,
 
 		lim = queue_limits_start_update(sdkp->disk->queue);
 		sd_set_flush_flag(sdkp, &lim);
-		blk_mq_freeze_queue(sdkp->disk->queue);
-		ret = queue_limits_commit_update(sdkp->disk->queue, &lim);
-		blk_mq_unfreeze_queue(sdkp->disk->queue);
+		ret = queue_limits_commit_update_frozen(sdkp->disk->queue,
+				&lim);
 		if (ret)
 			return ret;
 		return count;
@@ -483,9 +482,7 @@ provisioning_mode_store(struct device *dev, struct device_attribute *attr,
 
 	lim = queue_limits_start_update(sdkp->disk->queue);
 	sd_config_discard(sdkp, &lim, mode);
-	blk_mq_freeze_queue(sdkp->disk->queue);
-	err = queue_limits_commit_update(sdkp->disk->queue, &lim);
-	blk_mq_unfreeze_queue(sdkp->disk->queue);
+	err = queue_limits_commit_update_frozen(sdkp->disk->queue, &lim);
 	if (err)
 		return err;
 	return count;
@@ -594,9 +591,7 @@ max_write_same_blocks_store(struct device *dev, struct device_attribute *attr,
 
 	lim = queue_limits_start_update(sdkp->disk->queue);
 	sd_config_write_same(sdkp, &lim);
-	blk_mq_freeze_queue(sdkp->disk->queue);
-	err = queue_limits_commit_update(sdkp->disk->queue, &lim);
-	blk_mq_unfreeze_queue(sdkp->disk->queue);
+	err = queue_limits_commit_update_frozen(sdkp->disk->queue, &lim);
 	if (err)
 		return err;
 	return count;
@@ -3803,9 +3798,7 @@ static int sd_revalidate_disk(struct gendisk *disk)
 	sd_config_write_same(sdkp, &lim);
 	kfree(buffer);
 
-	blk_mq_freeze_queue(sdkp->disk->queue);
-	err = queue_limits_commit_update(sdkp->disk->queue, &lim);
-	blk_mq_unfreeze_queue(sdkp->disk->queue);
+	err = queue_limits_commit_update_frozen(sdkp->disk->queue, &lim);
 	if (err)
 		return err;
 
diff --git a/drivers/scsi/sr.c b/drivers/scsi/sr.c
index 198bec87bb8e..b17796d5ee66 100644
--- a/drivers/scsi/sr.c
+++ b/drivers/scsi/sr.c
@@ -797,10 +797,7 @@ static int get_sectorsize(struct scsi_cd *cd)
 
 	lim = queue_limits_start_update(q);
 	lim.logical_block_size = sector_size;
-	blk_mq_freeze_queue(q);
-	err = queue_limits_commit_update(q, &lim);
-	blk_mq_unfreeze_queue(q);
-	return err;
+	return queue_limits_commit_update_frozen(q, &lim);
 }
 
 static int get_capabilities(struct scsi_cd *cd)
diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
index e781d4e6f92d..13d353351c37 100644
--- a/include/linux/blkdev.h
+++ b/include/linux/blkdev.h
@@ -952,6 +952,8 @@ queue_limits_start_update(struct request_queue *q)
 	mutex_lock(&q->limits_lock);
 	return q->limits;
 }
+int queue_limits_commit_update_frozen(struct request_queue *q,
+		struct queue_limits *lim);
 int queue_limits_commit_update(struct request_queue *q,
 		struct queue_limits *lim);
 int queue_limits_set(struct request_queue *q, struct queue_limits *lim);
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250107063120.1011593-3-hch%40lst.de.
