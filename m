Return-Path: <usb-storage+bncBDUNBGN3R4KRBD6W2HAAMGQENIFFM5A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 596A1AA6AEE
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 08:49:53 +0200 (CEST)
Received: by mail-pg1-x546.google.com with SMTP id 41be03b00d2f7-b16837f1874sf1152328a12.2
        for <lists+usb-storage@lfdr.de>; Thu, 01 May 2025 23:49:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746168592; cv=pass;
        d=google.com; s=arc-20240605;
        b=RtJpg21ZjGJtRvKE82iehMh69FpiWxS2OrxyIkvPxevtbVydyX/6kx3q+3lcFtiQk2
         iJHJqJW30lmFvBhxvSfK5m0xyWeVMVjyQssBpxmdT3RCf0g/HINnafly/krZQAc/CD59
         2pZNpD2WzG62XD9WOzfva8KeIIewci73Dhgj2SqVWqgsEimxh1p+tGm73IOJ4ZF2F/5r
         oQUr7Z+ZNLiqJOEi46WsHiYSF9oY3d6ZhqV71E1SgP/rkP/yc0exj9MOIhE2TzAXWUfq
         rtMUySFIkZpOG8iFAJ1tDBBDLsfpH1+NUOGT3Rd6QFl7Ub+OxVUxnq28zO95m/6Tz56R
         9X9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tNGQN/Yfe7QnfOQJOi10O29C0sIk3jwif2agsi3bsNc=;
        fh=cDrs/ApUf0BFEIQQ1ryKaiK3DTea1nM6peQYan6EATQ=;
        b=QUGELsh+g8eqcNkwBm+I3XgsrB38555goujM1GbWaliPtRuYxzbDnAY3EjX5OsdBnR
         MjGRe859tkx7ibgQqHNZtItECPQZlMWmwaESrN1SNOs6Iq/w3KBnmtA8kb4tWjFhEaBY
         ks41n6opPqAKs98xMVeN9UeC6p5evnr7QeGy+5QFSdBFwW5GP2ZMSFspx/qdGNna0xmD
         eBqF0vh3MWPxY1YfeAcNOAnB3Vl2oI8P/5F34YOvb0JktVT4BhhzwBgMhIPQN3SEjMi5
         Hoc9W1kb49Rix42y7hcDIansIYu4dPvbWTFiT01rHX4Zr3TwW5RACPcTYDytsCVVik6x
         kN1g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=gOLzpXAs;
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746168592; x=1746773392; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tNGQN/Yfe7QnfOQJOi10O29C0sIk3jwif2agsi3bsNc=;
        b=FuTy4wEs38j2bfD7+srATMoJB1SjBumoieuk6U3Ca9SSsTDgsri0z3IT+qFsVa5CR2
         XO8OnA/4bPg1cGLfX6WcdNx3+2VZAbKKhGG20xY+OWYSnKcCnoMsh2XvBQ2mnBKybEaD
         XOGsQxJoyPF12DNOdm7LGTiWgn61eVit5brsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746168592; x=1746773392;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tNGQN/Yfe7QnfOQJOi10O29C0sIk3jwif2agsi3bsNc=;
        b=lMnH1a81if56/xAShV/6StYqAon913KZ37XxjUvNxQTX0llnT99PZqD+dJcShf+gMp
         nm8jtAKMHSU1wKXSFtmLSV8nS4IY0y5A8n1aYNOudSYcu9s4bQloTUZQ4saB4l2kC1Ha
         3V8rqk0BLsBx1aC39k11YqhbZK9LTjZb2dg51Rr1dKW5RSjOSq/3XQjIwTzn9XXEPiq9
         SmsQHmTJfslELZHfoDT8ZlWSnmlPOeIKhDe3n3YXbreYhRUdqkMxuNzKN2hKi255PtD/
         npBO5VRe9UeBKVotH/4v5PKXK2WKtQNSlPVWdMzJRduNoFbw61nAeJLsV6zwcnf8Ov22
         UVBQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW044DZpT7E8XYpRK+kVNN3ZGcJwVqiQiSo3nwYOrKcbscXSsmjbWc+Iw7kpNqD8A01TELrNg==@lfdr.de
