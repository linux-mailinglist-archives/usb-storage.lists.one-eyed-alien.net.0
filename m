Return-Path: <usb-storage+bncBDUNBGN3R4KRBBGL7W5QMGQEKT43WSY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F02A06DCE
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 06:58:30 +0100 (CET)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-216758c7a13sf1395255ad.3
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 21:58:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736402309; cv=pass;
        d=google.com; s=arc-20240605;
        b=jsjzsaSdlLmJIExQTX8VuN8USlw6ZiB0vlejJ9ZdonMrbd2Nqmod8X7jryM7Zyj4I5
         fdBBLGyVwmRhJiMz3kQvsCMzP50fEe/5aJ0WYC2jWSnRMpXYTQkR6WYpqlnIP5MDyegF
         yMTf3Q4n8/loIAQrnxERwF+BWOiElRlI4TR/rM+tgzrmLYjo+gV0PXqLVT02nl6SvfW9
         uwN0RMnrpXnudkutDrwmA4h/hW6xwvy99D3zGJ6mmvOP9FZUqHPp8JcpzEPN/BqHbMxZ
         /kQxs/aj0vJTwg36gL4f0592H7BV/Vzbae5vUA5h34Zc/f6Lk+XahwJs60+58Hkf0jaH
         rwTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=O1bLN3Et3LNynyB/7/E/m8umel9LIGg7E3PPQYrvslc=;
        fh=VjFD/9eWtUbJ+l0DortrdWSzFN1r5kwVrVsIzP0cLnQ=;
        b=Q0aqNrQX4WUYVJfz661A6SHpShf/BjjtEwBjVL2alU8A8tcdthj286ojKcXjB0+nNK
         4RNw5uKwhXDntRPbVtN1gjqKDamJqg5b7i9L7t5BwtHkKWHvgwgYu6mKRfpVt0F48Fqa
         8qO8MDLO3AGotMqdDdgAHj9sYbZFKgmYXaSWa3X3tEyhSi0W1huIrkOSONUR1NI+WSFy
         JEgqo0383xvgXscyDz/ki90SdV4+ne2gldWMofW10+4H1/6FT9qbv92V42XGLNDQc6qM
         cxhT7+fXE34J2c3/KlSZm+r6Ef2gIK/w6b1CYLhh25klmIZwD85yw+pjHvu2IN3T4Wta
         as5Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=bfpYZOwl;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736402308; x=1737007108; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O1bLN3Et3LNynyB/7/E/m8umel9LIGg7E3PPQYrvslc=;
        b=i833HCsKFmXohvz/V5iTYBzgoZI2tw2rrotB0s3zNBfHglhd/tu3UPW0+/WLf1ChUv
         y6gmtLF9++D/dJVvKRUA1wYx0ztq6M/bRjzRKvdeiAnJ2k8TEsCLpNA03ArKd1SITphF
         Lipv+YEudz9fsQqjvj/2KXCnO16TE+62ALfGg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736402308; x=1737007108;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O1bLN3Et3LNynyB/7/E/m8umel9LIGg7E3PPQYrvslc=;
        b=IowsljXlzry7AmY7bQOIdhLFDiCb/xWDa0/wjqMBc1z3fr1KEaTpahgDm18jo8uT1Q
         pBTaiwK81G1eLtyF9wuKGcGlixGKe0Xcfmw2yt39PCO6QAqb5So1pcX28TEns3ZkTncP
         1iQi8ygeoIYGVCCQU5OSBTbDqtQGIXUJ5440/m53+AvswwLyNZXgNx4fpPhF3wNIop8/
         YtiAFmbHmQFihqbVTRcGPI+Lli23SE8ao9ckNhUcGDksA0Yb6+PumEjo0QAhAUYNdyew
         +fAxVT/S3H30xUF9FP/dlCH6d9b4CIlGcUjl7KwcxvZAdiKhzmFU0nFNxm/taWSOWDoZ
         ETHg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVC/0pQHuqbjnagvNL4zG27rex1UVULbXZD1um+vwdlNZAwXhdfRrC3h6drin4JGAmjE571iQ==@lfdr.de
