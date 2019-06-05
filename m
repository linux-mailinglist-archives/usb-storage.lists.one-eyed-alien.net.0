Return-Path: <usb-storage+bncBDUNBGN3R4KRB6FG4DTQKGQE2MJJFPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x548.google.com (mail-pg1-x548.google.com [IPv6:2607:f8b0:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1F7363F1
	for <lists+usb-storage@lfdr.de>; Wed,  5 Jun 2019 21:09:45 +0200 (CEST)
Received: by mail-pg1-x548.google.com with SMTP id l184sf10438406pgd.18
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 12:09:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559761784; cv=pass;
        d=google.com; s=arc-20160816;
        b=R/R3FpRSC3liQNxUxDrV2nA5MhocGOUEN5Maa3BVsRdY97u/6qC2HyB36p34bADcEz
         hvPDV1gdYtSte0TnHMtQow3FC5a8rSXKVp0LcNrxF80Q8C9uTfXCKhlqteWRfyV7+IKS
         wnWPDxrw6xKQCNzOhCL6eJM4xG02fr2L+StMb0lkHEveJXZ6zMo9K6J7NROYOMn9TE/a
         yxERzrnFgwPcmS58C0vpCMplkAKeVIivWDp4N5c9IhUxNxScqUJrFj62BgjaHdLj8TQS
         AMWE6dhLwOo8vvve5+ZRcAy7HB0KfL/kN3EOu0tF4/tHcRy7WUxKvBXQfIdpEy/uILXy
         y7mQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vFqE2djGIOIhaZ3FrlEx8hWrpX1vwD1VBc14h93Y2fs=;
        b=KECZFLIIpGpBtxnbRR+hc3IZq0OpXhWdksJ4cIqvemH4KGPdMt8O+p9vcdN7FVRZrv
         hwVw8LMqXth7f0kTJjNk8gBzNB4SA+Vl/tGbQYtZZQI0lLHMJh8Kr8YOHpHVFcc3+AR4
         TZTrQCRA3epY8dHKaS9c9SHAGBxge5Twv0++sWkviXqQWw26FLQvIjyRgE5tOkqfnk9T
         OmcLKEiGrgtVHkFuQ/pv9h6biF9WBmYBhvzjtbokG9M2l69J7DH/vyNtpzlP/RInU9tc
         BQfStO7GOPo2od1Wa6WpGVoglE8JW4D1eFSAN3YR+F6O3VKQd5JFxKmnlZlIGxeEwVSN
         coZw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=iP43xkcu;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vFqE2djGIOIhaZ3FrlEx8hWrpX1vwD1VBc14h93Y2fs=;
        b=Tgl34z7mRKIPyG93Uuc/ontX6PxeTKtkBqnpvurTFtATbKX3ZhDoB13Uv757jANs0B
         2JhJeTh6SejDePfneNLd8gM2u/XcvCQOfGwExlzUqqI5QwsBmSm4loCU5XW2WSPr3lBH
         CoyDMLxCWHspihzDkdJbLpgnjicV1/q33hUDc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vFqE2djGIOIhaZ3FrlEx8hWrpX1vwD1VBc14h93Y2fs=;
        b=V+zDA0jxwY+rBI2vXc/aSi7TVOv1M3PSqkP+bJjawSF71zT2bdFGCs0Mlj88wjABgu
         ZfTGrjJXUWCthgHEM0F60n27olxxtm198OUxTXgIIQ/ft+m0ZjMQzpHAJXvyr9x3sdA6
         0a/HuYpZbFRLD502CFGFXkhEz7WqpbwyIisEBKJkbSmlAKfBo08rr2bdikD+uxUA4mNM
         U1kxq+Ll6uDXZ4JDG1RPEbOy7tMZsnoq5sCNo6RH+apxYsKUeoWrf/5FHcfWXc3JHp8L
         TmqBvG+1AdDhylpNopyRFsoE+kKf6KVI/Pm6glgK/7EUWt0X36ErPMn1FlOeXPbQTlCM
         b5sA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAW3TzNRMXkInkftbW5SVRaT8zQkpy/eRPm5GlRldu+Gvj5ssKMz
	qK1LOkIO6VVJcF6VYWBD0Mk=
X-Google-Smtp-Source: APXvYqx/X/mZ6kOd0Kuf4NVMYwiaP5WaGm8EaGmVrC1zEGPv8Ft5HQ4bk4LkxuE+wPqTWJ1Qvscxnw==
X-Received: by 2002:a62:e119:: with SMTP id q25mr12281040pfh.148.1559761784118;
        Wed, 05 Jun 2019 12:09:44 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:8a94:: with SMTP id a20ls264188pfc.15.gmail; Wed, 05 Jun
 2019 12:09:43 -0700 (PDT)
X-Received: by 2002:a63:471d:: with SMTP id u29mr259584pga.39.1559761783818;
        Wed, 05 Jun 2019 12:09:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559761783; cv=none;
        d=google.com; s=arc-20160816;
        b=GEY6cg4H41OtG5nRPohvBSRUVlSRXF3cdlxgFWuExH+qM2gTu6EAFGoz+mbUw621T+
         Nc94w2DsqSxYtftiOaGNFysg8WDgnXZ/WsVrBFuSYnSAI2UhG7T2u9JKEM2VEsj+Whnd
         Z5kzm+xHAFGjAB0YjdC8yR6pFhmIvELvhMfg4L+B22WemuBear0jIe825qQEFXbG9Ytp
         IBam4RS2K19zmLDFZqRXxo5HrPg9YNU4NE8B8u7lqYJfaaRhcqOZi56LNWY6LTp6OyN7
         g5wrkBynhv+72U5RODDrPEu7LK8Oys5mO4EAHOHnliq2iQOilfthc1j02juBBz4ddJUq
         YngQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EgU5lGgALUASevuDqm6D+3fpiqvPjFDOViczDZXWl1A=;
        b=EYPOmrmTNv96X6BN45m1aR2yZRm64Fjj5P/IERmknJ7X2mp1MeH/Uti3P0eaVHiFa3
         +nc2PQ/oR6XN2dkdTx7PyzKYoohUg6eZ39+SwcLGpqeWkW2/k96cL/5CP/Bm4wnlPVX9
         rmMug5SjE2c0eyUy3O8/8RHIK9hyJtM2A5XvxaMGvOgVwgv+NdWCFDHWUBsYPPBT6BP6
         NShwX2p0E4jqC6ywpUj+tuG3GhoQyIyvfKnuT+tZlPF1DJqoLARaV6a1KUXZ/p6ykLPy
         8DcXSnoSS2SJobqukwwrQihGnNDCfeZx2szSUOl8/6v72HZelszkvaTxYLIWxixIn6qS
         j3Nw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=iP43xkcu;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id i9si18893771plt.387.2019.06.05.12.09.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Jun 2019 12:09:43 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbHO-0005XN-7d; Wed, 05 Jun 2019 19:08:59 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: Sebastian Ott <sebott@linux.ibm.com>,
	Sagi Grimberg <sagi@grimberg.me>,
	Max Gurtovoy <maxg@mellanox.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Oliver Neukum <oneukum@suse.com>,
	linux-block@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	megaraidlinux.pdl@broadcom.com,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-hyperv@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH 05/13] scsi: add a host / host template field
 for the virt boundary
Date: Wed,  5 Jun 2019 21:08:28 +0200
Message-Id: <20190605190836.32354-6-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190605190836.32354-1-hch@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=iP43xkcu;
       spf=pass (google.com: best guess record for domain of
 batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
 designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
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

This allows drivers setting it up easily instead of branching out to
block layer calls in slave_alloc, and ensures the upgraded
max_segment_size setting gets picked up by the DMA layer.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/hosts.c     | 3 +++
 drivers/scsi/scsi_lib.c  | 3 ++-
 include/scsi/scsi_host.h | 3 +++
 3 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/hosts.c b/drivers/scsi/hosts.c
index ff0d8c6a8d0c..55522b7162d3 100644
--- a/drivers/scsi/hosts.c
+++ b/drivers/scsi/hosts.c
@@ -462,6 +462,9 @@ struct Scsi_Host *scsi_host_alloc(struct scsi_host_template *sht, int privsize)
 	else
 		shost->dma_boundary = 0xffffffff;
 
+	if (sht->virt_boundary_mask)
+		shost->virt_boundary_mask = sht->virt_boundary_mask;
+
 	device_initialize(&shost->shost_gendev);
 	dev_set_name(&shost->shost_gendev, "host%d", shost->host_no);
 	shost->shost_gendev.bus = &scsi_bus_type;
diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
index 65d0a10c76ad..d333bb6b1c59 100644
--- a/drivers/scsi/scsi_lib.c
+++ b/drivers/scsi/scsi_lib.c
@@ -1775,7 +1775,8 @@ void __scsi_init_queue(struct Scsi_Host *shost, struct request_queue *q)
 	dma_set_seg_boundary(dev, shost->dma_boundary);
 
 	blk_queue_max_segment_size(q, shost->max_segment_size);
-	dma_set_max_seg_size(dev, shost->max_segment_size);
+	blk_queue_virt_boundary(q, shost->virt_boundary_mask);
+	dma_set_max_seg_size(dev, queue_max_segment_size(q));
 
 	/*
 	 * Set a reasonable default alignment:  The larger of 32-byte (dword),
diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
index a5fcdad4a03e..cc139dbd71e5 100644
--- a/include/scsi/scsi_host.h
+++ b/include/scsi/scsi_host.h
@@ -369,6 +369,8 @@ struct scsi_host_template {
 	 */
 	unsigned long dma_boundary;
 
+	unsigned long virt_boundary_mask;
+
 	/*
 	 * This specifies "machine infinity" for host templates which don't
 	 * limit the transfer size.  Note this limit represents an absolute
@@ -587,6 +589,7 @@ struct Scsi_Host {
 	unsigned int max_sectors;
 	unsigned int max_segment_size;
 	unsigned long dma_boundary;
+	unsigned long virt_boundary_mask;
 	/*
 	 * In scsi-mq mode, the number of hardware queues supported by the LLD.
 	 *
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190605190836.32354-6-hch%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
