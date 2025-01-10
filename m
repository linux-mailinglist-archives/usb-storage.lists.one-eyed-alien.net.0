Return-Path: <usb-storage+bncBDUNBGN3R4KRBDXJQK6AMGQEAUI6DDI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C72A086D2
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 06:47:59 +0100 (CET)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-2ee5616e986sf4481508a91.2
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 21:47:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736488078; cv=pass;
        d=google.com; s=arc-20240605;
        b=cSmkSbwSsr80/6vdyFCtfz7ZEJN4/WX0gkc8LD5tUDOrchwv9eh3T87nBP5dGz/0KN
         K266S3PWZkzW3HfQEzb1oMsAtW7w2hGIpdURRERlTfS6/HZTvZWL/r2FJ/e+ijqoE5l4
         RS/3N+AAu5QGzHTJZUU/t5G8uWd3BMT56tuVcyWqPRvbF4XvxD4F5KuBmpwtt1MuVUdM
         SWHM+5RRLtgFflmrKCOxgd6ndKI+IoRQrDJlzZscVz88AA0FjRLN6dXTKS9I6CR48rnR
         JUmBoXV/FbpaQkFK8Yd29g32b7CTJUS0ENvj1HylrNHmsnllGrCTpr5x2XZSe3+LmfJ9
         7f5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=b3vAmW/fBBSRaUNXtk/fL+Jr80OSbmGdmJ6X8LLEPBA=;
        fh=Lbrt/fa2cbTdVxuxSiUQzCv175fCZ6dRTindSXyqrBo=;
        b=BGoOHofmfc0mb485468Hoq3Fnw5jUe6KxcPpDLeRiekueaYyknI35b0YLC9f5TlKzR
         ed7gLQKI5nze509JrQlDOe0vecjXwfHck6FmRXaWtWpFRA/V4g934ilaHdvLaowgsexB
         NwxACqjL8cFUx+ikNJsXe3KOHlTdqgpgg+0hIN6gTSsTA0nuNlmBSk1NyNubh152A+rA
         0dZTpqS20bXVPwxuFOBKXThsFLzLeYo1ueGe7G5RCwgwAE7G5BtuuF97RMJok6rxkFFr
         By/FhJYkqHAVllugpm9TykTMZI6LAsxOY9xoZDffPAKkaNQ+qah15YF135kMUe7gJ15K
         tHSg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=b8ESsQT0;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736488078; x=1737092878; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b3vAmW/fBBSRaUNXtk/fL+Jr80OSbmGdmJ6X8LLEPBA=;
        b=P0qYhsH9Z7hf7vk0poZUGO7ffYE/E8aMuM2tLDve42TX8rduMCZt07GHJcCuZV9Xh+
         hIsP16ygfejPvRph76qxzMoCerMZNRynkWd36HyhUhzj/NdxQpxtSaAsZNIC4U6uQSzr
         rItasfP6H7sB24jz65v6jG4x3z6FhGYNPuCPU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736488078; x=1737092878;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b3vAmW/fBBSRaUNXtk/fL+Jr80OSbmGdmJ6X8LLEPBA=;
        b=anfDtW8n8EOHToKh1znc+NPOM6HBHCD7DspUddN4dEA2AIJiT1CxUnGNWkvijK5A0p
         2JAvLHNfiOEFBYcSYLDcKNm0OG43tQCN1QFVBNHYrS/SbIsXWFK/jlmrr972VS0vnqH8
         GfMqsgorElk5EpWp/Mb5MavkIfJ6Zo/6dRuX6C/a9g1N8FJ6iRbLp5DGuoIxYlU9jhGB
         QzvJp4Os8kgbay+48MlZo74l9adLjS2HuQ6ZNDzY91SYzQ78wycqY3dYWjpffKphWv2Y
         TRNTjBwk9qiERfZYfiR9xJQErzU0G9j2wP3m1sCGIvHAf81CEk+eH1L62PVNTLw41QOz
         Dk5A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWpYHBmntS8t9VVKfutEAdOfd0yIufh2n6Xt1wMOK0CNx7j2NGQLuUot9IJNI7pswtxFRNq9g==@lfdr.de
