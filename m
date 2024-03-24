Return-Path: <usb-storage+bncBDUNBGN3R4KRBNP3QKYAMGQE4MNP5OA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x548.google.com (mail-pg1-x548.google.com [IPv6:2607:f8b0:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2AB8882E8
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:56:39 +0100 (CET)
Received: by mail-pg1-x548.google.com with SMTP id 41be03b00d2f7-5c6245bc7casf2388806a12.3
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:56:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324598; cv=pass;
        d=google.com; s=arc-20160816;
        b=R0M1j31lVqNCU0Rsu/U5NnrwsEcla2ZBv5k4Z0N9ucbVU9s1KO9TL0U7DkWvafjVk6
         kMi6wRN4hFTt3Q8r1m1FWwHK72kPjLb3bn4HUqM6/A+Azy3wekal7RcTvC/WKlkB6q+G
         H7xzDhxJsfOOz809yMjuCcj/Jsw+C0ACCaA2QTrAaiRsouGx9Y4pKCA0rr0rBrgKChgO
         UXa95fEJuKsm5OgNji20Occ6DPmDQqNsXd6QPV93VjR9GRt2ap1/SRKGud9T9WGmqivA
         YHWhpkgaBuJREFnIwKLyAav9F0tF9ioDJhvSfM8Kf57oFXC/GH3+K2bcyY59aeKggfLN
         K6eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=zi3xjcq7DeyfqHOGDCiGXp2LoAGDih3Jtpf+ek8atU0=;
        fh=Ci7oKwNJMDzMWaqsacWJ0mKY7PQxqu0usP+ke2kLEe0=;
        b=TUrfcS0At7PiDyDbsBHr8md9wTNgqQdJGD57mFCch+U+Lxff98rG2D8XVnL6Un74Ix
         rv2cK6tvsjHp6YDtw6+OV1UFhp3eGW2nEOA9OvyY6x2nzJN6m3U2LrgZbKDlifhFjZew
         kNCtqg0gBlO096b5+kMXhd1/E6xvtF1sTpUe2/26uat8/gQ4Uv+tKB2Go4J428Beuu7z
         NMdYzkO32mZ9VY5PXalUayuxounx+VhzvsrxtATlhVyRlQ9AFikqLECgyWldpj9AOubL
         ZZUyADAlzd/M3K0F7ovpnHHu6Q0aMUVW2oQJa0OackpRGLlNYtd4KKQvZMLNWZRFN/X5
         FYaw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=zVvRoNPl;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324598; x=1711929398; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zi3xjcq7DeyfqHOGDCiGXp2LoAGDih3Jtpf+ek8atU0=;
        b=cfEqIiDbZNXwYgPeyALittHN3WatBQhaoWFurscj+lWIMaU32gSXdea6K/Jcm4eYtT
         hG24nDqLrLgkD6WxzmA9a933Plsl0wA71uBeI2mNXQgR1ORTw2nEKOkxFwZLj7Vwa2vN
         iDwpdse2xu8Ae1p0kduz1s2m5j0JtJ8TvzqI0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324598; x=1711929398;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zi3xjcq7DeyfqHOGDCiGXp2LoAGDih3Jtpf+ek8atU0=;
        b=TJcZcYYqNUBFAHnsw94Lqm8dogt2zli07W0Eyh07L7MUPdCezRNPtEXPGSx7BByudK
         b8eNRi9Y/eHb9xVH7D3weF1AEl5FIoGo/BUaUQHlPu3AHsnTHu314MNzxFtPWdB1ywV2
         E+zMmBEebCXvzok092M8wheSHcTcNWBDLAyva/sP6T266KBpl+O8awIi3yaTX8RHddRc
         WZNPEhHjzv6hHXWEpS6ALnCci6lUKh7wruvncNIlgiQo+RvHO3upQn5PO85lkKZ8OMW1
         tk38sCn6bCdpHLcey30jVbZQn//9vkTBsPTme6hM/YuPRw6b2C/WmuuIKlkkHfLcNHT5
         A34Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUuMDcB9n3tnx/IlFM6Mc0NGVJumfSRK86DPdFhRFvgBQGDziBi9Ebp38IK4CY7DCMOZz5n435NCkwEGjzMeZa8dlcWb4BUu703
X-Gm-Message-State: AOJu0Yw4o0jry8VbxcDrbfJEgECvxAnCcYrEZ1g5Zaijg+Ms2c1KmcOH
	LRgFuq7llT55qE2plYiLaYuvkAfO5tuofDCV9isVQjYWdFCyxWdUtnTCJFqADRw=
X-Google-Smtp-Source: AGHT+IGaz0Bkfx7baBkJ/XQpzqZIk6Cw5q9A+xWoi8W5C5wqMYaD/zl200ECVs/2oQaneAMpCZhjZQ==
X-Received: by 2002:a17:903:2d2:b0:1dd:6eba:c592 with SMTP id s18-20020a17090302d200b001dd6ebac592mr5969701plk.56.1711324597963;
        Sun, 24 Mar 2024 16:56:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:dacf:b0:1df:fe67:5cfe with SMTP id
 q15-20020a170902dacf00b001dffe675cfels564220plx.1.-pod-prod-05-us; Sun, 24
 Mar 2024 16:56:37 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVJLMt5TOD1LeW/0RnBOTEgRmNvrnK2TqmUtgWR3j3XvuirMhdPiVFbgBVsKHXALZQWuF8o7wQnO7rJ7tx06hf5hLqubJFmNKRo/IxNAkkh6MCTVX8=
X-Received: by 2002:a17:902:a3ce:b0:1db:55cc:d226 with SMTP id q14-20020a170902a3ce00b001db55ccd226mr5072626plb.66.1711324596737;
        Sun, 24 Mar 2024 16:56:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324596; cv=none;
        d=google.com; s=arc-20160816;
        b=tVvOV5/ztfMjI02tUeu+nBD8jUjdqyi7odSa/aOyXfIa6/spdqBR4mKTI66/8jBA0p
         U+zcG3ILeaQbCUaPGuCDnRZhOQ+Hr2li5Q6fRrM1FjDLaaQK6vVeGGD7oKvgLj6nPR4G
         mfAKyv0B8/U3jkc/Dt7JuICS6R8Z8T21GVycbdt//RIm2BURc/P5qTF4VgCsO4arBu6R
         tTKxByS1HyoDUd4zu7xa4h+UC/kuqbrYOSXGAcAsFVMwWGvYi7fwWFyNMDlQgsR3NKcj
         MmIuEJU4qeUilJLwMll0vAKMS9JfOq8uygdy7OPV9P+Ycy1VhuxR8y1Qp8sGDiiIDNI7
         UhkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6Vypia/n0elZ0ADslF2SARtwDYy85/m1cdDXOopX7zM=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=mg0nYXE02M8DImSmUOyyo+biVTT29+pfK/AUGWzyh34bVdpP/nFM2bv2ilpBxo38vA
         4eBjtxAunv2PiyQPyL6+Jh7Yk/xE8R0a5Ofpx9OdYj6omyMjFa3nE7anyifBQzf5c/qQ
         CMykwrtfeasCAVD1LJ9uYyn5d75JKXG61/QQG0llbD0/fb6D+2kkvKdfLJ15SGpMy1Ox
         w5EYrwomxILIgy8NW7ZmlRxPZMG94G9uLlDRPH+aw64lGihUUL521mcWMstzScUDr2a0
         m/Bxwb/pK7FJI18V97psFqux2iRH5QaRuo/UobeCyswnKb9pkAR7FZvDuUXoY8KUGTad
         5Yxg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=zVvRoNPl;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id q13-20020a170902c74d00b001e02939f44asi3727889plq.580.2024.03.24.16.56.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:36 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXhS-0000000Dzqm-0tl9;
	Sun, 24 Mar 2024 23:56:26 +0000
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
Subject: [usb-storage] [PATCH 21/23] mpi3mr: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:46 +0800
Message-Id: <20240324235448.2039074-22-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=zVvRoNPl;
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

Switch to the ->device_configure method instead of ->slave_configure
and update the block limits on the passed in queue_limits instead
of using the per-limit accessors.

Note that mpi3mr also updates the limits from an event handler that
iterates all SCSI devices.  This is also updated to use the
queue_limits, but the complete locking of this path probably means
it already is completely broken and needs a proper audit.

Signed-off-by: Christoph Hellwig <hch@lst.de>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-22-hch%40lst.de.
