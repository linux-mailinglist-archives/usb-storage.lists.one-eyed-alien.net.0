Return-Path: <usb-storage+bncBDUNBGN3R4KRBS4U6O5QMGQE4VTUAJQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CE7A037E9
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 07:31:49 +0100 (CET)
Received: by mail-pj1-x1048.google.com with SMTP id 98e67ed59e1d1-2ef9dbeb848sf21441288a91.0
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 22:31:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736231499; cv=pass;
        d=google.com; s=arc-20240605;
        b=NhejGLBUTqamyaoNxbYbPMDCv7CJkgq6VmaLgiwWxKxoEB04yNbj+m7VKrZEmJHDP+
         nVjO1z/jNbGK5XJAjLW/w6TSofhLY8xCtsKGcnpVgRRczIodW2oQXm4n0WawVKLF2AlI
         O9tmx6exYKUUKMnVoj8dz1itiNYu1CorXZiI0mDMddVAJqsuB56hkGoXxnBqLp02lR8U
         8uZ7OkJzclnPq+ccrTgtfFPoE34/byqLke/KD+NdZesqRxXNShEobD1AAxyFrgmwXW3Q
         iNecgBEjCAPPpBy/yxxRbd6UmFL6Jpc/J03czR9M42361J2QunHY2tlNJQH5BOjbm55S
         N0RA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Q1NQ8L/VK87K/3Y1X2UtW+lc+v2Uetn55Xj8dkcZrcE=;
        fh=S4xarfU2YaSkVecAWob0c85NkYpL/HqoNa+MTa0K7oA=;
        b=FcJp/M7P78zHF5nGLfOpaXFmR+uRSKmjX4oa9Dz7s8+cWpj6orh8Kvpde9aYZfAfiX
         tpmZqUQ7G3Wb0rZ8yj5eCXaDhJDWgjAy3UsY7j9iS+6TmefRFM9HrP7TN7CtnRVM8y+J
         s8986GOwiV26UEInEXtVJiL4UaKFGDCFbFq8xGAT0vdSO9lkfemu7FRiR5LpnkKaJ1qP
         U3WExQs60K0l2vu5vDTYyuIiMvfyFJDC52IQAQhjj9StbCU72kwDaSfOyOJGB47Fg2/m
         Y+owIZoC5hvciehvg2v5ii0nbt6SVrljOFiHMdsk/QhgNVzk40stE2pGkNHc3CCA87Ai
         bIrg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=NA2RsE+6;
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736231499; x=1736836299; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q1NQ8L/VK87K/3Y1X2UtW+lc+v2Uetn55Xj8dkcZrcE=;
        b=LdMGSF8F32Hqbgcazr/qmo12S907Xp601rT2N4Eei2Sko7bVUOTd6k1Isqh3DFOaOA
         KQbX6ssS4M153c4bxOUJLWwJU9GdEaF9tJA/VRCPuNwctzZ9xuF0GeWGeHWBs/UUBXei
         AC+14RHiDPLgmgPWzUqyfkJfflpMeLPPsSVpg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736231499; x=1736836299;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q1NQ8L/VK87K/3Y1X2UtW+lc+v2Uetn55Xj8dkcZrcE=;
        b=vsmwbOv+koPMAMtPKoustnPeCbpxE4+fOOLga+PuCgEEwTVobP5E2uHru2k6LzdG25
         lNKcFxUHUzYFhzFpOjpl/nv9osLmXw6MHA+8zLzalVirddTQHbb9Z055ve6x3OJkAooW
         ++qBpWlh3MKmCaBd7D9r6ZRZpVwxOJ5Hr1fYGnCdp+BoCR4R04kovDgl2tsKVyLakriB
         WBLq5AMd076QU60nUiJMRK5z8pcSpDT117JRG94U1MhyVo0SOzCzJYDXczX1ucRjVd2Q
         BcHOyk7wTXZoOrXKhgQaUi08BhC1S1OFqepdP8aE3p4lgHU47/YCX3SkHvPjFDZ8WuwC
         iKLA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVzmlvjfE4x8sGccZPkhDiHiY6dk1mKdcrdlnIzUGH5K1v+T3BykvV7BdmxsCtK/AVoTki4IA==@lfdr.de
