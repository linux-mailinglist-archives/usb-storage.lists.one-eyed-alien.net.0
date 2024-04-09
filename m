Return-Path: <usb-storage+bncBDUNBGN3R4KRB25F2WYAMGQE74DMEEY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id F356889DC87
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:36 +0200 (CEST)
Received: by mail-il1-x146.google.com with SMTP id e9e14a558f8ab-36a38d56655sf1544645ab.0
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673516; cv=pass;
        d=google.com; s=arc-20160816;
        b=yC3mHfMSwxUYOZ3X1ydC8+DDohSuY85X7ad34EaaCuhfXEp8NcZzSn4lIt2ws5asFO
         IMxcisyFqjw+if229mPBjFdEbMIGU4WfTaqa2S5X66N63AcJLKkCN+a0ka18P34bJp2g
         ldwXqWjnYNnQ2lFT906+rpeVT2Wu8I8i3FCCxF81R/+tON/Sef4jipqBDDIKGzq9i1kU
         /Vu87BEEo5qAtj89spDyj+Vxy8ILx3WqwodZJk/bgC7G0Q1s1vYpp6F6gkCYiDLoqXEk
         xZ29g05hgFz6v0ng8CT6HMqkNZuPmpBDECiwMJhts9f5PVcRcKoTrKY3G/oH4yX6Wl1t
         GAEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=G405cBUr2LtasQrP43zGWL2gnoMTHa6x0kfjs5KCZ+Q=;
        fh=Y8uttnueprp9lQD//AMz4356qa0bTn1Z52tRihdSeUg=;
        b=a8t8u64ou0xj5Ksl78q5kRbr6DYPOrQeBkL9r4+4tOhVTzv40hfZCVgcaQc6qYE/X6
         DNtxauXVOuj76ZgkqhUrzB1ygEZNkCaa6dFtMC6m5xVVbL12PeM5YIP7lRZRWs0Vuq+P
         mqsNRbO7CT78zLaYeZUacdoZtNauAC9tUjGGUMq5+FaRR5VJtQ8j4L6RX6AxKYySIpnM
         9aH6kmSMVK2ifr1tiPOuZWl22Vn5YjiY9Na3+ikraRneUTzWkm91Fl1cib31ugWILDBN
         EdxQzIKRGGwQ10f+24QE6uIoWXSRebQ0mc8xm6+Bf6jmW1jpg7ROkLcwZqJS6EoNjFOv
         CF0w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=IRg989Q7;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673516; x=1713278316; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G405cBUr2LtasQrP43zGWL2gnoMTHa6x0kfjs5KCZ+Q=;
        b=QNBrBgnkw/G09FMLZ/XU2LME1RXu9T7T0eeG+JpeBxrt6JLRAFhePmVQmhZMvwd2mV
         dc3arL/IypUfanbLYndq++g3LV+xhsCkHPxHFubSz2TEg8TuJZ72OzyQL0mWZ1UzypM4
         TgEwOZ+PmnFf5N593xTbStqBK/Lda6N9SWkoo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673516; x=1713278316;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G405cBUr2LtasQrP43zGWL2gnoMTHa6x0kfjs5KCZ+Q=;
        b=qXHuju1ZzH6jmvFdKKOmFoQ6ijin99jV1GPOZzcusb2E0SgrSclxeNfUVm8UsLO1h0
         mugA9dfpnTjz4gRd/bslkvlvwVD0xAqgvceBnCdV32Pg0wkiE5OuUEwNgaok/lnUgTgg
         md71g76BxmruRqbBOfxQOTshG/E2cv0e8us7yo7MnuLeDi5OxAduvOh7fcDgvAKJ8zWq
         C2BPP/0SuO3V9VTG7uwe8PMqL8dnXUugwcxxLLh5pAOt1gAkuTTPXidvXtSgzdqCxSaZ
         cCyIpw5qBxPEbLK7GQjllMnyu9e3LXWtg5U0yKdYK4YaFrXv+aK8LA5Ol0XP7celCT5e
         A7lg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX9+sq+jEpcZgDWwJzUgf6e8l5VIFpZoFPIOmZBIMUxP12B0m7qn/XuRCxSW0sL9cV49YEHt4a/1gg593Z72UKJjH/FoMZW374X
