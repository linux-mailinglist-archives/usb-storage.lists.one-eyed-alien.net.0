Return-Path: <usb-storage+bncBDUNBGN3R4KRB372QKYAMGQEZ6CHOBQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 150958882B5
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:55:29 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-1e01352c38csf18166455ad.1
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:55:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324527; cv=pass;
        d=google.com; s=arc-20160816;
        b=lk4F+7x1E/PBV1wh+XQr7Q3aCmo0WCIZawhdvbCLvNb9c1MJkA37efQniM2s5HwdSc
         F93Emuw85Ev2Ui4hGdz5I92KWh6Hg3LSuxMgIkutt/xYOlbltaL9NFSZwkm1CkX1Z8D5
         fjRUqM0VrdD3gk5b2UFUZTUFNFaicb2EHri2e809bblS92zTMiw32kb3FKYkE4XkT000
         Og5bvBb1ftdebafn27M53ndGhAQxcPZJchx+KRHdqfEmuKbCA1Z3cIScLT3QyFfX6u9V
         xM2Z1CZyCGyOfbtUJKGLOUG312L+jihHemTSQT9wm5is2vhmNQdzNE0XImL0V6clLeMR
         Q/NQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vmCTjKw9+DtrQ45K4XmixnC5IZ836po0oNitbcfil2E=;
        fh=i/wNizLdvKDg4zkhunwDgLawZ/ZzFpZuzvKZmTLAEwU=;
        b=elZJ/eeWWhEUNh6y7/I9+Ji9f+eSL5uVp0f0hpZneNlPbUHp5rz/MyCAV/GE0XBbeu
         9vxlxXMMdTiOvfsrQl2+igrPg1eklCju+ucfuqrJpvRtXoKUiCockjda53GZMFrr/R+u
         mLZaD6Z+V76vcoV2BF9TwovVhPpRTCyOFEoJ8ihIQQx9SDw5MIebZPVSAOJaqbyRHYeX
         XGnQpvJNp+8Na8O2PZp6Wodc9KCT8bGkn52VyZW+FihH0FMMVCoG2pJ4t1lCAj2YvKSa
         YQ+1AtmzkfpIqXwnPoeRDtET0so1Z7sfUWEFzFXxgCpOPQd5AT6meLiJpoCvaJTJPfc0
         IaxQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=cYCq+MLC;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324527; x=1711929327; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vmCTjKw9+DtrQ45K4XmixnC5IZ836po0oNitbcfil2E=;
        b=jUldjiEzSX7rE0pRIPgJehYADhKmE7+3TbPgnXXdbTOdsWPboOf4feCri5L13Y3MNC
         Qm3JFGRVKIHabmkvLgKb1JyRBqjpZeTY9KHInwuik6SkIJKf+t11lO6tJMKTzzHp4pPn
         zKTSuNYccCIF/HtNHpAL6MEjCxBO6qPVrWAz0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324527; x=1711929327;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vmCTjKw9+DtrQ45K4XmixnC5IZ836po0oNitbcfil2E=;
        b=h+2FuBXPeUm2JHk7x9+rq1B2eHtk9V4djFUNyKNdRT/PLft+oS4+OHLzAZ9eYrBgn+
         LEPx6Fd4eDbqM5ZOOIHk0YhtQVCG0IR1gJ/596F3dWNEt8rOaq1OYEPKDnSGQ/sH4rIE
         M+VwCJHGAxF0N9AWcqFPft+8AorPh9/Piz8ow+lPAbSYJQUmzcoFYF3YnJmf7PFYK+pX
         Nd1gDqIIaR115sjhndicigjXxaX/VGCDNnKGRpjt0aIaMZ3X7hqLr9f3AE27nEtCrkVA
         n+0yQDVuorA8pmWvjgpEfuDGdw+1DxTfH/wBuNRDnUQwiU/VFIANjBckQwt9U0izGXH9
         rANg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU6PfMYYYpl4nGiUgVGvCrUHjuGTSohhQzivCllzUqlRuRSMGT35+R/r3qU855KPCZGAcB2ZwbsfxFb1TPi7OLhUH0NZWI76gmU
X-Gm-Message-State: AOJu0YzI5S2f4cZWwqV2onC80vzAIWnvGm9Htu2jtU7cgh9mpDhkIZU0
	nCxmstXXegkqI5pmb3ouNMG1ASw08PRPPVkTH8FUcnBmDV8K+OcBGFsUQ+nNGKk=
