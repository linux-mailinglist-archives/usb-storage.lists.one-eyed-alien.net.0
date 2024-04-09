Return-Path: <usb-storage+bncBDUNBGN3R4KRB6FF2WYAMGQE75F5MJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x48.google.com (mail-oa1-x48.google.com [IPv6:2001:4860:4864:20::48])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E46489DC93
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:49 +0200 (CEST)
Received: by mail-oa1-x48.google.com with SMTP id 586e51a60fabf-22e05764068sf4771884fac.3
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673528; cv=pass;
        d=google.com; s=arc-20160816;
        b=pNpKihMT3gcVEwwowuriNgalPzjtaS/dGpjni3AIeOfyyt7OcDxIRGG6pMIhaDQuGA
         XuT1Pk303oyaMGVlXLnx0AEbV7/+2jTcUmmomSEEXEMlwx5rJxcVm7NS2XRXWAahuZ9o
         7FrZcs++XUucNAsaZt99sI2VBPVkbqKaCVrWdC7DNJHwVwJird2pj/Ctr1cWzzoTn5X9
         O1EKqtN0L662AdAAlz3/58Qh3xMYM10dyqB0KCP0CQiU0LDvnuaBxxYobNRLYhhpMK2d
         GtozQ+StNxqAn0sY0hGlfJdhWd8ZPA0Q47ThlhWDVp0HO8x7x9uNNh5Ns7HgrcGTsJmw
         CXrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6JbZ6Ay0BiHHrXWQrxPKKwAzNpGjrPq32/W3llSXSTU=;
        fh=f8VCi1teijWTrV6TUoy8yW/RiOkj8WRaS8YJP6ME1Ag=;
        b=REoW2tIisDGSlrK2jnPi7ftHXcLPCrmo17f6wBZQIm03+1+CrN0DNcX/f9y1kVo7PI
         CFNOGmgJk6nDZjdMDFnGYOiiTG8pycDmSRI7d2e2cFssYt0JNZa0gjYZ/IAqvXSa5Hv8
         pltifeE0mndxX9SIk0pQd09m8apDFmZ7BLtLRtQcsJB+HMJrMc8S7Nocuq6OXxjs5MEE
         //R7V1uLmHstEANaMLLcswHVwi0RiVvM5HR4V5lBl+SLqHALFiw48c5Bmr9lNHZnEuSu
         sfqSHOaYJj7FUBBXbhrDVC9yzl6c5BtHQmVhMUYB4ut5QFS6NAsnYGVO9uXYMV7aw3Ol
         xMsg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=t49nIlxj;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673528; x=1713278328; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6JbZ6Ay0BiHHrXWQrxPKKwAzNpGjrPq32/W3llSXSTU=;
        b=LwAmXKjAXxdDK4eQYPvUeadetSs7VNEV35RsibMm33bMj0oQje71hx/qyibfmtQ3Di
         1gLCpoMUrcK9YszeB9HK2XGQPB+Hks9XrF6qfVo5Lebp4imZKL93F6b+AD5FAxuSEx+c
         vl3fMi56gVYCzwgBaF7lds5YQ8EmAwOJmhZAQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673528; x=1713278328;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6JbZ6Ay0BiHHrXWQrxPKKwAzNpGjrPq32/W3llSXSTU=;
        b=MnruPqYmOE5HLpNnDkZDP0XF8w91hKI1gj6pLi4F6j7ypphGcpwaQNDuRCbrfXE10y
         j+GYdhyp0xBKol6PzThDeoxPke1iZycJaGxOMXrpl30G6VZiDOwjANNaN7Dbi/5Bh5B4
         J0C01G8vED6g8wcVfy2eXkSS0nHKFZwnEKoujUDy1jzgU0FpKmjRKtvVhtwWmjnOKdgU
         AwH8byt+vEGMZJJwVzeRE5ZO/sHE1fBzAhtGhh5zLngZbGUCKvxO5hIGiTSb8s4CVyN6
         cldAZL+oTbyKE9z0xgPNZ6OAMooy1/HCzkPq9F3C+eO5ibWYWqvl+GYkgY17mtu5Km8N
         8nHw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVffzHgBohlndsvmp06E/rRX2ZJCxekN3sjtOy22tou0k4HaVVpfPjUnhTlQRjBt/dqh8Xs/P3xwf9l3cLEqB90Z0TW43qVehSi