X-Gm-Message-State: AOJu0YztuzQ3rOpXafdy/KF0/X2biR4Tl/s+8Ph2/xc516J7plNWk53a
	fdqxhhEK93HmhsCw4hn1KdTo/bS2xoSXbJ26BTjMYX7Ry4gKtdLeMj3ooSKbWIc=
X-Google-Smtp-Source: AGHT+IGPOUZdHvzkM1hZHAzKPe4JBsZ0VZiv8xQt87pKFiQTdaTGO7QHLEsZqSbHK9nsKtpt+89gzQ==
X-Received: by 2002:a17:90b:17c2:b0:30a:255c:9c89 with SMTP id 98e67ed59e1d1-30a4e5bacaamr2691247a91.19.1746168591688;
        Thu, 01 May 2025 23:49:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBG3/rFByQowUcyLfF5JO1FYiBLSSBGc6gK4LdUg/2aqog==
Received: by 2002:a17:90a:d303:b0:301:cdb7:53ba with SMTP id
 98e67ed59e1d1-30a3e74e6dbls75259a91.0.-pod-prod-09-us; Thu, 01 May 2025
 23:49:50 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWJbl/N4cJQEdfNWX0xQVz97mLJP1ukOxc7MWP/9CATLdLiiL4STZ+tJ8ids7J6HEXIuCN9u3zKBJUV+w==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:6f90:b0:1f5:95a7:8159 with SMTP id adf61e73a8af0-20cde952d6cmr2301145637.10.1746168590159;
        Thu, 01 May 2025 23:49:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746168590; cv=none;
        d=google.com; s=arc-20240605;
        b=Q1VqGnSYf2l/c/tmmXIIiB7VF848kHq2aBQT5KmMz5vGK6fTxAbbtHMW+Egwj+GG0n
         5C/QC/HnbMhpT6ORiJ8ZEqgvX2eSRnwtbcINOiEB5byXWUzEV1Ac1uJ5jwWrQNnp6up3
         VnRkrCC9aVRlyBd0LaJhXJdBB1U05G6Ka+wJVrLMGJS14RH0R+P6ej+tRYjwjRTvDUhw
         dRyIxh8NSsKMW2ghmggHoHOVKC5Wl3La0nqtFEYBEU9wKjRWlOp6f7QcA3/569HtTA/c
         hVcrM5w4qtayPa7fCDgVw+cpgkpaEFmh0nSLeODWPTfTNXuzEjVOGPXezxSXVNu0a2WT
         DxWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lnoEImdQYuJ6Bxz2Pqiv3fuac79e18hKKtzQRDifFHI=;
        fh=x2A6uL/apOIfw94ZPPIPls4EhmHGjuKCDF4VgYkQxIs=;
        b=XIGkDjQLawjRyP5Vo7qTMRwQrZ8/OzpiPWXPhnAz0RvdCFGQZuY45bymWee++uBpxH
         Arzc8+f3sXt8ukPOXsSdGFlUxpyLBqKmrGaK5LUu8q+I1fg86YQe6jR92BCRARkWxY4t
         tsy5SlNDKnfsL62dRYyoN3fBr0u7BsPq8rM5WWPfPbi4VQC8pllvvBcY1EDIKpk+ZCCM
         LDXY0QJdrAN2s+FVC2uqslzxnwva4+LcsXrdYx9OUOhLgYwJwv5XA5eChXvNNbxS6OnF
         EW8cJL0MtLTrWjzAqCvmai/QPQtjnrQw7qKO8+BauXQDO1yRJlof/fXCl31AE3776uqq
         q5MA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=gOLzpXAs;
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-b1fb3b68cf5si58156a12.170.2025.05.01.23.49.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 23:49:50 -0700 (PDT)
Received-SPF: none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [185.143.37.16] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAkDT-0000000115u-2UmM;
	Fri, 02 May 2025 06:49:48 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Alan Stern <stern@rowland.harvard.edu>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-block@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-mm@kvack.org
