Return-Path: <usb-storage+bncBDUNBGN3R4KRBPH3QKYAMGQEMETIN2I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 058568882ED
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:56:46 +0100 (CET)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5a553c8e589sf413404eaf.2
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:56:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324605; cv=pass;
        d=google.com; s=arc-20160816;
        b=SXchLodAVNBkGng3Y8IiypGp6WLLsLc+Od0gLRyjzc5KbXc2VhAWingIY8C4ADhRdg
         MmHY1FC7GMxqCXMOFx6szAbp6DWT6VnxUMKdz2uhQ7oUMJYerh1QRwIfyk4HqNWVuWpZ
         5ioUx4U3e6a2yz/FZIYIjRWqpzQc6ihZR+dXP4+bQ6RfGhg08v95InP8cspRCod0nh5C
         8+gnpcnku+/FMyMBVWvilLdEK5mBYuHILzFpZ7Amz7d4Vgulgt6B1mhMh+pTJgcGAGp3
         YL00DMdrn3tBcoqL9Ktki63bieH7KIWL1CTGFQHX7ogVRzhOSP1FspYJMqkB3IXmGmAn
         Q4cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=01htt8qoG0WDMFLpEsmq8Oj66PYxUCdCO5/cS+FgbIU=;
        fh=HA+rPnPEPUJF9jZAm+Y5m5wfl5SU3yc2Yl4NHhJo40g=;
        b=x6gUUY2bO446CNwupvP5hhfbuCC/4it5GxHQCRDfBciUJb15xOukhkgsUPBVh6VBFZ
         eIDQrI82AF5ChVqJBbJuje0C+05ciWKBfO83+nYeILbQyep2id8b20lfz9VzMzN1VpMM
         aFWJWqWfJ42qASaqhukjnuBC6pJWYlTWj+y0kmypyNuIVLN+u7UXbtplE+Xsc1raVM43
         U/WUp701av/nE98AxLGFgSTkTbGEU0BZ0e28Zcmtk+osSEKe2hNMzfiTTYfPeQ6gMqfx
         0Rvia7Bx1Yt8gLIwx1n9aKWHn48ej9jUM4qE16wHEgvF3bohEinNFMkpeeHPqNj2ZldS
         8wJA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=AiAGPerO;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324605; x=1711929405; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=01htt8qoG0WDMFLpEsmq8Oj66PYxUCdCO5/cS+FgbIU=;
        b=NndI/MmzhE/S6HVBdOGiL+lxQqi0yvK9oS0O0ugGOURVkAV4UUTa0bTpFxVQn030N8
         W/GvmuCeimyLU0bsOULwN4zOQqKHYgrOaZGDGT9RVq6YFixEQxsOwj2RdNyB4AepXKHY
         s6+5/SNy9/Ok2SzwLA5UtoCTtfdUBsmuqfYdg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324605; x=1711929405;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=01htt8qoG0WDMFLpEsmq8Oj66PYxUCdCO5/cS+FgbIU=;
        b=bppLnzqEprpfaZZBqJvAD/hIHXkM743+axg1sUmKNKPaeJyY+KXgzmlnQxDYGx/7tK
         infcypJzbrPQPAeqL0Kl0YyKhhlD176HXU909ynPjCFRI7f9oaSnllAd1tRi2vAj1JCh
         2NfprQsA3qoE9L7yIKS2bydzwjHg37F3BGiZ78PfphtLJrfLhCtpDSE6R5EZ8xBdgzyv
         VHFzZD1w1k48MWB2gx/AX6TSz7f5a4Vx0+BesfW9n1Jv/EX02t7CUJhFIhKZf2zmi1te
         Lyx3vp0piuAR3DTCfuTVnx9R+JMKKE95hJZpF3xsNw/3gmLNWyyhVTy2kTxk76JFDTpV
         Cirg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWu0qusSiRGi4+c9TACa+oXou0ddyYR3QwpmyK7foq8/12UGaY/WJRg9mNkCZHh83DawJ+cWEcpukSyheVGUdSRYoGEjf8TubI3
