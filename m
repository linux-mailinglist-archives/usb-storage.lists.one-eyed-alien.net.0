Return-Path: <usb-storage+bncBDUNBGN3R4KRB7HIQK6AMGQEZ3GTW4Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7ACA086C2
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 06:47:42 +0100 (CET)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-2ee5668e09bsf3219474a91.3
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 21:47:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736488060; cv=pass;
        d=google.com; s=arc-20240605;
        b=BChMJZINlmfowrRxoOKIeNFSw5pmQK5/IPqHJ9cHMw1zz0lT+ADQl1dsAhX1bONjwi
         IN4zuS804obcZF+dVrIjktOfTVUjvgckanaFPlZBL2Dzwd8PcnK4yR0PE3chmf0+dd5R
         a+g/GHxZSTJLx66+71loUVEyoU2PE4c9If2WsFL/dMgwLN5YzmjBNEiXqvjsIuc1+JYk
         SXzFO7YdcCBaYxAgt5rpeFvgLPo6+pGcXMjtSWLk6aWULtwx0VK41fzLvxgMyc3IjgjZ
         wwl99QmP66NwF8DwDttteYKWWtSoRz4UV/B3BkMEFucgZOt/MB3V+5PuAgCXXCjNDgJX
         b8ZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=YhS6SpC9PCztclBbiExxrkSRnrYiBZswweiEB2wXuLE=;
        fh=AAkOg78iEef+HLkHmIKEi2E2ZsUxI/bLEHlY/E/wC4g=;
        b=TQQ7oDR++qHS5isNro2djuEk9qxPIFtEjDDd4YqPltidM2T32Fm9nsUu2QVlnTaSgX
         eugsj26qg7kyrDcyLpS04wooe9J7litLmCB7HX18vsvBLDHeOkT7MCuMt83Er6eTVNPT
         i5S74ZHLXFZ/7afLLPp6IDLvsGGbAIE3CiwkbIZwO1IjEqXM/y3sn8KPRnD9A2aBTCYd
         w6OMzFOEI5moPb7PZ87dtusxy8lBZVq8FhvhvLkAtMpfLEXfrQHfT8ZSM+VXxqmqKdKN
         ifjn0NigrTZYZEZZOh1x8IRUKIxc73wjbgANJWBtV9RXN9wYWPJbMqbTpTrD5bTzah0Y
         Te7g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=M28w2Mre;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736488060; x=1737092860; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YhS6SpC9PCztclBbiExxrkSRnrYiBZswweiEB2wXuLE=;
        b=Tv5pzvXWoMvTCvGpp74C4n45/KDJ3HXjuhomDt1HBTJNICr49mhns8LDUsocSB7Lk6
         yotU7fYN0OSDQoUTOMcZTXVdFUxeGioKA0b83SotJ0cuASdXJq6Vn5DCyzr7afikO8ck
         vCOfz4fBSTGk7tbRX5GP0YTJzU+cnZqE1nrck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736488060; x=1737092860;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YhS6SpC9PCztclBbiExxrkSRnrYiBZswweiEB2wXuLE=;
        b=agroXqfKeW3rk2G9z1qq8eA1cjyS+lgrY+wznls3eC+5mWMii37QeBgR1oyb8kazjb
         tiJNWq8uNNIbLmChB8CCR8BaAMeVCKSwDfOvm1S+yk7rgfFd0OUG7wmwiBa1t8cdzhON
         QGWfQMTmumfc+UDEnIZbJQ2/zsqbz+V1J8DuEoVf/xQwA4Cb6KTxRyE3dYlwO+9CiPSW
         8dlkQn8jzGeuojSHA25KMHy33/mBMtqazhVauAxez+hEo3tORijKk5vUMq14RkZPuK8t
         MvKPCn0SsHdEoW6y/r/AtVhr8slcNP2T0ywhI8+C1Gq/pYeAyM01YE/vxUv8bs1WYzzr
         f+6A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXPxvV1jKC/1noZlnd8gOycORTA1CbMLH/9lJaMWnWop8D19QFwS0YQRLmlN8vv9ktMZU8+8g==@lfdr.de
X-Gm-Message-State: AOJu0YxG6KB3Thgy9YosbkkpbCMvtLkQp8P7FOw7aGJSXY7dd2vp3QhV
	N8bq61PjYK0D4jWgxQ8VCRwPMgrXK2/PI7cSaG8CBVajctFlsOOsn+5KssRKKLg=
