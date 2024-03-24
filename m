Return-Path: <usb-storage+bncBDUNBGN3R4KRBJP3QKYAMGQEK2PV5OQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x347.google.com (mail-ot1-x347.google.com [IPv6:2607:f8b0:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0C98882DD
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:56:22 +0100 (CET)
Received: by mail-ot1-x347.google.com with SMTP id 46e09a7af769-6e6d560996fsf473196a34.2
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:56:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324581; cv=pass;
        d=google.com; s=arc-20160816;
        b=sUaYAEpIddyhg6vo+YTQMjq+ZA+yWYLc+muBLGnAdV8GL9FiY+/6fdkroGtnam9qa9
         32UuQo+1Uh6SkSzjJRDQxnwPN0z9/u/huu9Z+vqOnUcN1yZMQYs1n8qjsFrYCo41OjVY
         8wCciqHMlUj6lieh6iYk3P+qdmQCq+dk6prkg9ZSBL4z5o0s4DfKkXUpO4846niUDr2X
         9t+8PQLwMPZGO/D+jpz19cblO4ITF+q1vp8Y3Ou/o/rgReBGGsweOGzTbb+d2ZeHlaV6
         ZUmyBvSTPeMSs5b1WsOIZT7casKWK7UGQc6qOShC3f+81XxEPj2pW4ANpqiKBt2xz7Qf
         67NQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dGnuWD1OZDWddoEtqdTWij64IDuef58aUbLl/yX5lcY=;
        fh=JdpBwN/4DDNM1NTqOKq+L/4Ghasod0JARb5vUH5uZ04=;
        b=bk18jlA/mVQutb+yYu+QZEJIx4gA0OHCmnyZcyN5INiw+sDzMoe9U7uB/dZHxPFjpf
         J4RCNtdfWIAJvEImp3TvBgRNNE2GnQHgeQIpQXmlAXAcX+vBd0D2D6qgXk5IjQe0ITOi
         ylsUNPcPGISwBjJJDZ7FvZdCEYIn1zjqslGLkp+roM47M3h+015PMS9P7Hu88yWPbYQE
         I0mxl0+cRsHU6LjFhixoE6UW+FgHie2ZrwyKmTzMErJtEu7pTRlCQv/wYiL7KVkj1wgv
         LcYe3hrTUZAbIynT99nQfyTHYmEuFS80x7v0N57k1gy11v+gwqOEBikifczRUH4i2Z7P
         vjTA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=FgaYvL4R;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324581; x=1711929381; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dGnuWD1OZDWddoEtqdTWij64IDuef58aUbLl/yX5lcY=;
        b=awuyHXO+wYseInTCxugKN0QLuBRppvN8EacsX5avWTPu+BPR74PcMIaid4gmoPc1Ld
         zR9GfR+2JLIahGncgf9UJCQxHPqTCY5eN2U0Z2tiHAL4DjEkp2Ivqc0O6hyAJtvtn8az
         UXzua/cH5xXYE5895wi71soNbwaSYTUaZTJFI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324581; x=1711929381;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dGnuWD1OZDWddoEtqdTWij64IDuef58aUbLl/yX5lcY=;
        b=PROCH1/3KE4nNVcvxNwT8X/wDqVcWB1H6TtBIU+gBKxLccAWad/LVJkXA+Y+xo/Sxn
         ISKOp7XVr55u/IBgTYgcUibFiBceLFAWmy6/I0l0Eo91IOdaqkU5lqeiV9gfjxJ+7WBP
         NdbcMLtb581PPdG035urpoQ4Sk84IT0dzwEC7HkNEC2KCQfnMQDvIYQyTrlbLEb+RjfO
         f2xQ1Pz02IMqf0OV2EYG/7bOEkbsjwzgrBsOWJCzQCaHIM2AWOy2KZgNnxmSppsQPexa
         5XxdlllB9zQwc1CyiNq3CIuPAFqROjTRFAWGT8nP0B5zV6p+ORHgyQSUZQLssQ2bNy1r
         rkLw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXyH7STvfwfPaQ9Twoi3kW6swthMTloWS/fxnWJMZfRK0PxcFFuRNch44QaJ3f9q4j7CA4NI7gR8ZsJfrJ/I/aFtIHMdFy/SnE8
X-Gm-Message-State: AOJu0YzLFy5qRtfBda22Zsy0pxoNCo7zllWTt0d1mOOs8Kg/T8S5xlkE
	0TaZkEdJNwf3tkdppv8Oj6hj8aLUFwA7ULf/W5NaPw9e8LNzdpOiC4pVxNBajPw=
X-Google-Smtp-Source: AGHT+IGOH2LZJQ0hat+BvkA7tZ8Jqs40sLr3PzK7h17kd4WUIhiuniIh8oFfyVMZbHct7pIQmj6nJg==
X-Received: by 2002:a05:6870:64a8:b0:221:35d6:ec1f with SMTP id cz40-20020a05687064a800b0022135d6ec1fmr7065995oab.8.1711324581637;
        Sun, 24 Mar 2024 16:56:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:48c:b0:22a:31be:c4e4 with SMTP id
 f12-20020a056871048c00b0022a31bec4e4ls952474oaj.0.-pod-prod-01-us; Sun, 24
 Mar 2024 16:56:21 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVvBkGmFXofUolRXsvylENskbP9WXog237a6+hK/98bmp2F8GguJgj/TuUjnvfLhT9n4eGLD3O/Q8UQOW0xOA+ySErDWNnISu3PnaIMCJ4n9JkXutg=
X-Received: by 2002:a05:6808:3c47:b0:3c3:a7e3:5552 with SMTP id gl7-20020a0568083c4700b003c3a7e35552mr7409120oib.59.1711324580926;
        Sun, 24 Mar 2024 16:56:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324580; cv=none;
        d=google.com; s=arc-20160816;
        b=pQlXSojw0ZfyWf6ZlRCkY6k/siaAkQNVAYVl+k5BCwAtjkJ5WmnehyxeXnzp8dSGKE
         JFtvd9/45e6xAtXDt8LyE8hton2nTMBybcqDtoK5a3NGFXkPd9CWu58NvpeOW2N8q4bF
         bLuCh2eYuSEF/T0VhlfKs5/aQ7CjDbXdBsTHrS2C8LzJRLAQIwhsaM2dsno+xSLC8ZVO
         YXO2JZxuK/tij9UQU2QbdKApzw6Fz7IQ3bJcqKI2bNILfVmlPyipZ1oUuuR5TTBwUB63
         GVK3RSO760NotR0Q3/TdbagG90oZoP4xqoSAnK8htw8+544NIATwV7DbM+Z4yempmM6l
         E+Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xL4EmOYh991KWZN2JoTWW1e6ishZxgC6oGRU+OrRqSA=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=q2eAIh9L+RsKrSDea4cpyBYlW2Rx0rlVFJ6TwK8jo4/xauILTXR4n8CoD6DJlai1Ev
         Ky7PBcReNaFgxsQMq5oly8vHpngKFU+2jAMms/fa3LKde0qCV42skIfySr3u0qsGYLu3
         zjth98VgQSIYLyrxes8L1l1L2Eo3c6oLYq8k/xTA6EHqQLvNZWj28f45E7K5Gqn+q/sl
         jSB+08hvJ31Sh5yUb5Ynx1QcTgN99C9I2Qml0RUXFZL+XAd9hpvQqtUHq2Se/B1NLr5S
         lkgaLldZxq9n/vw/cNtIuahzJqrc5DA/LIYTruMB6jqem0TOs1imIkPPvZN3AO2ifQj/
         3G8Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=FgaYvL4R;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id w30-20020a63475e000000b005cdf8b03384si6383328pgk.805.2024.03.24.16.56.20
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:20 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXhA-0000000Dzkd-1JEq;
	Sun, 24 Mar 2024 23:56:08 +0000
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
Subject: [usb-storage] [PATCH 17/23] usb-storage: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:42 +0800
Message-Id: <20240324235448.2039074-18-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=FgaYvL4R;
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

Also use the proper atomic queue limit update helpers and freeze the
queue when updating max_hw_sectors from sysfs.

Signed-off-by: Christoph Hellwig <hch@lst.de>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-18-hch%40lst.de.
