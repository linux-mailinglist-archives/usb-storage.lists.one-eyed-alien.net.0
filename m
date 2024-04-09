Return-Path: <usb-storage+bncBDUNBGN3R4KRBBFG2WYAMGQEIXQZLUY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EDF89DC9E
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:39:01 +0200 (CEST)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-2a2fe3c35a1sf3564418a91.0
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:39:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673540; cv=pass;
        d=google.com; s=arc-20160816;
        b=H9cYEBwyyrajEBLyAVNhKLjs344bVFRTfHJ4IdxXa4vgvx1SSCiwfG8cthsDZoibH+
         2T+fXNzTGxECR9znfEMh9FgiUqUfG4oCBSbni3paqXXW+5j1n8Z+bO0X8BMeA16NTnOh
         eLAV+7YNQa2wLAt1O9J0B8c7nzonimQd0Mu4Z5F7xIWcViERNY08+56m+0Y3J46Gr+Wa
         LQtYmE52sNclndySXR7pcCnqZLaZSM6/zpIcBVpeaijjynyqDwbgAa56JFN6YIKkqcmk
         gnn7WHKTwdrEJenebuxmn26zepyeKlFlR0bKpH8m68f5gfW55YczRjmFbQjx4db89HEN
         0rMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=L8BPImiWd0gqP5SHs4USBlL3tJ+/fwuJLosGbp8yQig=;
        fh=GRWeEkTTQoBTHocd/y4gPCYYBrfyXsovzR1lHzxs1qY=;
        b=If6/qojqMAMeDN3nMIjMxjnJrlPJQeMjcZeFrDk6tEHIeqGxmko7iR3foUnpOHbnvI
         KbtOOHdn8pD04gvUX7gyj2up1s/UvOvx1LwZMAW0CQQmy/48vEeCgiOmSJEVYOnf46+C
         tmBFI7mo4u1G3352WKLbwU2Wbdv8ODDoRTY6WBdq/PCSN2fAz82T+DBw5Qb4CThMferC
         BfmGKMGqpzEc37czXCuWLg4T5hXGI6mgDZFmmV+iKV7vkVmDGypXSiU12ODblO2sYfjy
         ZzPP2NKsoLbWvjl3L5DF4o8LhSpKi4oMyh9I+0SLrpTaPc4fejoARqraGU/lzxHHYINC
         5Y/g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="KZPtu/fY";
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673540; x=1713278340; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L8BPImiWd0gqP5SHs4USBlL3tJ+/fwuJLosGbp8yQig=;
        b=cODIpFnHHK+0imGC8RyimtSNgoyZHHXLDyRDWjNcj6QjUUM5DMsQbiQUqa+SbHkLkf
         4ETseACvCrEUcEbC1d8aORElO43JVzdVaBA2NqJGV8EB0uexv5E/7T3S6SEI8sJlQV4v
         8YI1nnj5HCR5qj328CHa9C2FHIOVbT3gbkE3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673540; x=1713278340;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L8BPImiWd0gqP5SHs4USBlL3tJ+/fwuJLosGbp8yQig=;
        b=d3/81CT9AfHk7tAzR2OR4h57KTteUKK3d7/2L4+u4oHybaiIqZMB7T2yYBC3ZVs4Jd
         fMX9izkRlD6mrqVdtxREGp9FwruF6Sk92O16CFJI/pKAa4xLMu1ev3U2/nGmFDe9oWTO
         HcQAHzuvFJVnh8Hy3ICbeyG3NgWm6lEnph38eSBcguXGj5mierFlLLiRB/TQOlJtU9/p
         7nGOSUhT9TRuCb3Ow/3I9MJtPHHH9FPU7EykjLUwTQgPxjYMNVxOoN8fZ8d29ecETEwm
         ZD1CUa/ihezTta4xeoDG5GX7/EgBN7YE08uuNAbE1k9zGoZcfc8bgVfYa5iMvlY93XY1
         aPjQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVJXLqxC7XUTqP/tLtyaddTaGkiKpSN/3yLhDb+4eVK91sLxkW3420PFBH3D4jE2FRaROt58IaShBa9hHxdTVWbB/KM8c+LEgdP
