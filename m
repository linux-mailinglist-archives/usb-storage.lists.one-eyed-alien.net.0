Return-Path: <usb-storage+bncBDUNBGN3R4KRBA5G2WYAMGQEL4EET5I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CC489DC9B
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:39:00 +0200 (CEST)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-5aa18a128c6sf3225110eaf.3
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:39:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673539; cv=pass;
        d=google.com; s=arc-20160816;
        b=p+iKbqLBs+of+GuA1pQrDK6bBA5wk+DjRf77hwiKmLxP6mMF+fnzhC7+18+RmXolcH
         Z2HZJIMZBqQSZOj7UtlX8f0ZJviXof9jMvKHEeyysGvxLZ8C9VHkax5PkyZB+2VYD6U/
         UAcJMz22a0731l7t+8F6E3LROHvuBso3MDp5Ex1n1Q5wWYiNeod4KI83u9diU+cY8xnY
         LtgYpxEt47gJ4jFzLafxDFDMvG3rdnELqXRfU+sD+nJXOiSKLz3iJf6H5ypWO3UninS3
         K/P8MWQlIilvBG/Zzk59dkm0ruO+IiK4mllag4JBcnuBWXDY78jCSPKi+etXcUr92UyY
         /JFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=feSjA9Lr4+GtOEFIXF1BykYAuB/piBEmGasQpKZCmkc=;
        fh=gXgrleFVsd+5RBwHyXHvKmeqR5gqKwIlyLJTB/JahLg=;
        b=bPgy48tMKE2rH3lfhCF5rqnlj80KwI6OWayUH2VLfZMy/O0P3Vqjxb+zi6yKsGAhSo
         bP9pkIJ3QVmkhJL8676vp0MOpznhdcWuSjl9Oq2m4fieh9Kf718RRTjfWpYgF8XLhS8d
         7rAn4oqwUIKxxbznoNKfLP0oRi2mlxcI5bcMRsSzn9k+y6KGPmN1F7/99jtwU00vpPDy
         HwOeHYcqL1/qgbot8EpyShXiScMFUYxtsuu/JxUandqthZLrWKphB3XnkaWdnyFY0wDB
         iRZUGZ7UKlazgvhOkLoiZXmSI0b2DIyo+K0hgP0i8O8fMH8LgWCHMqya0Bs4PAvQZwVw
         NPLw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=pdhCZ3Uj;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673539; x=1713278339; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=feSjA9Lr4+GtOEFIXF1BykYAuB/piBEmGasQpKZCmkc=;
        b=N5hY21v8ixFwBKyrUpg3pNqbVuXokXcxLb2VkseIIEBHMGamdkdmqzndM3FcIHlFL4
         M2jS2J8OjChEQryyei4BqSwf6+hZCRRRqw3bIZ9atDgvbYz6hRjmC6sowbnVixeTu63d
         yBasKNkFdxAKnzMOGsk+1PyvSj3Dm6z5jzAOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673539; x=1713278339;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=feSjA9Lr4+GtOEFIXF1BykYAuB/piBEmGasQpKZCmkc=;
        b=wA+vfD6HNZCD8ySAaiL8UZ/pYUNjs51Q5wrRyZrjWr/MVIqsU0N45xBeT15aCz+Lor
         j6wH8MgIDakZ7eW27GtD45s3vzAPzZ0/6eGh70LpWlP4L2RqpimZ7MgqVHJtkS4mQZUQ
         Ih08BRfURFOTej+WQrN0xcQuJqwtrQ8pHiI/sEcwdtiCNFh7wa3SlW3eTpDQyQr2Uyat
         2deH2Cu8kDDHTFxxrAaa39prxl/ttpGZoLq2/wOHAuJSTQKrjZpifpmMOwRf7Ncav9y9
         0hBeQbrh1qpEHmy0xYTQvrtSK0A/bRv0E0DuaKrYsCPqDkAWDPzuaSPEW7BDAo+zUfQX
         Yz2w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVPjOy3dU2VFpPmc20y4ZIMpc+wdV12S/hUWKMDTGn4lsCJJ4QnYzpRI7eErBXOHy4ttc0SG3dtk0EUf5UlLdCE4kkuNVmMSJCj
