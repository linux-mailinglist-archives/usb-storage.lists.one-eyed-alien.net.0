Return-Path: <usb-storage+bncBDUNBGN3R4KRB7UFWCYAMGQEYWR3U7A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0C9895438
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:12 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id 41be03b00d2f7-5cfd6ba1c11sf3855093a12.0
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063231; cv=pass;
        d=google.com; s=arc-20160816;
        b=PO7pAevLlaQ2fcrwZtYU8OXrkYuz/jaXX0HdFEZbmV+JwhXj/JCt8Aq9IPvDqFp/UF
         zj/bupLLdXz+eLN+qG6B/DrZsCdoUfMBue5+r0pJagjAr+SVAIYhwQptxgpXsfRsHir1
         9r5tL0OGNafJH1HEoKApjO4C6uI7cSE+lINAZ0sIVL3OAh/HdfYTK1PFzMM8/78V7QNP
         edtPkzrO6RyX9aJXe7aPXcfhFZibdDwkLXtmzm0bYizfBeuiSgek/J2YL312yVzUY6re
         2wlHyi121e0PXv3b6hszQxaL3QC3Fxzuc5Fc6lYspgoTaoirGaeNpYaTX7nu7ZaMayi/
         mg7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=L74CFR6rw5BsZBIqwOZ1TXnbvKeK76rw76PKNgbQPC4=;
        fh=8ahxXy09iiIzMvp4sCiZhXLt32R3skOXbwiaQBsggEk=;
        b=QNBhn34DIP7feNfrrQiAFk2WdSyHYEcLuB38C0DM0Zcpd2mS2x00smqZAbZBPVw1cO
         XyskKd1W+Nb0eqcwIrRNVNbPiO9jeYNrUziwV4liE/VTDIIZ94No3su+iZ8qV57NnZlh
         VJKLBAjDbasmN+TuaoAAD+nt8hqvd3YKtYnd+yjVj94aM3l3T/c5Nox0AFH0ncjzFlIt
         dTU3E5RYvnUr/A7eRz+GaUSqqYPTct10sG+y+iGOIaZFhbed4NBqNPYQT2pL9PItVE3x
         wHroTVlhhTdHeoXnmXak7UVkGldo/mi3VlnEThYl9X/hV+JBVZSSx7Y0tq78Zdwcj9uD
         r3Rg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=VZhnyOE1;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063231; x=1712668031; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L74CFR6rw5BsZBIqwOZ1TXnbvKeK76rw76PKNgbQPC4=;
        b=UpMcd042tQPWwo5LkdcPdhyhn3SvmR2dv3KFh8rQm6tpvZPTJY6vutai0WIgyEz5ry
         DSsszX2ZMSs8q/5UfYlaEy155TTMEu8f9yWzXv9j4a7qRM1juGaEHlsteqPvrt1GEjQh
         aEx5bsQw3IxikKjhde/hfOfkZywo2Z2VryP+8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063231; x=1712668031;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L74CFR6rw5BsZBIqwOZ1TXnbvKeK76rw76PKNgbQPC4=;
        b=BQjIRvpMt0rwbbI6+8+ypBZz7sl6Zl/NB8FohJGuX585FOxxXqoPXq9woWEyS/BPEr
         poMA55D8oY9xC3kVUcvHWWKVAZBx3nR5nDStpKqSyAbsXw+KhqD6VrFmTdXfB8nTWKal
         QeCulPbYH6+jzxZjS0dNh4IXqYrlPRNmvMGX2bLZiG46l+Ml70uvM5ZuABVrlEFGXVzN
         z8SeF5NIZufqFkqrScKYPmmILBQGviRmMy1czDOFKmNrIZMtZeKQwF5OqKVCD+060AMG
         kDVr8r7KehrpOsSeHjJjJJJFEGpetmzGCO580lNSx2rpwhEafKz4t/ctewZu1ICG7QQ8
         LbhQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVtZS0pphAfEbJ0oQjFuBVEJmCrXDFjikPEbv12TENAbGqEn8P/6W2wS3oUtjBBpXFaDhI9uOc99sCRVFN+J9n1j0eAzYRglE7X
