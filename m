Return-Path: <usb-storage+bncBDUNBGN3R4KRBEHJQK6AMGQEIP2HJ4I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 75198A086D4
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 06:48:02 +0100 (CET)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-216717543b7sf43585545ad.0
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 21:48:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736488081; cv=pass;
        d=google.com; s=arc-20240605;
        b=D5+xSXAjTmqUFW9Lc6vwadOJi/9RWcBtz9KXtOpqFllAawirfK65IkQPZAIS+fb88h
         eTCVC4VGIpaFldbYHFJ0O6MRxVGWttC2CUTQcS8l7AfBwuTUlcIhcEnbMDJbRUV6jf1f
         5mPQLISg/vjoOzxdn7BLKlT7qHq8cDib76gxfdPSVzsgzRuJ4YZgLuwUBSf6eEHduGwd
         k+GrBEHW1Kpc35QqbZvJ1CMr5Dai/ZCHSDhAiBGociNMgO+blumYLvxWcmTX5KmTQi3W
         kWnwkZq2fc/tJzyjtv9Yo+0BcakEsu1QQFJS2g+Tyh0SSdFZdtN++BGyoHAfGHSVGW4m
         mDzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eRPOJNBeo9Jm2F35jqdR/1E7f/kdIkCuUHU7S/mqj/s=;
        fh=s9FUNB5lTO3cjTpoS2Vzxwk84r9bVQ3gD7YJXSb6BNg=;
        b=aaX0tjyR21JqoibwTphn6SBbAGFj05H7WujshY/RM4CeiG3Hhu67zKN/HtAeu1jmno
         ZQpFf3s8LGTkIeFAVyDGV9hP/ZJTL51d7hyStrfazo4rNOHLy42Q//zJp0itrw5Thmwj
         yVQfkHtObCSUgQVJrureTrWq3AwaBk8715S7YDDk354ChYkMW7JRS5Vj4fteIVyy/PZc
         Kedhl3FS33Cn30nGXuGz6qhrp3rjChexqtzdokpQcLulm9XPdvbCQH6xYSYdELX0AgUj
         4ucymmRxLAJuQKFmPGN8v38zV9ZSYdA6BhA3XNcp1jGpJGRir7YzdbBFtNbJM+NWJKdm
         g6tg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=xXxPJBUy;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736488081; x=1737092881; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eRPOJNBeo9Jm2F35jqdR/1E7f/kdIkCuUHU7S/mqj/s=;
        b=ZYASacRdjF8L2vQ7bZ2ZulagAgW/VIkkrD0R3SCURqWl/g+nbUxKksjO7yMqF1+Vr3
         pfTIGB5/wKWEuDyZFDg+H2tV9FUAAtTkPoKtqsepHFi/hEIBJy8Xb0MeFAL1N1zQVBhn
         x6KDNct30lVKtS95gem45uPDq4Cnqt6jr2MTo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736488081; x=1737092881;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eRPOJNBeo9Jm2F35jqdR/1E7f/kdIkCuUHU7S/mqj/s=;
        b=ZHU66MvybAK/rlPXzx/k17xMrej7P9eh3XFJm9669+JD4X2JM3HEtaaeKY1V/u/XQy
         L2Oa78he2sp8sm8s2m1t+2qpEcbgeqNq8AhFIMdKMgk1oXOx4iCC2jQQ535QY2fpjg99
         Qv+hcbvWSMcuAS10AU3d1UbHr2KskdSnNY4gLUjvo5lzG63EOQEDksddlRSOSsmVR5jl
         Ek0aqD1YGp4C2351OMbyyZKZEwXGrzbW0QZLgoL3et2I9+598gUdWs+a3Znnc2ObAb1R
         NcMEJmuVb3VxHncfy3FPIwMnkuWMJIzmD5YUoIS697oYHPZHDVpS3NPltIjIqykRiQH2
         Iaqw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUkyovYf+a3CjSgdvewTNLhElUMla8qTaSL6KgQCRSN0EfYB0MnCMSVduK83HklKo7V83jZPg==@lfdr.de