X-Gm-Message-State: AOJu0YzXrAFRCL+lW1zG3deIUL4Z6zAOAuLL8Fv4cisX0OMx73MQYBjw
	gEIRQC3iwQZajyVLDasLwoaduQLoEqA24Is2GQISg1jqmpDpG44qLC6Ow6VTgME=
X-Google-Smtp-Source: AGHT+IElc9MRsAVhEIxBmcsz3cQonNDKDcqw4VtFmQ2WnzHJXd9FVOH9TeGl5Y/TVJK23feYVa8rxA==
X-Received: by 2002:a17:90b:510:b0:29f:67ad:7db0 with SMTP id r16-20020a17090b051000b0029f67ad7db0mr10590296pjz.11.1712673540415;
        Tue, 09 Apr 2024 07:39:00 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:df14:b0:2a0:1768:a51a with SMTP id
 gp20-20020a17090adf1400b002a01768a51als3007063pjb.0.-pod-prod-07-us; Tue, 09
 Apr 2024 07:38:59 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUwW7MP1sR3HhlEzjtMVrUt2fPYIk9+T/xUaTeyVesdwY0ilp78LJHrVD2/eJGstkRkxmyUqa0WwXQXPTVshXUkwx6B380nLdV1cALfH7MWIkaSrqE=
X-Received: by 2002:a05:6a21:2b0a:b0:1a3:600b:444c with SMTP id ss10-20020a056a212b0a00b001a3600b444cmr7074pzb.36.1712673539029;
        Tue, 09 Apr 2024 07:38:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673539; cv=none;
        d=google.com; s=arc-20160816;
        b=WB7KBkK8kR00YRhV3d0fhq1dVKIgFAcJ/gLj7Wf0hMxc8IVQwzjeim6F3VE01n/wMJ
         H29/QjWf32vdsuXkVixvFVgJgeEA/ryyuaRNiSoFsFXAN3yYhhARV+w4gSHqyFQhnEY+
         lYqNVDjLc+TMjDF0IDFKOp3nj3rAU8tzMd7seAK1KPf60omupyjCjP17W3BivXaBUgW8
         iVii8vz3/Nq3dN6LmNf6vT+/VII4zNK/R5x0bSo0y1rV5o4vQvK7f0es2K6GzGlZxonC
         yhaNwNeMUYAA8QFRvE8Nri77YRUHq+vxEODCQNUqhy4UWvnXwNrFru7dve8GrpTMpyLb
         nT6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jj1+b92LWLVVj4DVdB3/MPFZfWGVWvjsYmG/SsHZM1s=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=CKXVOWO1Thnl8We8FvsP5jnECodInQkonLgOdJSsJirz36zs4qaGipvx6tLjGJMbyl
         fA/VohKWAlv5eU+sjw0iH0uYd3pT54CIe8ON6LVdkbtsgs5WJGASdlQz3YdkD9JHI5wf
         aBUQXg0aonQKyDMEaMd9hpjREYPAi5AmFpMmKOdepK5sTja0Oui9jC8lXmJF1Mp5Rrhb
         g6ZsPRyVOKBoJ56WBxO5yPFUYDV6ouQgtyX0ezUm58TaH8wc5AwIsE7tqEe3yn8dzEvI
         A2IB91oALoD3pd0fuMD2vvZiT0BR15Ma0yeejIinUcDl9dpPaF/s5coXUNyDqGFpkt9X
         Jj4Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="KZPtu/fY";
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id c9-20020a170903234900b001e48d09966bsi1961176plh.436.2024.04.09.07.38.58
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:59 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCcX-00000002SGM-3OvE;
	Tue, 09 Apr 2024 14:38:46 +0000
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
Subject: [usb-storage] [PATCH 20/23] libata: switch to using ->device_configure
Date: Tue,  9 Apr 2024 16:37:45 +0200
Message-Id: <20240409143748.980206-21-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b="KZPtu/fY";
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

