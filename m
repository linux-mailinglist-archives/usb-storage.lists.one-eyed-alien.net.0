Return-Path: <usb-storage+bncBDUNBGN3R4KRBE6L7W5QMGQEY5P3Y2A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id 685FBA06DD9
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 06:58:45 +0100 (CET)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-2f129f7717fsf1093978a91.0
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 21:58:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736402324; cv=pass;
        d=google.com; s=arc-20240605;
        b=a+MUmNG5MMzXPGOM7CoVHitEx0nOqC5uToqF/ZCTjwzSYjIMBJvPSEkDkZWSBlLr6t
         mWpNjD4ka/R+uu2pHNQ0t881uVrvmlgRRLgkbj/la8KgkJ9KA5bzGNXuE5eX02u5M2ny
         ZXO2tqNhRxZAPWHFv7ABAlvdTdQ0fZCjUHD7uMpBxgVkTIUjUplQ/lf55vJzAJ7uSU+K
         nK3DOGRMd18BP/zCLEK85bvZEtxj1T9QZ22pzThSvAW+qv7ch8K8q8F4/UfWQbDneGFI
         70RQrLZvV6aJtmrubT7x1abHuIZ8j+z16M4+bHbpQg8BPWugQ5qfXXJNTImOl3oPDXvA
         s15Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xXUmOvtNKIHjTke66VCMO5w5dPux1Gd42y2HWYNCRSg=;
        fh=hJdEeV25966XpxsqQWdy9IMWucmU7PeBPKRZd58s+uw=;
        b=NTZPszjnQVNN1BzMiTArmQ2oTBCjzZ32b0FSVS6HmsBfxef0K0zBx0CC2cKyaS9zBI
         ioWX3qnZuHzN8vms+fO7IpSVdrdHaPBWYo4oWNFYkJIvJmCq3vM9olkwEIuMbib3HQs9
         As3IpytLQI0n+TcNy9jHuzhmG9XawpoM7tR08LbRfTlYIadJfUCIyqYcpPbPUCiZPdzj
         EQ6+1PAkD/EElK+CpIi44MF0p758q8f9+1TGg4AUG0SFLuM3/hMu/P+8WHQtrSKzuBti
         0QBGgNNE+HedPfmBgy7ZPEdWe+oAa1A++c+K6moolTNwc+CsMOuzvvAMpOJXlc5ytPc/
         F8mg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=ZhTuH3o0;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736402324; x=1737007124; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xXUmOvtNKIHjTke66VCMO5w5dPux1Gd42y2HWYNCRSg=;
        b=COGP86arqt6ADwaduVHT97Ylk/ceSPau5P9tptGbdYsriAMuYmA0Cbxt64SJ7UMi/9
         ip4MyRDBrNV5R9FNEvFbM7eizlYDkXdZdpRT5LqkNn1sBedeenqd8nOh+lxWPOzorzA2
         Bnl80HhH6y8qMbvGS6hwnhJOcumZqis5fQUBk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736402324; x=1737007124;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xXUmOvtNKIHjTke66VCMO5w5dPux1Gd42y2HWYNCRSg=;
        b=rr/wcOQ8wvjq2bcyWaHXqko0YNWccXBB1LUhks4td61nMdf+85vVKZkmRqSeGRTcGY
         c36OMzpvkzuU4rWC2pLVifDAzo02vq7G6xX770K9LzaUFQFTFEa22sjB8pmJL9yhrlb6
         JAEx60y6PINE83lWTz1xn0x/QMbLX2lgjhff6TncuysQGZMi3qsi8gOJ74RL6sE/dq5R
         oJi0/rbdVLvdoOF7fPW02fAoNuHCVS9ydKTQWg0boIZ7I+GiK5HZzlJZbWsgaYuxCHdI
         fbmSTTB0UiL6dfhW1UYDnRUdS9le+n6xxSS1BY0YUemM8Pj9Htu3oFcNyD+3YX+Cuskk
         KShg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXs5PVriDPWM5U7kLDkIbEyExMb3JaEOLfZvi8VcJ0ZH1oJFQPToze0JWQ9RFaHE44fxGxJ2g==@lfdr.de
X-Gm-Message-State: AOJu0YzPHJ4zb5NTATXlbxPvOoDeeKMN2RwRzDUzA/d5zymlo7ed88RB
	ac9IEda8G6KWNFKWVSMp/tEQD52ylBRuey9+qjmqzqq7vJN4u2EwSw9syrFex/c=