X-Gm-Message-State: AOJu0Yy85fsnP3UgIfeFaIzU6zlAXCfYT+wPMkHIqEq73sGfLe2XSZdI
	04v3bsrgY5ki9dsT/iwAbYb/l8tgDgo7KeTticR7smgQ6t6axvk1pu67T/8Myag=
X-Google-Smtp-Source: AGHT+IE9lsqyGN/ad1ig8M/oym+2hG1P1ixz7/hcOwg0tIC+QEo8blwoBRh0jUeGBgHPsTyAzE31iQ==
X-Received: by 2002:a17:902:dac6:b0:216:4a8a:2665 with SMTP id d9443c01a7336-21a84012a17mr144811645ad.50.1736488080993;
        Thu, 09 Jan 2025 21:48:00 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:183:b0:216:2bd7:1c48 with SMTP id
 d9443c01a7336-21a8d32f788ls16650315ad.2.-pod-prod-06-us; Thu, 09 Jan 2025
 21:47:59 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVmwh6krEbZz3huW/tlJNp2vFwi83soHB7tBjS5OUTK+3RLRZudDKGgUcc5Os5GMTy8NFQJqcF06YQv5A==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:dac6:b0:216:4a8a:2665 with SMTP id d9443c01a7336-21a84012a17mr144810855ad.50.1736488079643;
        Thu, 09 Jan 2025 21:47:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736488079; cv=none;
        d=google.com; s=arc-20240605;
        b=QI/8mjUqKRg9MR5QKaV6TaP11ij5K8xA4fVT+2OfOuoRmYERNPDA7TBjoOOOVsWulK
         QSGDm3DCZ6QGT6RXW6VL6GtSivI2qUO0gH2N1C9f6mHtJc/ZvyZXsa0KjIVkEk+BmC+I
         X89cGNxLdAMM6ew981o8oNiT1V7hjBtf7u/tio5xy39b/9VWTjYhPK3LClOjNiqKQ46G
         PJzCEbssKtPpFQwtUSE7Pipxvv7TVUJPL7uQjKGKrPZgwAdJz2BS7z1H+aAaBjtsDlzI
         rC3KR9IT9bbSzj7KftwLvFwrWkjPTnwIF2AtVJKkgpHTNuLJOdtmzSs+k8t0viugndso
         KpMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XXeZfDK7dJVOyTo0xukyM87qHprt43czTsxZpCM1/Ns=;
        fh=K4mYBT/f9uT4NDiXg9vO0QvGda7RTqDR2brfxQ7Fzow=;
        b=bEtT+pxZBgPKFEKNA6buOmgy+SLC+vZYftriPDhFcErU2JsoOdVtX8KR+1KyDLpBwI
         73pGgc3FGPqH4lAEzUDC3U4q+47l/YzghEC6nPdTttqKIYvJi3mZG4q9ss8Y7MLp5JUh
         ArkRFcgYrgOBIXkZ0KhZPDtWmzf6ySbcEySJWOG29kBxRZBnMz//wrIfIDZl/amkQiXx
         7URcECl9/Q2g6LRL2IwgrJw3Hopr37httbmoYT8CnyrTiKKwjZFzca2zSpG0n4LcKO3G
         5E5Tw0dD267djxQBivnJ9aUd0K8dJ3pidUsDUyBFDJfFLUmmUjANs2H+4wpWzDi/FM0B
         1Upg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=xXxPJBUy;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-21a919d2455si32998725ad.310.2025.01.09.21.47.59
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 21:47:59 -0800 (PST)
Received-SPF: none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-76c3-a3dc-14f6-94e8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:76c3:a3dc:14f6:94e8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tW7sC-0000000E54X-3y9C;
	Fri, 10 Jan 2025 05:47:57 +0000
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
Subject: [usb-storage] [PATCH 11/11] loop: fix queue freeze vs limits lock order
Date: Fri, 10 Jan 2025 06:47:19 +0100
Message-ID: <20250110054726.1499538-12-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250110054726.1499538-1-hch@lst.de>
References: <20250110054726.1499538-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=xXxPJBUy;
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

Match the locking order used by the core block code by only freezing
the queue after taking the limits lock using the
queue_limits_commit_update_frozen helper and document the callers that
do not freeze the queue at all.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250110054726.1499538-12-hch%40lst.de.
