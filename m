Return-Path: <usb-storage+bncBDUNBGN3R4KRBC6L7W5QMGQEC73PUVA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E82A06DD3
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 06:58:37 +0100 (CET)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-2ef9e38b0cfsf1065766a91.0
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 21:58:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736402316; cv=pass;
        d=google.com; s=arc-20240605;
        b=IhcfOdTCgTSqZdT8BzFMnH3MSU98QcpfGP7SUpoziRgxk5t0AdnMckRqD1G0W6ZXTr
         foLfWB6HMDUdw66KZ3/RY/cFEdGaGw/cMD5BD6gItJX+c9zoO0YTQ9VREMq5rqogH4VA
         KZgYCAejeDtIJDYzBpb9c5y1isoCYBQvYVE/5aGi4jhGXEtrXEMOPckoEIMLhfFWrmhY
         EnzP5RZv48D43pvhH1D9TIWo0uoWbSC9V24rswWD+t0xbmhpWunNCdGw0ETsNemoypCz
         vLNzAV2W3y7RDkwGMYeUhewQQN2/ihj2GyjTzHSz41dTOUqq6j68KtcQGXj+KS/fa5sx
         HSQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wcd1cJkUpsXerCtZbGO648DH3XQuPFA4xmHxiX89NcA=;
        fh=Beztl9PXG2pQz9K1yL+93yShSzju9xM7fKnjAz+QbQs=;
        b=COs1olzSR4KZSkF2pGuuLjvD97ZZD2cZw5FEgS64D9lpaKAYYos92pTYDlekIFRoVU
         I/SUtY0CAhCKCRXU8NC7bK40EgXHTQqmFTDZwQdjeM3kuSMBEzG0rJNrDL0Lx1WzxcS0
         zY9a2KioRfcOgqyQN74K7W17UXqCPuPQwvtBLbvidwTD16qHVmG78cQavTwtYKOuKDrJ
         zPBH5ma5cZN0MP1VX2+OE6/XUNhlKqDpEyT9xEirgmPcTpPgTPvOcWECDuNdmWpil0wD
         2Xf+HuNPyXks8mFrAFt155oR3cPk4jDASWC5gN2m+a7MhWYZ1SXRDBi0VUDJhlUf6wQy
         yj9w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=pEyrCkpF;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736402316; x=1737007116; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wcd1cJkUpsXerCtZbGO648DH3XQuPFA4xmHxiX89NcA=;
        b=inIMd8VlB+PYhDrGbThwcS8KI2QNGdkknI2bPpSnUnxoqLiYwLa094bp8cFWJJDcaV
         jTZ/6YLO5zU8iAJPjY11aYh1dIMsVWuLkV6O7n1NyUxC9RnQ6d3DAhKgj1GV2bhh+lx4
         DMZyA20fys07OVv+wJQwSQciTgalBf3yyzUfE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736402316; x=1737007116;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wcd1cJkUpsXerCtZbGO648DH3XQuPFA4xmHxiX89NcA=;
        b=vXKpVjnCxeGJLnaVAWV6YhpyH0WG5PAvpSa5K/M08njHXCnrovzIh9GjJdXpB6m1aq
         7vMwHat4rEh4WR/mHA+QjL+dHDIRCaysW9U2/OsFyPcB1IA7Xr6iV7PIRmDTnrJR3+rw
         8lwbOHUCUL94a4zweqJYmEUxx/hjRqIM8F4vE1ZuvyIrstRwYB4pNvVswcqH/ykY9P1r
         b0TMCBBxsAZzMPc5wE2+21yk8zD8xMIFvzSQVEfFSq220FcH56tJAa4nAIE+j4apaarZ
         muXMqI2XCiQEahxVKHTSd9sOWgVoUiaeq2k+irwVOtFQyKogol2P7YLB2u62MVmOdvOv
         cQdw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVOKjQLBc3gDY6H3YUJIMm2/KKFjjwX5PSsHt0RRqVhBKa/nAjlupQZIpgE8pD/fJxh/LZATA==@lfdr.de
X-Gm-Message-State: AOJu0YzDsVIhO48s2DDWJuR1q1i4mQCF4fwMSIZrrQ+Qwmr4o4jSryWc
	s278K/9qbnyugX9Ni44pr4jSElB+sfklpR3Xrt7bQbnZg4JBkcCJqT3hV1R3KYg=
