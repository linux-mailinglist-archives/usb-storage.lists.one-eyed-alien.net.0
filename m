Return-Path: <usb-storage+bncBDUNBGN3R4KRBAPJQK6AMGQEWVDMDWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3FBA086C9
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 06:47:47 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-2163d9a730asf32249455ad.1
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 21:47:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736488066; cv=pass;
        d=google.com; s=arc-20240605;
        b=IKSSufguXrSAxOR9ydkBqUq1apJrbr48h3Js73RKLSBWgCrmGhpocr04AHd+Q360FN
         UbCJRMiVpu9T0bd1IdAm/GQV8ZQUPqeje4/aNpCJjtFlppX1OXsypj28mm6bYWeLPntc
         qODJSLJ6vc2QpJp2stU8PN9jzCvK3oFDo7WnsY7Xsia1v38xivNCIPThlg7U2JLjzPGJ
         0iS8eZZM/nl5emlIMsd4v/3a/kQv2fULXlzK4/V9spf4Yxn8BGRNAHPu1W5drWqsRy9e
         pOoOaP87SVTU9lGQ9zkYNOmTzYJP+uKumVPrL2RnAIf41T1dvfP2g0C4/6la+rO5OssH
         yp2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ztP5rTo+5Ebi7CshiHad8eqrOyRXOy8clE2380HM55A=;
        fh=rc8hnG3kgaM5PGGhI7h5fL42/Px3CGTmC2wOiZ+z+Zo=;
        b=auAdoxevqUXKvkJiUR75uRpLIfDiVRH1rkTfOBuTbor2ixLP6O8PtSYIxbcMTU4W4p
         Eg8FUpuKNwYlQcSI7yu+ll2nnOfKO0GA1VCkHs4+Rs+2t82sBfbzZl/CDD/J8ofddw4Q
         Csp4CXwayqDR6xtV5qy19Xvz56xaODpalg9T7SjPRkz+Dx1k3pkyz0mYVCcjn/ZPBe7D
         DDEPISw1hWIjV4JOS/4kp5YWId2UlulU1CTcR15YURvHo7XXmAcP/7fVWgnQC+xg5jP1
         Z3WOqlWUVAmGBxsqvjAnCHFoYb9lzB8/YKGb18TIe0e3BN1sFSGTSDgPRgVegowAZ36L
         aABw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=ht5SV70e;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736488066; x=1737092866; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ztP5rTo+5Ebi7CshiHad8eqrOyRXOy8clE2380HM55A=;
        b=JTMaKAaMiEi3nuvpru7JO/IIaFfINsFs7Bz5p2GhDNDDAsr9r0x/D/6dnLUJUwlGlp
         PwaTYLE2coD4z509JCbDaIo1imMb9xGw9xId7U9xYHP/Qg9rf6haWztLbPKxAfKlibo2
         leravl8+QWM5OlYBUEPICOWZil9LfT8Tr+U+M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736488066; x=1737092866;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ztP5rTo+5Ebi7CshiHad8eqrOyRXOy8clE2380HM55A=;
        b=ORIyx2+BHRfoEQnY2dH520E6SggSW+VjEwa6IjI3Pes97/a+JPFwxCstVV9XRp0T6O
         oCgApUSsCvetgMV4QUJ+UugcuwFhhscg6E4h23TOxYzJJUY4PndQXMzGwN8p/kQgMt0S
         7/M0yT5a/b071Xgf0n2c4ipMnWyDoO5rdsowxo4VBupsXlaiWPPoALZN/31EEPAY+Zcw
         OMlbquMLIbBffvhwhwfW+HKJBtt0k/2xwLtfOhs4ROTQdGRwb8RAsEf82AUFFqcU25vz
         mCU9zj80+e8LQffiUwwHSyn8fUxMQ8Sc2zjaqPTBfHGqRVBiwwEfTqwTJmAerVZFMXl/
         c+JQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXoTx+dKv1KOr9XeEgZ3O4ZaLp3EnriNlQKGGBqueXhD60+fEN98cVi8m8gcRIyTRvFtIW7Iw==@lfdr.de
