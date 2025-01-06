Return-Path: <usb-storage+bncBDUNBGN3R4KRBSWW525QMGQETLG263Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FBCA02287
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 11:07:08 +0100 (CET)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-2ef728e36d5sf20442057a91.3
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 02:07:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736158027; cv=pass;
        d=google.com; s=arc-20240605;
        b=RjNmWGZVmKeu8CjCUWkRfUu2it6IuWK0+gyK1oFdj1W++wi2dzkgwnDFl4C1zo1ty/
         eyjWTxXbrXislBssP7cyyxhJqrDRSO6kQ4TyMvKH9Qqfax2Y2wH0i+9bMfdbktfMxV9O
         kKNpSqOW4RDisQh77GJAkQZBsVPXaKeHSCcIvNn54zJIMOdufWbiA+3+yLmttF1ClGMO
         Mbkbk5RA/SRAjPeSAGcxP5f7cZK896WoE5CLLVHlRvPR52YytVGzvYVQ8GfnwMzY9Ih+
         TBn+CH/5qzfnL/YIGnyBWp3c0tTgofJa4v52IG2gd6TfAVHPQk5zRFBqAaftY2mGHeKn
         Ffsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5swd6C/Gh7swI0R27FXRgD3kTGjAqvTDJ3qgKGKevQk=;
        fh=iToy+a3iA6OYojuZ8wlDuRE46DLB3/8kAE9oGa6/N8g=;
        b=A5HpuPlnAdWvNBYIRbk/3FGWsevi0d9MLUgshbuCgYIPENdeOWGE+TlRvlw/71gJEB
         RJCxNNJt99EXb8pYxmiZ4qHgyYEsYuo+I2rRl2fbfDXzw87VIjCI0fZ/0DedE1ox5NTZ
         uaJV/YNQ8mNzVcITyx79GnWIHGk2p5HxT2xIA8VxDieJKc00m7J3dLyDV5jxIgHk0Z+I
         mvGMeqk+8faJ21Us13COE+UtDgSltQfxDb3tS9dq3SNQ+EGCU2LJbPYai9pGFxspotd3
         2t7eHGp1cWrQpgSRB72s4KcJPcfRSGTbMQ2PEJ5PMna6LayQemxBO164+qQU+MVrBQxl
         FVWQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=INGW9t1K;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736158027; x=1736762827; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5swd6C/Gh7swI0R27FXRgD3kTGjAqvTDJ3qgKGKevQk=;
        b=RsoYh2nFhhRt1GtCyI3IzfV3KwrgQ+3a2xdheboy1c/vH81bVBknqoUdfKsXMn+RBz
         tj3P8NvtQ1mcYqYhSVg1owQJiGAegvVrnTTL0rXRdpNhKSVlP5J+x5Yx1hOxfygdjEF4
         WOt8NP4ZG99Oe11CFCypspler4WjimGq42dcw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736158027; x=1736762827;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5swd6C/Gh7swI0R27FXRgD3kTGjAqvTDJ3qgKGKevQk=;
        b=rXLF1SRAzHZorlYI9ZnltLchaNslufpXedmBeB0TLn45JuD6hSks5R4AVQk3/1nqOl
         Accippb1kWaEhhncubHPeIHE3d12YoTXNjweuUirzQnzQB8x7708z0SLHZnLGb9XpaFw
         KgS+ZEr9wVIahy3vGT/hrUUEHBUHD0rCtDfcrCinyt9Xb7z9c5T/SuJGODprsEvCm8e+
         H3NSa9ypfP9iFh1rX5PLYu86hR66Mhuze+z7S5cC5tgwaCcgBGojVTrUJ5/GQE/NTx5O
         naDdN4RqOI6XQtOSDOxGgUvitxBpAMDjiA4XIqyKaPRmbIuYCQadAZ2+d0WWDycI0S53
         KrPg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWYM1ABMJSxoVrROV3IJzxi3lMbvrx/agiTP06inGTLg3hZOUKvWjc6aGy6ltPqSBchi+j7hA==@lfdr.de
X-Gm-Message-State: AOJu0Yw/93qlMGs/a1LpaRKfJ8q0B3x+jlbAMakNJLdqAQI4pc5IYh08
	ZIy6bneRz8xOpu1XtE13OpSo4cvKn49Zutq1IHkxSo3B6FeRGScOwjoWYnYWCKA=
