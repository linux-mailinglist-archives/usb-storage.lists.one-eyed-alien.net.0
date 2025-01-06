Return-Path: <usb-storage+bncBDUNBGN3R4KRBQWW525QMGQE7HWPICI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC32A0227F
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 11:07:00 +0100 (CET)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-216430a88b0sf200779685ad.0
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 02:07:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736158019; cv=pass;
        d=google.com; s=arc-20240605;
        b=D1PWeSazfXfXq0UDuH0FePba8Jq3x0CsvK7i2WKMUvsshr48ZaQDa3rUI0g/rP17s2
         uO6muXY9TxY4xb1wJCpjU+Y9aqPbu/vFNnfe0wPTEEbjWrlH6UKCoxHewam+kv8BGJqK
         NqOGLLD2EZYDl6zhtMQB8+iz7eixeJbPgZDRevO26wiXxhiDKQD++qL0cV6MFb0036Xx
         NfMbeF0UNWi0dSj0yPFQYqVQ7fhmptC66uUDnDjTCUWzlOpfKc0hcIuPomYkIfIUHgs+
         U92NrubtboGsKFDuGTsUMOgjY9U/SJJQsy/wblIsFFKyqD1n0D1I7wTBfzS8cXdFViU3
         QsKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=oNLTheedLyIEpud6ALs93/cIg0QMZ/8PY0BvZNRg6Fg=;
        fh=uezTbq0AnKZc0mbLDTJTr4lldKDqUXLHENEHZPSNAlU=;
        b=Dx306CURsaoNx8NvCBgLyYmiCKG9FDk17LRMWNt1+ZadrjQpWHFXMlFcHokBF74aZB
         SWItDlYjtpDp3dR8ycoh5BNic9/nKRfbRaoYiJS5Djz+RfknhUzH+9m6U+CLBuviRvdS
         RLq+ZCl+YKI8MgQPoXiD9/086TzxK9zEfo4smtbNRnWENqiLL2uubkS5E5EUgrOan2nW
         z8gbz0O50e1ew7nSZyvVhVDsy8Iv886Gs+/Y7QVcZ3OF3ojvWnSnC3ENgVyCRj0TfFau
         56kJO+1XYxyOrVCb42ly1JqBiuiCkcU6NRAu8X4xdW0T8lwA8jhJY1OmKTUYoTcjXe84
         pxCw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=xD961bM9;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736158019; x=1736762819; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oNLTheedLyIEpud6ALs93/cIg0QMZ/8PY0BvZNRg6Fg=;
        b=DAOKM8jKVSg8gK1tVcMyiwv0VIAYiwGeJUe6x5NQZaq62KfK4wqhJdUcXbMemoTjPa
         C6uFZktUVTfttrXZZ3WhVuoQKtU9WtCk7k9VdNw9UYR7deprItm+PhKFehgL1D5dOzea
         q6SvxGQMthJWIDg0nrPlAMMQqEDlEZHHbiCh4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736158019; x=1736762819;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oNLTheedLyIEpud6ALs93/cIg0QMZ/8PY0BvZNRg6Fg=;
        b=VPcSTRgGiC2+uu3dOpwie3uuNvsT2X4YJJAAqiWNMj1hg5yfiMnfIy29f6/40A+DTl
         fBPK1IfKAWIaFQp9oWZAd2D0YNEouCbecHz3tO8kIOqokf6Tq2t563daRurlDl8a2ckV
         qukFcJRPji7dh7YV8Q0A15AUM2db4//M7feRzKXxxW2yp5GdHx7m5xE/Y5kmVu+VfsY5
         IjLJE5ChjxnYSNavTj/Ufe9qnqnz50hQGbGbG9zJx8i3Cw7UzKizV9W5Zxmx6gT9a/G1
         drZe/4UPrpBrLxUz9PxdOrzeIiFHGdT4OROSGokX8OVEQN4lpOWoRYIH5P5qXcIv28cN
         JuXw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXX9FfvcyAjdCLHlepAU9DSz0tTiE7seUZ0wNWsXvh4EWV7yfJWpqFa7Hx9xH+17ZP27NrUWQ==@lfdr.de
X-Gm-Message-State: AOJu0YzMOqlvf6W7Mk38mw19SEB4TfquVyGNbmqm6Rl225In/yV/o7Uj
	VpnCa8Y7RKS5Gv7Eus+47Gbsak+a/syjzeqyNhI8vJp8c0r8RIak8mWBiL7t6zI=