X-Gm-Message-State: AOJu0Yz8WUrtwRxeih6uF453u9xFwrKTOJDYt/+r+UgFIVJaPqO80Unf
	TqXqhCc7BCJM2foY3vEstKMEh7rEKYnoZkRBrWwE/HdYQIGp+ie8vhmqhTUL4AM=
X-Google-Smtp-Source: AGHT+IFqy2/LZqqzRIBlDQPq43D9ITiGgtYjkswPhCWO1zOMlO4hjRVqIR/fxMJLqST+nFT90qPJYw==
X-Received: by 2002:a17:903:2cc:b0:21a:874f:1de1 with SMTP id d9443c01a7336-21a8d6c7c39mr73711455ad.21.1736488065805;
        Thu, 09 Jan 2025 21:47:45 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:32c9:b0:215:6775:371e with SMTP id
 d9443c01a7336-21a8d2eaa10ls14872425ad.2.-pod-prod-00-us; Thu, 09 Jan 2025
 21:47:44 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXnpFUnms+kMWUF2vOH3jvFs2hXkAW4GxvJ4AxqOEj91oU2ogbpZsb3q2dRQspWlbEP+KLrOV0aU/H5zQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:9150:b0:1e1:ffec:b1a9 with SMTP id adf61e73a8af0-1e89c898731mr8848725637.3.1736488064407;
        Thu, 09 Jan 2025 21:47:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736488064; cv=none;
        d=google.com; s=arc-20240605;
        b=Ddpu0fe/v67WqdfaHdzAMivuD1g1c0UVHG33/S7jM24EvhBmkBzopdBkUx6mV2PnOd
         uWGlZpwJFK35alsHo0FzWFHeTV4zJStTfV50NfhZ/AS8pUpku12f/JonNPyEWNwtd4b5
         QXS8NHU5DlC7hzykjwxb5rLwmLCO47HpnFww7OqF/5ucmKfatgKvwu64nVc9JEGKnG4M
         2kyh+ETcBPGVFtlum5fIG7VoDd63bI0fzylxsk6Lnx2/mslfzc/1CQLL3CgfFDyAg8o8
         IELLgnzS0d+MwOZvmpOWIobXRJM1NzLFB8n/N4uhnzfd8xYOq1zYYjjWvZiEFLhkPQON
         oyjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FzOI+jy13btiFS8fSFYwfB6ydfiYqToeAvETLECru2s=;
        fh=K4mYBT/f9uT4NDiXg9vO0QvGda7RTqDR2brfxQ7Fzow=;
        b=ksc8Dn/x1Je0RVf4XhGxMBoNPD9uje3y+Gr6w7M1IRLVwyOf/tIuWL5CRMbI4ntxU4
         RlENAgubUNQDoVfY4oP13bPjG3TMuvQope2lOFslf6QBv3hMw1ePTA4nyHsHwMvuWCn3
         TDK67PcDFk4BgaAawxl5xH2HNipvFgOAYFYhKp/LPJPFZefglE8HQWfpAe+aKHhafjjW
         bdp5JgRzrEN6inIm/N4REeURP7nACFQj3zKw6MS5yWaqI9WZ4dKjDoHSYMqSNvtlEwBH
         GueQiJR6dRo0RmHN+ElyEbtpnBGLack7rB98UEP4fyQ1ONP02jjNovi/Yh/sX3XSVe03
         u6Ig==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=ht5SV70e;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-a31e43ac7e0si3437602a12.309.2025.01.09.21.47.44
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 21:47:44 -0800 (PST)
Received-SPF: none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-76c3-a3dc-14f6-94e8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:76c3:a3dc:14f6:94e8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tW7rx-0000000E4wS-2C7x;
	Fri, 10 Jan 2025 05:47:42 +0000
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
Subject: [usb-storage] [PATCH 05/11] block: add a store_limit operations for
 sysfs entries