X-Google-Smtp-Source: AGHT+IEAn7TJrF48Zxp1Pl5oOS1vvtM6x56/2iv+JkMX8+1khOkvUU2FkeiUGZnyp+GOm8JsSG9Ptw==
X-Received: by 2002:a17:903:24e:b0:1e0:6351:ad94 with SMTP id j14-20020a170903024e00b001e06351ad94mr6104167plh.36.1711324527478;
        Sun, 24 Mar 2024 16:55:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:2444:b0:1e0:a7ca:b16 with SMTP id
 l4-20020a170903244400b001e0a7ca0b16ls663795pls.0.-pod-prod-02-us; Sun, 24 Mar
 2024 16:55:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWOXIS4E6pjAcQ6rgEcCtR9+owbAcXwJt5JqxDPbScHqYw8zrx5OrpioT33BR9d37bVqnP3JKnJbaQwWHe0QaTO0pzXMdiWiKIFMoVjuVvTejSPn6Q=
X-Received: by 2002:a17:902:cecb:b0:1e0:a678:5b55 with SMTP id d11-20020a170902cecb00b001e0a6785b55mr4181313plg.11.1711324526204;
        Sun, 24 Mar 2024 16:55:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324526; cv=none;
        d=google.com; s=arc-20160816;
        b=x2d5R4L9E/5UPnWGs8jmss3IsZXXMWCuYF26xhcAKAfMXOAIjGrtb9XPH51LUzCAoF
         ENHel+mUB0pKQy5DwHvvWWAji7wCtP5flrmOSv2ZHs9Zc2c5ZF6DR10sl0AcYhIqymws
         SpXTullbgteJPZWm61dxYMy8OHwDJy79G5OJG5wdHbWyihXkBpdeuR0flRMhLsSsmSLL
         pd02l0Ag2A6IxGTY5Hfp1OhqLUazJzNkD935g6moOU6BARDQXft7RLis25nv43MXuzYF
         K3xh+YzUlTq0DG/Ub3Es1MrLFmqu8hAt0iDEljZWFe+O97ZMNIzwjcl/2CbmA88NDQRI
         aWpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ohx8m4bpsWvYszEh4ZPMkTDxqGS94gGRxclW6ZHLypE=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=kwI3JeFRBA6gClJioSugmajkXnVZUb9yjTEjn0bPcI7x5os2LXbIUKahtULl0LP4wk
         GuGdRRB67QXJmDVzz1Cs/8p+NiQd+ttkt4aQJhZo/iHiUGYCGlwGOG4KHl1AgQ2VdPRk
         Bz7MTmtCM89jCXpZzCVZIoBJxav+AtmfQJOiNK68d+Srm7USmj8k2rtb8h73cIVIRewx
         ADq1DnSH5PzWQu5GDObgqFnMLwP+J1zBw0GCpIBbmkVXT9X6VW4wg6aFyQSzLGrBuxdJ
         wY9tHBU0Ta9m24nVAuGfTGyuhUQSQ3P3EsBF5Las0Iz2PsLejApNQnZhnX1CJovvLM4v
         DDkw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=cYCq+MLC;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id z6-20020a170902ccc600b001deee1f18a8si4334896ple.127.2024.03.24.16.55.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:26 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXgA-0000000DzOZ-3URi;
	Sun, 24 Mar 2024 23:55:07 +0000
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
Subject: [usb-storage] [PATCH 04/23] scsi: initialize scsi midlayer limits
 before allocating the queue
Date: Mon, 25 Mar 2024 07:54:29 +0800
Message-Id: <20240324235448.2039074-5-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=cYCq+MLC;
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

Turn __scsi_init_queue into scsi_init_limits which initializes
queue_limits structure that can be passed to blk_mq_alloc_queue.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/scsi_lib.c             | 32 ++++++++++++++---------------
 drivers/scsi/scsi_scan.c            |  5 +++--
 drivers/scsi/scsi_transport_fc.c    | 11 +++++-----
 drivers/scsi/scsi_transport_iscsi.c |  5 +++--
 include/scsi/scsi_transport.h       |  2 +-
 5 files changed, 28 insertions(+), 27 deletions(-)

diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
index 2e28e2360c8574..1deca84914e87a 100644
--- a/drivers/scsi/scsi_lib.c
+++ b/drivers/scsi/scsi_lib.c
@@ -32,7 +32,7 @@
 #include <scsi/scsi_driver.h>
 #include <scsi/scsi_eh.h>
 #include <scsi/scsi_host.h>
-#include <scsi/scsi_transport.h> /* __scsi_init_queue() */
+#include <scsi/scsi_transport.h> /* scsi_init_limits() */
 #include <scsi/scsi_dh.h>
 
 #include <trace/events/scsi.h>
@@ -1965,31 +1965,26 @@ static void scsi_map_queues(struct blk_mq_tag_set *set)
 	blk_mq_map_queues(&set->map[HCTX_TYPE_DEFAULT]);
 }
 