X-Gm-Message-State: AOJu0Yyv9dlErMRO8i7l4CxyalfbUf42qXOSRuK6KG0AOq+eTv5R7UdU
	YqAOlGLHnqYxZ4eNUvFj/F7P9S6MsDgUIOlDLkclIVm4cyNgWgh1VsP4xis6aws=
X-Google-Smtp-Source: AGHT+IEJgjx0xUd5e1I48GmwOYRowFxTIZ1Hq2FkpRT0pNuJMTIVZ9fHzuQzLSPphEpUfQ7FwbTNzg==
X-Received: by 2002:a05:6820:20e:b0:5a5:247e:149e with SMTP id bw14-20020a056820020e00b005a5247e149emr5363029oob.9.1711324604944;
        Sun, 24 Mar 2024 16:56:44 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:b4c6:0:b0:5a4:93b6:9ae with SMTP id g6-20020a4ab4c6000000b005a493b609aels3202911ooo.1.-pod-prod-08-us;
 Sun, 24 Mar 2024 16:56:44 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVqvT7xMd+On2QYS3FGjay4YAZ0qgobxX+HBXUEEVokPhOxcF0QXHFApMN+kcQ7fj7Md56gVV8JhaADlCZyQfx5foq5SBUJgyb8FrhUgRYVZr9aGG4=
X-Received: by 2002:a05:6808:2108:b0:3c2:3131:65db with SMTP id r8-20020a056808210800b003c2313165dbmr6935857oiw.50.1711324604125;
        Sun, 24 Mar 2024 16:56:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324604; cv=none;
        d=google.com; s=arc-20160816;
        b=QTg/dqSEf9PI5kZ9f4PKb+igvN/wPbFQJMMf62xWAwo/YxU2xQLmX6+x8imvim8nLn
         tMpq7dNC4PnT/PnNWOpFDjqCd1Hi5PZSFhILkwq9KO7tymigv9+BzLrUfGe5rs2ksr3c
         uT0Bwjads2QE0K2DmXK9jnqW/t65S42iuHP6xMt9ZKvzoCtuO/adKdh3q5Off52OUoro
         /v+Fe3We2xCsd6Rhv7hqIbqRxmUIHaagt36+p11nmfuNuVWLkO/FpPoFGDdvMIjW8Xzd
         ZJ9UKiVMGCGPvWmgn6FbI6UuLhlvXxt3ovS92ZeUkz6YyIIl8Etx62os8DYV7yHUCb5S
         3DYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=8Ap781XzTEv6/N3Fz2uGluUK4bmcyE+i99tuUWvhx7k=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=DfBJGbO7eBAQF1oBujXxkgNvQJFICHXWJ+1wKc7//sERonJVlk7yPPoA7Ei5asjTK3
         VaxUhw1sBxF1JsFJpv/OT+ro52nuG+1t9/5mEj/OnwJ0CE7E9+r9ai0xludr/ZyJIcD4
         hEpK14KLr68vI4R6DxWM5SMKYzpXXX9Cn1YLuSI5rI+H9EptS46MugTFkrnI+fXW8qN4
         k0/t0RuEZt0q277EnSQ65EzEKh6yPmU4ztj/Zx+SoQRb3O8uiBEJVTAqhIeXmm1S0zqi
         nRZ9Z20WPuCw30Oqc5TNnkIs3gLp+ITM6YkSXwan+QXomaGSWrXGK4sSO/7FwrVs/4Aa
         an5Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=AiAGPerO;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d2-20020a630e02000000b005e838b889absi6429831pgl.804.2024.03.24.16.56.44
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:44 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXhZ-0000000DzuH-28iC;
	Sun, 24 Mar 2024 23:56:34 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Brian King <brking@us.ibm.com>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	John Garry <john.g.garry@oracle.com>,
	Jason Yan <yanaijie@huawei.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
	Chandrakanth patil <chandrakanth.patil@broadcom.com>,
	Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH 23/23] block: remove now unused queue limits helpers
