Return-Path: <usb-storage+bncBDUNBGN3R4KRBIUGWCYAMGQERH7X2DI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7EA895457
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:48 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-1e0b29c2ef9sf43990645ad.2
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063267; cv=pass;
        d=google.com; s=arc-20160816;
        b=wAcpNEoOYvD4J2wrBA+0l63GLyVwr+Yrc3mVGSZLte6IIyPk1MKD6k47yGwtTZZ9wp
         x0HtABIqt6OMa1cauVjF9ar7dCJnpTI/skzkHb9R6F1xJbLkjv1OD08e07UhOuj9vqu1
         1+ZfuOxLag7E7hASAQKKSEWupYKLPOrZsThcykcq87ob5RnT8iQXQaV7/bY8g+Kj/dlV
         2K8YswQQqkxCBaaN3MT/XY3KUNHLNmQFF1rrzdHEtdg2eNDw2ATjjfQRwum4s04iYhP9
         IlJ0bybnWp3nGBzKnQetW0Lyc8qKD/3dk9kIvJWhvIsXk5KHcVRciwcJoDUwFTG/xqow
         gFiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ooWUKNpCrs21cyxYd/tSgSgdBOwbZuynuhJW/ZZ3or4=;
        fh=TnmpOiA7IASqeLHSOHS8FoMLmcq7qYkeEFfykGLaB9s=;
        b=yNwpEPCb1H++Pommyyt6c7ZuJpd54qKWJrEvAZeR5D6Sjv0u6ONB85BTqLpiK8l/i6
         0fAYJvkFL5qh10bRtM0czhzMekW3qNj9gwlRTMQADZquwQ5++vYGsObW5BOr4kfOnIZi
         JoKw5Bs9ibxzO5s2sh1SpFrpidDSHBRU1NzmqnVstzXfLNxemUi0Ltac1m0nbWmBgbZO
         NOGQn/LmXPq/s50sdWDonr3eUAH6P91GQxKe+5Jevv//rFABVw3vC2v+Ixign9ROu/A4
         ItaVEFliWfCw5mdtwrc8WGFZHZKKX3iDTCBYYMQp9NoXAT8RozHe9R+on0A7hWdT2mU1
         OoHA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=fwZO7zQv;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063267; x=1712668067; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ooWUKNpCrs21cyxYd/tSgSgdBOwbZuynuhJW/ZZ3or4=;
        b=HMDQesKKIwelDWDv/rvVqERbCV0ejMQSoSUZ9vu3ouuVDKVmLsk//mxj7HdbdZMGV+
         gIYGyPjqWQ+98uqYVfzAz0ivsyoDyB5jXasxLpzUW2lHaFHQfIbTNMXCiQdmgOs7IKs7
         L71CGvbgHzBdj/UsXVSIzpAQmP1PB5/nYxaIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063267; x=1712668067;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ooWUKNpCrs21cyxYd/tSgSgdBOwbZuynuhJW/ZZ3or4=;
        b=gH+oQMMxfSANMSgZqxQanxlw/epL081qIxpyG3fuFclVDzdP1p7jMgtCmMR4pbqkjz
         kIy13k0Sgbog/kgCjxiDs3irkVGMXFYd33ghm1mu797OhMjLX7eTygLlS8aXQbhKB95B
         exsbOjCviVyD8Nj+YtKhkhxIBiNng+KwAXwGHSf8Gsbg0Geau4Rq4rkcSlootVzBgpNC
         o+nwM4jzeqD9PjsHnVK4UiacSM3V3rbi2uZyq1aBnW8pxLkeXMIghqd7E9Ys/1oObVCR
         lrqvucm4c2otqNwlKRuAFqnVjyFAotP+T2O+JFSHJJqC18s67evnIQprJu5BggIgCd/1
         Hj2w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU7wqopyCe6BtRfS+nA8h/dIZMdQCMuUXGxoEKB3U31z8HDXq0Ydz4/6DIlP+hzN0oKPh9HBcsYCTQ+GnqoWEyv1dHWEuTjUHLB