Switch to the ->device_configure method instead of ->slave_configure
and update the block limits on the passed in queue_limits instead
of using the per-limit accessors.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: John Garry <john.g.garry@oracle.com>
Reviewed-by: Hannes Reinecke <hare@suse.de>
Acked-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/ata/ahci.h                     |  2 +-
 drivers/ata/libata-sata.c              | 11 +++++++----
 drivers/ata/libata-scsi.c              | 19 +++++++++++--------
 drivers/ata/libata.h                   |  3 ++-
 drivers/ata/pata_macio.c               |  2 +-
 drivers/ata/sata_mv.c                  |  2 +-
 drivers/ata/sata_nv.c                  |  4 ++--
 drivers/ata/sata_sil24.c               |  2 +-
 drivers/scsi/hisi_sas/hisi_sas.h       |  3 ++-
 drivers/scsi/hisi_sas/hisi_sas_main.c  |  7 ++++---
 drivers/scsi/hisi_sas/hisi_sas_v1_hw.c |  2 +-
 drivers/scsi/hisi_sas/hisi_sas_v2_hw.c |  2 +-
 drivers/scsi/hisi_sas/hisi_sas_v3_hw.c |  7 ++++---
 drivers/scsi/libsas/sas_scsi_host.c    |  7 ++++---
 include/linux/libata.h                 | 10 ++++++----
 include/scsi/libsas.h                  |  5 +++--
 16 files changed, 51 insertions(+), 37 deletions(-)

diff --git a/drivers/ata/ahci.h b/drivers/ata/ahci.h
index 344c87210d8fe4..8f40f75ba08cff 100644
--- a/drivers/ata/ahci.h
+++ b/drivers/ata/ahci.h
@@ -397,7 +397,7 @@ extern const struct attribute_group *ahci_sdev_groups[];
 	.sdev_groups		= ahci_sdev_groups,			\
 	.change_queue_depth     = ata_scsi_change_queue_depth,		\
 	.tag_alloc_policy       = BLK_TAG_ALLOC_RR,             	\
-	.slave_configure        = ata_scsi_slave_config
+	.device_configure	= ata_scsi_device_configure
 
 extern struct ata_port_operations ahci_ops;
 extern struct ata_port_operations ahci_platform_ops;
diff --git a/drivers/ata/libata-sata.c b/drivers/ata/libata-sata.c
index a8d773003d74bf..9e047bf912b12b 100644
--- a/drivers/ata/libata-sata.c
+++ b/drivers/ata/libata-sata.c
@@ -1254,21 +1254,24 @@ void ata_sas_tport_delete(struct ata_port *ap)
 EXPORT_SYMBOL_GPL(ata_sas_tport_delete);
 
 /**
- *	ata_sas_slave_configure - Default slave_config routine for libata devices
+ *	ata_sas_device_configure - Default device_configure routine for libata
+ *				   devices
  *	@sdev: SCSI device to configure
+ *	@lim: queue limits
  *	@ap: ATA port to which SCSI device is attached
  *
  *	RETURNS:
  *	Zero.
  */
 
-int ata_sas_slave_configure(struct scsi_device *sdev, struct ata_port *ap)
+int ata_sas_device_configure(struct scsi_device *sdev, struct queue_limits *lim,
+		struct ata_port *ap)
 {
 	ata_scsi_sdev_config(sdev);
 
-	return ata_scsi_dev_config(sdev, ap->link.device);
+	return ata_scsi_dev_config(sdev, lim, ap->link.device);
 }
