Return-Path: <usb-storage+bncBDUNBGN3R4KRBLUJ7G5QMGQECWNCI2Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 342E5A056BC
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 10:26:08 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-21650d4612esf100375935ad.2
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 01:26:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736328367; cv=pass;
        d=google.com; s=arc-20240605;
        b=MK2fx+luvqyXco9g4whFbSN13dh2WJB+S4fUuPmJE+KDA5YIIehKbb8Ebk/+Tfe78t
         mivhqQZ4aZZsiGpoRCnsbV4zL+HAlnrO9RXTD3c4aUty112WfPEa8Y2DBFBwPtKEEsFE
         L96ou7oYhsCqyS+VS4dO0mJ/yx/K/tRF3QUOSOegeg0kxUD36+kO8KisyV5kRjVl7YBi
         0//Cf+QzPbejluthLFcDS8bh0XEs98rCBivup3V79pQ9Z6A/PizBzPuPEPDec5otFhvC
         qoEkuXxYuWYz4F0ugKNwD7zLq8oiyxOVh6oQcbdCI6BRhRauOqaj/CBDVKjDE2DXHTYH
         LlIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=i+VPYj+yyTVwEUck2JwwjlsOSKy30BuFqQCRGvSql8s=;
        fh=ppp9gUV7l6nS4mvmOJPfc5ar5xTxuvGrfxhfFkSwsdU=;
        b=LG1CBj6/I0cYs2ZrNIkTbq+onjMLT5YjRTD3qo6YfumkAQAjQ+rbfrhuXyvUVpJnck
         KE9ay0Edyi9HSjzH0xlMewPSORMQkylgbq+5PH8lB5S7nYId6fu7bqaiN7aDxuW4isJG
         NbGRJPrQPx4KP/D7qmZkkWU2JwdtlF1kQGPnY9//XlOamTp8gjhgRhLNfMh2WBSmimUR
         KTFaw6Zdye7MXPK+L0Mccvg57V+Y2U4niaBP1uezEkO2wwG3aiKBPAibjhDmFQbVBWGx
         J9wbUcHmqTuNigpCQz3sXMvfSVqWCB8F2Rt7Q5HDVqSmW7B7J+QMn9/F2j05aSopP1DK
         Gf9Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=oPpanfBp;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736328367; x=1736933167; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i+VPYj+yyTVwEUck2JwwjlsOSKy30BuFqQCRGvSql8s=;
        b=dCIohN/ZfvHy5QI0zK7khbtgx6Xdx1lfW4V2Js6s2guVYu7q/tEH/9ui3Udj51Spu3
         5M1D8Mic5bDowcf4woPpcBx7xuMACA16A4/mOJNmoSLjH7SRBhjDFE+Vrv/lNbXHpSi6
         6KIvWwSshXj0d25oPzs1F3HLnTG0Izdd5fOs4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736328367; x=1736933167;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i+VPYj+yyTVwEUck2JwwjlsOSKy30BuFqQCRGvSql8s=;
        b=Kdc1C+zYsxXg8Qtf+B8PyszvnWdH3mYhOx5YIiPQD2enMLFVp8T/QccVRcIKG9uU7b
         L7+8EkUyAATAgeqQ9ZGwhegOL5DCMd75FsbV5NMqCEef6EvuiU8sdcLfhYG1fuD8Ultz
         Q57Qvv52tdp19Ilw5ma6euV0Ae0Ooac9PR59MZ/1VrIKypZ7zmArJOhTrFfzVP5G4egZ
         3WPtRpm0z3f7aslp/DCy5nL3W75LuLBYZg0oWE8A8t1rJtdMQPJyRmHz5zW+1sSdMQr9
         Go15ppnugmzlLnPqyPXHs5gjS5jZeZBg6aK1REZFl6TJLI5vRom2kjbquLFoJXSsOT1y
         q/Sg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVCJ10tO4gW+vSNYz1Y2w4ACzlxOg7wB0kFpNKumnbVeaHpv+pDdnqa5r3H+aDRT3QGP3QF0A==@lfdr.de