X-Gm-Message-State: AOJu0YxlHHIZxDDw9SfRY6zob81c+3++d5n+TpdVyWGGTJMi09Os+n09
	UijAakKq1bZljA4rdSBWpcRx5lp09j39rCemevB7Fd7W0AZJDJTZ7R/j6qKUQvw=
X-Google-Smtp-Source: AGHT+IEo6ge3jft3cZ/YqkUje8t8ZIKTihleyi0hIq7NNXgvT0MjsFjagzjg2z/D5hvnGQv0KKCU5w==
X-Received: by 2002:a17:902:da82:b0:212:52b9:156a with SMTP id d9443c01a7336-21a83f4bf8emr31267075ad.6.1736402308672;
        Wed, 08 Jan 2025 21:58:28 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:2282:b0:216:413a:6890 with SMTP id
 d9443c01a7336-21a8d371cfels6537185ad.1.-pod-prod-05-us; Wed, 08 Jan 2025
 21:58:27 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX4PPkFtBnCH3ih12DffV6soy50Rk8qJQEKAUr0ADhdKxQM+tbTsTc/mmegQ22pV8Vxs1QeUj1ql/frMg==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:fc8f:b0:215:787a:f91a with SMTP id d9443c01a7336-21a83fd1e96mr96648125ad.44.1736402307370;
        Wed, 08 Jan 2025 21:58:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736402307; cv=none;
        d=google.com; s=arc-20240605;
        b=TSzql6priFei/7c0Tg2s7l+TfMYXikf9laZZMM8D5CVBVWxFaeZ9Lkkp2JjQMm0vas
         oT5iOTdHbCDdFItm/cNnnF6R1JUnw8d0HmIO04ae0D8LFugSZqjZaWBxJF5UuynJBhT1
         nW7pzCDxrw3lYVPAoJiV1uPLKeODE3iWQ20H45J3yU1LNBcoiFriFMWeNTArZrVqn4kB
         K+VQ3C1yZFiLM/EoPO4D3FtsJbJV5YibPuhy3BmA7tsJMNoiexJcDIJhDX6ylx3ywtMT
         CMyfb8PIaa5RBoU+kx3dWEUk0lVgrvOVWX/QL+yC4GZUDHT7LyUBirZgL6GofXtHHhcH
         pcJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Bbwf1z/EyA9VDPM7cCNiN9DK6U/nUAnzEdDfat2CVGo=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=kxqRcDralbYGsWQcgbJyotGM3VfP5MfH1oDYKS3yFfErqomTBj+IiHtZUZUnOY2O48
         fDLH8l09+vFgioePT55nGU9oYwpx9vcd2bm/dQ1EvcA3q6vW1lEN7MKBxlgf54uvwsl+
         ZaGZpsuWfmBZKpL+4KjyPstxRDX+eJBIytIZ45voWpGuG2D4u5mEiWHrsVs5GEXLseax
         w/ANYzgshJ/C4VhpjE+clG7Ma2wkeb4FEDiYBkK1iXBqUJkTFSA1/lioLHvI/TFdl6bh
         JuhyDgwGYKygB0qCFiRHSub9lihtW6WNDEWG0sSZQc7EbdK8brBJnjkE0lnKpGlel4XX
         E/hg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=bfpYZOwl;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-21a919d36a0si6586745ad.321.2025.01.08.21.58.27
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 21:58:27 -0800 (PST)
Received-SPF: none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-ddeb-cdec-70b9-e2f0.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:ddeb:cdec:70b9:e2f0] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVlYm-0000000ArEU-12Jk;
	Thu, 09 Jan 2025 05:58:24 +0000
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
Subject: [usb-storage] [PATCH 03/11] block: check BLK_FEAT_POLL under q_usage_count
Date: Thu,  9 Jan 2025 06:57:24 +0100
Message-ID: <20250109055810.1402918-4-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250109055810.1402918-1-hch@lst.de>
References: <20250109055810.1402918-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=bfpYZOwl;
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