X-Gm-Message-State: AOJu0Yx9DMFcyGT0uhb3BJ152t0/p0a9pqf7xyHisaeji/5ZzEXwTMNx
	WGJfQmibaikD93C4kxNMF48kWCe6CdhItlGfoSbqFkZXLgQ4FA6M6hxtFti+8bw=
X-Google-Smtp-Source: AGHT+IEVHtpDCEvP+y5sZdlGJjOTf2RfQ5BrcjDla5spxZwg5GKowMTi/rzZ+ietQ0uap2sOcHjR4A==
X-Received: by 2002:a05:6870:a40c:b0:22e:8c51:db2f with SMTP id m12-20020a056870a40c00b0022e8c51db2fmr13564500oal.3.1712673539552;
        Tue, 09 Apr 2024 07:38:59 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:9597:b0:22e:b386:74b6 with SMTP id
 k23-20020a056870959700b0022eb38674b6ls696723oao.0.-pod-prod-01-us; Tue, 09
 Apr 2024 07:38:58 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV0LWJE9Mue8mJPOI+C2GQOPmxT8Jvh5BYhiv2UajiBo67J+zpUmr0xJFH2ZqylfOUSEwz5aYePwhR1rJPzQOPVYnMbvx2vty6eVrAISMR6v6fk8NE=
X-Received: by 2002:a05:6359:1907:b0:186:3c3:b412 with SMTP id mf7-20020a056359190700b0018603c3b412mr99496rwb.0.1712673538508;
        Tue, 09 Apr 2024 07:38:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673538; cv=none;
        d=google.com; s=arc-20160816;
        b=nUD9Hnwe2fAM4+HZlIW+gub3qOFmNG75QtpTtuMs7zMijFFgsRt/BA4xqHTX1Vd0B5
         2liGhdfPFgc9eeoixOEwbkWCri+aqNMa7ObK6J9XBmm9HROk9LnkzjuS3Q4tU2RVdrrE
         oMgzzY/VNQjWF+3Nphc8g7OG8T+3z9PfUJS3dcFxOI1MUw9Pl3oKQMkFHslxWxARq+TQ
         4Fb1GUpKEXgHdyKEARt/SIeIA4zRWSz4qcYmYntwHHoDy2wI56NBLjreNSKI+UdBtos6
         rMYWnu0QQ/PJMy/V70PyjBSAN4XiYG/ZYEnhsitwUKW/3GFq+3/RuC/z6k+CX4INQQxo
         WmlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+kKPekUGjXDsIE4V9mIKYRaU0Y5iWPDjhh0ZCd5FQeM=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=dsmcbiAi4R5X3Xk4EcIZNHE0QHAJigMtRyEsJBMr8Lfcc++QAcu+om3KOoStWIx7x6
         R34L3MhXYnCpITP1PEcjcO8lnYGgLJTuTcKXbxwUpIZ34IN9CZqtpuAdBfGvPNAlZGJl
         1QYI0MtLaLBs8jBd4CfQk8UmSLr4mhuvzZgo4TEOIe0TV8HQjLuY5+dFwWueBoLzgKzY
         jZIysjLzBTTSaRPaYr0u2WsTQM/VB9nrqT3MVFV4zSvedn/jsgdg+uZY6ye/293G3+XF
         i0nM8aSCX/X9TDxwTJbw0oPiqoW6CRKdIQP3yuM26Ua5E6sp9q/l3If07SaXuieaHAwE
         rfBw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=pdhCZ3Uj;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 23-20020a630117000000b005f0c099624dsi8522611pgb.81.2024.04.09.07.38.58
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:58 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCca-00000002SHV-20wc;
	Tue, 09 Apr 2024 14:38:48 +0000
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
Subject: [usb-storage] [PATCH 21/23] mpi3mr: switch to using ->device_configure
Date: Tue,  9 Apr 2024 16:37:46 +0200
Message-Id: <20240409143748.980206-22-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=pdhCZ3Uj;
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