Date: Mon, 25 Mar 2024 07:54:48 +0800
Message-Id: <20240324235448.2039074-24-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=AiAGPerO;
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
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

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 block/blk-settings.c           | 245 ---------------------------------
 drivers/s390/block/dasd_eckd.c |   6 +-
 include/linux/blkdev.h         |  13 --
 include/linux/mmc/host.h       |   4 +-
 4 files changed, 5 insertions(+), 263 deletions(-)

diff --git a/block/blk-settings.c b/block/blk-settings.c
index cdbaef159c4bc3..57cd1660815ec2 100644
--- a/block/blk-settings.c
+++ b/block/blk-settings.c
@@ -283,72 +283,6 @@ int queue_limits_set(struct request_queue *q, struct queue_limits *lim)
 }
 EXPORT_SYMBOL_GPL(queue_limits_set);
 
-/**
- * blk_queue_bounce_limit - set bounce buffer limit for queue
- * @q: the request queue for the device
- * @bounce: bounce limit to enforce
- *
- * Description:
- *    Force bouncing for ISA DMA ranges or highmem.
- *
- *    DEPRECATED, don't use in new code.
- **/
-void blk_queue_bounce_limit(struct request_queue *q, enum blk_bounce bounce)
-{
-	q->limits.bounce = bounce;
-}
-EXPORT_SYMBOL(blk_queue_bounce_limit);
-
-/**
- * blk_queue_max_hw_sectors - set max sectors for a request for this queue
- * @q:  the request queue for the device
- * @max_hw_sectors:  max hardware sectors in the usual 512b unit
- *
- * Description:
- *    Enables a low level driver to set a hard upper limit,
- *    max_hw_sectors, on the size of requests.  max_hw_sectors is set by
- *    the device driver based upon the capabilities of the I/O
- *    controller.
- *
- *    max_dev_sectors is a hard limit imposed by the storage device for
- *    READ/WRITE requests. It is set by the disk driver.
- *
- *    max_sectors is a soft limit imposed by the block layer for
- *    filesystem type requests.  This value can be overridden on a
- *    per-device basis in /sys/block/<device>/queue/max_sectors_kb.
- *    The soft limit can not exceed max_hw_sectors.
- **/
-void blk_queue_max_hw_sectors(struct request_queue *q, unsigned int max_hw_sectors)
-{
-	struct queue_limits *limits = &q->limits;
-	unsigned int max_sectors;
-
-	if ((max_hw_sectors << 9) < PAGE_SIZE) {
-		max_hw_sectors = 1 << (PAGE_SHIFT - 9);
-		pr_info("%s: set to minimum %u\n", __func__, max_hw_sectors);
-	}
-
-	max_hw_sectors = round_down(max_hw_sectors,
-				    limits->logical_block_size >> SECTOR_SHIFT);
-	limits->max_hw_sectors = max_hw_sectors;
-
-	max_sectors = min_not_zero(max_hw_sectors, limits->max_dev_sectors);
-
-	if (limits->max_user_sectors)
-		max_sectors = min(max_sectors, limits->max_user_sectors);
-	else
-		max_sectors = min(max_sectors, BLK_DEF_MAX_SECTORS_CAP);
-
-	max_sectors = round_down(max_sectors,
-				 limits->logical_block_size >> SECTOR_SHIFT);
-	limits->max_sectors = max_sectors;
-
-	if (!q->disk)
-		return;
-	q->disk->bdi->io_pages = max_sectors >> (PAGE_SHIFT - 9);
-}
-EXPORT_SYMBOL(blk_queue_max_hw_sectors);
-
 /**
  * blk_queue_chunk_sectors - set size of the chunk for this queue
  * @q:  the request queue for the device
@@ -435,65 +369,6 @@ void blk_queue_max_zone_append_sectors(struct request_queue *q,
 }
 EXPORT_SYMBOL_GPL(blk_queue_max_zone_append_sectors);
 
-/**
- * blk_queue_max_segments - set max hw segments for a request for this queue
- * @q:  the request queue for the device
- * @max_segments:  max number of segments
- *
- * Description:
- *    Enables a low level driver to set an upper limit on the number of
- *    hw data segments in a request.
- **/
-void blk_queue_max_segments(struct request_queue *q, unsigned short max_segments)
-{
-	if (!max_segments) {
-		max_segments = 1;
-		pr_info("%s: set to minimum %u\n", __func__, max_segments);
-	}
-
-	q->limits.max_segments = max_segments;
-}
-EXPORT_SYMBOL(blk_queue_max_segments);
-
-/**
- * blk_queue_max_discard_segments - set max segments for discard requests
- * @q:  the request queue for the device
- * @max_segments:  max number of segments
- *
- * Description:
- *    Enables a low level driver to set an upper limit on the number of
- *    segments in a discard request.
- **/
-void blk_queue_max_discard_segments(struct request_queue *q,
-		unsigned short max_segments)
-{
-	q->limits.max_discard_segments = max_segments;
-}
-EXPORT_SYMBOL_GPL(blk_queue_max_discard_segments);
-
-/**
- * blk_queue_max_segment_size - set max segment size for blk_rq_map_sg
- * @q:  the request queue for the device
- * @max_size:  max size of segment in bytes
- *
- * Description:
- *    Enables a low level driver to set an upper limit on the size of a
- *    coalesced segment
- **/
-void blk_queue_max_segment_size(struct request_queue *q, unsigned int max_size)
-{
-	if (max_size < PAGE_SIZE) {
-		max_size = PAGE_SIZE;
-		pr_info("%s: set to minimum %u\n", __func__, max_size);
-	}
-
-	/* see blk_queue_virt_boundary() for the explanation */
-	WARN_ON_ONCE(q->limits.virt_boundary_mask);
-
-	q->limits.max_segment_size = max_size;
-}
-EXPORT_SYMBOL(blk_queue_max_segment_size);
-
 /**
  * blk_queue_logical_block_size - set logical block size for the queue
  * @q:  the request queue for the device
@@ -660,29 +535,6 @@ void blk_limits_io_opt(struct queue_limits *limits, unsigned int opt)
 }
 EXPORT_SYMBOL(blk_limits_io_opt);
 
-/**
- * blk_queue_io_opt - set optimal request size for the queue
- * @q:	the request queue for the device
- * @opt:  optimal request size in bytes
- *
- * Description:
- *   Storage devices may report an optimal I/O size, which is the
- *   device's preferred unit for sustained I/O.  This is rarely reported
- *   for disk drives.  For RAID arrays it is usually the stripe width or
- *   the internal track size.  A properly aligned multiple of
- *   optimal_io_size is the preferred request size for workloads where
- *   sustained throughput is desired.
- */
-void blk_queue_io_opt(struct request_queue *q, unsigned int opt)
-{
-	blk_limits_io_opt(&q->limits, opt);
-	if (!q->disk)
-		return;
-	q->disk->bdi->ra_pages =
-		max(queue_io_opt(q) * 2 / PAGE_SIZE, VM_READAHEAD_PAGES);
-}
-EXPORT_SYMBOL(blk_queue_io_opt);
-
 static int queue_limit_alignment_offset(const struct queue_limits *lim,
 		sector_t sector)
 {
@@ -932,81 +784,6 @@ void blk_queue_update_dma_pad(struct request_queue *q, unsigned int mask)
 }
 EXPORT_SYMBOL(blk_queue_update_dma_pad);
 
