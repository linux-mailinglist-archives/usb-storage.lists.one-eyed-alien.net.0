Return-Path: <usb-storage+bncBDUNBGN3R4KRBL4J7G5QMGQEEBOYCVY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id B7031A056BF
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 10:26:09 +0100 (CET)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-2ee3206466asf1260530a91.1
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 01:26:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736328368; cv=pass;
        d=google.com; s=arc-20240605;
        b=GD7iDTs6ObpiTBiAGRwv8HPeSy3WH2C/Dfx/d2ThXCbp+W86wuAUcbrHp1YTVN9kcN
         tzt9jtzbJFIAF4ySTqVuWdMElJYkL3kUTqHAxYD6mN7GhSi//NOtqiK03tKd5tBSwc8S
         7xtD8ow20Yr1vQoGWDFaiDfcPz62kA2FC9rGyZBXGAeXhorSpp0TzPY6v0j0yblETasd
         3cxWZE1lgAwQVLhn+uUN92RtxoN5aj4VeoM++noTVh3/8/TXRaxE3dmvW/9EDh22Pp3C
         FXyjlUFGOdlAljwCVzuAj6Mt/rB5/Cu7exotBFaNVXAOtKPEqL8nKeWoXPdFPqE6sXct
         JwVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/+TofBOxT/QW0PRVk5os69rCrEJOtBuhs4pQdDlkZ7Y=;
        fh=mRLLrHkZN7WR1hLFz/KfGfTAowtjCuSop/38wSflECQ=;
        b=lEaen7UDAPyO9lzhbtG21IpzBI+y7RIOtMKtMpOMWyegA7P9wU3Ud4qqlbOj1mo5f4
         QjA6VgBRHBX3TG8Xb2x/snFMkypDBHWcygoegHqYuQzb0fRhpuaBMo4cddm9Oy/5lwck
         ecJluTCEkzPi4UayAhns7xCGHF9ZFOQoIIUyI5YeZcJdt2XXR1/+2Aq9bCGQIdBdu5Ml
         d0c+0PIGTF4wpD6kbNtiE41xp4p+F3yRNtgyN2izxqI6MEy89X9+3aahVS5cTwvYotlf
         xktkXJ72bqMfBytc/48YwGhh177TN7PyVdX96V0a+i/jdmWHqt9kVKYntP6pwkpkaXHa
         QgXQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="1tEf1x7/";
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736328368; x=1736933168; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/+TofBOxT/QW0PRVk5os69rCrEJOtBuhs4pQdDlkZ7Y=;
        b=afr1mVnqrW/BMHarzLvb4O/O1Lfp6sn1Y2TN9D5Off1Y0Uy6qaEW34S2AxFaSVylGJ
         LrzoWFpvYbJX5vyXW9jvSjY2CW+vR5dheJZpFZIx5qaqtkNaAQaEKLnBBzm2UFuncPEI
         oat5CRiWiHOXwOQHd8MuVqfyywK8VBSYSCULQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736328368; x=1736933168;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/+TofBOxT/QW0PRVk5os69rCrEJOtBuhs4pQdDlkZ7Y=;
        b=N60yF6KwMSLtT+RMsOrznGRViMFNqHWcokSZYo90JZRKloVB33baQFq9JvvATNJtTK
         mWzNc9BULdB3oSLCPnVOR9roXvweei/xhp6av2JGYotbBDHMa4xmySrriFr6EBqcr3AF
         wsOsiLcvhyYOJCpDgOYpLy2Pd5O/h7WTDQjG+xDfFoP7m+HQwbEnPxYLQPZ7n8Qyt++3
         PT+zSbtFRLhmqJJr2RzpkThayy5K7mJY8stqEduRXbKV3ltwyzVPHVSZOSKg6OOx/vin
         FN0U2+WlnacR4AjkMT/ceNFady3w6zV6N39pPQyly3LdA9inHKcvGDZHnaefGb2mbE+7
         +8bw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWYTFMVOj4m1krgsj6VhMEY/a/QOFV0sIBbn4iid6Fh6Q6cM7DKFikZgGdEhRmQP/TtS9G41A==@lfdr.de
X-Gm-Message-State: AOJu0YwcEqPQk6zJc6bHpMGr2Bj+FlIY0NNHUbtgOmTvj6Q87KBToTMr
	FmQLY/uLE4/jPi6AfpIxx/91aPW6PO6xLiuV87iTIgRuqYM6oV0l+9YzCXyRFlQ=
