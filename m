Return-Path: <usb-storage+bncBDUNBGN3R4KRBL4GWCYAMGQEPKX23CQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D47689545F
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:08:01 +0200 (CEST)
Received: by mail-pg1-x546.google.com with SMTP id 41be03b00d2f7-5e4a072ce28sf4769968a12.0
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:08:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063280; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZbP89Y4FbdPCvLmjVSIDND9vwH4RNcw3/THIGDqtWGCaXRI0B8HeIuvLYSdK852AbK
         LGnY5PnXZLWmlSr2nN0mVpgs5PPjt9QVs/HEFTB60sj/z6AYgAEJx2s1b3M8Sg9v1Rzg
         h1LdO+uLBN4icQooZyiiurNN3XzzwdS/XoN/3kjTEHAab9aLQY7r1BixfP2RGGXI3kyN
         7pC/8/g80u+0lezPDY66iXMU1QGc9dKL9RselQhp7w6CuJEI3XGPLngkswWhf/31G6J/
         l5HwmXqU4ydSnEhFPLTJZH7qRhb3sy06diRu8GML06GxFaf/IvJrIZl3GJjASRWAe0BO
         OjhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=fF4Zsiz8rtN4YC/3YiInU7R0zdJvkP2k1cKNJE41z34=;
        fh=Qd0RGe0GugfMWaXRA0bxxoeiD1cHKmXoFxVxPMmW5Qs=;
        b=wcDAdtzLWDjU9u6UZDyen1+j/0C+QW3EPi9mhM9u2YtIqZxFu1SmItAkBZM/oi9UtF
         SE0sTCJWQbWcHML+9xDbKS5ulNsAJp+W62oFoV2VGPhuETLnKJtrg6T5FTsGnxLp3GfP
         bX5ihGImmy9XtxVbkOnPSGyipZp4kztJt/RefJYGPN0Q7mU3o++0NOXU6hk26tmgaR5B
         rX8XfO1Lmj9YhbDyQVgkg0v7vTmh4FVgkMOFTmvBuUwU/KC9wL3v7mK1OtpUmy3yCpRY
         GZNozMLFJRDlsNGBhS2S1sD9OXtQMbax3BEoRc3PNYLa6q+S47wBbr3f2TSkTBYQjBFS
         zVGg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=BxyOgfML;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063280; x=1712668080; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fF4Zsiz8rtN4YC/3YiInU7R0zdJvkP2k1cKNJE41z34=;
        b=TMPpDm+eg9RDdn2Jf2e7FimFrgZElr/snq9jhmO9Wqupn/lY6BJQwmWV/aYnHQ01F/
         KX5TUhCchIk+DbKXmQBJ3Lk7Zv+JPYSHUtaEzEijWsoWskgOrCqOlRCnNONsyj1mCXBo
         e4NUOYrQLJUz35lTzqFsj6m1RC/MuxdN7OaqA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063280; x=1712668080;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fF4Zsiz8rtN4YC/3YiInU7R0zdJvkP2k1cKNJE41z34=;
        b=ZO955e0+cZInVn/UJAQjz6uiU4+WyoDwL4gMPTutDImlqTuOdHzXOTZLHaaCd5KPcs
         /3HbDTt2cng4EWzf9HX9Bn0HgTlNv2yBTK+i4E1GC5gz8fw5X6hk3mLcbStJz3CiGE8B
         NObMiTItYoBdMr05eyPPJbYKdlOv7vAtcz6AmA6784QMpEV9oZHfNovsxirVr482q1J2
         PAd31xMj+NvaJzW/wzKwpexzq1jo8PNJSpBpxEkyjUIWzRJUfe8CKkI01KOKQOytV2/P
         s9CXwSTrQ+lDnIRSD5EUE8EhRAuG9rjsZcbOEbyR98PVGcuNG14Lz4SmBkORWxewDZ9v
         1OyQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUpk72Ud3EWTEmCwXlMUzfQPIqF9Ek5U+gVGYGSIIaMo1nYgvgiMQSqGo4GQp82r1YtUQsfMZg6YBTNj9qACdd0kuMF83NlDdjH
X-Gm-Message-State: AOJu0YyV+87DUDzZPQ3x8QU+DkcPCEo8bKdZQABbQ0Egyd68LGD3z9Yz
	kWIqp7S5JXw2wD4wXbFHUTkpPQmbYhWYaeM0kLJieoeX4vlYiV/Wl3ctr944jOI=
X-Google-Smtp-Source: AGHT+IE9Sat9VejqPiLMKvd0Rd9/2rMwhuP/O8twLRMVfrFiy9XxZqe+3Z+Ra8zbevJeYR7/v2fotA==
X-Received: by 2002:a05:6a20:a127:b0:1a6:f8cb:4abd with SMTP id q39-20020a056a20a12700b001a6f8cb4abdmr13875660pzk.43.1712063279838;
        Tue, 02 Apr 2024 06:07:59 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:1785:b0:6ea:e2d9:f2b0 with SMTP id
 s5-20020a056a00178500b006eae2d9f2b0ls2076832pfg.2.-pod-prod-06-us; Tue, 02
 Apr 2024 06:07:58 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV/lbCDgZeYQTMOTyaJjoyZiTKFqoRv41XN/SO0dgCs4bxfJEQh0TlW24qLb+aODhXTdyVjMltuUW+/orXSCVl0DaZHUlGaLCdraevuTyEohlusmfc=