X-Google-Smtp-Source: AGHT+IFret58XABPuazVOd7Oo5vSkifceSpovWo6eCaOg/y1g32wsfxn9ujUf3iYlDU6VQ7jwzTK4w==
X-Received: by 2002:a05:6a00:9294:b0:72a:a7a4:9b21 with SMTP id d2e1a72fcca58-72d21f16046mr7726769b3a.5.1736402323594;
        Wed, 08 Jan 2025 21:58:43 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:8112:b0:725:db2c:c4a8 with SMTP id
 d2e1a72fcca58-72d2fc6ff95ls498925b3a.2.-pod-prod-09-us; Wed, 08 Jan 2025
 21:58:42 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXzeMKZLxXssotXLzkDikBJVxmvkf2H2LW2aLdv4QuH8SBiZhEldgw3nqhDisThPMWpHLLkl2AV1ML+jQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:6a0c:b0:1dc:bdbd:9017 with SMTP id adf61e73a8af0-1e88d0f0e25mr10512079637.40.1736402322317;
        Wed, 08 Jan 2025 21:58:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736402322; cv=none;
        d=google.com; s=arc-20240605;
        b=kGK+3QdqNCzW1bXPmsQy/8be94d6z3oGJrfKiZf1JUm7R4WYf7Wj1f5yBbrFg0kkgZ
         DvLxhOaF7UEojOCGfwRCUzOZFLgpXshSv7hrPYIEJVJIkaLLUe6kOjwldrNDa4gorPZU
         FZxPftDjEgZ8HL7soVVxs0zKty4ZTaQNSB4lTDxzVU//hPiUqWNczgyk2ousCgSxQITL
         MisHW2BefvqRQX+ad80vyzox7H7pK+xRUtcdvQSDbqPuOBFOOkcxlEL9pwqceMGP+Rlk
         UzQq2TTs7FWnmqkaDNP82VLf3Q4RwpvHA1MW99ZPCTYrF97tf7iqyp0PHIqDVuo2VARK
         weVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LcHCnPrgvEln0yA32Omgiz1QyLiHNTz7aZhCILYH5I4=;
        fh=WRAGdV8aIMVVSYoSeklSBzbPtpnXpjY3BgoNNJPLYpM=;
        b=W07eYo6IOrgMXiyR3stYHuXAdY3V/9qzkbmKfAV8ZbTeh+66x3kd1WCRg4zqAaoUkj
         r9sU7KyqkW1Gxsp+M9Kr/gapt9RFzZeiSQVgwia74UOyqH/qGD7ybrwjjAmKdSg5trLD
         4QXWPNi02iUmciBMyzDE/Bn/WTvQ4dTTL0ZMzpVhPrJdoUZWzFwSIELjkQ/34EpFM/pU
         69+fgBTYfG2Pqlpet3xMPgygnGSaZAeFvuSwxi9ORcrB0pDmkprJ6t9npUx1BrhQlcEl
         2YJHhmqxLoidI9oMx4NLxn0FcESDxa9soY1WOmicKVH9buuwdE4Ec/F7X2PN7KPWo+/5
         BVpg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=ZhTuH3o0;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-a31ef5585b3si736129a12.538.2025.01.08.21.58.42
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 21:58:42 -0800 (PST)
Received-SPF: none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-ddeb-cdec-70b9-e2f0.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:ddeb:cdec:70b9:e2f0] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVlZ1-0000000ArQh-12ah;
	Thu, 09 Jan 2025 05:58:40 +0000
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
Subject: [usb-storage] [PATCH 07/11] nvme: fix queue freeze vs limits lock order
Date: Thu,  9 Jan 2025 06:57:28 +0100
Message-ID: <20250109055810.1402918-8-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250109055810.1402918-1-hch@lst.de>
References: <20250109055810.1402918-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=ZhTuH3o0;
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

Match the locking order used by the core block code by only freezing
the queue after taking the limits lock.

Unlike most queue updates this does not use the
queue_limits_commit_update_frozen helper as the nvme driver want the
queue frozen for more than just the limits update.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/nvme/host/core.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index c2250ddef5a2..1ccf17f6ea7f 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2128,9 +2128,10 @@ static int nvme_update_ns_info_generic(struct nvme_ns *ns,
 	struct queue_limits lim;
 	int ret;
 
-	blk_mq_freeze_queue(ns->disk->queue);
 	lim = queue_limits_start_update(ns->disk->queue);
 	nvme_set_ctrl_limits(ns->ctrl, &lim);
+
+	blk_mq_freeze_queue(ns->disk->queue);
 	ret = queue_limits_commit_update(ns->disk->queue, &lim);
 	set_disk_ro(ns->disk, nvme_ns_is_readonly(ns, info));
 	blk_mq_unfreeze_queue(ns->disk->queue);
@@ -2177,12 +2178,12 @@ static int nvme_update_ns_info_block(struct nvme_ns *ns,
 			goto out;
 	}
 
+	lim = queue_limits_start_update(ns->disk->queue);
+
 	blk_mq_freeze_queue(ns->disk->queue);
 	ns->head->lba_shift = id->lbaf[lbaf].ds;
 	ns->head->nuse = le64_to_cpu(id->nuse);
 	capacity = nvme_lba_to_sect(ns->head, le64_to_cpu(id->nsze));
-
-	lim = queue_limits_start_update(ns->disk->queue);
 	nvme_set_ctrl_limits(ns->ctrl, &lim);
 	nvme_configure_metadata(ns->ctrl, ns->head, id, nvm, info);
 	nvme_set_chunk_sectors(ns, id, &lim);
@@ -2285,6 +2286,7 @@ static int nvme_update_ns_info(struct nvme_ns *ns, struct nvme_ns_info *info)
 		struct queue_limits *ns_lim = &ns->disk->queue->limits;
 		struct queue_limits lim;
 
+		lim = queue_limits_start_update(ns->head->disk->queue);
 		blk_mq_freeze_queue(ns->head->disk->queue);
 		/*
 		 * queue_limits mixes values that are the hardware limitations
@@ -2301,7 +2303,6 @@ static int nvme_update_ns_info(struct nvme_ns *ns, struct nvme_ns_info *info)
 		 * the splitting limits in to make sure we still obey possibly
 		 * lower limitations of other controllers.
 		 */
-		lim = queue_limits_start_update(ns->head->disk->queue);
 		lim.logical_block_size = ns_lim->logical_block_size;
 		lim.physical_block_size = ns_lim->physical_block_size;
 		lim.io_min = ns_lim->io_min;
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250109055810.1402918-8-hch%40lst.de.