X-Gm-Message-State: AOJu0YwZUYLcZXhCkDVZrmeyfTH2Nf5/oCdfJ0UF0dN9r9yPxgCXa5mU
	2gjjUqq+UbyVGQLGu2NU26UNTeseYhHWYiMHSB1NqXJpdbCp/Ow63GqWYoSGUQ0=
X-Google-Smtp-Source: AGHT+IEokiGNsVUsSovk9c/cDSvFAiNvaltf8tf5pFU5RelyF9Q7lm5hWGv/6upBznyYFwj0gZzg7w==
X-Received: by 2002:a17:90b:2f4f:b0:2ee:b26c:1099 with SMTP id 98e67ed59e1d1-2f5490f4b9dmr12002547a91.34.1736488078358;
        Thu, 09 Jan 2025 21:47:58 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:2282:b0:216:3178:9efe with SMTP id
 d9443c01a7336-21a8d3188ecls19863825ad.1.-pod-prod-06-us; Thu, 09 Jan 2025
 21:47:57 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXPLv/tcdTYICDtihsIeHpjB14WpAK7yT3sCDMTT2jVMeWkM69ZihJOWA6ES6M/auIeYwY6jHz5ppkuBw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:c941:b0:215:7fad:49ab with SMTP id d9443c01a7336-21a83f46a12mr157581495ad.10.1736488076992;
        Thu, 09 Jan 2025 21:47:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736488076; cv=none;
        d=google.com; s=arc-20240605;
        b=HQPAbTaoqEHI95IR3FgqXQi8MwlzkolknpDQ5h5yqxNh1pE8QTaD26Qx0SX7GZOWlq
         kSbVdoVZWu/E/n270Mp3Toq+dP3FQMfH15L9j+oqYiOBd9ktGHwqLfINw4gdjtRm5f/B
         5GuRbuP0r6ZyDbne/Ogl7F5aork2784h+UAPRQVTQm3/Fi6z9Ug2/zcn3pRAQiATAPAh
         h3rJLcR7xdAXwVQX/94gbbpcoaqwV+VbrkcOakoPAvKCJyyXth73mmCtK47RHE9P4uPi
         SdiSHcpaEJApQxbr+H8mLbMqQ7hpczmG2YSLywjKwo4axzkhVe4MD33RSBXRnaD1XzWR
         xDyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KrpkNt/OcYKBNMZvC12xL3ZH6M/IawOa0Y+dO261DfY=;
        fh=K4mYBT/f9uT4NDiXg9vO0QvGda7RTqDR2brfxQ7Fzow=;
        b=O8fhJPuAgTEkClq/ig0DUzIrAZMbLnz4Nh74MbKysNdL+4VJXRghZXuPSsLyqVR/u6
         e5jklG1+04KXFToH9hEM8NaqkUeKqyN7Y8VdiPKnJMmWKpkiblcV7YlSCQBk4B/G/Z4Z
         EMWmRzTmGWBAjl1u6sR9cZ5AkzjF7FAaTZKkQpXQXfiQnrfseakWhR9C7iIa+NyhnH7B
         moRXm2EZYPlguaeyw9aBLwzZ2XQBst68gQm/A9kvBkQPXc83HRTRIbdzHEgHZNPgHJoF
         sb9cJs31sK3LuQ+OljmdiHT3aojsTDdbFPIBgnQTpZ09jIx7gVrQ8hzpcXHxkmwmqmfS
         w6KQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=b8ESsQT0;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-21a91a096cesi29540735ad.564.2025.01.09.21.47.56
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 21:47:56 -0800 (PST)
Received-SPF: none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-76c3-a3dc-14f6-94e8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:76c3:a3dc:14f6:94e8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tW7sA-0000000E52n-0ypa;
	Fri, 10 Jan 2025 05:47:54 +0000
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
Subject: [usb-storage] [PATCH 10/11] loop: refactor queue limits updates
Date: Fri, 10 Jan 2025 06:47:18 +0100
Message-ID: <20250110054726.1499538-11-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250110054726.1499538-1-hch@lst.de>
References: <20250110054726.1499538-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=b8ESsQT0;
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

Replace loop_reconfigure_limits with a slightly less encompassing
loop_update_limits that expects the caller to acquire and commit the
queue limits to prepare for sorting out the freeze vs limits lock
ordering.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250110054726.1499538-11-hch%40lst.de.