-EXPORT_SYMBOL_GPL(ata_sas_slave_configure);
+EXPORT_SYMBOL_GPL(ata_sas_device_configure);
 
 /**
  *	ata_sas_queuecmd - Issue SCSI cdb to libata-managed device
diff --git a/drivers/ata/libata-scsi.c b/drivers/ata/libata-scsi.c
index 0a0f483124c3a5..db441815d63306 100644
--- a/drivers/ata/libata-scsi.c
+++ b/drivers/ata/libata-scsi.c
@@ -1021,7 +1021,8 @@ bool ata_scsi_dma_need_drain(struct request *rq)
 }
 EXPORT_SYMBOL_GPL(ata_scsi_dma_need_drain);
 
-int ata_scsi_dev_config(struct scsi_device *sdev, struct ata_device *dev)
+int ata_scsi_dev_config(struct scsi_device *sdev, struct queue_limits *lim,
+		struct ata_device *dev)
 {
 	struct request_queue *q = sdev->request_queue;
 	int depth = 1;
@@ -1031,7 +1032,7 @@ int ata_scsi_dev_config(struct scsi_device *sdev, struct ata_device *dev)
 
 	/* configure max sectors */
 	dev->max_sectors = min(dev->max_sectors, sdev->host->max_sectors);
-	blk_queue_max_hw_sectors(q, dev->max_sectors);
+	lim->max_hw_sectors = dev->max_sectors;
 
 	if (dev->class == ATA_DEV_ATAPI) {
 		sdev->sector_size = ATA_SECT_SIZE;
@@ -1040,7 +1041,7 @@ int ata_scsi_dev_config(struct scsi_device *sdev, struct ata_device *dev)
 		blk_queue_update_dma_pad(q, ATA_DMA_PAD_SZ - 1);
 
 		/* make room for appending the drain */
-		blk_queue_max_segments(q, queue_max_segments(q) - 1);
+		lim->max_segments--;
 
 		sdev->dma_drain_len = ATAPI_MAX_DRAIN;
 		sdev->dma_drain_buf = kmalloc(sdev->dma_drain_len, GFP_NOIO);
@@ -1077,7 +1078,7 @@ int ata_scsi_dev_config(struct scsi_device *sdev, struct ata_device *dev)
 			"sector_size=%u > PAGE_SIZE, PIO may malfunction\n",
 			sdev->sector_size);
 
-	blk_queue_update_dma_alignment(q, sdev->sector_size - 1);
+	lim->dma_alignment = sdev->sector_size - 1;
 
 	if (dev->flags & ATA_DFLAG_AN)
 		set_bit(SDEV_EVT_MEDIA_CHANGE, sdev->supported_events);
@@ -1131,8 +1132,9 @@ int ata_scsi_slave_alloc(struct scsi_device *sdev)
 EXPORT_SYMBOL_GPL(ata_scsi_slave_alloc);
 
 /**
- *	ata_scsi_slave_config - Set SCSI device attributes
+ *	ata_scsi_device_configure - Set SCSI device attributes
  *	@sdev: SCSI device to examine
+ *	@lim: queue limits
  *
  *	This is called before we actually start reading
  *	and writing to the device, to configure certain
@@ -1142,17 +1144,18 @@ EXPORT_SYMBOL_GPL(ata_scsi_slave_alloc);
  *	Defined by SCSI layer.  We don't really care.
  */
 
-int ata_scsi_slave_config(struct scsi_device *sdev)
+int ata_scsi_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct ata_port *ap = ata_shost_to_port(sdev->host);
 	struct ata_device *dev = __ata_scsi_find_dev(ap, sdev);
 
 	if (dev)
-		return ata_scsi_dev_config(sdev, dev);
+		return ata_scsi_dev_config(sdev, lim, dev);
 
 	return 0;
 }
