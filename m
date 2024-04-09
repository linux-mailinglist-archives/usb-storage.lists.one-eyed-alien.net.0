Return-Path: <usb-storage+bncBDUNBGN3R4KRBWFF2WYAMGQE5G7DFHY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 3943289DC72
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:18 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id d2e1a72fcca58-6ed25ed4a5fsf2235442b3a.1
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673497; cv=pass;
        d=google.com; s=arc-20160816;
        b=HeAkbg/KbFRbSYC7ROmUvJwy/ZHyYVAyLEHVUN9w1gxOxYvi4QPXAWsSA6iqlthmtr
         2N1CisfSDzMipMVicxKIzBX3n9VJK4kQW06P0OcEibtf9zkUj7gKjNPHAe0srk6FtLtZ
         Lrh1p9QLVPfwpVxm06VoCwboG1lscjyyS0/g03aJxITUmFIAx95xi8Eo1aowzZyCEg6z
         BjXTq9LQr/KlpDozhKqiWbFhF6igvyN399wvmwobohmFx3ZINRy0ft9PkRChWCGeBgVT
         JSyH5itqLiJrN9y6ygAvDZ4W8jxFKMRrRzcUCAUcqZZxrGZ/S9zXkhjRvNKHGkKCnKQu
         rNxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ZdaPfIiw4EZGSqeKAsxTa+r2iD4HJyZePAs4McP2jHI=;
        fh=bdze6tciWTBB7+JoVgHmNkAlqYkgf1tul1fJdo9QPc4=;
        b=YKX7I5tKjpyYnsNMmD0CYKNKFYv5YpG2Ng4ZlSg5eB8yWgRPWZrqyUb7jGZhHRuwiu
         wTf025RaipV8nkdG344ldO464mTQY/a5ZZf/vgkPbb6mjOp+cgNcozVD8IWI8u9NAlQn
         3hSyMF75c9b5xArJyRM6hmSA11Ybe5+PBDKAjRW7BDkK+qAqLAgPRkzngW4vK5BJew/h
         fK4S3pymraXKrXWBPlWC5nUFmL7OTt1jrR0VN3o2RDmnq3Nu5u723h09qDVsAiLmuXYc
         0dREUW6sCYF7mg7hRxUnRfriUS+SnujGps69ceeP1hoe3J9TM6odo12+fmTjD7fqsH9W
         m3og==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=3yPZ3pGk;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673497; x=1713278297; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZdaPfIiw4EZGSqeKAsxTa+r2iD4HJyZePAs4McP2jHI=;
        b=hpwKzEatoZj6tqbnLh6s4zWCwPyHyvBJoIYCk6j6jQoX6+VjYQAxL597QTTSy1hcnx
         kjLqgiOBHAslfcueWEO5nHjz7gyLmi5+iBG/WcOA1Tyk5NL3jMT9w3tRxWI7t1BhBaEE
         sLqQvxv2LebFQeMIim3jAl0MOru/iyazMoXqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673497; x=1713278297;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZdaPfIiw4EZGSqeKAsxTa+r2iD4HJyZePAs4McP2jHI=;
        b=OBnMDIvWzgH07ZMgsRRQmjoI/cF8OOP1I5of1YSU+YSVuLGtqSjwlEz0o1I3hrXG13
         KF+41JdSX7EtB6YwvCWp1dQCQ7nD9O/BExzXDHANakcbL6Wp48IlwCXsF51Mau8ulFdi
         NqzU7UGAsIVEsQ8mYx4COaFO8KUxRYBXlLET37PrcDV6vFUVmOr4ejivtqCfIubV/BPi
         hzNknm0zhYvAX8pHfSaDYMOY/kTCJmXzG/D44YQGmHLsjUdR4VgmmL4niMYoka95WnfP
         u0FlSUhEgdCiW4iGDCeBqtgwmJgpkP6uqcr5WKdmFKQwqk2RYxSUnQAS+SX0GWxFRBZR
         qTNg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVkcUQQSmMAhbUHBXEBasXr7SPF4x5sTuCUGHdwW+jasf2MOhq3oGUGT3YD6buoiaTWMOyESrifvo4SUcdwXbEshbUg0Q/w0HGA