X-Gm-Message-State: AOJu0YyLZxeTY6BYLmRjd4CXy2Abhi1bZ2qZgBMKH2vuFLg6lJcmOe1R
	E8fzKw0RZe/QszQh7XdME7c+ntQkcxW/9ULhX8nuyzQ+SuCAUw3MdXrhyJiMVAM=
X-Google-Smtp-Source: AGHT+IGKrTGn5O9nKufFmTECypUTMklwb5foABvHpZURZF+RHsXtokkr95CrYNKO7asyrXdVlQ2ulA==
X-Received: by 2002:a05:6870:c110:b0:22f:bdb:633c with SMTP id f16-20020a056870c11000b0022f0bdb633cmr9760922oad.16.1712673528290;
        Tue, 09 Apr 2024 07:38:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:41d3:b0:22e:eb99:e9ff with SMTP id
 z19-20020a05687041d300b0022eeb99e9ffls4021020oac.1.-pod-prod-07-us; Tue, 09
 Apr 2024 07:38:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXe3D0EZf6heJOWFpPXvRAGyX57joi9kYL6NK5dvLJa/BeKBIsirSLVGwFBJajaR2erk+GgHweEL6jhLz1Pmryg/vszAaKx89tOouOPzQKE+Lqjk3Q=
X-Received: by 2002:a05:6870:a993:b0:22e:cc63:9b26 with SMTP id ep19-20020a056870a99300b0022ecc639b26mr13227637oab.15.1712673527330;
        Tue, 09 Apr 2024 07:38:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673527; cv=none;
        d=google.com; s=arc-20160816;
        b=wuctUhIpqOOVOcQ8fTMBemy1rRP7PjtygldWgZZ5XyOTrT/CORcJdbHaK0JujZJSOL
         4mCMIlJgfkCCi/EFNqIW88Gja/z77FgjG8x06nJiNRP0nuTD8Y/ZUQNfGrG2S015YzwH
         rQg3DZqMcVyJg8z2ekQ/Vb6EUSW77qJ+9OGZzHZSPEf1wuJiKYZJ8jWEp1wIKnlC+EKE
         2kw0ViNIjI68DAyyG70FrQS0P+EnrhFAZ+qapZiSqcpRBAgYEe/tdFbAK0D8xUvPJ8Pn
         wPt8GVDqJl6ahi301yeptzuT0r9tcgqk9ioOS32fAM9g5NNOCNkKdZnG3r6kKQ61oqDE
         VBZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=oOzGzNJBoU44rEzjCKb52VWSHMlCwSe4hv+WebdEwa8=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=sNfE9f8pa1BzNlvbFdX96VUKOs1S6cPyfsO/Qta8emba0yTmPyy4UUUH2/K2cbim38
         X2CeIePtoCk0geowKNYQkBQjC4xGIzg3zY1IqGHIc3EDSodGe51C9uITUk3nEVj45OJD
         WMwywVNDGvVAGMplbzbO3ZC7Pi5dOTaBCJLmsN6Uwgw9o6Z5PedRTpejZ4rWLMMVjqLd
         AiDkASdi57gsWOfiNS4EB1gGZ1+AjTnRDWykTPqAOwYrcsOY9epxBaTqc31plHMRBHQ9
         VWb4VM/3rzWVJep/a5SoEaa/3BXGnsy9nTLr+HnSDPzgb67dwokZ4bklvyZd7q5kMubf
         QqXg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=t49nIlxj;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id b17-20020a63d811000000b005dc82a6febesi8559850pgh.153.2024.04.09.07.38.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:47 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCcP-00000002SCK-0jjf;
	Tue, 09 Apr 2024 14:38:37 +0000
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
Subject: [usb-storage] [PATCH 17/23] usb-storage: switch to using ->device_configure
Date: Tue,  9 Apr 2024 16:37:42 +0200
Message-Id: <20240409143748.980206-18-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=t49nIlxj;
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