X-Google-Smtp-Source: AGHT+IEFvYCYy5FjFIURmMl+LYWl25BfPEP3hpvEyTo7T2FbdaLwhvW8Nlyijwin4bkBJE51cuhyDA==
X-Received: by 2002:a17:90a:dfc7:b0:2f2:a664:df33 with SMTP id 98e67ed59e1d1-2f548ea60c8mr8046731a91.1.1736402315768;
        Wed, 08 Jan 2025 21:58:35 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:1505:b0:2ee:edae:755 with SMTP id
 98e67ed59e1d1-2f553d3116cls596966a91.0.-pod-prod-01-us; Wed, 08 Jan 2025
 21:58:34 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV419A1zpnAIKksebq0RNJkiNivImUeqgeEmniPgwGmYEz6ECq59Pf592LMIwUGLSgzW+efjLarnfnZVA==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90b:524b:b0:2f4:49d8:e6f6 with SMTP id 98e67ed59e1d1-2f548ea4c8dmr8017850a91.3.1736402314351;
        Wed, 08 Jan 2025 21:58:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736402314; cv=none;
        d=google.com; s=arc-20240605;
        b=kqcqFwo4zIuYyyUsKHLYIkRwyEuH7SnCkvTkAm3uxjh0vx0Sm61tY3A4KVctVo87so
         8dVXumzTn2B0AnOyFAA839ghaOt38WzFtB8xTNh+hSAY5cVQN5wcfy/xluOv/GUTjFuu
         U60btBWfKJuzTxm+eYmHkXOpV+hANlBxUmZPPyDlMRhBaPr/TBNXIXQVs6XW9yzz4p11
         fIuFGFmk4kG8Lv1Nn4V17Xk5lUxItfZYpzfVUCGoqaHoFEgIvrr9GdkfSAWEuAUki6gw
         sY6CqaehwrHi8iArlxBlhQpa9vxU8yx/wq2FWelyUfmws1HSkz5NufWt/lkWd5mOEPI/
         +INQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2pR3tGW1Dw3ETw22Jt1Utv0A8JUZ+FrDW3V1tgOFn6o=;
        fh=WRAGdV8aIMVVSYoSeklSBzbPtpnXpjY3BgoNNJPLYpM=;
        b=KNB+OJ1ZjWddyWIEm/2dG2aF6nTyIqtUeR6g6VoT9ALPhJjcZPbTWKEtTaFi58DV3i
         x58MdtQuWDmuUbdy3BG4KfsNUXWteZKtGkHi5sDAZcCHQN44hIIRLej4HMyjl1eB+9gZ
         2ihrBn4DiXMhYf/cTpfei6WJz8GBGsUJuqfe2A/AbsD4AeafjuWoK4AygIL2amJl6N2e
         LcSwaGnPqiaihXaCEXsOcD4+vEUPj/f/yuaX9pRPEy+ncWm0065TvaE4QMdYeZ9uclNj
         8p+QIR/NFJNKFw1dpRx82dcPd7GgvHsuKJFjv/UKvEjHmd79Rpyx45r54bR0Q+dD8x1x
         +Wlg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=pEyrCkpF;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-2f54a379090si3447364a91.91.2025.01.08.21.58.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 21:58:34 -0800 (PST)
Received-SPF: none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-ddeb-cdec-70b9-e2f0.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:ddeb:cdec:70b9:e2f0] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVlYt-0000000ArIq-16Tz;
	Thu, 09 Jan 2025 05:58:32 +0000
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
Subject: [usb-storage] [PATCH 05/11] block: add a store_limit operations for
 sysfs entries
Date: Thu,  9 Jan 2025 06:57:26 +0100
Message-ID: <20250109055810.1402918-6-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250109055810.1402918-1-hch@lst.de>
References: <20250109055810.1402918-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=pEyrCkpF;
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

De-duplicate the code for updating queue limits by adding a store_limit
method that allows having common code handle the actual queue limits
update.

Note that this is a pure refactoring patch and does not address the
existing freeze vs limits lock order problem in the refactored code,
which will be addressed next.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250109055810.1402918-6-hch%40lst.de.
