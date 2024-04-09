Return-Path: <usb-storage+bncBDUNBGN3R4KRBZNF2WYAMGQEHIUJEWI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3EA89DC83
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:31 +0200 (CEST)
Received: by mail-pg1-x546.google.com with SMTP id 41be03b00d2f7-5c670f70a37sf4657271a12.2
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673510; cv=pass;
        d=google.com; s=arc-20160816;
        b=EUKwOm+UAtN1NXHblg2OfcjdWGuHMRQCA6ew8Zk/mwMII4Kv6xaexB99RlnXMZP83t
         4QbR5U4+ne7XMM+QNKSYYYO6TCggRRsFYugnLUkpJ9vKSN6Sby1ARQTDLgDyzof8eGVI
         t41AcywdtnW92TpGkn3+UkvDppMgHDKqqh9++h8tMuSG/Lh/SvUKJCTDE8kQZirCGWl3
         hRMKnkEVQxQI1ZpmaLpIf/QS4QNQW1bpAXg9Iw/ti/GCU23Nkx7n15ic6lSvd13l8vB7
         Y/ZSd24sAcu0Oj/Vkbl3dJGGBzZXhFvepbnnjU2j97pHnrY2QG8tVrMTWEW81TROG8pH
         lkWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Sfri9OZpyfuz74ISP+es977xgGCoL5ZfAKxRttorNJ0=;
        fh=JQnSgZd5n/7WGIgLw0WB9LKoWV4ds1/1AwBE/0WnJ1U=;
        b=adigIo58IXWugC6tyG6VLO438Vr/I9qfTzpDt2DqWXhY5FhYCtlXxVcPN4JOmFxjYj
         fuSVI6ORIqLe/nHVKYgNwucWMlXZVBC++vCgTqQ11hk4oi3mx9J+YQXbPYqPXO7uaT65
         gD296XK412ROamkho2o1QZQN27Xz0l2uypx+/lLhMSNwqKhkGoUVckNxdBRqhNvhHNF7
         iVsNDMypN3daGXiwOyATKvLDON2pCxMGyRpMcbBQ4bVXZl25Qz8b8C+LFbvejjgqf5qo
         XrDpVvagCTbZraJ00RFiOyCyxiidXU4veSJ3iMbN3rC7rDkqJ3tEDPbPSUIvMkruWV7q
         Gp3w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=bKOxGJQW;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673510; x=1713278310; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sfri9OZpyfuz74ISP+es977xgGCoL5ZfAKxRttorNJ0=;
        b=MyWGlxDo0bhFwCS1XdbupviH9aqzSEciRtvaDaN8GoIylWkSaUGDBAgbqKFW20swgA
         6ErT5VOHJAyoqsj3/EjtBt3XfUqY1xwDx8MwwFyjfI7GUWlr+lEpPT6Tb2KS5+66X5R9
         RZC+JKNSxClcY31WKTZ6snd5Np7Dh3MBJATpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673510; x=1713278310;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sfri9OZpyfuz74ISP+es977xgGCoL5ZfAKxRttorNJ0=;
        b=Nq4RtWAP6t2VmNpHjAHWMLj0m4TPo9AMz5DIs7W7S9O27tPxGIFbp2b0VcexRi3s1b
         B8zBJf6QT9ulYsS4uBt6XKdzZFHrgWj+/1UH6y3WoQISaKyHFehej58vSct8chEAN+Pq
         4tGrNmgqYSUWX4JsoaOXxKwaZKYUf4mP//SG98rBFRrs+nhf/i8y7hWgSSCOZrUxzAzy
         pGZcO6C63AGTLWz3WvxlBNx7UIBudWWPQFBhEwyrfJ/Ju/Fd/cl7i4A8jOf1aKnFLq00
         dCuYRiFrwQkeYXf7ziU0sKlFPT2INA/KppXfj/DXtlnaKoWI84wxUUFXnk/juSjJcZP7
         jINQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWtkjQr7egWTdoXsy8ZzGHV1yOChYAfZQZPTkBM3k1SHzv8rVrI+OeQZ6V4IAix8Frz21vtnrZPho1IaBZ8W0Q4EqC49UvYdryE