-void __scsi_init_queue(struct Scsi_Host *shost, struct request_queue *q)
+void scsi_init_limits(struct Scsi_Host *shost, struct queue_limits *lim)
 {
 	struct device *dev = shost->dma_dev;
 
-	/*
-	 * this limit is imposed by hardware restrictions
-	 */
-	blk_queue_max_segments(q, min_t(unsigned short, shost->sg_tablesize,
-					SG_MAX_SEGMENTS));
+	memset(lim, 0, sizeof(*lim));
+	lim->max_segments =
+		min_t(unsigned short, shost->sg_tablesize, SG_MAX_SEGMENTS);
 
 	if (scsi_host_prot_dma(shost)) {
 		shost->sg_prot_tablesize =
 			min_not_zero(shost->sg_prot_tablesize,
 				     (unsigned short)SCSI_MAX_PROT_SG_SEGMENTS);
 		BUG_ON(shost->sg_prot_tablesize < shost->sg_tablesize);
-		blk_queue_max_integrity_segments(q, shost->sg_prot_tablesize);
+		lim->max_integrity_segments = shost->sg_prot_tablesize;
 	}
 
-	blk_queue_max_hw_sectors(q, shost->max_sectors);
-	blk_queue_segment_boundary(q, shost->dma_boundary);
-	dma_set_seg_boundary(dev, shost->dma_boundary);
-
-	blk_queue_max_segment_size(q, shost->max_segment_size);
-	blk_queue_virt_boundary(q, shost->virt_boundary_mask);
-	dma_set_max_seg_size(dev, queue_max_segment_size(q));
+	lim->max_hw_sectors = shost->max_sectors;
+	lim->seg_boundary_mask = shost->dma_boundary;
+	lim->max_segment_size = shost->max_segment_size;
+	lim->virt_boundary_mask = shost->virt_boundary_mask;
 
 	/*
 	 * Set a reasonable default alignment:  The larger of 32-byte (dword),
@@ -1998,9 +1993,12 @@ void __scsi_init_queue(struct Scsi_Host *shost, struct request_queue *q)
 	 *
 	 * Devices that require a bigger alignment can increase it later.
 	 */
-	blk_queue_dma_alignment(q, max(4, dma_get_cache_alignment()) - 1);
+	lim->dma_alignment = max(4, dma_get_cache_alignment()) - 1;
+
+	dma_set_seg_boundary(dev, shost->dma_boundary);
+	dma_set_max_seg_size(dev, shost->max_segment_size);
 }