X-Gm-Message-State: AOJu0YxNdBXrvagGC0aMsHzCUdIiufoAY9Dg9DM4oEd74+oOW5okLH/E
	OpKbY/n8tOEuyjNVTJC3N0YLWshu43WMKG2yO5teh4LisYf/wpupRG+xC7PWYbg=
X-Google-Smtp-Source: AGHT+IGlT7SECd8g5qEcrt3Nv37pZSed9YgUkZwgynMrDMXMLFIOd6J6Br8rPO26HW3HnakS+zdUzQ==
X-Received: by 2002:a17:90b:2d4c:b0:2ee:c2b5:97a0 with SMTP id 98e67ed59e1d1-2f452ec290emr84174675a91.25.1736231499423;
        Mon, 06 Jan 2025 22:31:39 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:2683:b0:215:8275:b90 with SMTP id
 d9443c01a7336-219d9fa679cls7423165ad.1.-pod-prod-07-us; Mon, 06 Jan 2025
 22:31:38 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVU8bR2jqkpsxbty65yb7k+VXwh5ISit3IIdMiEviyjJrQiQxoQJMTA8YE+4X2/gTKbB5Y30s/lS8bQaA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:680b:b0:1e1:a07f:9679 with SMTP id adf61e73a8af0-1e5e045876dmr91411484637.4.1736231498103;
        Mon, 06 Jan 2025 22:31:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736231498; cv=none;
        d=google.com; s=arc-20240605;
        b=Vt7xI+J5ynj4RYl6561WI6QcvN46tO5HvGg3W32EP4Cj8FCf36hN03LgEEsv+Q6TAt
         I148u2B8MzzJkdwJOv5Kx0cYYajaiCszojUsnpX02zPK0veELR8uU1ANpsJk+lIkY6HT
         Ucm4je9pAoxNXr7yjy3teL5TVkPbwCmn0/XIe8YbsBCju3WS0h4fbuQfzS0i8fLHZ3d7
         CTsBP1I14Ayd9jOX8Zp73LNMZkddysPJ3gMnYQ6jgncIrM58JkOY80cD4ZGHXC5Bqka9
         XWHQprtpTix9eXFGGtuTa9vxPMjv9nHO/YGpTMoBntPhxrPJVbFpP8ajgI7bnJEGKVy2
         WAaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3/a6WiD4jfiuSLJg/6epzPSF4U+qaAs8qx6yJ1YrGdA=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=FIDQSsP9+nF/QjTVgm8yHu9RxUvNHygt9CQ36zP5M4xF2NhBlELqu1xlPGWxE8dr+o
         bpzJLvKicuP7TgK5ujsyLdul2sPdwmDDEYvd30A98CSY/YdC1OtUk+OL7s0mwxSevg4/
         cXLDxq2lJZ/AAu1FQcU9T2ZTh8O99vYNBlwwecQ47rXYPwsUm+66cdfCJqZvDH1JblyM
         P/D16eR/rJY3jltMxklywIEdpUPXfYcQhkTXEymJjnB+38goyV8wu8APe3uwvQYXsneb
         UfK+MwWcQiMdxszsr7kfVdZT8UJtxXmlYiygRQ+7tgqIs8JVAMYKW8Nm69qwjB41RZLx
         r+EA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=NA2RsE+6;
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-842e9388f35si43673003a12.302.2025.01.06.22.31.38
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 22:31:38 -0800 (PST)
Received-SPF: none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-d467-d75d-35bf-0eb6.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:d467:d75d:35bf:eb6] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tV37m-00000003dtU-20Vi;
	Tue, 07 Jan 2025 06:31:35 +0000
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
Subject: [usb-storage] [PATCH 4/8] block: add a store_limit operations for
 sysfs entries
Date: Tue,  7 Jan 2025 07:30:36 +0100
Message-ID: <20250107063120.1011593-5-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250107063120.1011593-1-hch@lst.de>
References: <20250107063120.1011593-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=NA2RsE+6;
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

De-duplicate the code for updating queue limits by adding a store_limit
method that allows having common code handle the actual queue limits
update.

Note that this is a pure refactoring patch and does not address the
existing freeze vs limits lock order problem in the refactored code,
which will be addressed next.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 block/blk-sysfs.c | 128 ++++++++++++++++++++++------------------------
 1 file changed, 61 insertions(+), 67 deletions(-)

