Return-Path: <usb-storage+bncBDUNBGN3R4KRBZWL7W5QMGQER2GJISI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B611A06DE9
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 07:00:08 +0100 (CET)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-2f550d28f7dsf1036183a91.3
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 22:00:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736402407; cv=pass;
        d=google.com; s=arc-20240605;
        b=IU0QBcODGqVofotEquQrJCVb9OvVSwb4M9CAOMyMokZPS9dAbhsAByVNCVgbfx5jIj
         v0BOSTnC3FnQZqSCZUvGUU5GMQjfGvH37CEZlZcjtq8Kg8pBLE7IDgM0sxYHDUhxSqDH
         6ljm9uhUabCaBLmIGsvkanB9rGnc7hq0Apf4w33T+e9ZaqNfUVvcDZywFwHxhUyVTNEn
         ymi8RS3WrOfyRfMP7TaWR5zsyVAsF9u8f8IIjishfuHze3MrHd5KwKlDC2E77lh0pS3o
         kUXwsDHpCWEgn40vsx0CrBUw2lsAaDM4TcSaHtpfGNaAn6VDXimkFTmq2X/PaSgtjtbE
         nzCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AOXTsn+3nC13uqadQtNg/yw+z7QnOC849kKwTXecncA=;
        fh=hcWCfgyjJhWPAZcni41WMyc9yl9/e+4Jwu8cFjWwcKA=;
        b=e857Z5t+F+l7f88ac9d3AhWkSEPuMFCn5IMLypxszHcKNoY0Gt3lCU3lhqiUMt3kxJ
         3gjvos+e1MWBLZL9tajhHIld2njdpuwY8jBpbRwwQ0FUDuijYVysvE7sBOLA4Z2cMfW/
         Vbh3O4zsnXwMJJCvheGQce7UnyH1dtONFQFHeAYZJoSS81F233Ssz4Y86nY2KU6ghbTy
         +mZUoImw929KS1SnimCVlzcjkO2Kb/miqIi2sVEZM0Lol1DC4dG1Y14R8e4dBqV4xnqE
         Q7/vx5L0ppeK52ejGwzWmevEtRgRTkWAn1mZCKC5TfQfk1FDUzxhjVPwRFsEPp52dW2q
         zxkQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=FhbcegkI;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736402407; x=1737007207; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AOXTsn+3nC13uqadQtNg/yw+z7QnOC849kKwTXecncA=;
        b=dryFV7IRfnylxDFtFi6E+i/bwvVbsjBEg7HNPKf7giYtJLE7TzGnjwE5O3CSg1EJu+
         erJm2yR8NXjgvrqF6mApF2pwtYDffBSdNuCfNiDDtS8OgPavHuX+bJ/IKbodpv18tkmZ
         1+oFfSCzQ2mxoiH6cyKgg9tJOaGehW+shN8Ig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736402407; x=1737007207;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AOXTsn+3nC13uqadQtNg/yw+z7QnOC849kKwTXecncA=;
        b=RaO6lXJ3hpqsanP6ilkMYPNuD7G2JNyVdolQbJkm/U4qN2lvQfo/DyGnDAuH108Dvo
         1zzjsfPjMwJmUZlJQigp0hzhPFD3HfUiPAsBtNJ4wyKNWiZKc5PaYCgkwVwRajwcuxWi
         AzAGSsI70h428CjXhq95m7k9pZNftuSZ0BYe4LjBVuRfdvdmbMu9aLnCkIH4rR5KnnVI
         +nI3+qWSeS3KbyaQvaiYL/fDaombQPSszAnJ36TzeAjgL4jtHpDMjnE6Xm83saTlkYqj
         xTFuVRmIGYlMamSnP+ZC9voj3QxMeiAC8sXgDd8RTU1BmKXYjYyNOZWAKF63KZLZOfIm
         G58g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXdbBK9Pj8I2Vhu+WRTsFRjvogCl/jf0ABAuAkrnLP/Ihw9n0+sFEc5reeBl3w1lr1Q7V6Ytg==@lfdr.de
X-Gm-Message-State: AOJu0Yydu667SenjYfnblgtoZNkc2T1tx0jl7emExQmHsV/MDf92sfA0
	h5jeXEk7hwU0mbi1XeeAv/88g351Uy2bEn2Iw+KaV36MRxcZFtJ34P9Xh4s67f4=