Note that mpi3mr also updates the limits from an event handler that
iterates all SCSI devices.  This is also updated to use the
queue_limits, but the complete locking of this path probably means
it already is completely broken and needs a proper audit.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Hannes Reinecke <hare@suse.de>
---
 drivers/scsi/mpi3mr/mpi3mr.h    |  1 -
 drivers/scsi/mpi3mr/mpi3mr_os.c | 76 ++++++++++++++-------------------
 2 files changed, 31 insertions(+), 46 deletions(-)

diff --git a/drivers/scsi/mpi3mr/mpi3mr.h b/drivers/scsi/mpi3mr/mpi3mr.h
index d1c93978f28a58..f5a1529fa53715 100644
--- a/drivers/scsi/mpi3mr/mpi3mr.h
+++ b/drivers/scsi/mpi3mr/mpi3mr.h
@@ -1352,7 +1352,6 @@ void mpi3mr_wait_for_host_io(struct mpi3mr_ioc *mrioc, u32 timeout);
 void mpi3mr_cleanup_fwevt_list(struct mpi3mr_ioc *mrioc);
 void mpi3mr_flush_host_io(struct mpi3mr_ioc *mrioc);
 void mpi3mr_invalidate_devhandles(struct mpi3mr_ioc *mrioc);
-void mpi3mr_refresh_tgtdevs(struct mpi3mr_ioc *mrioc);
 void mpi3mr_flush_delayed_cmd_lists(struct mpi3mr_ioc *mrioc);
 void mpi3mr_check_rh_fault_ioc(struct mpi3mr_ioc *mrioc, u32 reason_code);
 void mpi3mr_print_fault_info(struct mpi3mr_ioc *mrioc);
diff --git a/drivers/scsi/mpi3mr/mpi3mr_os.c b/drivers/scsi/mpi3mr/mpi3mr_os.c
index 5f975e0db38831..17b4e70b9dbaf6 100644
--- a/drivers/scsi/mpi3mr/mpi3mr_os.c
+++ b/drivers/scsi/mpi3mr/mpi3mr_os.c
@@ -986,6 +986,25 @@ static int mpi3mr_change_queue_depth(struct scsi_device *sdev,
 	return retval;
 }
 
+static void mpi3mr_configure_nvme_dev(struct mpi3mr_tgt_dev *tgt_dev,
+		struct queue_limits *lim)
+{
+	u8 pgsz = tgt_dev->dev_spec.pcie_inf.pgsz ? : MPI3MR_DEFAULT_PGSZEXP;
+
+	lim->max_hw_sectors = tgt_dev->dev_spec.pcie_inf.mdts / 512;
+	lim->virt_boundary_mask = (1 << pgsz) - 1;
+}
+
+static void mpi3mr_configure_tgt_dev(struct mpi3mr_tgt_dev *tgt_dev,
+		struct queue_limits *lim)
+{
+	if (tgt_dev->dev_type == MPI3_DEVICE_DEVFORM_PCIE &&
+	    (tgt_dev->dev_spec.pcie_inf.dev_info &
+	     MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_MASK) ==
+			MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_NVME_DEVICE)
+		mpi3mr_configure_nvme_dev(tgt_dev, lim);
+}
+
 /**
  * mpi3mr_update_sdev - Update SCSI device information
  * @sdev: SCSI device reference
@@ -1001,31 +1020,17 @@ static void
 mpi3mr_update_sdev(struct scsi_device *sdev, void *data)
 {
 	struct mpi3mr_tgt_dev *tgtdev;
+	struct queue_limits lim;
 
 	tgtdev = (struct mpi3mr_tgt_dev *)data;
 	if (!tgtdev)
 		return;
 
 	mpi3mr_change_queue_depth(sdev, tgtdev->q_depth);
-	switch (tgtdev->dev_type) {
-	case MPI3_DEVICE_DEVFORM_PCIE:
-		/*The block layer hw sector size = 512*/
-		if ((tgtdev->dev_spec.pcie_inf.dev_info &
-		    MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_MASK) ==
-		    MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_NVME_DEVICE) {
-			blk_queue_max_hw_sectors(sdev->request_queue,
-			    tgtdev->dev_spec.pcie_inf.mdts / 512);
-			if (tgtdev->dev_spec.pcie_inf.pgsz == 0)
-				blk_queue_virt_boundary(sdev->request_queue,
-				    ((1 << MPI3MR_DEFAULT_PGSZEXP) - 1));
-			else
-				blk_queue_virt_boundary(sdev->request_queue,
-				    ((1 << tgtdev->dev_spec.pcie_inf.pgsz) - 1));
-		}
-		break;
-	default:
-		break;
-	}
+
+	lim = queue_limits_start_update(sdev->request_queue);
+	mpi3mr_configure_tgt_dev(tgtdev, &lim);
+	WARN_ON_ONCE(queue_limits_commit_update(sdev->request_queue, &lim));
 }
 
 /**
@@ -1038,8 +1043,7 @@ mpi3mr_update_sdev(struct scsi_device *sdev, void *data)
  *
  * Return: Nothing.
  */
