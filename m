Return-Path: <usb-storage+bncBDUNBGN3R4KRBDMJ7G5QMGQEVAHMEAA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 68ACEA056A7
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 10:25:35 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-2165433e229sf246260655ad.1
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 01:25:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736328334; cv=pass;
        d=google.com; s=arc-20240605;
        b=CHAfhNXtDHQ+A55upqPfsgI7W/9AOVetas+UbYQOmpse5gjHDgkPi09Dj5BQwvrdF3
         2lREDQvXIQEHAhV1vVGXtuTbz1SfaZeEXL2v2MA05kaX3pltvpFk3dZnWF+GSGiAkPhm
         lkC6x0gjEqZTzSq4T+8KMgvm4bk8IZERHXDrQBBvPIJdjeu0jHWpLY8hYY03P6/TSoI3
         xPjjHa9UTHSikr4xo3ZCIu+s00FqK3nAkwPjIPWoAQ9LVf7FoPL7iqQCUuCdkeMkAgZb
         6uDxh+dhyb1HT06pQBna/7hkL0uKbksVnpexMkwdK1UadD8dxjMv/YfrmBsmXFROsz7V
         uf8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2qBdA5AnvxgT9dMPlh9zvGmYaLf6KwIFBdXOe0aKcPY=;
        fh=pgF6+LnXeHpp8wF7d+TOTDOSqGEdrPopNZfecDweDXE=;
        b=b5IUCH3MZl0K2lNwwb+Ko80UHmnkAsSrqp+7eWpCtYXrJnxfKnMh2nTWimDmhl4gYU
         Jk8pH5W9Y1qcHODNf4K/a/A4MQtjNFd0IorwFHzBlHtEDCnR3FZYOvCxfc2unzezQGSU
         dOWUUcFvE8MWjW8If8EzaMffUwPumauQCJUPkFIHE7h0Ws7+aqn4PDFNszxF5tVPH7Eu
         0zHzqXSfe5C0xslIDXRfVASdboTTkoVKQcYn6LvzLxvoFYVmE/A9TzgiOwUn0j/wTHGu
         kcybmJCliQH8ZEUr5ePoeu/SvXvoYs/YJz3ck8lhtliLHy3QdfjUjQnswdI58SHDILE+
         eeaA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=yepwSztN;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736328334; x=1736933134; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2qBdA5AnvxgT9dMPlh9zvGmYaLf6KwIFBdXOe0aKcPY=;
        b=BAi3grikdqMvsJMW1e1o+HyXTqiHRUSitIvuhCxQYvTIFtcFPTQhi9qRWku+JRB9G2
         5vHNy1pd/q93lloVoIwz2Qs5hbng0ccLS7e0W6VU4f8jnuByF/08CDe4jxdoPMWgkeOA
         j4J4+YvKJule4O6WBXv0nF07Vg8u9OP/WmJpI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736328334; x=1736933134;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2qBdA5AnvxgT9dMPlh9zvGmYaLf6KwIFBdXOe0aKcPY=;
        b=argXAKCYlUhLoPra73kpRJ2N5+JbKyiOdq8cqbEHduUES6YQSmNQyaAFEf2+TIpbW6
         HKrJgrHeLnAmAJmzjeaT1jm6xXvX2bwu8CzipFh/6WFUdeA+8kj8EJs4OG2au2rg6KLf
         8aTuAT7bkq6k8Eh/4HG1uJwzvuRl8jd3tOhZdH5On4naXTu7HQWfklUP/y7YrszptVf6
         HSph4LrVyjRBDzTig6yTnXZSa2IY4TbWQK/zMmw+UIDkp1oeWDoGhMSTu/0+IGmQI9De
         YJoQGbKr6uHS1fPhX5AHi2use9GVhqZ4L/C9eqg3G93Sml8SLzVFPsLAtQ9YkmsFFAYI
         4PlQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWLc2Jmq+jNUtLHE0SNrnVqSwe7vizZWvCShsCXsR89aHZZRKwx9jKKhzj7ciwsew11HqvVbg==@lfdr.de