-/**
- * blk_queue_segment_boundary - set boundary rules for segment merging
- * @q:  the request queue for the device
- * @mask:  the memory boundary mask
- **/
-void blk_queue_segment_boundary(struct request_queue *q, unsigned long mask)
-{
-	if (mask < PAGE_SIZE - 1) {
-		mask = PAGE_SIZE - 1;
-		pr_info("%s: set to minimum %lx\n", __func__, mask);
-	}
-
-	q->limits.seg_boundary_mask = mask;
-}
-EXPORT_SYMBOL(blk_queue_segment_boundary);
-
-/**
- * blk_queue_virt_boundary - set boundary rules for bio merging
- * @q:  the request queue for the device
- * @mask:  the memory boundary mask
- **/
-void blk_queue_virt_boundary(struct request_queue *q, unsigned long mask)
-{
-	q->limits.virt_boundary_mask = mask;
-
-	/*
-	 * Devices that require a virtual boundary do not support scatter/gather
-	 * I/O natively, but instead require a descriptor list entry for each
-	 * page (which might not be idential to the Linux PAGE_SIZE).  Because
-	 * of that they are not limited by our notion of "segment size".
-	 */
-	if (mask)
-		q->limits.max_segment_size = UINT_MAX;
-}
-EXPORT_SYMBOL(blk_queue_virt_boundary);
-
-/**
- * blk_queue_dma_alignment - set dma length and memory alignment
- * @q:     the request queue for the device
- * @mask:  alignment mask
- *
- * description:
- *    set required memory and length alignment for direct dma transactions.
- *    this is used when building direct io requests for the queue.
- *
- **/
-void blk_queue_dma_alignment(struct request_queue *q, int mask)
-{
-	q->limits.dma_alignment = mask;
-}
-EXPORT_SYMBOL(blk_queue_dma_alignment);
-
-/**
- * blk_queue_update_dma_alignment - update dma length and memory alignment
- * @q:     the request queue for the device
- * @mask:  alignment mask
- *
- * description:
- *    update required memory and length alignment for direct dma transactions.
- *    If the requested alignment is larger than the current alignment, then
- *    the current queue alignment is updated to the new value, otherwise it
- *    is left alone.  The design of this is to allow multiple objects
- *    (driver, device, transport etc) to set their respective
- *    alignments without having them interfere.
- *
- **/
-void blk_queue_update_dma_alignment(struct request_queue *q, int mask)
-{
-	BUG_ON(mask > PAGE_SIZE);
-
-	if (mask > q->limits.dma_alignment)
-		q->limits.dma_alignment = mask;
-}
-EXPORT_SYMBOL(blk_queue_update_dma_alignment);
-
 /**
  * blk_set_queue_depth - tell the block layer about the device queue depth
  * @q:		the request queue for the device
@@ -1060,28 +837,6 @@ void blk_queue_required_elevator_features(struct request_queue *q,
 }
 EXPORT_SYMBOL_GPL(blk_queue_required_elevator_features);
 
-/**
- * blk_queue_can_use_dma_map_merging - configure queue for merging segments.
- * @q:		the request queue for the device
- * @dev:	the device pointer for dma
- *
- * Tell the block layer about merging the segments by dma map of @q.
- */
-bool blk_queue_can_use_dma_map_merging(struct request_queue *q,
-				       struct device *dev)
-{
-	unsigned long boundary = dma_get_merge_boundary(dev);
-
-	if (!boundary)
-		return false;
-
-	/* No need to update max_segment_size. see blk_queue_virt_boundary() */
-	blk_queue_virt_boundary(q, boundary);
-
-	return true;
-}
-EXPORT_SYMBOL_GPL(blk_queue_can_use_dma_map_merging);
-
 /**
  * disk_set_zoned - inidicate a zoned device
  * @disk:	gendisk to configure
diff --git a/drivers/s390/block/dasd_eckd.c b/drivers/s390/block/dasd_eckd.c
index 180a008d38eaaf..2f16f543079b4f 100644
--- a/drivers/s390/block/dasd_eckd.c
+++ b/drivers/s390/block/dasd_eckd.c
@@ -4561,9 +4561,9 @@ static struct dasd_ccw_req *dasd_eckd_build_cp_tpm_track(
 	len_to_track_end = 0;
 	/*
 	 * A tidaw can address 4k of memory, but must not cross page boundaries
-	 * We can let the block layer handle this by setting
-	 * blk_queue_segment_boundary to page boundaries and
-	 * blk_max_segment_size to page size when setting up the request queue.
+	 * We can let the block layer handle this by setting seg_boundary_mask
+	 * to page boundaries and max_segment_size to page size when setting up
+	 * the request queue.
 	 * For write requests, a TIDAW must not cross track boundaries, because
 	 * we have to set the CBC flag on the last tidaw for each track.
 	 */
diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
index c3e8f7cf96be9e..7a1e96c5bb1106 100644
--- a/include/linux/blkdev.h
+++ b/include/linux/blkdev.h
@@ -895,15 +895,9 @@ int queue_limits_set(struct request_queue *q, struct queue_limits *lim);
 /*
  * Access functions for manipulating queue properties
  */
-void blk_queue_bounce_limit(struct request_queue *q, enum blk_bounce limit);
-extern void blk_queue_max_hw_sectors(struct request_queue *, unsigned int);
 extern void blk_queue_chunk_sectors(struct request_queue *, unsigned int);
-extern void blk_queue_max_segments(struct request_queue *, unsigned short);
-extern void blk_queue_max_discard_segments(struct request_queue *,
-		unsigned short);
 void blk_queue_max_secure_erase_sectors(struct request_queue *q,
 		unsigned int max_sectors);
-extern void blk_queue_max_segment_size(struct request_queue *, unsigned int);
 extern void blk_queue_max_discard_sectors(struct request_queue *q,
 		unsigned int max_discard_sectors);
 extern void blk_queue_max_write_zeroes_sectors(struct request_queue *q,
@@ -920,7 +914,6 @@ void disk_update_readahead(struct gendisk *disk);
 extern void blk_limits_io_min(struct queue_limits *limits, unsigned int min);
 extern void blk_queue_io_min(struct request_queue *q, unsigned int min);
 extern void blk_limits_io_opt(struct queue_limits *limits, unsigned int opt);
-extern void blk_queue_io_opt(struct request_queue *q, unsigned int opt);
 extern void blk_set_queue_depth(struct request_queue *q, unsigned int depth);
 extern void blk_set_stacking_limits(struct queue_limits *lim);
 extern int blk_stack_limits(struct queue_limits *t, struct queue_limits *b,
@@ -928,10 +921,6 @@ extern int blk_stack_limits(struct queue_limits *t, struct queue_limits *b,
 void queue_limits_stack_bdev(struct queue_limits *t, struct block_device *bdev,
 		sector_t offset, const char *pfx);
 extern void blk_queue_update_dma_pad(struct request_queue *, unsigned int);
-extern void blk_queue_segment_boundary(struct request_queue *, unsigned long);
-extern void blk_queue_virt_boundary(struct request_queue *, unsigned long);
-extern void blk_queue_dma_alignment(struct request_queue *, int);
-extern void blk_queue_update_dma_alignment(struct request_queue *, int);
 extern void blk_queue_rq_timeout(struct request_queue *, unsigned int);
 extern void blk_queue_write_cache(struct request_queue *q, bool enabled, bool fua);
 
@@ -948,8 +937,6 @@ void disk_set_independent_access_ranges(struct gendisk *disk,
 
 extern void blk_queue_required_elevator_features(struct request_queue *q,
 						 unsigned int features);
-extern bool blk_queue_can_use_dma_map_merging(struct request_queue *q,
-					      struct device *dev);
 
 bool __must_check blk_get_queue(struct request_queue *);
 extern void blk_put_queue(struct request_queue *);
diff --git a/include/linux/mmc/host.h b/include/linux/mmc/host.h
index 5894bf912f7bdb..88c6a76042ee73 100644
--- a/include/linux/mmc/host.h
+++ b/include/linux/mmc/host.h
@@ -433,8 +433,8 @@ struct mmc_host {
 	mmc_pm_flag_t		pm_caps;	/* supported pm features */
 
 	/* host specific block data */
-	unsigned int		max_seg_size;	/* see blk_queue_max_segment_size */
-	unsigned short		max_segs;	/* see blk_queue_max_segments */
+	unsigned int		max_seg_size;	/* lim->max_segment_size */
+	unsigned short		max_segs;	/* lim->max_segments */
 	unsigned short		unused;
 	unsigned int		max_req_size;	/* maximum number of bytes in one req */
 	unsigned int		max_blk_size;	/* maximum size of one mmc block */
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-24-hch%40lst.de.
