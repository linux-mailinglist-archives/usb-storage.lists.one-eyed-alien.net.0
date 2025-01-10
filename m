Return-Path: <usb-storage+bncBDUNBGN3R4KRB7HIQK6AMGQEZ3GTW4Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id 155F4A086C3
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 06:47:42 +0100 (CET)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-2f46b7851fcsf4935343a91.1
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 21:47:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736488060; cv=pass;
        d=google.com; s=arc-20240605;
        b=gyVsDcV4o6KQiR027yP37TTWFIEE1ZVOLe5P5Cjc834KthRurWUhq98r14CLxWc1SL
         3P+MeZhMd11xSHhMrdYicLBl4UpFOg68WZ+3McAVWr9GTs7RfrmvFumcOtIM4i4LcH6K
         QOPxCv8//z+hFC6XYOQrmNvi+qvDmstF23ujbN3Vvflu1KkiMGcucTfkBpu1NS4DapsS
         aANQIjfoTIFAfnrwUIetif90qk4I3JhzI2JaeHGZHi6sk2364HAn3vRvKjKJnnMJq/3T
         miONCjJvzfT1bOGU6gzEPlYZUFVoPbiYyOHQvWDp0Ui/9xcpnNDitdDa0puLmgMg4ckH
         qj7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=euCpjYsyKoax3dOvQNSNwFyBHdf8k3gzxwZK7T+LtaI=;
        fh=lVG5DnllE/Ka5M3H1zKXC6vhtbvG1pUobOlANb7WM0g=;
        b=gL4IwLE++XQluTf9H1f7iJtdgcxJLqKU6I0ka+VRcP+ABimjugG+CwlpYy6Zs5QcTh
         bcvKXrV3Y2++oM5Y+/ilOpPx+BXkp+ft3KrXdv1hCCEtL/M08cqf89gJ8wIAC/YzWyxU
         TX02dcbJsQ5KXVR3z6KGGZ0tWOxrrbkszc90Ek3LS1L3ALa46iqxnS0JOUXTMrjv1PVZ
         HK7w4kwooKD624NXTUVoYTU6jafROitwqVDkFt4y9B6dHpPghFBaABnyTpxcM5bAi+7l
         RdKZaOVSj5rj6VMDegpsBvpPdPNGDrjqfZoYOg8q4Hf9wwe/yQ5a1wD9fcYo8sufYagT
         RQag==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=oQ0Mhq31;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736488060; x=1737092860; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=euCpjYsyKoax3dOvQNSNwFyBHdf8k3gzxwZK7T+LtaI=;
        b=EiQXYIX8xa5SvaBHOmJ5xnM5o+mFCkfYjQ6HfyYJ/9i0rFKqDZ4ZVJNjA5Y3X6cvSE
         bSIzpzPgcL3x6ZQsUpT3I5Lur3w4nMHsEBmQ17uWr6QwNewIzlH55kmQHmEYvg0vGPaA
         w7CKxxaPA63LkRCYaWkGmBATnZaKAfUFsCUNU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736488060; x=1737092860;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=euCpjYsyKoax3dOvQNSNwFyBHdf8k3gzxwZK7T+LtaI=;
        b=vTkk2R4/1mJd4rDmKtIpecvQuXd9nDLsYHiU4q7qxZjZFjfE/vxrAQzdTzq1BTUzJI
         3PX8MvsB4VVBoR7i7g/z3j9b8sZmatBeeCvc8j8/jvp+uJWu/syJ+rgPHAFyn6kfZWUf
         NZz8FyQLJroXaJSZJRla/9jc+NQi373TcQpF9wcKA1g/CPQxHlqQW4awHA1B/4huWHU4
         13PMkvMg8CZmEUqIiYYK4mqKTgTsfx/oE+xumWPQeTg/+QSvimVorI8+gwwFm3Kyzk34
         K9juUp+XyeMQm4sxcbaMge67N56LELnTgcLKFwd4HNuzcCe4EHHxQPcPzMtCkW0pxDOY
         cMlg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVhxT4JEN4hXkd7mj1fiS838VM+ritagvsegtqMITNVL4LJ/JagjqWqYJFeKq2PCGNBqGyJUQ==@lfdr.de
