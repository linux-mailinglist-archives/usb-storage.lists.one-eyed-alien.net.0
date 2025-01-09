Return-Path: <usb-storage+bncBDUNBGN3R4KRBAOL7W5QMGQEXYWF4TA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 964CEA06DCC
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 06:58:27 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-21655569152sf9494385ad.2
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 21:58:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736402306; cv=pass;
        d=google.com; s=arc-20240605;
        b=irVRCRrjPRSNEp6emP3lC6/9zOhtEfFLRWTwWgk41L6YjaCB++w6BOs1xxUj75VTOV
         B3lFM6dkZx0MhXnL/cw6dJGpGL/Y10y4Nh7Jz78q7R5zIkaUHS6pDLLScL797J+K0Wyx
         ZhNox6uyDS7+LHaj/O6HeWXvR6dWqUtHVdGW5ncbFrhEK09+gpVNMqugVY+nwVHgJ8du
         NCPSyBMWvtMeltKbdFhNS41FxNpwX5wsZg7pR2fIf0koIMEXdv6FwONYxraSu8284qY3
         TwnPhi3R8VNDUs7W2xdvpuqSPlZf61lKDxcmZh9IuIYlBK569tozqHwJ2YASui9ZQ5ru
         34Sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5domgqPbpE6eszRrO07MgIe2T1aud/izGdfrblSip7E=;
        fh=/TihV6kWW0ui/EB6fHf+SDKR+LDLtzvijXdzKhHE5UU=;
        b=RTBicwzK881lJpmdoLL4il7dcgct2r9pgEPejzJK37FJaktrqmo2gNmFViswf6Z6sZ
         VfhW6FPDST/zopa5JMvgvYyL29qv1cpSx5iGcrClDUxGZXyiat87dpS2U2Ly/E7L6PqX
         RsbREDWwL9vGiDO3LBYr5bhbLp6vNFguwWBtSzw3+fLZQPgi/L4HhUW3n9NN/kZNhQsj
         l5lrXq4eXoGIwMUEB+ZOhHhOB6FeJMIulLLdXfGy/OtZOZU9jS2AGjbk+CxIMWaVWGmL
         PA4GvwlUwsERW516zYkdETidPhf2/bk16bfA21pKtk8Kd8EUdVc0s0RgM6R4hULqGWkS
         oHoA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=yQOX2p9t;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736402306; x=1737007106; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5domgqPbpE6eszRrO07MgIe2T1aud/izGdfrblSip7E=;
        b=hJNpIveYR1MwP/MxUYsveny1WQl0MX1gHymh9Qt11KZuxly2s/2X0TZe3C9bYKWSri
         Cv2bbV7z/6NwAyvUVceVV4c6r1vApmvn9LL57bqj6VlFWhcWfEBzUs+d4nthp4NmfZ5L
         QdmeI1x4K25ICPocX5dRmhNObLUvEV5mso2G4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736402306; x=1737007106;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5domgqPbpE6eszRrO07MgIe2T1aud/izGdfrblSip7E=;
        b=X5wFLijwU9L1VLOXrGfW5i04W6H4kdQakynTg8Zs+4iAGUtskM7Hkbk9DyZ5R7PwrM
         RcTUXTaLPUzZ21rEsW9qudg+XoOAmYD8NE2LfsqbYm1Mh64jOaG59mFg66TtZGZo4qvd
         Ns0/7wzURCGRa9GzhrWCYAk6ze5FeMaZPVUYBXtpizgLT77FO4tDnalXWT/9fLHk8sfh
         93A/Ye9jMJpPfnIvV8Cv7GoJcGLEqWUoX7GkLm7NX+EGqo21UC1UEaKYOFybSRgVrl7Y
         Y/45FQrzmNI0Q/DsozM5NJCALnTI8puDq7X9wii3u6QYjS09CjPijaV45jnJuKtFu9m3
         irFg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXbNlOwhj1eR80yAjdKRPCeGyL/rSIoyVvCNMlrvBeNXAK+pgYkkx821YB0OC+LjLRXxieakg==@lfdr.de
X-Gm-Message-State: AOJu0Yw7kVZDh51yMfV61oUpvS750b1omTydwqftZCkJbEB/90zKtc0X
	uvY9GYtAMc/8NxAW/CedIQFaxOP+B2eebLim4nzN71KXz9uj6r58hBemoSzlrcY=