X-Gm-Message-State: AOJu0Ywomtskd8+eiVBBQa/1H/ps4VlerNm14Vfy8ARl84nLFF+V0OfS
	O6pSDsNT28I9gIkytVW2wsHFIqg19JchTGnwnMgVRoQGz1UbS/GQhggAKzLDys8=
X-Google-Smtp-Source: AGHT+IENMxBp1cqcljMZ75RKYSWQx994Tveae29qKgreZFlN4DFw085hBY5DUFZw33JHLHY6RBjydg==
X-Received: by 2002:a05:6e02:1542:b0:36a:23b8:de88 with SMTP id j2-20020a056e02154200b0036a23b8de88mr14656ilu.15.1712673515733;
        Tue, 09 Apr 2024 07:38:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:485:b0:368:a702:92ec with SMTP id
 b5-20020a056e02048500b00368a70292ecls1061421ils.2.-pod-prod-02-us; Tue, 09
 Apr 2024 07:38:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXLZZL75lhm9XP4ScUdexxQrPMusfR7jlnRQzUHu0j32Kv1x8yLYy/0gEx44j/jUyI0PbQvdZLil1yZo+dYnxjJsVtW6ndcMBrQGLJt0ERxj/7Tl3k=
X-Received: by 2002:a92:c54e:0:b0:36a:2ca4:dae4 with SMTP id a14-20020a92c54e000000b0036a2ca4dae4mr22853ilj.8.1712673514887;
        Tue, 09 Apr 2024 07:38:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673514; cv=none;
        d=google.com; s=arc-20160816;
        b=uL0e2ytY5qTLmKIDBwMO8ROq+Wk3QB8afvuA9nWxA/BIqy7Sd7DtHaN0julPVNxele
         Cin6n8E1yhkTqBl0cN4TYMV3ugtATdzbFZGpvKDT43/Na7gV+iBfaPGRVsEjsFwa9xBR
         GKuMx6LvR7zv+xNWcOYMAf/fyvLpCVR6Rx+pAi8No7b+LQbC+VJL3brBTZ/3tcXEuGXU
         xBIUygd5WqFs84zhEjoa+iJBh0wMGwky4GY3Q0YVxvLbamcvTdoamAYWiK+AWfpyrorb
         hlOQM02YzR628CrJgsg1dXcnoPCkUM+FideSWK1YMnxQKQXeFJuyXn4hK6k3fmX5Uiup
         rXZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Blsk0lPHJJT2lojxMt5YmkBIVokYvdvmYbsM34r6dhs=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=W2ywvlPPqcYbG8RLkvhlNuGaAbhjzK4psQaSbItnYeGtxgIGi8jy+Q2jAKzRklsUzk
         PqJC2MjQe8qwsMNuPYEKyeaISD+dZBb4Z/0+uMRvmmwLqj7sEYNeNH+04H3Y1YenqQw0
         bzm+P8M32uVmqq+btBIg1RNoglJY1zbEeYFItilEGH9qt9h3Oxa24ORZBu9gL+W/YWxP
         Z6JAwNxuK1vAlTQo5mTKRreJHXV0BGBNprIXLZ8cb3E6/5bTR2wOVK7mIhrfi0MMrsSL
         fB0cR98ab730jP5xjjogTnKZNt8liKKsvwCG7dJjBR78xn9L9GaEHV+PF6aNyQ9VON94
         r13A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=IRg989Q7;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id c33-20020a631c61000000b005f401ca5cedsi6389490pgm.401.2024.04.09.07.38.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:34 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCcC-00000002S4b-16Ek;
	Tue, 09 Apr 2024 14:38:24 +0000
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
Subject: [usb-storage] [PATCH 12/23] mpt3sas: switch to using ->device_configure
Date: Tue,  9 Apr 2024 16:37:37 +0200
Message-Id: <20240409143748.980206-13-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=IRg989Q7;
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
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/scsi/mpt3sas/mpt3sas_scsih.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/scsi/mpt3sas/mpt3sas_scsih.c b/drivers/scsi/mpt3sas/mpt3sas_scsih.c
index ef8ee93005eae6..89ef43a5ef862d 100644
--- a/drivers/scsi/mpt3sas/mpt3sas_scsih.c
+++ b/drivers/scsi/mpt3sas/mpt3sas_scsih.c
@@ -2497,14 +2497,15 @@ _scsih_enable_tlr(struct MPT3SAS_ADAPTER *ioc, struct scsi_device *sdev)
 }
 
 /**
- * scsih_slave_configure - device configure routine.
+ * scsih_device_configure - device configure routine.
  * @sdev: scsi device struct
+ * @lim: queue limits
  *
  * Return: 0 if ok. Any other return is assumed to be an error and
  * the device is ignored.
  */
 static int