diff --git a/block/blk-sysfs.c b/block/blk-sysfs.c
index 767598e719ab..8d69315e986d 100644
--- a/block/blk-sysfs.c
+++ b/block/blk-sysfs.c
@@ -24,6 +24,8 @@ struct queue_sysfs_entry {
 	struct attribute attr;
 	ssize_t (*show)(struct gendisk *disk, char *page);
 	ssize_t (*store)(struct gendisk *disk, const char *page, size_t count);
+	int (*store_limit)(struct gendisk *disk, const char *page,
+			size_t count, struct queue_limits *lim);
 	void (*load_module)(struct gendisk *disk, const char *page, size_t count);
 };
 
@@ -153,13 +155,11 @@ QUEUE_SYSFS_SHOW_CONST(discard_zeroes_data, 0)
 QUEUE_SYSFS_SHOW_CONST(write_same_max, 0)
 QUEUE_SYSFS_SHOW_CONST(poll_delay, -1)
 
-static ssize_t queue_max_discard_sectors_store(struct gendisk *disk,
-		const char *page, size_t count)
+static int queue_max_discard_sectors_store(struct gendisk *disk,
+		const char *page, size_t count, struct queue_limits *lim)
 {
 	unsigned long max_discard_bytes;
-	struct queue_limits lim;
 	ssize_t ret;
-	int err;
 
 	ret = queue_var_store(&max_discard_bytes, page, count);
 	if (ret < 0)
@@ -171,38 +171,28 @@ static ssize_t queue_max_discard_sectors_store(struct gendisk *disk,
 	if ((max_discard_bytes >> SECTOR_SHIFT) > UINT_MAX)
 		return -EINVAL;
 
-	lim = queue_limits_start_update(disk->queue);
-	lim.max_user_discard_sectors = max_discard_bytes >> SECTOR_SHIFT;
-	err = queue_limits_commit_update(disk->queue, &lim);
-	if (err)
-		return err;
-	return ret;
+	lim->max_user_discard_sectors = max_discard_bytes >> SECTOR_SHIFT;
+	return 0;
 }
 
-static ssize_t
-queue_max_sectors_store(struct gendisk *disk, const char *page, size_t count)
+static int
+queue_max_sectors_store(struct gendisk *disk, const char *page, size_t count,
+		struct queue_limits *lim)
 {
 	unsigned long max_sectors_kb;
-	struct queue_limits lim;
 	ssize_t ret;
-	int err;
 
 	ret = queue_var_store(&max_sectors_kb, page, count);
 	if (ret < 0)
 		return ret;
 
-	lim = queue_limits_start_update(disk->queue);
-	lim.max_user_sectors = max_sectors_kb << 1;
-	err = queue_limits_commit_update(disk->queue, &lim);
-	if (err)
-		return err;
-	return ret;
+	lim->max_user_sectors = max_sectors_kb << 1;
+	return 0;
 }
 
 static ssize_t queue_feature_store(struct gendisk *disk, const char *page,
-		size_t count, blk_features_t feature)
+		size_t count, struct queue_limits *lim, blk_features_t feature)
 {
-	struct queue_limits lim;
 	unsigned long val;
 	ssize_t ret;
 
@@ -210,15 +200,11 @@ static ssize_t queue_feature_store(struct gendisk *disk, const char *page,
 	if (ret < 0)
 		return ret;
 
-	lim = queue_limits_start_update(disk->queue);
 	if (val)
-		lim.features |= feature;
+		lim->features |= feature;
 	else
-		lim.features &= ~feature;
-	ret = queue_limits_commit_update(disk->queue, &lim);
-	if (ret)
-		return ret;
-	return count;
+		lim->features &= ~feature;
+	return 0;
 }
 
 #define QUEUE_SYSFS_FEATURE(_name, _feature)				\
@@ -227,10 +213,10 @@ static ssize_t queue_##_name##_show(struct gendisk *disk, char *page)	\
 	return sysfs_emit(page, "%u\n",					\
 		!!(disk->queue->limits.features & _feature));		\
 }									\
-static ssize_t queue_##_name##_store(struct gendisk *disk,		\
-		const char *page, size_t count)				\
+static int queue_##_name##_store(struct gendisk *disk,			\
+		const char *page, size_t count, struct queue_limits *lim) \
 {									\
-	return queue_feature_store(disk, page, count, _feature);	\
+	return queue_feature_store(disk, page, count, lim, _feature);	\
 }
 
 QUEUE_SYSFS_FEATURE(rotational, BLK_FEAT_ROTATIONAL)