Also use the proper atomic queue limit update helpers and freeze the
queue when updating max_hw_sectors from sysfs.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Hannes Reinecke <hare@suse.de>
---
 drivers/usb/storage/scsiglue.c | 36 ++++++++++++++++++++--------------
 1 file changed, 21 insertions(+), 15 deletions(-)

diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index eb4ba03e082d89..b31464740f6c86 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -82,7 +82,7 @@ static int slave_alloc (struct scsi_device *sdev)
 	return 0;
 }
 
-static int slave_configure(struct scsi_device *sdev)
+static int device_configure(struct scsi_device *sdev, struct queue_limits *lim)
 {
 	struct us_data *us = host_to_us(sdev->host);
 	struct device *dev = us->pusb_dev->bus->sysdev;
@@ -97,31 +97,28 @@ static int slave_configure(struct scsi_device *sdev)
 
 		if (us->fflags & US_FL_MAX_SECTORS_MIN)
 			max_sectors = PAGE_SIZE >> 9;
-		if (queue_max_hw_sectors(sdev->request_queue) > max_sectors)
-			blk_queue_max_hw_sectors(sdev->request_queue,
-					      max_sectors);
+		lim->max_hw_sectors = min(lim->max_hw_sectors, max_sectors);
 	} else if (sdev->type == TYPE_TAPE) {
 		/*
 		 * Tapes need much higher max_sector limits, so just
 		 * raise it to the maximum possible (4 GB / 512) and
 		 * let the queue segment size sort out the real limit.
 		 */
-		blk_queue_max_hw_sectors(sdev->request_queue, 0x7FFFFF);
+		lim->max_hw_sectors = 0x7FFFFF;
 	} else if (us->pusb_dev->speed >= USB_SPEED_SUPER) {
 		/*
 		 * USB3 devices will be limited to 2048 sectors. This gives us
 		 * better throughput on most devices.
 		 */
-		blk_queue_max_hw_sectors(sdev->request_queue, 2048);
+		lim->max_hw_sectors = 2048;
 	}
 
 	/*
 	 * The max_hw_sectors should be up to maximum size of a mapping for
 	 * the device. Otherwise, a DMA API might fail on swiotlb environment.
 	 */
-	blk_queue_max_hw_sectors(sdev->request_queue,
-		min_t(size_t, queue_max_hw_sectors(sdev->request_queue),
-		      dma_max_mapping_size(dev) >> SECTOR_SHIFT));
+	lim->max_hw_sectors = min_t(size_t,
+		lim->max_hw_sectors, dma_max_mapping_size(dev) >> SECTOR_SHIFT);
 
 	/*
 	 * We can't put these settings in slave_alloc() because that gets
@@ -582,13 +579,22 @@ static ssize_t max_sectors_store(struct device *dev, struct device_attribute *at
 		size_t count)
 {
 	struct scsi_device *sdev = to_scsi_device(dev);
+	struct queue_limits lim;
 	unsigned short ms;
+	int ret;
 
-	if (sscanf(buf, "%hu", &ms) > 0) {
-		blk_queue_max_hw_sectors(sdev->request_queue, ms);
-		return count;
-	}
-	return -EINVAL;
+	if (sscanf(buf, "%hu", &ms) <= 0)
+		return -EINVAL;
+
+	blk_mq_freeze_queue(sdev->request_queue);
+	lim = queue_limits_start_update(sdev->request_queue);
+	lim.max_hw_sectors = ms;
+	ret = queue_limits_commit_update(sdev->request_queue, &lim);
+	blk_mq_unfreeze_queue(sdev->request_queue);
+
+	if (ret)
+		return ret;
+	return count;
 }
 static DEVICE_ATTR_RW(max_sectors);
 
@@ -626,7 +632,7 @@ static const struct scsi_host_template usb_stor_host_template = {
 	.this_id =			-1,
 
 	.slave_alloc =			slave_alloc,
-	.slave_configure =		slave_configure,
+	.device_configure =		device_configure,
 	.target_alloc =			target_alloc,
 
 	/* lots of sg segments can be handled */
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-18-hch%40lst.de.