Subject: [usb-storage] [PATCH 6/7] block: remove bounce buffering support
Date: Fri,  2 May 2025 07:49:23 +0100
Message-ID: <20250502064930.2981820-7-hch@lst.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250502064930.2981820-1-hch@lst.de>
References: <20250502064930.2981820-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=gOLzpXAs;
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
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

The block layer bounce buffering support is unused now, remove it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/mips/configs/gcw0_defconfig  |   1 -
 block/Makefile                    |   1 -
 block/blk-map.c                   |   5 +-
 block/blk-mq.c                    |   2 -
 block/blk-settings.c              |   5 -
 block/blk.h                       |  17 --
 block/bounce.c                    | 267 ------------------------------
 include/linux/blk_types.h         |   1 -
 include/linux/blkdev.h            |   5 +-
 include/trace/events/block.h      |  15 --
 include/uapi/linux/blktrace_api.h |   2 +-
 kernel/trace/blktrace.c           |   9 -
 12 files changed, 3 insertions(+), 327 deletions(-)
 delete mode 100644 block/bounce.c

diff --git a/arch/mips/configs/gcw0_defconfig b/arch/mips/configs/gcw0_defconfig
index bc1ef66e3999..8b7ad877e07a 100644
--- a/arch/mips/configs/gcw0_defconfig
+++ b/arch/mips/configs/gcw0_defconfig
@@ -13,7 +13,6 @@ CONFIG_MIPS_CMDLINE_DTB_EXTEND=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 # CONFIG_BLK_DEV_BSG is not set
-# CONFIG_BOUNCE is not set
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_UNIX=y
diff --git a/block/Makefile b/block/Makefile
index 3a941dc0d27f..36033c0f07bc 100644
--- a/block/Makefile
+++ b/block/Makefile
@@ -11,7 +11,6 @@ obj-y		:= bdev.o fops.o bio.o elevator.o blk-core.o blk-sysfs.o \
 			genhd.o ioprio.o badblocks.o partitions/ blk-rq-qos.o \
 			disk-events.o blk-ia-ranges.o early-lookup.o
 
-obj-$(CONFIG_BOUNCE)		+= bounce.o
 obj-$(CONFIG_BLK_DEV_BSG_COMMON) += bsg.o
 obj-$(CONFIG_BLK_DEV_BSGLIB)	+= bsg-lib.o
 obj-$(CONFIG_BLK_CGROUP)	+= blk-cgroup.o