-
-void mpi3mr_refresh_tgtdevs(struct mpi3mr_ioc *mrioc)
+static void mpi3mr_rfresh_tgtdevs(struct mpi3mr_ioc *mrioc)
 {
 	struct mpi3mr_tgt_dev *tgtdev, *tgtdev_next;
 	struct mpi3mr_stgt_priv_data *tgt_priv;
@@ -4393,15 +4397,17 @@ static void mpi3mr_target_destroy(struct scsi_target *starget)
 }
 
 /**
- * mpi3mr_slave_configure - Slave configure callback handler
+ * mpi3mr_device_configure - Slave configure callback handler
  * @sdev: SCSI device reference
+ * @lim: queue limits
  *
  * Configure queue depth, max hardware sectors and virt boundary
  * as required
  *
  * Return: 0 always.
  */
-static int mpi3mr_slave_configure(struct scsi_device *sdev)
+static int mpi3mr_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct scsi_target *starget;
 	struct Scsi_Host *shost;
@@ -4432,28 +4438,8 @@ static int mpi3mr_slave_configure(struct scsi_device *sdev)
 	sdev->eh_timeout = MPI3MR_EH_SCMD_TIMEOUT;
 	blk_queue_rq_timeout(sdev->request_queue, MPI3MR_SCMD_TIMEOUT);
 
-	switch (tgt_dev->dev_type) {
-	case MPI3_DEVICE_DEVFORM_PCIE:
-		/*The block layer hw sector size = 512*/
-		if ((tgt_dev->dev_spec.pcie_inf.dev_info &
-		    MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_MASK) ==
-		    MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_NVME_DEVICE) {
-			blk_queue_max_hw_sectors(sdev->request_queue,
-			    tgt_dev->dev_spec.pcie_inf.mdts / 512);
-			if (tgt_dev->dev_spec.pcie_inf.pgsz == 0)
-				blk_queue_virt_boundary(sdev->request_queue,
-				    ((1 << MPI3MR_DEFAULT_PGSZEXP) - 1));
-			else
-				blk_queue_virt_boundary(sdev->request_queue,
-				    ((1 << tgt_dev->dev_spec.pcie_inf.pgsz) - 1));
-		}
-		break;
-	default:
-		break;
-	}
-
+	mpi3mr_configure_tgt_dev(tgt_dev, lim);
 	mpi3mr_tgtdev_put(tgt_dev);
-
 	return retval;
 }
 
@@ -4921,7 +4907,7 @@ static const struct scsi_host_template mpi3mr_driver_template = {
 	.queuecommand			= mpi3mr_qcmd,
 	.target_alloc			= mpi3mr_target_alloc,
 	.slave_alloc			= mpi3mr_slave_alloc,
-	.slave_configure		= mpi3mr_slave_configure,
+	.device_configure		= mpi3mr_device_configure,
 	.target_destroy			= mpi3mr_target_destroy,
 	.slave_destroy			= mpi3mr_slave_destroy,
 	.scan_finished			= mpi3mr_scan_finished,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-22-hch%40lst.de.