X-Google-Smtp-Source: AGHT+IEYubYAekt6SBMJnjwY/TM0bjDt+5xPjWDFXiLWzML5iX3u9Ot48OwVdH4WmtfwnMXeyLo+Iw==
X-Received: by 2002:a17:90b:520e:b0:2ee:9d65:65a7 with SMTP id 98e67ed59e1d1-2f548f447b8mr8443749a91.29.1736402406870;
        Wed, 08 Jan 2025 22:00:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:1505:b0:2ee:edae:755 with SMTP id
 98e67ed59e1d1-2f553d3116cls597955a91.0.-pod-prod-01-us; Wed, 08 Jan 2025
 22:00:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVUqWhxL+C4Wa26Y8kBeyzZBkgL0+YDlSGQ86j/DXLdX9iXxsx/oRKlNnlmZ3fTpdzHXOKwaVHCVNKVKw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:2449:b0:216:7761:cc49 with SMTP id d9443c01a7336-21a83fe37f4mr89803795ad.47.1736402405491;
        Wed, 08 Jan 2025 22:00:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736402405; cv=none;
        d=google.com; s=arc-20240605;
        b=FZketiQ0phG5fGlr4tE/k4sBBrypfYsbP/LiNq76ibEfDegBysKPma+1w5RQE+NKAb
         neTN6IskARYXASfXTEHwR0qDpqHSeNvWesSBJbDxM04+7yYiuD26AVvY8hKAYCEoCq7o
         zdl+bx4BST25CL3Auq0l6VClmFDdN1IzhqaNUskvhi5VCLSGUeI5ZgG5V/G5oYGI9192
         fKuNGnoyxotn3yz71nyfFIIb22b4n1eXAmYfKl8Z5iJVEvAY8FZgkkM5o20CuCoa0fA3
         EmoEpN4FkEHhk1PQZUAdEC801WiZN6rqzv/eEQwaCPo1Vx2uftgfiDujbr9zF23N5WST
         6kFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hYIGKa+u5CrjKCsU5VLCjtxrIvuPUmQYVIa7wbWXX1Y=;
        fh=WRAGdV8aIMVVSYoSeklSBzbPtpnXpjY3BgoNNJPLYpM=;
        b=NjS/waQ2qYKrs7Dl6j9/KU+jevTEUUjxdcpgOS7ZlO61DnNrSWO1pz4DEb5eGDEMeu
         Xld3yiWsKG88RKzkIElq00x2kdjjwY7JAGVfVlKyye/F9GinmqrygNKSFLnRA2Qnw9OL
         1h1eR4B1WwSQMgck4qVGUtAt/1eMLQrpKVu71a32fhOkfK2f28ScHjk0EqxdYKvGPZ90
         oEhe9xIRZe27f29y7khrZ8Q7Pk/lQAj8ttntksuB5aeZFpVrad3LOh/aTDl4vEObCVPI
         fPiWPUJSvG8nfKyLUZTmNEaSV1CcTRHmddXWLA/LotQZ/V9TDZuWT8ntRk2wwTfE+T3v
         /dXg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=FhbcegkI;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-a318f08e346si801806a12.17.2025.01.08.22.00.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 22:00:05 -0800 (PST)
Received-SPF: none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-ddeb-cdec-70b9-e2f0.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:ddeb:cdec:70b9:e2f0] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVlZC-0000000Arc0-3b8P;
	Thu, 09 Jan 2025 05:58:51 +0000
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
Subject: [usb-storage] [PATCH 10/11] loop: refactor queue limits updates
Date: Thu,  9 Jan 2025 06:57:31 +0100
Message-ID: <20250109055810.1402918-11-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250109055810.1402918-1-hch@lst.de>
References: <20250109055810.1402918-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=FhbcegkI;
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

Replace loop_reconfigure_limits with a slightly less encompassing
loop_update_limits that expects the aller to acquire and commit the
queue limits to prepare for sorting out the freeze vs limits lock
ordering.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/block/loop.c | 36 ++++++++++++++++++++----------------
 1 file changed, 20 insertions(+), 16 deletions(-)

diff --git a/drivers/block/loop.c b/drivers/block/loop.c
index 836a53eef4b4..560d6d5879d6 100644
--- a/drivers/block/loop.c
+++ b/drivers/block/loop.c
@@ -977,12 +977,12 @@ static unsigned int loop_default_blocksize(struct loop_device *lo,
 	return SECTOR_SIZE;
 }
 