X-Google-Smtp-Source: AGHT+IGpQeF70aCflCTK+SRyBGVm6BEhDfbpXKy+n/uLSxRmTDz8ygvuVEfkk26nZK37vV3Zl21kZw==
X-Received: by 2002:a05:6a00:190c:b0:725:cfa3:bc6b with SMTP id d2e1a72fcca58-72d21f304d1mr8319762b3a.3.1736402305959;
        Wed, 08 Jan 2025 21:58:25 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:93a1:0:b0:728:e1d1:39e3 with SMTP id d2e1a72fcca58-72d2fc6d160ls530343b3a.2.-pod-prod-02-us;
 Wed, 08 Jan 2025 21:58:24 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW5hHO0GJwkrOzy3uWyKdfk8XjDf6NHgNltsS2vE6ANDJWxHzChGAWgTIuvNRRfM6Kt6d2UTFgydhDOMw==@lists.one-eyed-alien.net
X-Received: by 2002:aa7:88cc:0:b0:71e:4930:162c with SMTP id d2e1a72fcca58-72d21f4ac63mr8543700b3a.6.1736402304387;
        Wed, 08 Jan 2025 21:58:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736402304; cv=none;
        d=google.com; s=arc-20240605;
        b=KJCRqt8aYzcuY1RBl+AR3kvUI+gr1wKf813Kv1HGokTv5TgtwlF4j65id9+Mx+wnu0
         BYthZLKu6uBtJxJ3xO8g8kz5rIfq8gl80ooSx1WpPxTSSS9s1nVnaOzdpBWDeskz+9sc
         oSe8aj4EoW7bEjaoJCfcGbnJOyejbeSjhLRPu2Unv3pELLGc0/iNePqBbpSEUzyi+e5D
         zRik3XkgfE0ZuIKF94fTMJ6RErE0nx7XdX05whRsSca87cAyhN8hUfZmr/J6hMkXK+TK
         EaCuSKT2rR2higIiJwcAzdFqDYdCKFLVA/8KkU5C8p0+0SZemBjasWxZLhZ9JCbAk1IV
         vexg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=MWKLZzYu+/+PeNGtDVPR5WgWVWywc28s3VStUjK4U70=;
        fh=WRAGdV8aIMVVSYoSeklSBzbPtpnXpjY3BgoNNJPLYpM=;
        b=EUdFOWdq1TNSNjD5Qd9vhyncxiMNlw+GiRZ1m2cGZCEV9oO0aQaLnJMomvuVNbkZh5
         z1y0Gw8IeUdv/GC1WsfutrTkcI90glo/Ak7YrE11wfns+XcyNROzGtWxSI8Vf66U/HPj
         Va5QhT0ZyRi41IHVzOylOPq9NtHQOTbt8PczGEcEwkB2idErNRbv4qk1Jq5AalL1kKLD
         5u0Hko07OM8yL9LjfccIkZnDbgXeq9Hzi06QNyMxNpXY8pBDmEge1BOZQKgFj8o9O63m
         4Wi0RCt7x5LlRagH0y+uQ8N30+H9XsbNuJ9R3iJbXxVpg91wGWED1a7QaynXyYoSlUsD
         Gvpg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=yQOX2p9t;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-a319a3111eesi779253a12.183.2025.01.08.21.58.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 21:58:24 -0800 (PST)
Received-SPF: none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-ddeb-cdec-70b9-e2f0.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:ddeb:cdec:70b9:e2f0] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVlYj-0000000ArD8-1AIZ;
	Thu, 09 Jan 2025 05:58:21 +0000
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
Subject: [usb-storage] [PATCH 02/11] block: add a queue_limits_commit_update_frozen
 helper
Date: Thu,  9 Jan 2025 06:57:23 +0100
Message-ID: <20250109055810.1402918-3-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250109055810.1402918-1-hch@lst.de>
References: <20250109055810.1402918-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=yQOX2p9t;
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

Add a helper that freezes the queue, updates the queue limits and
unfreezes the queue and convert all open coded versions of that to the
new helper.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
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
index 89d8366fd43c..7c099d686dd8 100644
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250109055810.1402918-3-hch%40lst.de.