X-Gm-Message-State: AOJu0YxlGR+WuiswaqIdD3+6uYrTYs2B0BjYLhMLplCYZ00crgytYupU
	+lc9bqCRVwxK2xurhJ10g6t3a8xXS3GBp6fS0Wx8EYQIj8mQKK+CFtAhTD8vn/s=
X-Google-Smtp-Source: AGHT+IHREeE8fSQWFM3zW+1nADCKq9wE1yqf/CURSJpTCiIJz9/wkFpRDSlOo2OPeVmXhQqryDst5w==
X-Received: by 2002:a05:6a00:1ca1:b0:72a:8b8f:a0f1 with SMTP id d2e1a72fcca58-72d21fd29eemr14486269b3a.20.1736488060581;
        Thu, 09 Jan 2025 21:47:40 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:85d3:0:b0:725:ef94:738a with SMTP id d2e1a72fcca58-72d2fc24afdls1566506b3a.1.-pod-prod-03-us;
 Thu, 09 Jan 2025 21:47:39 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVJIWTiCpyrirGBVNoefvC5po/HaWXq68L9/Dy1iiee0jLzfR9XjpTogRPHgB0kUIxtqnwHXyh9vsDp8Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a00:39a7:b0:725:eb85:f7f7 with SMTP id d2e1a72fcca58-72d21f17c7emr13856978b3a.5.1736488059182;
        Thu, 09 Jan 2025 21:47:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736488059; cv=none;
        d=google.com; s=arc-20240605;
        b=I7W6M8gjDmams5JKDmmwluW1TBYayZOIccw3BeEDOSttgx00W5Rn3M2ggIEoZkNJkx
         Kq7/HLby01W4F1RZmnzVsDihgvdThjpgepx8OUZvJQffbA6aLdWjQTyVWYKcY/r6tBrw
         gq6t7cjt6CtkY+BEhLXtWW5ahfFOvtmzhUe66UHBU3tPS4T0hhadPRuMVLqThrEx8/Ve
         TjQL4W3NG3dZ6eZPQ6UXwKaIHjsBL8tMsJfNJ4bbZAsfEsVP5eWcdLr1onGZr6d4pMEK
         mC0UYqxXGHh5S6iAPKPMxaG21KObwdW9c7IpoQWzagLUnUL+9R8us8t4WIm0C7uAGGZD
         fRwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wuYCDXr/G4XgzRQPqSqOujzw3aSAK/mWsWmkoaX3Jhg=;
        fh=/m2OPpCCAPjtAUybek9wd47qrlXb9aknJp6nOuc7Pu8=;
        b=FpaaUlt7xSSO5MtJA+bSpl1757DPCSGGpxt36kAHjtnLAk2qNgDfhq8+mb6Ku8sjys
         U5vTuRwrYCSK9P2Uo1I//7fBMJ6BaoZeG9d/vtTLlwHGjczNYVN8ShRol7Om//W3bOkO
         B8Zb50CsjJD751CxCqVFb33M/BqoB6m7prHspBVecVuuifbtjcIEbc8dru2U9zYqGwny
         6LLeSLdvyFlhx4aiviOPTWjbskpiINk+lwyflMZMf3rMO0EaM72lEbNUnW6fj1jjfgZ6
         /XCjSQJhO+zi0jmZWklGflwqdGOw6dUMeXg+oPinuvkPE4bxd47pcGujjCbe+7t0MV/y
         FFXw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=oQ0Mhq31;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d2e1a72fcca58-72d406ad053si1406976b3a.170.2025.01.09.21.47.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 21:47:39 -0800 (PST)
Received-SPF: none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-76c3-a3dc-14f6-94e8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:76c3:a3dc:14f6:94e8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tW7rs-0000000E4uZ-2Qcb;
	Fri, 10 Jan 2025 05:47:37 +0000
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
	"Martin K . Petersen" <martin.petersen@oracle.com>
Subject: [usb-storage] [PATCH 03/11] block: check BLK_FEAT_POLL under q_usage_count
Date: Fri, 10 Jan 2025 06:47:11 +0100
Message-ID: <20250110054726.1499538-4-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250110054726.1499538-1-hch@lst.de>
References: <20250110054726.1499538-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=oQ0Mhq31;
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

Otherwise feature reconfiguration can race with I/O submission.

Also drop the bio_clear_polled in the error path, as the flag does not
matter for instant error completions, it is a left over from when we
allowed polled I/O to proceed unpolled in this case.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250110054726.1499538-4-hch%40lst.de.