Otherwise feature reconfiguration can race with I/O submission.

Also drop the bio_clear_polled in the error path, as the flag does not
matter for instant error completions, it is a left over from when we
allowed polled I/O to proceed unpolled in this case.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 block/blk-core.c | 22 ++++++++++++----------
 block/blk-mq.c   | 12 ++++++++++--
 2 files changed, 22 insertions(+), 12 deletions(-)

diff --git a/block/blk-core.c b/block/blk-core.c
index 666efe8fa202..6309b3f5a89d 100644
--- a/block/blk-core.c
+++ b/block/blk-core.c
@@ -629,8 +629,14 @@ static void __submit_bio(struct bio *bio)
 		blk_mq_submit_bio(bio);
 	} else if (likely(bio_queue_enter(bio) == 0)) {
 		struct gendisk *disk = bio->bi_bdev->bd_disk;
-
-		disk->fops->submit_bio(bio);
+	
+		if ((bio->bi_opf & REQ_POLLED) &&
+		    !(disk->queue->limits.features & BLK_FEAT_POLL)) {
+			bio->bi_status = BLK_STS_NOTSUPP;
+			bio_endio(bio);
+		} else {
+			disk->fops->submit_bio(bio);
+		}
 		blk_queue_exit(disk->queue);
 	}
 
@@ -805,12 +811,6 @@ void submit_bio_noacct(struct bio *bio)
 		}
 	}
 
-	if (!(q->limits.features & BLK_FEAT_POLL) &&
-			(bio->bi_opf & REQ_POLLED)) {
-		bio_clear_polled(bio);
-		goto not_supported;
-	}
-
 	switch (bio_op(bio)) {
 	case REQ_OP_READ:
 		break;
@@ -935,7 +935,7 @@ int bio_poll(struct bio *bio, struct io_comp_batch *iob, unsigned int flags)
 		return 0;
 
 	q = bdev_get_queue(bdev);
-	if (cookie == BLK_QC_T_NONE || !(q->limits.features & BLK_FEAT_POLL))
+	if (cookie == BLK_QC_T_NONE)
 		return 0;
 
 	blk_flush_plug(current->plug, false);
@@ -951,7 +951,9 @@ int bio_poll(struct bio *bio, struct io_comp_batch *iob, unsigned int flags)
 	 */
 	if (!percpu_ref_tryget(&q->q_usage_counter))
 		return 0;
-	if (queue_is_mq(q)) {
+	if (!(q->limits.features & BLK_FEAT_POLL)) {
+		ret = 0;
+	} else if (queue_is_mq(q)) {
 		ret = blk_mq_poll(q, cookie, iob, flags);
 	} else {
 		struct gendisk *disk = q->disk;
diff --git a/block/blk-mq.c b/block/blk-mq.c
index 2e6132f778fd..02c9232a8fff 100644
--- a/block/blk-mq.c
+++ b/block/blk-mq.c
@@ -3096,14 +3096,22 @@ void blk_mq_submit_bio(struct bio *bio)
 	}
 
 	/*
-	 * Device reconfiguration may change logical block size, so alignment
-	 * check has to be done with queue usage counter held
+	 * Device reconfiguration may change logical block size or reduce the
+	 * number of poll queues, so the checks for alignment and poll support
+	 * have to be done with queue usage counter held.
 	 */
 	if (unlikely(bio_unaligned(bio, q))) {
 		bio_io_error(bio);
 		goto queue_exit;
 	}
 
+	if ((bio->bi_opf & REQ_POLLED) &&
+	    !(q->limits.features & BLK_FEAT_POLL)) {
+		bio->bi_status = BLK_STS_NOTSUPP;
+		bio_endio(bio);
+		goto queue_exit;
+	}
+
 	bio = __bio_split_to_limits(bio, &q->limits, &nr_segs);
 	if (!bio)
 		goto queue_exit;
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250109055810.1402918-4-hch%40lst.de.