X-Google-Smtp-Source: AGHT+IFhB84dauXJ89bFnCIdVXUl3upCEH4BmIrV0pGX/8cx6J8R07f9d5qlcUKp5P16S4XblgdEtg==
X-Received: by 2002:a05:6a00:1148:b0:727:39a4:30cc with SMTP id d2e1a72fcca58-72d1036b1c8mr11661055b3a.1.1736328368086;
        Wed, 08 Jan 2025 01:26:08 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:2e05:b0:725:4630:50bd with SMTP id
 d2e1a72fcca58-72aa9810745ls11337852b3a.0.-pod-prod-00-us; Wed, 08 Jan 2025
 01:26:07 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXzaXenaVaagLkTr/nzNwa8NjneM62YYKnJ0ttPEpJRjr6ITO2LOFNHwqADxp2Y2qsC7uObPnRuBAAr2g==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:3a8b:b0:1e0:d0b9:9a90 with SMTP id adf61e73a8af0-1e7374964f4mr9428161637.13.1736328366746;
        Wed, 08 Jan 2025 01:26:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736328366; cv=none;
        d=google.com; s=arc-20240605;
        b=gphivwbj+nazLhKIEE88t6BukFSZdu2VTtccE4gv89OpFNF9N9uxsiTA/XQBNtS+1/
         8tN3Zmo2RSCzkyoitl5rnfDGVuzTUuPK7fIOu1Mtd+rrls8jtBg/vwuM0B2H1UjsJEWY
         ZxeV8VCcYDwK5t0abzxjP+z5DzgSH1m9tc0a3rGYUjpV+RVHlxYsFebOlFa9hlPSN3R+
         hXmFeMXFvqoYJn/lkvOzsm7ejpFlPMMc0e7JRdcHkXQHtIr8jblmWH0UJOkUBwgRRiru
         ZyHNKIp61hcjyDTBVrqQN8AOUb58bN3FxoFupdKuktZM8T02hclSFA5lYhpTMm8Bochv
         Kkyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=l/31ESR3+qEAHHMxPuf7j9P2G6uDf3ZUExmKKhtWzmA=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=kkJms6N4VlflcGaeMWt2UY6g+oUwIEu0ao3mkoJr/tdKJHwxRSRYej2VdImn8SvX14
         zPqmIIBU9iOr3d1UcQ6iZ6qQ08r5uauGt9vZowpk2mTaG+UBlu6gmxICWkGPz7ORe24B
         QzZdL+7dpLWrRKQ/VUGXennRZt5eI8rt/G0MiutbajSq9WBkRTWWVGzOKHVQYaxbjaUM
         76V/W/OmEZL9RpOS5az3T5nticsmRXuk7sRDI8FsvDKZmOwb/1PTU3C5HSPLKgGPz2Jt
         Mm6GCkN3AGT0EYc8rcTws+lm7IuaaOepgF4hXotCYMI2tm4s4C3CNVkGgOs8uIYSCxX6
         w6qw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="1tEf1x7/";
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-842aee11e14si44098409a12.58.2025.01.08.01.26.06
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 01:26:06 -0800 (PST)
Received-SPF: none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-e44b-b36a-6403-8f06.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:e44b:b36a:6403:8f06] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVSKB-00000007lwB-274R;
	Wed, 08 Jan 2025 09:26:04 +0000
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
Subject: [usb-storage] [PATCH 10/10] loop: fix queue freeze vs limits lock order
Date: Wed,  8 Jan 2025 10:25:07 +0100
Message-ID: <20250108092520.1325324-11-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250108092520.1325324-1-hch@lst.de>
References: <20250108092520.1325324-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b="1tEf1x7/";
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

Match the locking order used by the core block code by only freezing
the queue after taking the limits lock using the
queue_limits_commit_update_frozen helper and document the callers that
do not freeze the queue at all.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/block/loop.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/block/loop.c b/drivers/block/loop.c
index 560d6d5879d6..15e486baa223 100644
--- a/drivers/block/loop.c
+++ b/drivers/block/loop.c
@@ -311,6 +311,13 @@ static void loop_clear_limits(struct loop_device *lo, int mode)
 		lim.discard_granularity = 0;
 	}
 
+	/*
+	 * XXX: this updates the queue limits without freezing the queue, which
+	 * is against the locking protocol and dangerous.  But we can't just
+	 * freeze the queue as we're inside the ->queue_rq method here.  So this
+	 * should move out into a workqueue unless we get the file operations to
+	 * advertise if they support specific fallocate operations.
+	 */
 	queue_limits_commit_update(lo->lo_queue, &lim);
 }
 
@@ -1091,6 +1098,7 @@ static int loop_configure(struct loop_device *lo, blk_mode_t mode,
 
 	lim = queue_limits_start_update(lo->lo_queue);
 	loop_update_limits(lo, &lim, config->block_size);
+	/* No need to freeze the queue as the device isn't bound yet. */
 	error = queue_limits_commit_update(lo->lo_queue, &lim);
 	if (error)
 		goto out_unlock;
@@ -1151,7 +1159,12 @@ static void __loop_clr_fd(struct loop_device *lo)
 	lo->lo_sizelimit = 0;
 	memset(lo->lo_file_name, 0, LO_NAME_SIZE);
 
-	/* reset the block size to the default */
+	/*
+	 * Reset the block size to the default.
+	 *
+	 * No queue freezing needed because this is called from the final
+	 * ->release call only, so there can't be any outstanding I/O.
+	 */
 	lim = queue_limits_start_update(lo->lo_queue);
 	lim.logical_block_size = SECTOR_SIZE;
 	lim.physical_block_size = SECTOR_SIZE;
@@ -1471,9 +1484,10 @@ static int loop_set_block_size(struct loop_device *lo, unsigned long arg)
 	sync_blockdev(lo->lo_device);
 	invalidate_bdev(lo->lo_device);
 
-	blk_mq_freeze_queue(lo->lo_queue);
 	lim = queue_limits_start_update(lo->lo_queue);
 	loop_update_limits(lo, &lim, arg);
+
+	blk_mq_freeze_queue(lo->lo_queue);
 	err = queue_limits_commit_update(lo->lo_queue, &lim);
 	loop_update_dio(lo);
 	blk_mq_unfreeze_queue(lo->lo_queue);
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250108092520.1325324-11-hch%40lst.de.