diff --git a/block/blk-map.c b/block/blk-map.c
index d2f22744b3d1..cadbf11b50a3 100644
--- a/block/blk-map.c
+++ b/block/blk-map.c
@@ -556,8 +556,6 @@ int blk_rq_map_user_iov(struct request_queue *q, struct request *rq,
 
 	if (map_data)
 		copy = true;
-	else if (blk_queue_may_bounce(q))
-		copy = true;
 	else if (iov_iter_alignment(iter) & align)
 		copy = true;
 	else if (iov_iter_is_bvec(iter))
@@ -713,8 +711,7 @@ int blk_rq_map_kern(struct request_queue *q, struct request *rq, void *kbuf,
 	if (!len || !kbuf)
 		return -EINVAL;
 
-	if (!blk_rq_aligned(q, addr, len) || object_is_on_stack(kbuf) ||
-	    blk_queue_may_bounce(q))
+	if (!blk_rq_aligned(q, addr, len) || object_is_on_stack(kbuf))
 		bio = bio_copy_kern(q, kbuf, len, gfp_mask, reading);
 	else
 		bio = bio_map_kern(q, kbuf, len, gfp_mask);
diff --git a/block/blk-mq.c b/block/blk-mq.c
index 554380bfd002..714ab6062e94 100644
--- a/block/blk-mq.c
+++ b/block/blk-mq.c
@@ -3098,8 +3098,6 @@ void blk_mq_submit_bio(struct bio *bio)
 		goto new_request;
 	}
 
-	bio = blk_queue_bounce(bio, q);
-
 	/*
 	 * The cached request already holds a q_usage_counter reference and we
 	 * don't have to acquire a new one if we use it.
diff --git a/block/blk-settings.c b/block/blk-settings.c
index 4817e7ca03f8..a000daafbfb4 100644
--- a/block/blk-settings.c
+++ b/block/blk-settings.c
@@ -124,11 +124,6 @@ static int blk_validate_integrity_limits(struct queue_limits *lim)
 		return 0;
 	}
 
-	if (lim->features & BLK_FEAT_BOUNCE_HIGH) {
-		pr_warn("no bounce buffer support for integrity metadata\n");
-		return -EINVAL;
-	}
-
 	if (!IS_ENABLED(CONFIG_BLK_DEV_INTEGRITY)) {
 		pr_warn("integrity support disabled.\n");
 		return -EINVAL;
diff --git a/block/blk.h b/block/blk.h
index 328075787814..ff21f234b62f 100644
--- a/block/blk.h
+++ b/block/blk.h
@@ -443,23 +443,6 @@ static inline void ioc_clear_queue(struct request_queue *q)
 }
 #endif /* CONFIG_BLK_ICQ */
 
-struct bio *__blk_queue_bounce(struct bio *bio, struct request_queue *q);
-
-static inline bool blk_queue_may_bounce(struct request_queue *q)
-{
-	return IS_ENABLED(CONFIG_BOUNCE) &&
-		(q->limits.features & BLK_FEAT_BOUNCE_HIGH) &&
-		max_low_pfn >= max_pfn;
-}
-
-static inline struct bio *blk_queue_bounce(struct bio *bio,
-		struct request_queue *q)
-{
-	if (unlikely(blk_queue_may_bounce(q) && bio_has_data(bio)))
-		return __blk_queue_bounce(bio, q);
-	return bio;
-}
-
 #ifdef CONFIG_BLK_DEV_ZONED
 void disk_init_zone_resources(struct gendisk *disk);
 void disk_free_zone_resources(struct gendisk *disk);
diff --git a/block/bounce.c b/block/bounce.c
deleted file mode 100644
index 09a9616cf209..000000000000
--- a/block/bounce.c
+++ /dev/null
@@ -1,267 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/* bounce buffer handling for block devices
- *
- * - Split from highmem.c
- */
-
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
-
-#include <linux/mm.h>
-#include <linux/export.h>
-#include <linux/swap.h>
-#include <linux/gfp.h>
-#include <linux/bio-integrity.h>
-#include <linux/pagemap.h>
-#include <linux/mempool.h>
-#include <linux/blkdev.h>
-#include <linux/backing-dev.h>
-#include <linux/init.h>
-#include <linux/hash.h>
-#include <linux/highmem.h>
-#include <linux/printk.h>
-#include <asm/tlbflush.h>
-
-#include <trace/events/block.h>
-#include "blk.h"
-#include "blk-cgroup.h"
-
-#define POOL_SIZE	64
-#define ISA_POOL_SIZE	16
-
-static struct bio_set bounce_bio_set, bounce_bio_split;
-static mempool_t page_pool;
-
-static void init_bounce_bioset(void)
-{
-	static bool bounce_bs_setup;
-	int ret;
-
-	if (bounce_bs_setup)
-		return;
-
-	ret = bioset_init(&bounce_bio_set, BIO_POOL_SIZE, 0, BIOSET_NEED_BVECS);
-	BUG_ON(ret);
-
-	ret = bioset_init(&bounce_bio_split, BIO_POOL_SIZE, 0, 0);
-	BUG_ON(ret);
-	bounce_bs_setup = true;
-}
-
-static __init int init_emergency_pool(void)
-{
-	int ret;
-
-#ifndef CONFIG_MEMORY_HOTPLUG
-	if (max_pfn <= max_low_pfn)
-		return 0;
-#endif
-
-	ret = mempool_init_page_pool(&page_pool, POOL_SIZE, 0);
-	BUG_ON(ret);
-	pr_info("pool size: %d pages\n", POOL_SIZE);
-
-	init_bounce_bioset();
-	return 0;
-}
-
-__initcall(init_emergency_pool);
-
-/*
- * Simple bounce buffer support for highmem pages. Depending on the
- * queue gfp mask set, *to may or may not be a highmem page. kmap it
- * always, it will do the Right Thing
- */
-static void copy_to_high_bio_irq(struct bio *to, struct bio *from)
-{
-	struct bio_vec tovec, fromvec;
-	struct bvec_iter iter;
-	/*
-	 * The bio of @from is created by bounce, so we can iterate
-	 * its bvec from start to end, but the @from->bi_iter can't be
-	 * trusted because it might be changed by splitting.
-	 */
-	struct bvec_iter from_iter = BVEC_ITER_ALL_INIT;
-
-	bio_for_each_segment(tovec, to, iter) {
-		fromvec = bio_iter_iovec(from, from_iter);
-		if (tovec.bv_page != fromvec.bv_page) {
-			/*
-			 * fromvec->bv_offset and fromvec->bv_len might have
-			 * been modified by the block layer, so use the original
-			 * copy, bounce_copy_vec already uses tovec->bv_len
-			 */
-			memcpy_to_bvec(&tovec, page_address(fromvec.bv_page) +
-				       tovec.bv_offset);
-		}
-		bio_advance_iter(from, &from_iter, tovec.bv_len);
-	}
-}
-
-static void bounce_end_io(struct bio *bio)
-{
-	struct bio *bio_orig = bio->bi_private;
-	struct bio_vec *bvec, orig_vec;
-	struct bvec_iter orig_iter = bio_orig->bi_iter;
-	struct bvec_iter_all iter_all;
-
-	/*
-	 * free up bounce indirect pages used
-	 */
-	bio_for_each_segment_all(bvec, bio, iter_all) {
-		orig_vec = bio_iter_iovec(bio_orig, orig_iter);
-		if (bvec->bv_page != orig_vec.bv_page) {
-			dec_zone_page_state(bvec->bv_page, NR_BOUNCE);
-			mempool_free(bvec->bv_page, &page_pool);
-		}
-		bio_advance_iter(bio_orig, &orig_iter, orig_vec.bv_len);
-	}
-
-	bio_orig->bi_status = bio->bi_status;
-	bio_endio(bio_orig);
-	bio_put(bio);
-}
-
-static void bounce_end_io_write(struct bio *bio)
-{
-	bounce_end_io(bio);
-}
-
-static void bounce_end_io_read(struct bio *bio)
-{
-	struct bio *bio_orig = bio->bi_private;
-
-	if (!bio->bi_status)
-		copy_to_high_bio_irq(bio_orig, bio);
-
-	bounce_end_io(bio);
-}
-
-static struct bio *bounce_clone_bio(struct bio *bio_src)
-{
-	struct bvec_iter iter;
-	struct bio_vec bv;
-	struct bio *bio;
-
-	/*
-	 * Pre immutable biovecs, __bio_clone() used to just do a memcpy from
-	 * bio_src->bi_io_vec to bio->bi_io_vec.
-	 *
-	 * We can't do that anymore, because:
-	 *
-	 *  - The point of cloning the biovec is to produce a bio with a biovec
-	 *    the caller can modify: bi_idx and bi_bvec_done should be 0.
-	 *
-	 *  - The original bio could've had more than BIO_MAX_VECS biovecs; if
-	 *    we tried to clone the whole thing bio_alloc_bioset() would fail.
-	 *    But the clone should succeed as long as the number of biovecs we
-	 *    actually need to allocate is fewer than BIO_MAX_VECS.
-	 *
-	 *  - Lastly, bi_vcnt should not be looked at or relied upon by code
-	 *    that does not own the bio - reason being drivers don't use it for
-	 *    iterating over the biovec anymore, so expecting it to be kept up
-	 *    to date (i.e. for clones that share the parent biovec) is just
-	 *    asking for trouble and would force extra work.
-	 */
-	bio = bio_alloc_bioset(bio_src->bi_bdev, bio_segments(bio_src),
-			       bio_src->bi_opf, GFP_NOIO, &bounce_bio_set);
-	if (bio_flagged(bio_src, BIO_REMAPPED))
-		bio_set_flag(bio, BIO_REMAPPED);
-	bio->bi_ioprio		= bio_src->bi_ioprio;
-	bio->bi_write_hint	= bio_src->bi_write_hint;
-	bio->bi_iter.bi_sector	= bio_src->bi_iter.bi_sector;
-	bio->bi_iter.bi_size	= bio_src->bi_iter.bi_size;
-
-	switch (bio_op(bio)) {
-	case REQ_OP_DISCARD:
-	case REQ_OP_SECURE_ERASE:
-	case REQ_OP_WRITE_ZEROES:
-		break;
-	default:
-		bio_for_each_segment(bv, bio_src, iter)
-			bio->bi_io_vec[bio->bi_vcnt++] = bv;
-		break;
-	}
-
-	if (bio_crypt_clone(bio, bio_src, GFP_NOIO) < 0)
-		goto err_put;
-
-	if (bio_integrity(bio_src) &&
-	    bio_integrity_clone(bio, bio_src, GFP_NOIO) < 0)
-		goto err_put;
-
-	bio_clone_blkg_association(bio, bio_src);
-
-	return bio;
-
-err_put:
-	bio_put(bio);
-	return NULL;
-}
-
-struct bio *__blk_queue_bounce(struct bio *bio_orig, struct request_queue *q)
-{
-	struct bio *bio;
-	int rw = bio_data_dir(bio_orig);
-	struct bio_vec *to, from;
-	struct bvec_iter iter;
-	unsigned i = 0, bytes = 0;
-	bool bounce = false;
-	int sectors;
-
-	bio_for_each_segment(from, bio_orig, iter) {
-		if (i++ < BIO_MAX_VECS)
-			bytes += from.bv_len;
-		if (PageHighMem(from.bv_page))
-			bounce = true;
-	}
-	if (!bounce)
-		return bio_orig;
-
-	/*
-	 * Individual bvecs might not be logical block aligned. Round down
-	 * the split size so that each bio is properly block size aligned,
-	 * even if we do not use the full hardware limits.
-	 */
-	sectors = ALIGN_DOWN(bytes, queue_logical_block_size(q)) >>
-			SECTOR_SHIFT;
-	if (sectors < bio_sectors(bio_orig)) {
-		bio = bio_split(bio_orig, sectors, GFP_NOIO, &bounce_bio_split);
-		bio_chain(bio, bio_orig);
-		submit_bio_noacct(bio_orig);
-		bio_orig = bio;
-	}
-	bio = bounce_clone_bio(bio_orig);
-
-	/*
-	 * Bvec table can't be updated by bio_for_each_segment_all(),
-	 * so retrieve bvec from the table directly. This way is safe
-	 * because the 'bio' is single-page bvec.
-	 */
-	for (i = 0, to = bio->bi_io_vec; i < bio->bi_vcnt; to++, i++) {
-		struct page *bounce_page;
-
-		if (!PageHighMem(to->bv_page))
-			continue;
-
-		bounce_page = mempool_alloc(&page_pool, GFP_NOIO);
-		inc_zone_page_state(bounce_page, NR_BOUNCE);
-
-		if (rw == WRITE) {
-			flush_dcache_page(to->bv_page);
-			memcpy_from_bvec(page_address(bounce_page), to);
-		}
-		to->bv_page = bounce_page;
-	}
-
-	trace_block_bio_bounce(bio_orig);
-
-	bio->bi_flags |= (1 << BIO_BOUNCED);
-
-	if (rw == READ)
-		bio->bi_end_io = bounce_end_io_read;
-	else
-		bio->bi_end_io = bounce_end_io_write;
-
-	bio->bi_private = bio_orig;
-	return bio;
-}
diff --git a/include/linux/blk_types.h b/include/linux/blk_types.h
index dce7615c35e7..5a46067e85b1 100644
--- a/include/linux/blk_types.h
+++ b/include/linux/blk_types.h
@@ -286,7 +286,6 @@ struct bio {
 enum {
 	BIO_PAGE_PINNED,	/* Unpin pages in bio_release_pages() */
 	BIO_CLONED,		/* doesn't own data */
-	BIO_BOUNCED,		/* bio is a bounce bio */
 	BIO_QUIET,		/* Make BIO Quiet */
 	BIO_CHAIN,		/* chained bio, ->bi_remaining in effect */
 	BIO_REFFED,		/* bio has elevated ->bi_cnt */
diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
index f3d74f9dae8e..5ccb961ee2ae 100644
--- a/include/linux/blkdev.h
+++ b/include/linux/blkdev.h
@@ -331,9 +331,6 @@ typedef unsigned int __bitwise blk_features_t;
 /* skip this queue in blk_mq_(un)quiesce_tagset */
 #define BLK_FEAT_SKIP_TAGSET_QUIESCE	((__force blk_features_t)(1u << 13))
 
-/* bounce all highmem pages */
-#define BLK_FEAT_BOUNCE_HIGH		((__force blk_features_t)(1u << 14))
-
 /* undocumented magic for bcache */
 #define BLK_FEAT_RAID_PARTIAL_STRIPES_EXPENSIVE \
 	((__force blk_features_t)(1u << 15))
@@ -347,7 +344,7 @@ typedef unsigned int __bitwise blk_features_t;
  */
 #define BLK_FEAT_INHERIT_MASK \
 	(BLK_FEAT_WRITE_CACHE | BLK_FEAT_FUA | BLK_FEAT_ROTATIONAL | \
-	 BLK_FEAT_STABLE_WRITES | BLK_FEAT_ZONED | BLK_FEAT_BOUNCE_HIGH | \
+	 BLK_FEAT_STABLE_WRITES | BLK_FEAT_ZONED | \
 	 BLK_FEAT_RAID_PARTIAL_STRIPES_EXPENSIVE)
 
 /* internal flags in queue_limits.flags */
diff --git a/include/trace/events/block.h b/include/trace/events/block.h
index bd0ea07338eb..ad36e73b8579 100644
--- a/include/trace/events/block.h
+++ b/include/trace/events/block.h
@@ -360,21 +360,6 @@ DECLARE_EVENT_CLASS(block_bio,
 		  __entry->nr_sector, __entry->comm)
 );
 
-/**
- * block_bio_bounce - used bounce buffer when processing block operation
- * @bio: block operation
- *
- * A bounce buffer was used to handle the block operation @bio in @q.
- * This occurs when hardware limitations prevent a direct transfer of
- * data between the @bio data memory area and the IO device.  Use of a
- * bounce buffer requires extra copying of data and decreases
- * performance.
- */
-DEFINE_EVENT(block_bio, block_bio_bounce,
-	TP_PROTO(struct bio *bio),
-	TP_ARGS(bio)
-);
-
 /**
  * block_bio_backmerge - merging block operation to the end of an existing operation
  * @bio: new block operation to merge
diff --git a/include/uapi/linux/blktrace_api.h b/include/uapi/linux/blktrace_api.h
index 690621b610e5..1bfb635e309b 100644
--- a/include/uapi/linux/blktrace_api.h
+++ b/include/uapi/linux/blktrace_api.h
@@ -49,7 +49,7 @@ enum blktrace_act {
 	__BLK_TA_UNPLUG_TIMER,		/* queue was unplugged by timer */
 	__BLK_TA_INSERT,		/* insert request */
 	__BLK_TA_SPLIT,			/* bio was split */
-	__BLK_TA_BOUNCE,		/* bio was bounced */
+	__BLK_TA_BOUNCE,		/* unused, was: bio was bounced */
 	__BLK_TA_REMAP,			/* bio was remapped */
 	__BLK_TA_ABORT,			/* request aborted */
 	__BLK_TA_DRV_DATA,		/* driver-specific binary data */
diff --git a/kernel/trace/blktrace.c b/kernel/trace/blktrace.c
index 3679a6d18934..d5f36f415d9d 100644
--- a/kernel/trace/blktrace.c
+++ b/kernel/trace/blktrace.c
@@ -893,11 +893,6 @@ static void blk_add_trace_bio(struct request_queue *q, struct bio *bio,
 	rcu_read_unlock();
 }
 
-static void blk_add_trace_bio_bounce(void *ignore, struct bio *bio)
-{
-	blk_add_trace_bio(bio->bi_bdev->bd_disk->queue, bio, BLK_TA_BOUNCE, 0);
-}
-
 static void blk_add_trace_bio_complete(void *ignore,
 				       struct request_queue *q, struct bio *bio)
 {
@@ -1089,8 +1084,6 @@ static void blk_register_tracepoints(void)
 	WARN_ON(ret);
 	ret = register_trace_block_rq_complete(blk_add_trace_rq_complete, NULL);
 	WARN_ON(ret);
-	ret = register_trace_block_bio_bounce(blk_add_trace_bio_bounce, NULL);
-	WARN_ON(ret);
 	ret = register_trace_block_bio_complete(blk_add_trace_bio_complete, NULL);
 	WARN_ON(ret);
 	ret = register_trace_block_bio_backmerge(blk_add_trace_bio_backmerge, NULL);
@@ -1125,7 +1118,6 @@ static void blk_unregister_tracepoints(void)
 	unregister_trace_block_bio_frontmerge(blk_add_trace_bio_frontmerge, NULL);
 	unregister_trace_block_bio_backmerge(blk_add_trace_bio_backmerge, NULL);
 	unregister_trace_block_bio_complete(blk_add_trace_bio_complete, NULL);
-	unregister_trace_block_bio_bounce(blk_add_trace_bio_bounce, NULL);
 	unregister_trace_block_rq_complete(blk_add_trace_rq_complete, NULL);
 	unregister_trace_block_rq_requeue(blk_add_trace_rq_requeue, NULL);
 	unregister_trace_block_rq_merge(blk_add_trace_rq_merge, NULL);
@@ -1462,7 +1454,6 @@ static const struct {
 	[__BLK_TA_UNPLUG_TIMER]	= {{ "UT", "unplug_timer" }, blk_log_unplug },
 	[__BLK_TA_INSERT]	= {{  "I", "insert" },	   blk_log_generic },
 	[__BLK_TA_SPLIT]	= {{  "X", "split" },	   blk_log_split },
-	[__BLK_TA_BOUNCE]	= {{  "B", "bounce" },	   blk_log_generic },
 	[__BLK_TA_REMAP]	= {{  "A", "remap" },	   blk_log_remap },
 };
 
-- 
2.47.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250502064930.2981820-7-hch%40lst.de.