Date: Fri, 10 Jan 2025 06:47:13 +0100
Message-ID: <20250110054726.1499538-6-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250110054726.1499538-1-hch@lst.de>
References: <20250110054726.1499538-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=ht5SV70e;
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

De-duplicate the code for updating queue limits by adding a store_limit
method that allows having common code handle the actual queue limits
update.

Note that this is a pure refactoring patch and does not address the
existing freeze vs limits lock order problem in the refactored code,
which will be addressed next.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 block/blk-sysfs.c | 128 ++++++++++++++++++++++------------------------
 1 file changed, 61 insertions(+), 67 deletions(-)

diff --git a/block/blk-sysfs.c b/block/blk-sysfs.c
index e9f1c82b2f3e..d2aa2177e4ba 100644
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
@@ -273,10 +259,9 @@ static ssize_t queue_iostats_passthrough_show(struct gendisk *disk, char *page)
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
 
@@ -284,18 +269,13 @@ static ssize_t queue_iostats_passthrough_store(struct gendisk *disk,
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
@@ -398,12 +378,10 @@ static ssize_t queue_wc_show(struct gendisk *disk, char *page)
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
@@ -414,15 +392,11 @@ static ssize_t queue_wc_store(struct gendisk *disk, const char *page,
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
@@ -438,6 +412,13 @@ static struct queue_sysfs_entry _prefix##_entry = {	\
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
@@ -448,7 +429,7 @@ static struct queue_sysfs_entry _prefix##_entry = {		\
 
 QUEUE_RW_ENTRY(queue_requests, "nr_requests");
 QUEUE_RW_ENTRY(queue_ra, "read_ahead_kb");
-QUEUE_RW_ENTRY(queue_max_sectors, "max_sectors_kb");
+QUEUE_LIM_RW_ENTRY(queue_max_sectors, "max_sectors_kb");
 QUEUE_RO_ENTRY(queue_max_hw_sectors, "max_hw_sectors_kb");
 QUEUE_RO_ENTRY(queue_max_segments, "max_segments");
 QUEUE_RO_ENTRY(queue_max_integrity_segments, "max_integrity_segments");
@@ -464,7 +445,7 @@ QUEUE_RO_ENTRY(queue_io_opt, "optimal_io_size");
 QUEUE_RO_ENTRY(queue_max_discard_segments, "max_discard_segments");
 QUEUE_RO_ENTRY(queue_discard_granularity, "discard_granularity");
 QUEUE_RO_ENTRY(queue_max_hw_discard_sectors, "discard_max_hw_bytes");
-QUEUE_RW_ENTRY(queue_max_discard_sectors, "discard_max_bytes");
+QUEUE_LIM_RW_ENTRY(queue_max_discard_sectors, "discard_max_bytes");
 QUEUE_RO_ENTRY(queue_discard_zeroes_data, "discard_zeroes_data");
 
 QUEUE_RO_ENTRY(queue_atomic_write_max_sectors, "atomic_write_max_bytes");
@@ -484,11 +465,11 @@ QUEUE_RO_ENTRY(queue_max_open_zones, "max_open_zones");
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
@@ -501,10 +482,10 @@ static struct queue_sysfs_entry queue_hw_sector_size_entry = {
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
@@ -702,7 +683,7 @@ queue_attr_store(struct kobject *kobj, struct attribute *attr,
 	struct request_queue *q = disk->queue;
 	ssize_t res;
 
-	if (!entry->store)
+	if (!entry->store_limit && !entry->store)
 		return -EIO;
 
 	/*
@@ -713,11 +694,24 @@ queue_attr_store(struct kobject *kobj, struct attribute *attr,
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250110054726.1499538-6-hch%40lst.de.