X-Gm-Message-State: AOJu0YyrILRTkoEMnHs+YflX57UlBmzZCgN2zYNvCLpBmVQNznRxke4W
	FLkkVVj3I40XSqy/vFVqdwbKPnk5xmkrP4ktueaHTQhfDQAShao8UNVkzzwBsKI=
X-Google-Smtp-Source: AGHT+IEhEAbMXaj2dIAf4qNooFhkN54GuxzatdXkfXFDrwrViSUhSTK6f02gnGxnMxusWfcWX2Sdsw==
X-Received: by 2002:a17:902:e5ce:b0:215:8ca3:3bac with SMTP id d9443c01a7336-21a83f4e46fmr24850335ad.16.1736328333895;
        Wed, 08 Jan 2025 01:25:33 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:6d26:b0:2ee:645e:d765 with SMTP id
 98e67ed59e1d1-2f442de647bls10184576a91.0.-pod-prod-05-us; Wed, 08 Jan 2025
 01:25:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW/jrEIp6Y1h0JCfNpqfoAZqi01ETvgrGiVfGn1garWFs9pM9l4C6XHLZPGcelsn5aB4FynEPYNUjx51A==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90b:2e0b:b0:2ee:ab29:1a57 with SMTP id 98e67ed59e1d1-2f548e9a5b7mr3229516a91.2.1736328332514;
        Wed, 08 Jan 2025 01:25:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736328332; cv=none;
        d=google.com; s=arc-20240605;
        b=a+D5q9XQ5qDgiMDGUXw2JZ86cOuWYVdwCSqAjRckwhcqfvc0RlcLlDvfDUmX+4F/6+
         G/AT1CnfcqflnT+SKBNrPzo5gfBHhkXv8iUuG4wKicsPYRrFGLA8+vZl7DIjj5oJxuLj
         oq8Am7o+Zk9mzB1gCWeBeOqqdzzq3o1WTLeLnT1ftY0dSUGJDdNN70z4Nqo4paaFqiiG
         R5SWxhgwslmlidh1+79kraNN2+7Na+hTENZoFfF8R1eTAKA45jo18H34KNYnJMwT8NKi
         OZd50DPu++RziGFuJNgw/ruWUTUxJH5xBl/eAhj2HD4n/b0xQwKkrWALK+idW9L527CS
         FJww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kEuqoE5n4lWZswLPHF5SGLQQ+lRWVroH49mo5KreSwc=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=lfFJOBB3QOZ9kdCHz+llUELJQOzhpPVmCaqkMbnzwnzv7AqQj20zJfLmWckQx4Mrm2
         +OUzfsdPHzHL54xH92eI19oSiXgzGHA/CrSXvBn0mRNj0JaykE0+IAFqWNAfLYzlKQv4
         fV6yeuBq25ZSdoPfaCrDDcVUDbQrvz/wPv+9nbDNhzBW14/HdIxG7IM45ons2u47QHjg
         PRwwkoq1Fu/UnErZ/Hen5Wha8Ilzx+axPdaSEUfmnmdXakg+ZjX60VIgvLfFBuh747gP
         pe1sAOV6LrPausQd6JbSdEYWG10rwhtmgclDPjXS77zj0sqpPbBXgdo5FBm25QFYGmzI
         TC8Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=yepwSztN;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-219dc98e0c4si462136035ad.146.2025.01.08.01.25.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 01:25:32 -0800 (PST)
Received-SPF: none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-e44b-b36a-6403-8f06.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:e44b:b36a:6403:8f06] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVSJd-00000007lRg-3ouC;
	Wed, 08 Jan 2025 09:25:30 +0000
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
Subject: [usb-storage] [PATCH 02/10] block: add a queue_limits_commit_update_frozen
 helper
Date: Wed,  8 Jan 2025 10:24:59 +0100
Message-ID: <20250108092520.1325324-3-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250108092520.1325324-1-hch@lst.de>
References: <20250108092520.1325324-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=yepwSztN;
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

Add a helper that freezes the queue, updates the queue limits and
unfreezes the queue and convert all open coded versions of that to the
new helper.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250108092520.1325324-3-hch%40lst.de.