-EXPORT_SYMBOL_GPL(ata_scsi_slave_config);
+EXPORT_SYMBOL_GPL(ata_scsi_device_configure);
 
 /**
  *	ata_scsi_slave_destroy - SCSI device is about to be destroyed
diff --git a/drivers/ata/libata.h b/drivers/ata/libata.h
index 5c685bb1939e68..8aab0df549eacd 100644
--- a/drivers/ata/libata.h
+++ b/drivers/ata/libata.h
@@ -131,7 +131,8 @@ extern void ata_scsi_dev_rescan(struct work_struct *work);
 extern int ata_scsi_user_scan(struct Scsi_Host *shost, unsigned int channel,
 			      unsigned int id, u64 lun);
 void ata_scsi_sdev_config(struct scsi_device *sdev);
-int ata_scsi_dev_config(struct scsi_device *sdev, struct ata_device *dev);
+int ata_scsi_dev_config(struct scsi_device *sdev, struct queue_limits *lim,
+		struct ata_device *dev);
 int __ata_scsi_queuecmd(struct scsi_cmnd *scmd, struct ata_device *dev);
 
 /* libata-eh.c */
diff --git a/drivers/ata/pata_macio.c b/drivers/ata/pata_macio.c
index f046bfa5c6e7f6..3dbcd737ebb792 100644
--- a/drivers/ata/pata_macio.c
+++ b/drivers/ata/pata_macio.c
@@ -806,7 +806,7 @@ static int pata_macio_device_configure(struct scsi_device *sdev,
 	int rc;
 
 	/* First call original */
-	rc = ata_scsi_slave_config(sdev);
+	rc = ata_scsi_device_configure(sdev, lim);
 	if (rc)
 		return rc;
 
diff --git a/drivers/ata/sata_mv.c b/drivers/ata/sata_mv.c
index e82786c63fbd73..0bb900869ee08c 100644
--- a/drivers/ata/sata_mv.c
+++ b/drivers/ata/sata_mv.c
@@ -673,7 +673,7 @@ static const struct scsi_host_template mv6_sht = {
 	.sdev_groups		= ata_ncq_sdev_groups,
 	.change_queue_depth	= ata_scsi_change_queue_depth,
 	.tag_alloc_policy	= BLK_TAG_ALLOC_RR,
-	.slave_configure	= ata_scsi_slave_config
+	.device_configure	= ata_scsi_device_configure
 };
 
 static struct ata_port_operations mv5_ops = {
diff --git a/drivers/ata/sata_nv.c b/drivers/ata/sata_nv.c
index d0a8eb0e8011d0..36d99043ef50ff 100644
--- a/drivers/ata/sata_nv.c
+++ b/drivers/ata/sata_nv.c
@@ -676,7 +676,7 @@ static int nv_adma_device_configure(struct scsi_device *sdev,
 	int adma_enable;
 	u32 current_reg, new_reg, config_mask;
 
-	rc = ata_scsi_slave_config(sdev);
+	rc = ata_scsi_device_configure(sdev, lim);
 
 	if (sdev->id >= ATA_MAX_DEVICES || sdev->channel || sdev->lun)
 		/* Not a proper libata device, ignore */
@@ -1882,7 +1882,7 @@ static int nv_swncq_device_configure(struct scsi_device *sdev,
 	u8 check_maxtor = 0;
 	unsigned char model_num[ATA_ID_PROD_LEN + 1];
 
-	rc = ata_scsi_slave_config(sdev);
+	rc = ata_scsi_device_configure(sdev, lim);
 	if (sdev->id >= ATA_MAX_DEVICES || sdev->channel || sdev->lun)
 		/* Not a proper libata device, ignore */
 		return rc;
diff --git a/drivers/ata/sata_sil24.c b/drivers/ata/sata_sil24.c
index 142e70bfc4982c..72c03cbdaff43b 100644
--- a/drivers/ata/sata_sil24.c
+++ b/drivers/ata/sata_sil24.c
@@ -381,7 +381,7 @@ static const struct scsi_host_template sil24_sht = {
 	.tag_alloc_policy	= BLK_TAG_ALLOC_FIFO,
 	.sdev_groups		= ata_ncq_sdev_groups,
 	.change_queue_depth	= ata_scsi_change_queue_depth,
-	.slave_configure	= ata_scsi_slave_config
+	.device_configure	= ata_scsi_device_configure
 };
 
 static struct ata_port_operations sil24_ops = {
diff --git a/drivers/scsi/hisi_sas/hisi_sas.h b/drivers/scsi/hisi_sas/hisi_sas.h
index 1e4550156b735d..d223f482488fc6 100644
--- a/drivers/scsi/hisi_sas/hisi_sas.h
+++ b/drivers/scsi/hisi_sas/hisi_sas.h
@@ -643,7 +643,8 @@ extern int hisi_sas_probe(struct platform_device *pdev,
 			  const struct hisi_sas_hw *ops);
 extern void hisi_sas_remove(struct platform_device *pdev);
 
-extern int hisi_sas_slave_configure(struct scsi_device *sdev);
+int hisi_sas_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim);
 extern int hisi_sas_slave_alloc(struct scsi_device *sdev);
 extern int hisi_sas_scan_finished(struct Scsi_Host *shost, unsigned long time);
 extern void hisi_sas_scan_start(struct Scsi_Host *shost);
diff --git a/drivers/scsi/hisi_sas/hisi_sas_main.c b/drivers/scsi/hisi_sas/hisi_sas_main.c
index 097dfe4b620dce..11228ba51ded74 100644
--- a/drivers/scsi/hisi_sas/hisi_sas_main.c
+++ b/drivers/scsi/hisi_sas/hisi_sas_main.c
@@ -868,10 +868,11 @@ static int hisi_sas_dev_found(struct domain_device *device)
 	return rc;
 }
 
-int hisi_sas_slave_configure(struct scsi_device *sdev)
+int hisi_sas_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct domain_device *dev = sdev_to_domain_dev(sdev);
-	int ret = sas_slave_configure(sdev);
+	int ret = sas_device_configure(sdev, lim);
 
 	if (ret)
 		return ret;
@@ -880,7 +881,7 @@ int hisi_sas_slave_configure(struct scsi_device *sdev)
 
 	return 0;
 }
-EXPORT_SYMBOL_GPL(hisi_sas_slave_configure);
+EXPORT_SYMBOL_GPL(hisi_sas_device_configure);
 
 void hisi_sas_scan_start(struct Scsi_Host *shost)
 {
diff --git a/drivers/scsi/hisi_sas/hisi_sas_v1_hw.c b/drivers/scsi/hisi_sas/hisi_sas_v1_hw.c
index 161feae3acaba2..71b5008c3552cb 100644
--- a/drivers/scsi/hisi_sas/hisi_sas_v1_hw.c
+++ b/drivers/scsi/hisi_sas/hisi_sas_v1_hw.c
@@ -1736,7 +1736,7 @@ ATTRIBUTE_GROUPS(host_v1_hw);
 
 static const struct scsi_host_template sht_v1_hw = {
 	LIBSAS_SHT_BASE_NO_SLAVE_INIT
-	.slave_configure	= hisi_sas_slave_configure,
+	.device_configure	= hisi_sas_device_configure,
 	.scan_finished		= hisi_sas_scan_finished,
 	.scan_start		= hisi_sas_scan_start,
 	.sg_tablesize		= HISI_SAS_SGE_PAGE_CNT,
diff --git a/drivers/scsi/hisi_sas/hisi_sas_v2_hw.c b/drivers/scsi/hisi_sas/hisi_sas_v2_hw.c
index d89e97e8f5c2c2..342d75f12051d2 100644
--- a/drivers/scsi/hisi_sas/hisi_sas_v2_hw.c
+++ b/drivers/scsi/hisi_sas/hisi_sas_v2_hw.c
@@ -3568,7 +3568,7 @@ static void map_queues_v2_hw(struct Scsi_Host *shost)
 
 static const struct scsi_host_template sht_v2_hw = {
 	LIBSAS_SHT_BASE_NO_SLAVE_INIT
-	.slave_configure	= hisi_sas_slave_configure,
+	.device_configure	= hisi_sas_device_configure,
 	.scan_finished		= hisi_sas_scan_finished,
 	.scan_start		= hisi_sas_scan_start,
 	.sg_tablesize		= HISI_SAS_SGE_PAGE_CNT,
diff --git a/drivers/scsi/hisi_sas/hisi_sas_v3_hw.c b/drivers/scsi/hisi_sas/hisi_sas_v3_hw.c
index 756660588a1e88..a38165995e86c2 100644
--- a/drivers/scsi/hisi_sas/hisi_sas_v3_hw.c
+++ b/drivers/scsi/hisi_sas/hisi_sas_v3_hw.c
@@ -2894,11 +2894,12 @@ static ssize_t iopoll_q_cnt_v3_hw_show(struct device *dev,
 }
 static DEVICE_ATTR_RO(iopoll_q_cnt_v3_hw);
 
-static int slave_configure_v3_hw(struct scsi_device *sdev)
+static int device_configure_v3_hw(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct Scsi_Host *shost = dev_to_shost(&sdev->sdev_gendev);
 	struct hisi_hba *hisi_hba = shost_priv(shost);
-	int ret = hisi_sas_slave_configure(sdev);
+	int ret = hisi_sas_device_configure(sdev, lim);
 	struct device *dev = hisi_hba->dev;
 
 	if (ret)
@@ -3321,7 +3322,7 @@ static void hisi_sas_map_queues(struct Scsi_Host *shost)
 
 static const struct scsi_host_template sht_v3_hw = {
 	LIBSAS_SHT_BASE_NO_SLAVE_INIT
-	.slave_configure	= slave_configure_v3_hw,
+	.device_configure	= device_configure_v3_hw,
 	.scan_finished		= hisi_sas_scan_finished,
 	.scan_start		= hisi_sas_scan_start,
 	.map_queues		= hisi_sas_map_queues,
diff --git a/drivers/scsi/libsas/sas_scsi_host.c b/drivers/scsi/libsas/sas_scsi_host.c
index 9047cfcd1072ec..da11d32840e272 100644
--- a/drivers/scsi/libsas/sas_scsi_host.c
+++ b/drivers/scsi/libsas/sas_scsi_host.c
@@ -804,14 +804,15 @@ EXPORT_SYMBOL_GPL(sas_target_alloc);
 
 #define SAS_DEF_QD 256
 
-int sas_slave_configure(struct scsi_device *scsi_dev)
+int sas_device_configure(struct scsi_device *scsi_dev,
+		struct queue_limits *lim)
 {
 	struct domain_device *dev = sdev_to_domain_dev(scsi_dev);
 
 	BUG_ON(dev->rphy->identify.device_type != SAS_END_DEVICE);
 
 	if (dev_is_sata(dev)) {
-		ata_sas_slave_configure(scsi_dev, dev->sata_dev.ap);
+		ata_sas_device_configure(scsi_dev, lim, dev->sata_dev.ap);
 		return 0;
 	}
 
@@ -829,7 +830,7 @@ int sas_slave_configure(struct scsi_device *scsi_dev)
 
 	return 0;
 }
-EXPORT_SYMBOL_GPL(sas_slave_configure);
+EXPORT_SYMBOL_GPL(sas_device_configure);
 
 int sas_change_queue_depth(struct scsi_device *sdev, int depth)
 {
diff --git a/include/linux/libata.h b/include/linux/libata.h
index 6dd9a4f9ca7cb5..f9c892f8940d5b 100644
--- a/include/linux/libata.h
+++ b/include/linux/libata.h
@@ -1151,7 +1151,8 @@ extern int ata_std_bios_param(struct scsi_device *sdev,
 			      sector_t capacity, int geom[]);
 extern void ata_scsi_unlock_native_capacity(struct scsi_device *sdev);
 extern int ata_scsi_slave_alloc(struct scsi_device *sdev);
-extern int ata_scsi_slave_config(struct scsi_device *sdev);
+int ata_scsi_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim);
 extern void ata_scsi_slave_destroy(struct scsi_device *sdev);
 extern int ata_scsi_change_queue_depth(struct scsi_device *sdev,
 				       int queue_depth);
@@ -1249,7 +1250,8 @@ extern struct ata_port *ata_sas_port_alloc(struct ata_host *,
 extern void ata_port_probe(struct ata_port *ap);
 extern int ata_sas_tport_add(struct device *parent, struct ata_port *ap);
 extern void ata_sas_tport_delete(struct ata_port *ap);
-extern int ata_sas_slave_configure(struct scsi_device *, struct ata_port *);
+int ata_sas_device_configure(struct scsi_device *sdev, struct queue_limits *lim,
+		struct ata_port *ap);
 extern int ata_sas_queuecmd(struct scsi_cmnd *cmd, struct ata_port *ap);
 extern void ata_tf_to_fis(const struct ata_taskfile *tf,
 			  u8 pmp, int is_cmd, u8 *fis);
@@ -1415,13 +1417,13 @@ extern const struct attribute_group *ata_common_sdev_groups[];
 	__ATA_BASE_SHT(drv_name),				\
 	.can_queue		= ATA_DEF_QUEUE,		\
 	.tag_alloc_policy	= BLK_TAG_ALLOC_RR,		\
-	.slave_configure	= ata_scsi_slave_config
+	.device_configure	= ata_scsi_device_configure
 
 #define ATA_SUBBASE_SHT_QD(drv_name, drv_qd)			\
 	__ATA_BASE_SHT(drv_name),				\
 	.can_queue		= drv_qd,			\
 	.tag_alloc_policy	= BLK_TAG_ALLOC_RR,		\
-	.slave_configure	= ata_scsi_slave_config
+	.device_configure	= ata_scsi_device_configure
 
 #define ATA_BASE_SHT(drv_name)					\
 	ATA_SUBBASE_SHT(drv_name),				\
diff --git a/include/scsi/libsas.h b/include/scsi/libsas.h
index d06a0570f4c530..1324068dd950f3 100644
--- a/include/scsi/libsas.h
+++ b/include/scsi/libsas.h
@@ -683,7 +683,8 @@ int sas_phy_reset(struct sas_phy *phy, int hard_reset);
 int sas_phy_enable(struct sas_phy *phy, int enable);
 extern int sas_queuecommand(struct Scsi_Host *, struct scsi_cmnd *);
 extern int sas_target_alloc(struct scsi_target *);
-extern int sas_slave_configure(struct scsi_device *);
+int sas_device_configure(struct scsi_device *dev,
+		struct queue_limits *lim);
 extern int sas_change_queue_depth(struct scsi_device *, int new_depth);
 extern int sas_bios_param(struct scsi_device *, struct block_device *,
 			  sector_t capacity, int *hsc);
@@ -749,7 +750,7 @@ void sas_notify_phy_event(struct asd_sas_phy *phy, enum phy_event event,
 #endif
 
 #define LIBSAS_SHT_BASE			_LIBSAS_SHT_BASE		\
-	.slave_configure		= sas_slave_configure,		\
+	.device_configure		= sas_device_configure,		\
 	.slave_alloc			= sas_slave_alloc,		\
 
 #define LIBSAS_SHT_BASE_NO_SLAVE_INIT	_LIBSAS_SHT_BASE
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-21-hch%40lst.de.