X-Gm-Message-State: AOJu0Yyr2mdicdbP5gYtYVfir2uKA+ZDc3ixdS2zWSzgEM5Rhs+YK/tq
	O4IFay3Kb2sXa+DlRAVnBVIspmVFWzbb/ntK0r5HUfO6KHtYUKOpwiJLV/oJRSk=
X-Google-Smtp-Source: AGHT+IEYRDytti2GiAlqnRXKUv+YI6l3Ru/SNDsoK6Ug1Jg0ZA5TwnfUtJ79IJQwFOdy8vuUYaonjA==
X-Received: by 2002:a17:903:234a:b0:215:8f2e:eeda with SMTP id d9443c01a7336-21a84012c27mr32792085ad.52.1736328366657;
        Wed, 08 Jan 2025 01:26:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:22c3:b0:216:3178:9efe with SMTP id
 d9443c01a7336-219d9fba7aels57519515ad.1.-pod-prod-06-us; Wed, 08 Jan 2025
 01:26:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX2Bc5hcVrEHwyAtZJ6coKOPg9NuG2oFf6c3jiI54aRbCL9LEP3NF3kYRR1X7DhVkmcphMZWRz16ztf/A==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:f689:b0:215:4450:54fb with SMTP id d9443c01a7336-21a84016deamr30287255ad.55.1736328365404;
        Wed, 08 Jan 2025 01:26:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736328365; cv=none;
        d=google.com; s=arc-20240605;
        b=ACRwA4IvquyU69b4x11aXItLZPcN1ZkNIYnLQukWsLK2ZXOPg1KyNeRAD6wzBuBHgA
         P3TBG5zZKT1G0y+pR4IvbyxO9O7BPcHVV6TN4eWG5fv4dqjz8+kH9gxZokwwvasNV1s4
         EfKc5i6kaSKWxMN/y+3W/w2Ykvr+n6kJUQV0KDvb5xxJPa4OEZko2SPjUDvrqdvFnKAm
         b1z6qqfXg8y5w9ZBmDYNDNAIlse4o2mwNk3oGA6HAmiRZRyiT4sidrLRuqKWw7QFe243
         CHxpaR5W4IHZlwGm1XZAUobKfWcghOQlSGZ6KsSBIklvpm2FDATIAII5WB5MzEcGbvAO
         AYqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ih4jy9VAjfow7y1Oqz5GnPF863ZTdoZ8wHnqGjtKptU=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=fHgoJpnPExml2lgoCwqM5hjK6hgwf8XgXQlAPoYX3mqOEDYkBHbWPMpyD4s/2tQD6n
         UheVV+zbfvSEFKjLe6zrIRcHM86p3B/6LZQnGC4KJ/9c2iiZxXd221yTT7FE3oE+UI1Z
         KvuURaJljPqHvxBz5hQwySX7q3iXaL4wDwfHSNh496CSGTpUAHReOsmOzUV95pYN178q
         5Mwo73wMDWZyA26B9sCvgK8Nyc1iAO6fZ7yZRTZom37Y6WlbgzsWJUdnE3js1GWXcAr/
         /OxYehCfSxMR3xBRcfrp26wi9rQf8/wKGkqQJWjpA48wCDldIaobabC5ep5wRW9g+VNc
         zjAA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=oPpanfBp;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-8aac44e2438si35642676a12.573.2025.01.08.01.26.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 01:26:05 -0800 (PST)
Received-SPF: none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-e44b-b36a-6403-8f06.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:e44b:b36a:6403:8f06] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVSK5-00000007lrR-3WXp;
	Wed, 08 Jan 2025 09:26:00 +0000
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
Subject: [usb-storage] [PATCH 09/10] loop: refactor queue limits updates
Date: Wed,  8 Jan 2025 10:25:06 +0100
Message-ID: <20250108092520.1325324-10-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250108092520.1325324-1-hch@lst.de>
References: <20250108092520.1325324-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=oPpanfBp;
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

Replace loop_reconfigure_limits with a slightly less encompassing
loop_update_limits that expects the aller to acquire and commit the
queue limits to prepare for sorting out the freeze vs limits lock
ordering.

Signed-off-by: Christoph Hellwig <hch@lst.de>
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250108092520.1325324-10-hch%40lst.de.