X-Gm-Message-State: AOJu0Yz97e03TKQTQ0ErbQ0QFeGHaBiqpO0M8QW7GPZ1QqC4O5OYapuu
	/gNCcpWKfmiZpPDHtuVJ3hnO/i93RJ2d1SzZt8NbjEIKAPCukmfZLiXL5dF4x+A=
X-Google-Smtp-Source: AGHT+IEHC6NmUkBWoFkfpGW6Ay0B0nOjoo4IGca+kwy8++AsIy1Ie7+wMS+9djXC+2B0N+XdtYGjfQ==
X-Received: by 2002:a05:6a20:dd96:b0:1a7:6f27:5704 with SMTP id kw22-20020a056a20dd9600b001a76f275704mr16042pzb.46.1712673510024;
        Tue, 09 Apr 2024 07:38:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:e885:b0:1e2:c350:b352 with SMTP id
 w5-20020a170902e88500b001e2c350b352ls2670415plg.0.-pod-prod-08-us; Tue, 09
 Apr 2024 07:38:29 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWurnYkVHfIEjxJzLWYG1Hsauffmp+4MvOKLSMoir7jCNUY/Cr6wLBDvmKloeiugvHz00zwkas5VkVFiVT+sOwjDijUhmLSjszqdCd//DVr6CInDUk=
X-Received: by 2002:a05:6a20:da9b:b0:1a7:23e4:1cd1 with SMTP id iy27-20020a056a20da9b00b001a723e41cd1mr30272pzb.13.1712673508711;
        Tue, 09 Apr 2024 07:38:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673508; cv=none;
        d=google.com; s=arc-20160816;
        b=zGAIP05dXwF6jfOZt9O4qY5XYDA5cXN16pq8sunNpsWoDmAUkSJjsR55zXiXw2MMCf
         FPYhe1SkOyMBk9KZbgCQJieAdDjo7TxALeEpCk70ExTM3oNJIeZ8IGa+Pv+okxthGRWL
         X7nLWWSg0uipXn9hFNr7nR5aVtRZnVVR2yZeMf1ffDt7lhNOXKhKJgYY+/QWO5itX1ZV
         pugmhDDmzJqth1VQ4OXteBFhAOdOF8X7WXhI75WlDXSiKXEAVn6kqgn/9tNy9G5lmxXR
         Ta7jgTLQ5kjiGqQgHGR9CGjbDPO7xZFPIyLjYjqL5BZI1P9IbxzgznujWkN30hl1Rs+J
         q2tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=UNIxgxuc9FtvbvzwSjpyY7cNQmLry7auIP83EtiGuVk=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=neQL4dfNYVDmOUiq0aSmIBxHVI8qAGQi8JCJ3Jrgw6SboSKYlCnV+YWd6MjwGES6nm
         juBSP6gD/mmdnUvNEuSFf47lhBdbC8HNW4FlM4NWqgXvnsWU9CYExhO6XRc78Yyymku6
         6CMIh4ckHO0o2BMSNF2Ciy8P5yY4Wca5Pfo6bA5UaATirDfox++aPtbxF3VNfqXbET6j
         vJBHUXRGvB+FJH9howOI2Ne8B2m8Mzy5o1BjpHWVBWRpJY4AAE/QTA6lR13CpkrO3MR8
         1mYHR1fKsvIMeKOu7gt6DToKEVtgbfX2/WggxsHu/0NzkUueBWARREjzvoxSja0fY+Hf
         387w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=bKOxGJQW;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id t6-20020a170902e84600b001e43c7fbfe6si3903090plg.280.2024.04.09.07.38.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:28 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCc6-00000002S0U-09Yy;
	Tue, 09 Apr 2024 14:38:18 +0000
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
Subject: [usb-storage] [PATCH 10/23] scsi: add a device_configure method to
 the host template
Date: Tue,  9 Apr 2024 16:37:35 +0200
Message-Id: <20240409143748.980206-11-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=bKOxGJQW;
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

This is a version of ->slave_configure that also takes a queue_limits
structure that the caller applies, and thus allows drivers to reconfigure
the queue using the atomic queue limits API.