X-Gm-Message-State: AOJu0YybpPxDFgcJWbl93P7ugLpWsbsxmSZCO4csKD19i5/STfuulXsn
	vAV9/LHMcWex7j3j7F3BQiofTy8q5BjGAaLbT9NCTNf6Iq0wD6bJhiI8tSAn+R4=
X-Google-Smtp-Source: AGHT+IHvra+WibdPMDANpu6UJwiysv6CgAXTW5VBKXW62RDLGel9EzjbiYodM6tT3GmpM9cDFYvL2Q==
X-Received: by 2002:a17:903:124d:b0:1e2:1915:2443 with SMTP id u13-20020a170903124d00b001e219152443mr14942528plh.44.1712063266694;
        Tue, 02 Apr 2024 06:07:46 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:f707:b0:1e2:408c:6e07 with SMTP id
 h7-20020a170902f70700b001e2408c6e07ls2571468plo.2.-pod-prod-03-us; Tue, 02
 Apr 2024 06:07:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV42kLJMuWBrKx5BT/7skJTBRpSlABJb/tYEEC79UMBRFWKGeZLBPUBz/EZStmCXWz0gKMjCsgIWXqcB6cCUaW02W+M3C5HABwXclGr5vhBlUGYjRc=
X-Received: by 2002:a05:6a21:999c:b0:1a3:c4f8:7710 with SMTP id ve28-20020a056a21999c00b001a3c4f87710mr15029078pzb.4.1712063265500;
        Tue, 02 Apr 2024 06:07:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063265; cv=none;
        d=google.com; s=arc-20160816;
        b=D4ZNmk4eVA7U0illJQfaw3GgoPPjX4uopg+UHC7mj7DzpWSR7/Vyzv0cwKOpv40RA5
         AbJHkBYn0q7kGeZqF5P/0SQyE+S1v0i+wJ2uJx3/Ca7lFyM01Rz83rTSOTeIEiqyd7wA
         cJNFRu92dP/sNV6SaHJJk1zAXHrSpj98B7XQdZZTXY5bClOnOzXctT+l4IYqcGwMFVaJ
         YMA/UxeMgwQyfi95Jfe65dpMUlN8JirETo1dqpLPmXsr8tite1RgV1MwkHy9v5BjJVIk
         PgHEwB3Q86h855Xv7fNrR76RjGjsUJ2+9Azzz18TVfozdjCAw9KjEoTRZu2Bn6GYGCr4
         mNag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sMmwPFERZxqXft6HPIlM2db2s9aU62GytCJjg7SDOB8=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=HZq42a50hDZLSn4adhu2asbTN23ilPQ+BUBnFrf75Om3LxZxHZBzSKXxG21aaI64Ri
         rqoa1l/SGJs2K6J8UyvJtBCBlM6Ru6OW9p9Ouf+i95EbkUBmVRFHnKVnvz4uH1hNrTiT
         O2VmeU4rK+8i3sBwXBbqfsoJpwribItHM3/Iy7OZH5nVh2d/Gf4wOzthdT0YAg7X/kkC
         fKotrbYuL1uXGZGGKqkIaNP8oWZM58aKfOd0EJlogZHFUFIisdWvnMJkhs7dJAOf2Rz+
         64iIyqTT7oivt0rfmRLDlcTUT2fBTcsiTfv5bv8laOgNVyBAUR55bXHj4PwzDodnMPta
         Xz7A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=fwZO7zQv;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id c3-20020aa781c3000000b006e6bbc471d5si11037222pfn.257.2024.04.02.06.07.45
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:45 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdrT-0000000BFfJ-2Op4;
	Tue, 02 Apr 2024 13:07:36 +0000
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
Subject: [usb-storage] [PATCH 17/23] usb-storage: switch to using ->device_configure
Date: Tue,  2 Apr 2024 15:06:39 +0200
Message-Id: <20240402130645.653507-18-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=fwZO7zQv;
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

Also use the proper atomic queue limit update helpers and freeze the
queue when updating max_hw_sectors from sysfs.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-18-hch%40lst.de.