@@ -266,10 +252,9 @@ static ssize_t queue_iostats_passthrough_show(struct gendisk *disk, char *page)
 	return queue_var_show(!!blk_queue_passthrough_stat(disk->queue), page);
 }
 
-static ssize_t queue_iostats_passthrough_store(struct gendisk *disk,
-					       const char *page, size_t count)
+static int queue_iostats_passthrough_store(struct gendisk *disk,
+		const char *page, size_t count, struct queue_limits *lim)
 {
-	struct queue_limits lim;
 	unsigned long ios;
 	ssize_t ret;
 
@@ -277,18 +262,13 @@ static ssize_t queue_iostats_passthrough_store(struct gendisk *disk,
 	if (ret < 0)
 		return ret;
 
-	lim = queue_limits_start_update(disk->queue);
 	if (ios)
-		lim.flags |= BLK_FLAG_IOSTATS_PASSTHROUGH;
+		lim->flags |= BLK_FLAG_IOSTATS_PASSTHROUGH;
 	else
-		lim.flags &= ~BLK_FLAG_IOSTATS_PASSTHROUGH;
-
-	ret = queue_limits_commit_update(disk->queue, &lim);
-	if (ret)
-		return ret;
-
-	return count;
+		lim->flags &= ~BLK_FLAG_IOSTATS_PASSTHROUGH;
+	return 0;
 }
+
 static ssize_t queue_nomerges_show(struct gendisk *disk, char *page)
 {
 	return queue_var_show((blk_queue_nomerges(disk->queue) << 1) |
@@ -391,12 +371,10 @@ static ssize_t queue_wc_show(struct gendisk *disk, char *page)
 	return sysfs_emit(page, "write through\n");
 }
 
-static ssize_t queue_wc_store(struct gendisk *disk, const char *page,
-			      size_t count)
+static int queue_wc_store(struct gendisk *disk, const char *page,
+		size_t count, struct queue_limits *lim)
 {
-	struct queue_limits lim;
 	bool disable;
-	int err;
 
 	if (!strncmp(page, "write back", 10)) {
 		disable = false;
@@ -407,15 +385,11 @@ static ssize_t queue_wc_store(struct gendisk *disk, const char *page,
 		return -EINVAL;
 	}
 
-	lim = queue_limits_start_update(disk->queue);
 	if (disable)
-		lim.flags |= BLK_FLAG_WRITE_CACHE_DISABLED;
+		lim->flags |= BLK_FLAG_WRITE_CACHE_DISABLED;
 	else
-		lim.flags &= ~BLK_FLAG_WRITE_CACHE_DISABLED;
-	err = queue_limits_commit_update(disk->queue, &lim);
-	if (err)
-		return err;
-	return count;
+		lim->flags &= ~BLK_FLAG_WRITE_CACHE_DISABLED;
+	return 0;
 }
 
 #define QUEUE_RO_ENTRY(_prefix, _name)			\
@@ -431,6 +405,13 @@ static struct queue_sysfs_entry _prefix##_entry = {	\
 	.store	= _prefix##_store,			\
 };
 
+#define QUEUE_LIM_RW_ENTRY(_prefix, _name)			\
+static struct queue_sysfs_entry _prefix##_entry = {	\
+	.attr		= { .name = _name, .mode = 0644 },	\
+	.show		= _prefix##_show,			\
+	.store_limit	= _prefix##_store,			\
+}
+
 #define QUEUE_RW_LOAD_MODULE_ENTRY(_prefix, _name)		\
 static struct queue_sysfs_entry _prefix##_entry = {		\
 	.attr		= { .name = _name, .mode = 0644 },	\
@@ -441,7 +422,7 @@ static struct queue_sysfs_entry _prefix##_entry = {		\
 
 QUEUE_RW_ENTRY(queue_requests, "nr_requests");
 QUEUE_RW_ENTRY(queue_ra, "read_ahead_kb");
-QUEUE_RW_ENTRY(queue_max_sectors, "max_sectors_kb");
+QUEUE_LIM_RW_ENTRY(queue_max_sectors, "max_sectors_kb");
 QUEUE_RO_ENTRY(queue_max_hw_sectors, "max_hw_sectors_kb");
 QUEUE_RO_ENTRY(queue_max_segments, "max_segments");
 QUEUE_RO_ENTRY(queue_max_integrity_segments, "max_integrity_segments");
@@ -457,7 +438,7 @@ QUEUE_RO_ENTRY(queue_io_opt, "optimal_io_size");
 QUEUE_RO_ENTRY(queue_max_discard_segments, "max_discard_segments");
 QUEUE_RO_ENTRY(queue_discard_granularity, "discard_granularity");
 QUEUE_RO_ENTRY(queue_max_hw_discard_sectors, "discard_max_hw_bytes");
-QUEUE_RW_ENTRY(queue_max_discard_sectors, "discard_max_bytes");
+QUEUE_LIM_RW_ENTRY(queue_max_discard_sectors, "discard_max_bytes");
 QUEUE_RO_ENTRY(queue_discard_zeroes_data, "discard_zeroes_data");
 
 QUEUE_RO_ENTRY(queue_atomic_write_max_sectors, "atomic_write_max_bytes");
@@ -477,11 +458,11 @@ QUEUE_RO_ENTRY(queue_max_open_zones, "max_open_zones");
 QUEUE_RO_ENTRY(queue_max_active_zones, "max_active_zones");
 
 QUEUE_RW_ENTRY(queue_nomerges, "nomerges");
-QUEUE_RW_ENTRY(queue_iostats_passthrough, "iostats_passthrough");
+QUEUE_LIM_RW_ENTRY(queue_iostats_passthrough, "iostats_passthrough");
 QUEUE_RW_ENTRY(queue_rq_affinity, "rq_affinity");
 QUEUE_RW_ENTRY(queue_poll, "io_poll");
 QUEUE_RW_ENTRY(queue_poll_delay, "io_poll_delay");
-QUEUE_RW_ENTRY(queue_wc, "write_cache");
+QUEUE_LIM_RW_ENTRY(queue_wc, "write_cache");
 QUEUE_RO_ENTRY(queue_fua, "fua");
 QUEUE_RO_ENTRY(queue_dax, "dax");
 QUEUE_RW_ENTRY(queue_io_timeout, "io_timeout");
@@ -494,10 +475,10 @@ static struct queue_sysfs_entry queue_hw_sector_size_entry = {
 	.show = queue_logical_block_size_show,
 };
 
-QUEUE_RW_ENTRY(queue_rotational, "rotational");
-QUEUE_RW_ENTRY(queue_iostats, "iostats");
-QUEUE_RW_ENTRY(queue_add_random, "add_random");
-QUEUE_RW_ENTRY(queue_stable_writes, "stable_writes");
+QUEUE_LIM_RW_ENTRY(queue_rotational, "rotational");
+QUEUE_LIM_RW_ENTRY(queue_iostats, "iostats");
+QUEUE_LIM_RW_ENTRY(queue_add_random, "add_random");
+QUEUE_LIM_RW_ENTRY(queue_stable_writes, "stable_writes");
 
 #ifdef CONFIG_BLK_WBT
 static ssize_t queue_var_store64(s64 *var, const char *page)
@@ -695,7 +676,7 @@ queue_attr_store(struct kobject *kobj, struct attribute *attr,
 	struct request_queue *q = disk->queue;
 	ssize_t res;
 
-	if (!entry->store)
+	if (!entry->store_limit && !entry->store)
 		return -EIO;
 
 	/*
@@ -706,11 +687,24 @@ queue_attr_store(struct kobject *kobj, struct attribute *attr,
 	if (entry->load_module)
 		entry->load_module(disk, page, length);
 
-	blk_mq_freeze_queue(q);
 	mutex_lock(&q->sysfs_lock);
-	res = entry->store(disk, page, length);
-	mutex_unlock(&q->sysfs_lock);
+	blk_mq_freeze_queue(q);
+	if (entry->store_limit) {
+		struct queue_limits lim = queue_limits_start_update(q);
+
+		res = entry->store_limit(disk, page, length, &lim);
+		if (res < 0) {
+			queue_limits_cancel_update(q);
+		} else {
+			res = queue_limits_commit_update(q, &lim);
+			if (!res)
+				res = length;
+		}
+	} else {
+		res = entry->store(disk, page, length);
+	}
 	blk_mq_unfreeze_queue(q);
+	mutex_unlock(&q->sysfs_lock);
 	return res;
 }
 
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250107063120.1011593-5-hch%40lst.de.