In the long run it should also replace ->slave_configure entirely as
there is no need to have two different methods here, and the slave
name in addition to being politically charged also has no basis in
the SCSI standards or the kernel code.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Bart Van Assche <bvanassche@acm.org>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Hannes Reinecke <hare@suse.de>
---
 drivers/scsi/scsi_scan.c | 47 ++++++++++++++++++++++------------------
 include/scsi/scsi_host.h |  4 ++++
 2 files changed, 30 insertions(+), 21 deletions(-)

diff --git a/drivers/scsi/scsi_scan.c b/drivers/scsi/scsi_scan.c
index 1ec4b309af726d..463ce6e23dc678 100644
--- a/drivers/scsi/scsi_scan.c
+++ b/drivers/scsi/scsi_scan.c
@@ -227,7 +227,7 @@ static int scsi_realloc_sdev_budget_map(struct scsi_device *sdev,
 
 	/*
 	 * realloc if new shift is calculated, which is caused by setting
-	 * up one new default queue depth after calling ->slave_configure
+	 * up one new default queue depth after calling ->device_configure
 	 */
 	if (!need_alloc && new_shift != sdev->budget_map.shift)
 		need_alloc = need_free = true;
@@ -874,6 +874,7 @@ static int scsi_probe_lun(struct scsi_device *sdev, unsigned char *inq_result,
 static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 		blist_flags_t *bflags, int async)
 {
+	const struct scsi_host_template *hostt = sdev->host->hostt;
 	struct queue_limits lim;
 	int ret;
 
@@ -1073,33 +1074,37 @@ static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 		lim.max_hw_sectors = 512;
 	else if (*bflags & BLIST_MAX_1024)
 		lim.max_hw_sectors = 1024;
+
+	if (hostt->device_configure)
+		ret = hostt->device_configure(sdev, &lim);
+	else if (hostt->slave_configure)
+		ret = hostt->slave_configure(sdev);
+	if (ret) {
+		queue_limits_cancel_update(sdev->request_queue);
+		/*
+		 * If the LLDD reports device not present, don't clutter the
+		 * console with failure messages.
+		 */
+		if (ret != -ENXIO)
+			sdev_printk(KERN_ERR, sdev,
+				"failed to configure device\n");
+		return SCSI_SCAN_NO_RESPONSE;
+	}
+
 	ret = queue_limits_commit_update(sdev->request_queue, &lim);
 	if (ret) {
 		sdev_printk(KERN_ERR, sdev, "failed to apply queue limits.\n");
 		return SCSI_SCAN_NO_RESPONSE;
 	}
 
-	if (sdev->host->hostt->slave_configure) {
-		ret = sdev->host->hostt->slave_configure(sdev);
-		if (ret) {
-			/*
-			 * if LLDD reports slave not present, don't clutter
-			 * console with alloc failure messages
-			 */
-			if (ret != -ENXIO) {
-				sdev_printk(KERN_ERR, sdev,
-					"failed to configure device\n");
-			}
-			return SCSI_SCAN_NO_RESPONSE;
-		}
-
-		/*
-		 * The queue_depth is often changed in ->slave_configure.
-		 * Set up budget map again since memory consumption of
-		 * the map depends on actual queue depth.
-		 */
+	/*
+	 * The queue_depth is often changed in ->device_configure.
+	 *
+	 * Set up budget map again since memory consumption of the map depends
+	 * on actual queue depth.
+	 */
+	if (hostt->device_configure || hostt->slave_configure)
 		scsi_realloc_sdev_budget_map(sdev, sdev->queue_depth);
-	}
 
 	if (sdev->scsi_level >= SCSI_3)
 		scsi_attach_vpd(sdev);
diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
index b0948ab69e0fa6..92c8c3b08dfc90 100644
--- a/include/scsi/scsi_host.h
+++ b/include/scsi/scsi_host.h
@@ -211,7 +211,11 @@ struct scsi_host_template {
 	 *     up after yourself before returning non-0
 	 *
 	 * Status: OPTIONAL
+	 *
+	 * Note: slave_configure is the legacy version, use device_configure for
+	 * all new code.  A driver must never define both.
 	 */
+	int (* device_configure)(struct scsi_device *, struct queue_limits *lim);
 	int (* slave_configure)(struct scsi_device *);
 
 	/*
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-11-hch%40lst.de.