-scsih_slave_configure(struct scsi_device *sdev)
+scsih_device_configure(struct scsi_device *sdev, struct queue_limits *lim)
 {
 	struct Scsi_Host *shost = sdev->host;
 	struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);
@@ -2609,8 +2610,7 @@ scsih_slave_configure(struct scsi_device *sdev)
 			    raid_device->num_pds, ds);
 
 		if (shost->max_sectors > MPT3SAS_RAID_MAX_SECTORS) {
-			blk_queue_max_hw_sectors(sdev->request_queue,
-						MPT3SAS_RAID_MAX_SECTORS);
+			lim->max_hw_sectors = MPT3SAS_RAID_MAX_SECTORS;
 			sdev_printk(KERN_INFO, sdev,
 					"Set queue's max_sector to: %u\n",
 						MPT3SAS_RAID_MAX_SECTORS);
@@ -2675,8 +2675,7 @@ scsih_slave_configure(struct scsi_device *sdev)
 				pcie_device->connector_name);
 
 		if (pcie_device->nvme_mdts)
-			blk_queue_max_hw_sectors(sdev->request_queue,
-					pcie_device->nvme_mdts/512);
+			lim->max_hw_sectors = pcie_device->nvme_mdts / 512;
 
 		pcie_device_put(pcie_device);
 		spin_unlock_irqrestore(&ioc->pcie_device_lock, flags);
@@ -2687,8 +2686,7 @@ scsih_slave_configure(struct scsi_device *sdev)
 		 **/
 		blk_queue_flag_set(QUEUE_FLAG_NOMERGES,
 				sdev->request_queue);
-		blk_queue_virt_boundary(sdev->request_queue,
-				ioc->page_size - 1);
+		lim->virt_boundary_mask = ioc->page_size - 1;
 		return 0;
 	}
 
@@ -11914,7 +11912,7 @@ static const struct scsi_host_template mpt2sas_driver_template = {
 	.queuecommand			= scsih_qcmd,
 	.target_alloc			= scsih_target_alloc,
 	.slave_alloc			= scsih_slave_alloc,
-	.slave_configure		= scsih_slave_configure,
+	.device_configure		= scsih_device_configure,
 	.target_destroy			= scsih_target_destroy,
 	.slave_destroy			= scsih_slave_destroy,
 	.scan_finished			= scsih_scan_finished,
@@ -11952,7 +11950,7 @@ static const struct scsi_host_template mpt3sas_driver_template = {
 	.queuecommand			= scsih_qcmd,
 	.target_alloc			= scsih_target_alloc,
 	.slave_alloc			= scsih_slave_alloc,
-	.slave_configure		= scsih_slave_configure,
+	.device_configure		= scsih_device_configure,
 	.target_destroy			= scsih_target_destroy,
 	.slave_destroy			= scsih_slave_destroy,
 	.scan_finished			= scsih_scan_finished,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-13-hch%40lst.de.