-EXPORT_SYMBOL_GPL(__scsi_init_queue);
+EXPORT_SYMBOL_GPL(scsi_init_limits);
 
 static const struct blk_mq_ops scsi_mq_ops_no_commit = {
 	.get_budget	= scsi_mq_get_budget,
diff --git a/drivers/scsi/scsi_scan.c b/drivers/scsi/scsi_scan.c
index 8d06475de17a33..205ab3b3ea89be 100644
--- a/drivers/scsi/scsi_scan.c
+++ b/drivers/scsi/scsi_scan.c
@@ -283,6 +283,7 @@ static struct scsi_device *scsi_alloc_sdev(struct scsi_target *starget,
 	struct request_queue *q;
 	int display_failure_msg = 1, ret;
 	struct Scsi_Host *shost = dev_to_shost(starget->dev.parent);
+	struct queue_limits lim;
 
 	sdev = kzalloc(sizeof(*sdev) + shost->transportt->device_size,
 		       GFP_KERNEL);
@@ -332,7 +333,8 @@ static struct scsi_device *scsi_alloc_sdev(struct scsi_target *starget,
 
 	sdev->sg_reserved_size = INT_MAX;
 
-	q = blk_mq_alloc_queue(&sdev->host->tag_set, NULL, NULL);
+	scsi_init_limits(shost, &lim);
+	q = blk_mq_alloc_queue(&sdev->host->tag_set, &lim, NULL);
 	if (IS_ERR(q)) {
 		/* release fn is set up in scsi_sysfs_device_initialise, so
 		 * have to free and put manually here */
@@ -343,7 +345,6 @@ static struct scsi_device *scsi_alloc_sdev(struct scsi_target *starget,
 	kref_get(&sdev->host->tagset_refcnt);
 	sdev->request_queue = q;
 	q->queuedata = sdev;
-	__scsi_init_queue(sdev->host, q);
 
 	depth = sdev->host->cmd_per_lun ?: 1;
 
diff --git a/drivers/scsi/scsi_transport_fc.c b/drivers/scsi/scsi_transport_fc.c
index 87b2235b8ece45..0799700b0fca77 100644
--- a/drivers/scsi/scsi_transport_fc.c
+++ b/drivers/scsi/scsi_transport_fc.c
@@ -4276,6 +4276,7 @@ fc_bsg_hostadd(struct Scsi_Host *shost, struct fc_host_attrs *fc_host)
 {
 	struct device *dev = &shost->shost_gendev;
 	struct fc_internal *i = to_fc_internal(shost->transportt);
+	struct queue_limits lim;
 	struct request_queue *q;
 	char bsg_name[20];
 
@@ -4286,8 +4287,8 @@ fc_bsg_hostadd(struct Scsi_Host *shost, struct fc_host_attrs *fc_host)
 
 	snprintf(bsg_name, sizeof(bsg_name),
 		 "fc_host%d", shost->host_no);
-
-	q = bsg_setup_queue(dev, bsg_name, NULL, fc_bsg_dispatch,
+	scsi_init_limits(shost, &lim);
+	q = bsg_setup_queue(dev, bsg_name, &lim, fc_bsg_dispatch,
 			fc_bsg_job_timeout, i->f->dd_bsg_size);
 	if (IS_ERR(q)) {
 		dev_err(dev,
@@ -4295,7 +4296,6 @@ fc_bsg_hostadd(struct Scsi_Host *shost, struct fc_host_attrs *fc_host)
 			shost->host_no);
 		return PTR_ERR(q);
 	}
-	__scsi_init_queue(shost, q);
 	blk_queue_rq_timeout(q, FC_DEFAULT_BSG_TIMEOUT);
 	fc_host->rqst_q = q;
 	return 0;
@@ -4311,6 +4311,7 @@ fc_bsg_rportadd(struct Scsi_Host *shost, struct fc_rport *rport)
 {
 	struct device *dev = &rport->dev;
 	struct fc_internal *i = to_fc_internal(shost->transportt);
+	struct queue_limits lim;
 	struct request_queue *q;
 
 	rport->rqst_q = NULL;
@@ -4318,13 +4319,13 @@ fc_bsg_rportadd(struct Scsi_Host *shost, struct fc_rport *rport)
 	if (!i->f->bsg_request)
 		return -ENOTSUPP;
 
-	q = bsg_setup_queue(dev, dev_name(dev), NULL, fc_bsg_dispatch_prep,
+	scsi_init_limits(shost, &lim);
+	q = bsg_setup_queue(dev, dev_name(dev), &lim, fc_bsg_dispatch_prep,
 				fc_bsg_job_timeout, i->f->dd_bsg_size);
 	if (IS_ERR(q)) {
 		dev_err(dev, "failed to setup bsg queue\n");
 		return PTR_ERR(q);
 	}
-	__scsi_init_queue(shost, q);
 	blk_queue_rq_timeout(q, BLK_DEFAULT_SG_TIMEOUT);
 	rport->rqst_q = q;
 	return 0;
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index c131746bf20777..5e1bb488da15c0 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1535,6 +1535,7 @@ iscsi_bsg_host_add(struct Scsi_Host *shost, struct iscsi_cls_host *ihost)
 {
 	struct device *dev = &shost->shost_gendev;
 	struct iscsi_internal *i = to_iscsi_internal(shost->transportt);
+	struct queue_limits lim;
 	struct request_queue *q;
 	char bsg_name[20];
 
@@ -1542,14 +1543,14 @@ iscsi_bsg_host_add(struct Scsi_Host *shost, struct iscsi_cls_host *ihost)
 		return -ENOTSUPP;
 
 	snprintf(bsg_name, sizeof(bsg_name), "iscsi_host%d", shost->host_no);
-	q = bsg_setup_queue(dev, bsg_name, NULL, iscsi_bsg_host_dispatch, NULL,
+	scsi_init_limits(shost, &lim);
+	q = bsg_setup_queue(dev, bsg_name, &lim, iscsi_bsg_host_dispatch, NULL,
 			0);
 	if (IS_ERR(q)) {
 		shost_printk(KERN_ERR, shost, "bsg interface failed to "
 			     "initialize - no request queue\n");
 		return PTR_ERR(q);
 	}
-	__scsi_init_queue(shost, q);
 
 	ihost->bsg_q = q;
 	return 0;
diff --git a/include/scsi/scsi_transport.h b/include/scsi/scsi_transport.h
index a0458bda314872..1394cf313bb37c 100644
--- a/include/scsi/scsi_transport.h
+++ b/include/scsi/scsi_transport.h
@@ -83,6 +83,6 @@ scsi_transport_device_data(struct scsi_device *sdev)
 		+ shost->transportt->device_private_offset;
 }
 
-void __scsi_init_queue(struct Scsi_Host *shost, struct request_queue *q);
+void scsi_init_limits(struct Scsi_Host *shost, struct queue_limits *lim);
 
 #endif /* SCSI_TRANSPORT_H */
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-5-hch%40lst.de.