X-Google-Smtp-Source: AGHT+IEoCwrVIZs15MDCPS/wTsaYQxY7/vVk7erZZj5f57Fk9YG4jg4tD5v97sRm145Iy03vhkGk9w==
X-Received: by 2002:a17:90b:524b:b0:2ee:c457:bf83 with SMTP id 98e67ed59e1d1-2f452e38c6cmr84824356a91.19.1736158026614;
        Mon, 06 Jan 2025 02:07:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:320d:b0:216:56be:c7bf with SMTP id
 d9443c01a7336-219d9fd378fls1168965ad.2.-pod-prod-09-us; Mon, 06 Jan 2025
 02:07:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWNofJvCBk6Xl79l0mGvxyvwBXjXdj6Szjc2NYMj7bzHznV/MQp5su/+zVuUx5pUWPueuZEZ3QgS/rEIg==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:e747:b0:216:4c88:d93a with SMTP id d9443c01a7336-219e6f42f89mr671530655ad.48.1736158025420;
        Mon, 06 Jan 2025 02:07:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736158025; cv=none;
        d=google.com; s=arc-20240605;
        b=gXdSCf2O2FogZWauhzJVeDAPy4Y2cY3ZyYKZoM3PUEymq8jrRQXia6vkl2YoeKW6TE
         EjpLEmxUWklNXon0U9vgAGcpXkElOYdQ12Iat5V+YNbYQWVbk5KSGJUhrrm7uaHSBUZG
         3FtUlDXoZtMK9utQ15DnStkvsPkuHGiRnUt7jyoCwGGH79/m8zVQUYo07J9TYmsAN/wf
         1lEXstfSyXkUz4XScEEczD6jpHt+EIFZ77fTsNXHGtppbuf6V8tHMk6uEu2GxVe3P7Vr
         3gmT5up6ZBeRq4aPYA4CKDownpi1b/eYMbhF7RGvMSEW+/wpQen8N+IEHxWzDs09moSM
         oEvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=D+yK9qy9NNnaFD533w4Zsv3r3RJr0YbI4KOcgKyphos=;
        fh=lWd3gkC8mMNZNBBVD9g3TB40i3tO1HoQaqb3EWMImUw=;
        b=jMGE+27ZAGWkRSINLSoJ6QHe5NMwH7Mv96hJs3bpPd23klxx0JUkSZE6RrWHe1Xj/F
         2978hvDqUTTeZQcHDuJbSv8JAPOJBomWsoNhfY7I1e1DjSou0Ockfy/fqyBXADEXezEl
         rb7j0EgiZOLNM9Noy3zPvPhqnHKsWR0A26rTshx9EG9IXVekF+FzaMDRzqss85SILZb5
         ygElHf+AHR3ODymZXx7uTrdLwf5CYPkZ+D6oAXv988CesnrHo9onGkuLsI3NR9HUsgLG
         ljUQFc5aYYItUfQCeixsuDLlRZsTlbgtZiiTXgLXvTLafTsod41RBolMuuP5mE8YGlJ2
         Xa9w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=INGW9t1K;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-219dca227c8si410244735ad.496.2025.01.06.02.07.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 02:07:05 -0800 (PST)
Received-SPF: none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-db6b-99e8-3feb-3b4e.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:db6b:99e8:3feb:3b4e] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tUk0j-00000000nTW-2Q0m;
	Mon, 06 Jan 2025 10:07:02 +0000
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
Subject: [usb-storage] [PATCH 05/10] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
Date: Mon,  6 Jan 2025 11:06:18 +0100
Message-ID: <20250106100645.850445-6-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250106100645.850445-1-hch@lst.de>
References: <20250106100645.850445-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=INGW9t1K;
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

When __blk_mq_update_nr_hw_queues changes the number of tag sets, it
might have to disable poll queues.  Currently it does so by adjusting
the BLK_FEAT_POLL, which is a bit against the intent of features that
describe hardware / driver capabilities, but more importantly causes
nasty lock order problems with the broadly held freeze when updating the
number of hardware queues and the limits lock.  Fix this by leaving
BLK_FEAT_POLL alone, and instead check for the number of sets and poll
queues in the bio submission and poll handler.  While this adds extra
work to the fast path, the variables are in cache lines used by these
operations anyway, so it should be cheap enough.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 block/blk-core.c | 14 +++++++++++---
 block/blk-mq.c   | 19 +------------------
 block/blk-mq.h   |  6 ++++++
 3 files changed, 18 insertions(+), 21 deletions(-)

diff --git a/block/blk-core.c b/block/blk-core.c
index 666efe8fa202..483c14a50d9f 100644
--- a/block/blk-core.c
+++ b/block/blk-core.c
@@ -753,6 +753,15 @@ static blk_status_t blk_validate_atomic_write_op_size(struct request_queue *q,
 	return BLK_STS_OK;
 }
 