X-Received: by 2002:a05:6a00:1784:b0:6ea:b69a:7c70 with SMTP id s4-20020a056a00178400b006eab69a7c70mr17036716pfg.34.1712063278441;
        Tue, 02 Apr 2024 06:07:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063278; cv=none;
        d=google.com; s=arc-20160816;
        b=N10Nps97OAnzRZR7isbpa4rpdr28pBXMEY3pOYBlN8HhN6bgny6Whh0c9uM3+Jwo35
         PTm1OxUWFIfMJjoMk0HsaisbfleJFdFlB927gaoliZK9go5A4yWCWwUzMLR+f0RS4TtB
         Oo9OnYUKvn8kOonwvtoX6BF1lP5KhiSGzlmIGilzmmmxSoWWh+000VPkQTkfuAlfDsVI
         fJPf8unUlPvR6RqLm/XZY3hk8DyoKBI0qEsouhZGRAowkjGwycprN0um/XNxz8DF6dQp
         YR0TBVUSovfMq8RqjeUOzIjQb0I5YS+PtgT/43mPPDwRRv6/i38UCvPht23wJkyDULZd
         WqBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RNf9b509Vynq+6R7KqFWYU/yEB76QcinhbS804cdyao=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=QdnB03TeKQP0qURVSUCImmKzYlNMY+5eYQGi9rl9Z7EsdQcJhAGLkE1Z564cxZaMIo
         HXkpsrhxH2jvOO5gjwkKxB39fBs43u5pSvsfVxESaBogdqmll+oALHQotdHLvQ+5H0w3
         CjdDtvPevFzZidiYYTRYsfRFhVGAKYHIuaTkKN1QZub4KC84qgsZiE2o3nhw0WfergA0
         mQqPoOAImNMBtuuxcfB7IOeG+HAbViRQViGSqcCd3dFRDunVzESxksyLrEuVf9PiiijP
         MVBHXIpRIm2wjs3/SegxWds2gozpgu/ID5okDRg7BXuvwLOQT5DHFY8aFrcC1UH40yqr
         +aOw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=BxyOgfML;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id s22-20020a056a0008d600b006eb4c57bf20si4256568pfu.139.2024.04.02.06.07.58
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:58 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdre-0000000BFmL-3hPB;
	Tue, 02 Apr 2024 13:07:48 +0000
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
Subject: [usb-storage] [PATCH 21/23] mpi3mr: switch to using ->device_configure
Date: Tue,  2 Apr 2024 15:06:43 +0200
Message-Id: <20240402130645.653507-22-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=BxyOgfML;
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

Switch to the ->device_configure method instead of ->slave_configure
and update the block limits on the passed in queue_limits instead
of using the per-limit accessors.

Note that mpi3mr also updates the limits from an event handler that
iterates all SCSI devices.  This is also updated to use the
queue_limits, but the complete locking of this path probably means
it already is completely broken and needs a proper audit.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/scsi/mpi3mr/mpi3mr.h    |  1 -
 drivers/scsi/mpi3mr/mpi3mr_os.c | 76 ++++++++++++++-------------------
 2 files changed, 31 insertions(+), 46 deletions(-)

diff --git a/drivers/scsi/mpi3mr/mpi3mr.h b/drivers/scsi/mpi3mr/mpi3mr.h
index 3de1ee05c44e4c..565d6047f68cb8 100644
--- a/drivers/scsi/mpi3mr/mpi3mr.h
+++ b/drivers/scsi/mpi3mr/mpi3mr.h
@@ -1348,7 +1348,6 @@ void mpi3mr_wait_for_host_io(struct mpi3mr_ioc *mrioc, u32 timeout);
 void mpi3mr_cleanup_fwevt_list(struct mpi3mr_ioc *mrioc);
 void mpi3mr_flush_host_io(struct mpi3mr_ioc *mrioc);
 void mpi3mr_invalidate_devhandles(struct mpi3mr_ioc *mrioc);
-void mpi3mr_rfresh_tgtdevs(struct mpi3mr_ioc *mrioc);
 void mpi3mr_flush_delayed_cmd_lists(struct mpi3mr_ioc *mrioc);
 void mpi3mr_check_rh_fault_ioc(struct mpi3mr_ioc *mrioc, u32 reason_code);
 void mpi3mr_print_fault_info(struct mpi3mr_ioc *mrioc);
diff --git a/drivers/scsi/mpi3mr/mpi3mr_os.c b/drivers/scsi/mpi3mr/mpi3mr_os.c
index 73c831a97d276a..de3e02446c6814 100644
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
-void mpi3mr_rfresh_tgtdevs(struct mpi3mr_ioc *mrioc)
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-22-hch%40lst.de.