X-Google-Smtp-Source: AGHT+IHpphMJiBoxDyGzBNWCLqpi2ohtYwGfm6qxyHvONPk6Cx3qpD1Xel0KHkr7a5lkECpLX4VZVA==
X-Received: by 2002:a17:90b:524c:b0:2f1:3355:4a8f with SMTP id 98e67ed59e1d1-2f548e98636mr13592468a91.4.1736488060458;
        Thu, 09 Jan 2025 21:47:40 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:d650:b0:2ef:19d1:f1a5 with SMTP id
 98e67ed59e1d1-2f553f0101als1376661a91.2.-pod-prod-04-us; Thu, 09 Jan 2025
 21:47:39 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWD/ESZOf5PE2/8IGTV+c6UAXWDO7rTrMC/X8rU0REftx3RrvTGT29xw3F9DC1zZoKFNXzmGVhhIs66NA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:840b:b0:1db:c20f:2c4d with SMTP id adf61e73a8af0-1e88cf7f5d6mr16270520637.2.1736488059137;
        Thu, 09 Jan 2025 21:47:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736488059; cv=none;
        d=google.com; s=arc-20240605;
        b=dQXiqqJFyaiikt89OJ8xncEP9uMFAdDMuogM0VoGoiBgsdkSkPMmGd2jnkWvpk5cqx
         tEavaWoWl+YOPMjsd1MOBydaRTQxAuTQZDR8xX9AbocEleQFem3Qmxms2P3RYLR0nAQ8
         Fqx8u50LfTHwajM7ABIQ72MI1rsqmKJXRPQq24ZyYzwi10trehW2nLA9l76Vex3FuH+u
         GDP7caTwF2IuhYplQCUyBqE4eO50ssiImZMSW36wjKWkInhLK9J3BCYm6+mq/RNdtUks
         FFn9gLKBNLmRLrjVw7iBPSectGmCF8EeVgGHaPIm5Qp3gjNpzLuQzomE79yLFDBO4Lzg
         uSTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rE4ubk+RuxNBhpQWGGf2kgJPdHXHbxYGtg8O1GatUgM=;
        fh=HXUszS00YQfjwQ9IIpEishc/i6Ii+eoF+aYVDkeAWW8=;
        b=ecKJ3bcCZGIXd47BHNMq+u4KyOY1imkMyrwR+cuYHc0wN1N/f+EiApk1hLGrC+pN8M
         9EavAE2BgbHVwMy/e1U3veDIJAaE81gFoERMspI8jjsq1Apao67C6WY2PPSgHL9G4/T1
         AhFyWdqNmzkz5m55RrtL1sx4o8jK0IeZwGr2mXvibkT7iy+ernNzAWKiHtnF7iW2HlNX
         +91/XR8vVqbmEFift5+MUdNeIuigC1z8Sw7lGNtcgO8wrn7sRP4QaiWJhXV3DrKDkDbj
         y+4Fo5Hrfu885YsennhDjT4DoDe5ZX9FFvw9KI1/a3xQn0G7viVxEqlEjeGwZdcIT1zX
         Fb/Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=M28w2Mre;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-a3229cf19a3si3439713a12.494.2025.01.09.21.47.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 21:47:36 -0800 (PST)
Received-SPF: none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-76c3-a3dc-14f6-94e8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:76c3:a3dc:14f6:94e8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tW7rq-0000000E4t9-0OXm;
	Fri, 10 Jan 2025 05:47:34 +0000
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
	John Garry <john.g.garry@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Johannes Thumshirn <johannes.thumshirn@wdc.com>
Subject: [usb-storage] [PATCH 02/11] block: add a queue_limits_commit_update_frozen
 helper
Date: Fri, 10 Jan 2025 06:47:10 +0100
Message-ID: <20250110054726.1499538-3-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250110054726.1499538-1-hch@lst.de>
References: <20250110054726.1499538-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=M28w2Mre;
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

Add a helper that freezes the queue, updates the queue limits and
unfreezes the queue and convert all open coded versions of that to the
new helper.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: John Garry <john.g.garry@oracle.com>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
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
index 89d8366fd43c..6c96a73261d1 100644
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
+ * and updated with the new values by the caller to @q.  Freezes the queue
+ * before the update and unfreezes it after.
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250110054726.1499538-3-hch%40lst.de.