+static bool bdev_can_poll(struct block_device *bdev)
+{
+	struct request_queue *q = bdev_get_queue(bdev);
+
+	if (queue_is_mq(q))
+		return blk_mq_can_poll(q->tag_set);
+	return q->limits.features & BLK_FEAT_POLL;
+}
+
 /**
  * submit_bio_noacct - re-submit a bio to the block device layer for I/O
  * @bio:  The bio describing the location in memory and on the device.
@@ -805,8 +814,7 @@ void submit_bio_noacct(struct bio *bio)
 		}
 	}
 
-	if (!(q->limits.features & BLK_FEAT_POLL) &&
-			(bio->bi_opf & REQ_POLLED)) {
+	if ((bio->bi_opf & REQ_POLLED) && !bdev_can_poll(bdev)) {
 		bio_clear_polled(bio);
 		goto not_supported;
 	}
@@ -935,7 +943,7 @@ int bio_poll(struct bio *bio, struct io_comp_batch *iob, unsigned int flags)
 		return 0;
 
 	q = bdev_get_queue(bdev);
-	if (cookie == BLK_QC_T_NONE || !(q->limits.features & BLK_FEAT_POLL))
+	if (cookie == BLK_QC_T_NONE || !bdev_can_poll(bdev))
 		return 0;
 
 	blk_flush_plug(current->plug, false);
diff --git a/block/blk-mq.c b/block/blk-mq.c
index 17f10683d640..0a7f059735fa 100644
--- a/block/blk-mq.c
+++ b/block/blk-mq.c
@@ -4321,12 +4321,6 @@ void blk_mq_release(struct request_queue *q)
 	blk_mq_sysfs_deinit(q);
 }
 
-static bool blk_mq_can_poll(struct blk_mq_tag_set *set)
-{
-	return set->nr_maps > HCTX_TYPE_POLL &&
-		set->map[HCTX_TYPE_POLL].nr_queues;
-}
-
 struct request_queue *blk_mq_alloc_queue(struct blk_mq_tag_set *set,
 		struct queue_limits *lim, void *queuedata)
 {
@@ -4336,9 +4330,7 @@ struct request_queue *blk_mq_alloc_queue(struct blk_mq_tag_set *set,
 
 	if (!lim)
 		lim = &default_lim;
-	lim->features |= BLK_FEAT_IO_STAT | BLK_FEAT_NOWAIT;
-	if (blk_mq_can_poll(set))
-		lim->features |= BLK_FEAT_POLL;
+	lim->features |= BLK_FEAT_IO_STAT | BLK_FEAT_NOWAIT | BLK_FEAT_POLL;
 
 	q = blk_alloc_queue(lim, set->numa_node);
 	if (IS_ERR(q))
@@ -5025,8 +5017,6 @@ static void __blk_mq_update_nr_hw_queues(struct blk_mq_tag_set *set,
 fallback:
 	blk_mq_update_queue_map(set);
 	list_for_each_entry(q, &set->tag_list, tag_set_list) {
-		struct queue_limits lim;
-
 		blk_mq_realloc_hw_ctxs(set, q);
 
 		if (q->nr_hw_queues != set->nr_hw_queues) {
@@ -5040,13 +5030,6 @@ static void __blk_mq_update_nr_hw_queues(struct blk_mq_tag_set *set,
 			set->nr_hw_queues = prev_nr_hw_queues;
 			goto fallback;
 		}
-		lim = queue_limits_start_update(q);
-		if (blk_mq_can_poll(set))
-			lim.features |= BLK_FEAT_POLL;
-		else
-			lim.features &= ~BLK_FEAT_POLL;
-		if (queue_limits_commit_update(q, &lim) < 0)
-			pr_warn("updating the poll flag failed\n");
 		blk_mq_map_swqueue(q);
 	}
 
diff --git a/block/blk-mq.h b/block/blk-mq.h
index 89a20fffa4b1..ecd7bd7ec609 100644
--- a/block/blk-mq.h
+++ b/block/blk-mq.h
@@ -111,6 +111,12 @@ static inline struct blk_mq_hw_ctx *blk_mq_map_queue(struct request_queue *q,
 	return ctx->hctxs[blk_mq_get_hctx_type(opf)];
 }
 
+static inline bool blk_mq_can_poll(struct blk_mq_tag_set *set)
+{
+	return set->nr_maps > HCTX_TYPE_POLL &&
+		set->map[HCTX_TYPE_POLL].nr_queues;
+}
+
 /*
  * sysfs helpers
  */
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250106100645.850445-6-hch%40lst.de.