X-Google-Smtp-Source: AGHT+IHnycY/Hm6fYiXl91Ygd+1jFTkTEgNNi/Kj2q6F+OIkw92mhKkj3u9pENT6tav+ieVehb3M+w==
X-Received: by 2002:a17:902:ccc3:b0:208:d856:dbb7 with SMTP id d9443c01a7336-219e6f14586mr840442575ad.39.1736158019052;
        Mon, 06 Jan 2025 02:06:59 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:c4f:b0:2e1:1d4a:962a with SMTP id
 98e67ed59e1d1-2f4430b81d6ls8989512a91.1.-pod-prod-04-us; Mon, 06 Jan 2025
 02:06:57 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCULkI1OrTEc1WnHAlwdu0M1ZXnXl9PErr1jjneUdld0aroc2KuaL++4jQU3CF9pjSr2Mq+OtA7CcvuL6A==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:e549:b0:1e6:8f10:8ba2 with SMTP id adf61e73a8af0-1e68f108cf6mr11980269637.9.1736158017575;
        Mon, 06 Jan 2025 02:06:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736158017; cv=none;
        d=google.com; s=arc-20240605;
        b=gipv7l8ROJXhK7qqRUqXeV0hOcBHR4lRyuoRpBZ4DMx+SgQM9Q4azi+TSF4kdp5R/R
         sYfXoW9WYkk7epbfPiUHY9tJuhlYDbj+kNXofxkrwE3S379zi7utCBeJXAATDgo69+uz
         Zyd4O3oqR2e9u9evCKOyubH7SYeDD8wHeEF5XBhqAFx/HfmEmbcsWKDtqTUDxh38sh39
         685PbS8X8je1Ls3GK0QHFReRVGgGbNxjlHJlSM6oUjyCXLIgBAFv8pmRd6qdP+iWVeAT
         mwbKl4dMbVSvCF5Fq/pmB2qDmujRUL/XotOgDLZySyJzmPC5PMVr24LO6/mwv26FPRwL
         Izcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TSzPy0Kzqas2Nw+QXuv/F9bz669//FOSnF8ag59eTXY=;
        fh=lWd3gkC8mMNZNBBVD9g3TB40i3tO1HoQaqb3EWMImUw=;
        b=itK9cRfRzMAh/XEKNGt15xfsPmEmO91jr6m+ufOXQbE9yGuyWzcrfFBJeZWrf6cbMh
         1WE6x49Or61jLog1LeW16HCXzOTcTIV0DdzPId9y3KXGuai6If5KXCci1QbDR+MlnpYC
         borSNktf+9Pqd0Dlz2HGVYqfJY79gjYHQVSLf7v4coi5Us0VP6oFAuCWIw6JIe8/BCAY
         84l4imTYwP3c2r9ZewxruAdBhSsmx0I6lQ8TrQT0Du2LJk/7UH10c9qWtU6LXgnhmQfJ
         dPZQhJIeZ4h3SHLKLVk+P23PzU4GNurgUTGRnS94Y677YiBeqJqIoQz9Pj6HrpUMYOdU
         8rlQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=xD961bM9;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d2e1a72fcca58-72aad974b6csi42812757b3a.311.2025.01.06.02.06.57
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 02:06:57 -0800 (PST)
Received-SPF: none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-db6b-99e8-3feb-3b4e.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:db6b:99e8:3feb:3b4e] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tUk0b-00000000nOW-1yeX;
	Mon, 06 Jan 2025 10:06:54 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Ming Lei <ming.lei@redhat.com>,
	Nilay Shroff <nilay@linux.ibm.com>,
	linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	nbd@other.debian.org,
	virtualization@lists.linux.dev,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH 02/10] block: add a queue_limits_commit_update_frozen
 helper
Date: Mon,  6 Jan 2025 11:06:15 +0100
Message-ID: <20250106100645.850445-3-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250106100645.850445-1-hch@lst.de>
References: <20250106100645.850445-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=xD961bM9;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
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
 drivers/block/virtio_blk.c |  2 --
 drivers/scsi/sd.c          | 17 +++++------------
 drivers/scsi/sr.c          |  5 +----
 include/linux/blkdev.h     |  2 ++
 7 files changed, 34 insertions(+), 27 deletions(-)

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
index 4187c3e8a07f..4a1d0729f34d 100644
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
index 71a7ffeafb32..0a987f195630 100644
--- a/drivers/block/virtio_blk.c
+++ b/drivers/block/virtio_blk.c
@@ -1105,9 +1105,7 @@ cache_type_store(struct device *dev, struct device_attribute *attr,
 		lim.features |= BLK_FEAT_WRITE_CACHE;
 	else
 		lim.features &= ~BLK_FEAT_WRITE_CACHE;
-	blk_mq_freeze_queue(disk->queue);
 	i = queue_limits_commit_update(disk->queue, &lim);
-	blk_mq_unfreeze_queue(disk->queue);
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250106100645.850445-3-hch%40lst.de.