X-Gm-Message-State: AOJu0Yybk7zPtwDsgfJr8PuaHBWJypqCOVhJZc4VzsUito3KR/myUj0o
	KMScX+w6QzDiF3ewXIVlY3ngyPdn3MQVRY9cD1oDryKtYspPKrZYhXKlGI5BW/A=
X-Google-Smtp-Source: AGHT+IEnt8sNqeHHkNnPC+z9r0Q4U4FsEZ2kYz0F0XGHhkBWBuTE1JInR244aCXv93xvM+mO0l3LYg==
X-Received: by 2002:a17:902:c947:b0:1e0:ca47:4d9b with SMTP id i7-20020a170902c94700b001e0ca474d9bmr12961771pla.29.1712063230926;
        Tue, 02 Apr 2024 06:07:10 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:22c8:b0:1dd:72ea:58b6 with SMTP id
 y8-20020a17090322c800b001dd72ea58b6ls2875083plg.0.-pod-prod-09-us; Tue, 02
 Apr 2024 06:07:09 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXq2USGQeRb/NYTj0dsjnccz1Q9p8IYz9DBUDYtodjid0yez1JfTuCJ7nFHIcJGLeshNoQ4+Oz4D415+FBsdhe8s0ELEJHHQ//JHhngS9jpqYl94tw=
X-Received: by 2002:a17:902:e94e:b0:1e2:3d05:5f4c with SMTP id b14-20020a170902e94e00b001e23d055f4cmr11764570pll.39.1712063229599;
        Tue, 02 Apr 2024 06:07:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063229; cv=none;
        d=google.com; s=arc-20160816;
        b=A5NkfaPm5gD52dodo/+d/KcLXWpyRXANW99Xf7/iLj8jxT22QZzNqauJIo0GyqIctK
         SH7qR3TYJ0nXzi1kxyZgG1c00vUk83dma+cPWW+ZNOxpOkbPvPAeqB0VHn61h4VVyPu+
         5GOuuvIA5NvH9t7h7B3hq+f7maFjiNMpXG3im0KjYvct7pjsDAv0wRoXoPTPMIhvCoAx
         U7Q4i5w09lGh/eJH1bQi9J34+2BBSvPDqxvEa5r5PplsrNEHXxUKcblXozTEqi3R834X
         Wl0KdVgSspWecYfP9bHC32DGt0+y++N4h4xlZR98z3AwRwEUUMrjFnE3jj9AQG/qtbix
         YWIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nFVtEH8kjrXq58VeMsY4DusbYHlTaq2Q83bR9XbKjL8=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=jwgNXyuWPq65lpL+aCk890nbmOv0YIGsHXcDS2zHjqGsPvhMS1N2o4e1LSNqyWVvp5
         pE8iRVFK/AVrih57dNZ/WUnIUAWNez2dKUgzLIT38LDHT/4EN+g00FMpofAls9lqs6cV
         vMBSrmNSbV8hwtMCMU75VE3NggbbVfX1zZ38UTD6sbnuE3K4WOs8rmI4EDXtaDlcmLX1
         iyfRDtsRB5k059WpGmd53vCJ399I5sFxoRJ8uMiEUI1hrqjGeiVnwHumaAoxt2Bg7jtI
         w5hXLIg+EvNXH3DRJ/Kzu3epJPU/+fA+VvL4bHX0AsZ1ff7MtNVNTuxPWkDCXBfV+RTC
         HaAw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=VZhnyOE1;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id z3-20020a170902d54300b001e2832e333dsi393775plf.511.2024.04.02.06.07.09
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:09 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdqs-0000000BFMU-2NnW;
	Tue, 02 Apr 2024 13:06:59 +0000
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
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH 04/23] scsi: initialize scsi midlayer limits
 before allocating the queue
Date: Tue,  2 Apr 2024 15:06:26 +0200
Message-Id: <20240402130645.653507-5-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=VZhnyOE1;
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
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
index ffd7e7e72933c5..ff3778f7009ebf 100644
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-5-hch%40lst.de.