X-Gm-Message-State: AOJu0Yy1saQC6hKs673gj0VZRO7GluHuFXd4n/JpkY+CAvirrtq0VDi4
	4F+nY5wfFB6y4j5w+Yg9ITl5GOq3ftUqdQ2ZFE5LfiX9wIto+qA2Ebg8WznBMcY=
X-Google-Smtp-Source: AGHT+IEnqjX1K4vgMEqBT2ClBRIGL59yxWTBxia2wf39NN3A/mSSICv+rwYy+8lEZnCtlhBM6Mjbgw==
X-Received: by 2002:a05:6a20:9194:b0:1a7:4b33:7c6f with SMTP id v20-20020a056a20919400b001a74b337c6fmr11584795pzd.43.1712673496563;
        Tue, 09 Apr 2024 07:38:16 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:1484:b0:6e7:220a:8200 with SMTP id
 v4-20020a056a00148400b006e7220a8200ls4413471pfu.0.-pod-prod-06-us; Tue, 09
 Apr 2024 07:38:15 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUpMG0nugJi167o9mrEO3sUslF3L/4MqMr5qh6kQwJPsDRmrfEPmd5yuIumDYJybHcvj+IftP3Ub+Qib8muphzK8bxABCtKV0o83i962RXzWChypIo=
X-Received: by 2002:a05:6a20:2e98:b0:1a3:c3e0:518c with SMTP id bj24-20020a056a202e9800b001a3c3e0518cmr11089550pzb.52.1712673495173;
        Tue, 09 Apr 2024 07:38:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673495; cv=none;
        d=google.com; s=arc-20160816;
        b=a/gcBUnh89PiNhYnlYZPIsuURPZyu5VZ7h5zbsf5z8I37ZwZCg3ZR92P4USPrcANfH
         NFaHc19dlKQ81upVbq8HnXGTEAoxdoW5VDtixqihSVG03XlIIic8pYCXIg4z4mPb6iQ0
         oSpB0ORIgIurDimlRciy92GOoPm0z8NKkJDDjMjSZh72zfAMr2jUd0cXCnSpAtpDCRBR
         uHUWqYSxybNKLBheD4+Ysu1cP8Ps0P9Y+mE2QKk27wOtCvubTwAbner73gnUQigWpsEk
         NsxL2U+JQ3hZZtsup85s8r6Nh7eZXS0W7TZoT5+sU4M93T8UqTTb61BVvs+jgkNtwIML
         GEYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=W1snHlHknVqkcICEKRKch2aAHn85CmWlcrsMHCVAwWU=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=Bi7Ks+HH4/XJy2Qb5haLDT+tm0rHvoAa6uGGztPpFJgSRzYNaPB8vywH3syYWaXWR3
         LRaQMthm9iLfWizfLuvhF19Oqj5CUSEff4Axh/GaS7a3rmJem2cj8YJBPPLKDFYfhDy6
         dAs/zdVr91Gvf6wwsEhrbXpuLSvggCv75GsvLlB59pNPbvxS2vlVqkbtjSFP6/fcGb57
         2zift1ssUvRkEXU76iActWtgKsGuPYoBaMypUPLykB90htK4v8IJWcbCBLgzRF7/4e0L
         LWKtroW/l1uFAnSLYJq7byu1tzYctXcQbHZMnXkOVddeMk/qM5cc1qv1e+D/cfV51zqz
         UOnA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=3yPZ3pGk;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id h7-20020a170902680700b001e0f36613c4si8779068plk.498.2024.04.09.07.38.15
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:15 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCbp-00000002Rv7-3C92;
	Tue, 09 Apr 2024 14:38:02 +0000
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
	megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Hannes Reinecke <hare@suse.de>
Subject: [usb-storage] [PATCH 04/23] scsi: initialize scsi midlayer limits
 before allocating the queue
Date: Tue,  9 Apr 2024 16:37:29 +0200
Message-Id: <20240409143748.980206-5-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=3yPZ3pGk;
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
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
Reviewed-by: Bart Van Assche <bvanassche@acm.org>
Reviewed-by: John Garry <john.g.garry@oracle.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Hannes Reinecke <hare@suse.de>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-5-hch%40lst.de.