-static int loop_reconfigure_limits(struct loop_device *lo, unsigned int bsize)
+static void loop_update_limits(struct loop_device *lo, struct queue_limits *lim,
+		unsigned int bsize)
 {
 	struct file *file = lo->lo_backing_file;
 	struct inode *inode = file->f_mapping->host;
 	struct block_device *backing_bdev = NULL;
-	struct queue_limits lim;
 	u32 granularity = 0, max_discard_sectors = 0;
 
 	if (S_ISBLK(inode->i_mode))
@@ -995,22 +995,20 @@ static int loop_reconfigure_limits(struct loop_device *lo, unsigned int bsize)
 
 	loop_get_discard_config(lo, &granularity, &max_discard_sectors);
 
-	lim = queue_limits_start_update(lo->lo_queue);
-	lim.logical_block_size = bsize;
-	lim.physical_block_size = bsize;
-	lim.io_min = bsize;
-	lim.features &= ~(BLK_FEAT_WRITE_CACHE | BLK_FEAT_ROTATIONAL);
+	lim->logical_block_size = bsize;
+	lim->physical_block_size = bsize;
+	lim->io_min = bsize;
+	lim->features &= ~(BLK_FEAT_WRITE_CACHE | BLK_FEAT_ROTATIONAL);
 	if (file->f_op->fsync && !(lo->lo_flags & LO_FLAGS_READ_ONLY))
-		lim.features |= BLK_FEAT_WRITE_CACHE;
+		lim->features |= BLK_FEAT_WRITE_CACHE;
 	if (backing_bdev && !bdev_nonrot(backing_bdev))
-		lim.features |= BLK_FEAT_ROTATIONAL;
-	lim.max_hw_discard_sectors = max_discard_sectors;
-	lim.max_write_zeroes_sectors = max_discard_sectors;
+		lim->features |= BLK_FEAT_ROTATIONAL;
+	lim->max_hw_discard_sectors = max_discard_sectors;
+	lim->max_write_zeroes_sectors = max_discard_sectors;
 	if (max_discard_sectors)
-		lim.discard_granularity = granularity;
+		lim->discard_granularity = granularity;
 	else
-		lim.discard_granularity = 0;
-	return queue_limits_commit_update(lo->lo_queue, &lim);
+		lim->discard_granularity = 0;
 }
 
 static int loop_configure(struct loop_device *lo, blk_mode_t mode,
@@ -1019,6 +1017,7 @@ static int loop_configure(struct loop_device *lo, blk_mode_t mode,
 {
 	struct file *file = fget(config->fd);
 	struct address_space *mapping;
+	struct queue_limits lim;
 	int error;
 	loff_t size;
 	bool partscan;
@@ -1090,7 +1089,9 @@ static int loop_configure(struct loop_device *lo, blk_mode_t mode,
 	lo->old_gfp_mask = mapping_gfp_mask(mapping);
 	mapping_set_gfp_mask(mapping, lo->old_gfp_mask & ~(__GFP_IO|__GFP_FS));
 
-	error = loop_reconfigure_limits(lo, config->block_size);
+	lim = queue_limits_start_update(lo->lo_queue);
+	loop_update_limits(lo, &lim, config->block_size);
+	error = queue_limits_commit_update(lo->lo_queue, &lim);
 	if (error)
 		goto out_unlock;
 
@@ -1458,6 +1459,7 @@ static int loop_set_dio(struct loop_device *lo, unsigned long arg)
 
 static int loop_set_block_size(struct loop_device *lo, unsigned long arg)
 {
+	struct queue_limits lim;
 	int err = 0;
 
 	if (lo->lo_state != Lo_bound)
@@ -1470,7 +1472,9 @@ static int loop_set_block_size(struct loop_device *lo, unsigned long arg)
 	invalidate_bdev(lo->lo_device);
 
 	blk_mq_freeze_queue(lo->lo_queue);
-	err = loop_reconfigure_limits(lo, arg);
+	lim = queue_limits_start_update(lo->lo_queue);
+	loop_update_limits(lo, &lim, arg);
+	err = queue_limits_commit_update(lo->lo_queue, &lim);
 	loop_update_dio(lo);
 	blk_mq_unfreeze_queue(lo->lo_queue);
 
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250109055810.1402918-11-hch%40lst.de.
