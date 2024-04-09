Return-Path: <usb-storage+bncBDUNBGN3R4KRBY5F2WYAMGQE633T6PY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC3189DC7D
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:28 +0200 (CEST)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-2a05923dbd9sf5132659a91.2
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673507; cv=pass;
        d=google.com; s=arc-20160816;
        b=hXrSumwzNuIaCKy/ZN9xcE5ZGx+/xpmM4QZ3C+wzUKkpGvq7uQi4pgP1Wwql9WJ0ox
         rQoOtx4iFlN2nLtXQF/5bxSZtfQwOAf/jxZOegrJ6b/oeYBBD+GN80h/JnBNShDm+p+R
         lFF/SLCcQ//vzFB8wxqqr70CCZXJUNXPIlELi7fUhgcY+xScpiYT+EYTWw5bNUvVUh3Z
         61tiHwxoBnY0TmjevRHScsa6Lyi18yunNAjO9OXn16wlIVHFdlMSB84Pg/fh43Hn5AWq
         Q10E3Kf5+ni/uvx2Cbt5b9DCW7ZTKb3QawpKidrXWM9Tz++KaYORURN/KDNvkBvd0qEZ
         DllA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=E1lhV/ooSxx/3Gl1yRAea0ER16samTggUfWnUxGRUVA=;
        fh=nvJBRHfQs9yo+CbngdrlxRRr6qemQnV30k3zPozhQTk=;
        b=FQ3BfQrlKZjr5VjLIy/pRbHVU0x/bY6XZi0AD0fnzWVZ/pfkqPO+85P400D/4zkDZX
         /aAmLnYvk0p3sNF4fbbZ/gyo84Dlaxyc4866QkKDBwMXYCEGKQqixxmDDnrqWdB3Kvpd
         qYg0k6ivCjaR3mGHAN92Oi37XbgsOWCkHB4v5RmTNQidIoJhVEINurWj1aFqAGqZjn4b
         UXlORSc09fpnps06+4E0TjV/HERGCNSCyHv7/CERBGc2UGHUhIaIBdoJf5Lxk8CsXSeH
         AWnpKESYE7CCumj1kKTED2qM7TEJ4pO5vkdUGg78V4nlhQLhRxB0nJIM8DMv1DCJKQOk
         Lp7A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=FUcGYsmD;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673507; x=1713278307; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E1lhV/ooSxx/3Gl1yRAea0ER16samTggUfWnUxGRUVA=;
        b=KMqmcb/JjfXlKe6tvqcCff9pGpsPgnXxWBlWrcjgSR2lgq1A4VTkbJRsdLo5Jg9TT1
         7MCP8txz+nQZWmQD6t1HoxMFk/0NHlkx73dq9CjqQgced/8ypykoHCsMIyg9eJbA1jg1
         XE1nIYPTp7YA3iHfIu/IUjgXwpcyvO9Svhv+k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673507; x=1713278307;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E1lhV/ooSxx/3Gl1yRAea0ER16samTggUfWnUxGRUVA=;
        b=SkCk8msAE8NbQ+A58T7LIJ599673Ign/nj+Mr7dv0GRcM0RYhMz6g4rVrb1i8n/6eV
         LMkwJmykmC93oXNKE0ZHtQjWqm3dyXH4OrT8j4yTWg9vE/OvqYsxmvc1CV9ylG2gV8j2
         1ObiGf0xrZPiJedkMxXCohR3iefBpzBukElpIz7+yUaOmuDH+tdq+xKotJWV6U47mbLl
         uY0jWjFbnWculUJfCxdgKvGzpgY41RbWt0IMw+M3nJe1IwDHXxEo5kvazVvzsOH2tjjK
         2ScNDQibx4Wn9y/VIM4X9jM3oKPNtRo+sDZXhj1rsD8AuURON1xc8tSSc5HI+eZasBQU
         Lo+Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW13U8+7y1L6qCQjZma9qeTm0PxVskimgsoYrwQp7bI6AF5OfUdQz2Fjyz3E0FU/PEA8EzRuZYmlwy44AvIqe5OAS8WoFflj7qn
X-Gm-Message-State: AOJu0YwvMEGccPe4A5VN+V2cURMsxZNbajtJ3ohF8rN6a6SXm7UwUub7
	mFANEE93rZU3biol56PB7aYoNJE2RYbw3LBjyM9kwuqvb1mzrZe6VG0JZMLwWko=
X-Google-Smtp-Source: AGHT+IFhp2FPAcz8pmDERDewuax4va64vkhhyJd+7SrZ3/y10eMwkFJdyK1phDNEvLynzcl4NHhydA==
X-Received: by 2002:a17:90a:4d8f:b0:2a4:861e:bf2d with SMTP id m15-20020a17090a4d8f00b002a4861ebf2dmr10243897pjh.12.1712673507306;
        Tue, 09 Apr 2024 07:38:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:ba93:b0:2a2:4332:ab0a with SMTP id
 t19-20020a17090aba9300b002a24332ab0als3036132pjr.1.-pod-prod-08-us; Tue, 09
 Apr 2024 07:38:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUwp6BDCk9nxXqaFHpNAF2Mx0WFBL1VSqHW4yGnDcBCsTLd92GNhTNFQURk9QHi75cwm+9+5f9HRP5eaNmigjRQSMk5vFGRs9u5Ces+y1FcbnVNfvo=
X-Received: by 2002:a17:90a:c696:b0:2a5:275c:3c3 with SMTP id n22-20020a17090ac69600b002a5275c03c3mr4855967pjt.7.1712673506084;
        Tue, 09 Apr 2024 07:38:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673506; cv=none;
        d=google.com; s=arc-20160816;
        b=binmTSwL/81eg1a4ioke6LU82nCkaY05gqvssCrylDsGq6GhNOQqUo8NuSQXguowef
         XPFRUNMJPtOJWMcnmPcaPuKUUmccVv7tohMPmX2pfhwK1C2bruBaDcYy9viH2M5e/zZe
         dprCDZr/Lbx+9zJZQVd0qslgqYnHv2SNkxC8RNnFwPGbw2m2dKmtI+3HzFGHp5WlPju/
         keq6oB3KiS7lkIqhR7HTJ70DeClAB7JoKXwe0wIo1ADbfQE3kidIwKRRifW7mxAIuEd5
         hg0pXVfGwLA2xkkZ8n9IAAWRqeHV3HHz9f2PjS1Ghg8hBPWOsNA2gSPmTAsxvIru503+
         iIyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qdBDwRo2V4JX0xyQIJVY7xlxpQCRwPAMUs1DTxBmn+I=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=fwyp90w5s3YAVM5IyBQE9K7LAp6EVHBykydnA8kkZGjyaTZBEeN2XJLlxked16GfDH
         7w311ywjlHvIPyda7wtIq2++sqHcB8UCso451RPVzo5pZHyVxoNLF0WcqkQZe4akoXgv
         FsEKL/oq8Ivj5U5+iNLc3nmcF18QTQrppPSh+DHwkCvVh02ZCaw6mbQ8sjgzAE3gAzrl
         /x8Yp9s8PeykM2QslRk5XBNxd0tRad6GOa2HJDLUU3SjTCMK8p/GibZgII7FHC8Tk92B
         NOFnFRabs8iwSwP3P0xFnQIyc/YS3mFvFD7rTz7toEemJiZVlczkLiqgVRwhrG0JLitK
         LeKQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=FUcGYsmD;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id s64-20020a17090a2f4600b002a095d3ecd9si10940806pjd.38.2024.04.09.07.38.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:26 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCc2-00000002Ryy-0swm;
	Tue, 09 Apr 2024 14:38:15 +0000
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
Subject: [usb-storage] [PATCH 09/23] scsi: use the atomic queue limits API in scsi_add_lun
Date: Tue,  9 Apr 2024 16:37:34 +0200
Message-Id: <20240409143748.980206-10-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=FUcGYsmD;
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

Switch scsi_add_lun to use the atomic queue limits API to update the
max_hw_sectors for devices with quirks.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Bart Van Assche <bvanassche@acm.org>
Reviewed-by: John Garry <john.g.garry@oracle.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Hannes Reinecke <hare@suse.de>
---
 drivers/scsi/scsi_scan.c | 28 +++++++++++++++-------------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/scsi/scsi_scan.c b/drivers/scsi/scsi_scan.c
index 205ab3b3ea89be..1ec4b309af726d 100644
--- a/drivers/scsi/scsi_scan.c
+++ b/drivers/scsi/scsi_scan.c
@@ -874,6 +874,7 @@ static int scsi_probe_lun(struct scsi_device *sdev, unsigned char *inq_result,
 static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 		blist_flags_t *bflags, int async)
 {
+	struct queue_limits lim;
 	int ret;
 
 	/*
@@ -1004,19 +1005,6 @@ static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 	if (*bflags & BLIST_SELECT_NO_ATN)
 		sdev->select_no_atn = 1;
 
-	/*
-	 * Maximum 512 sector transfer length
-	 * broken RA4x00 Compaq Disk Array
-	 */
-	if (*bflags & BLIST_MAX_512)
-		blk_queue_max_hw_sectors(sdev->request_queue, 512);
-	/*
-	 * Max 1024 sector transfer length for targets that report incorrect
-	 * max/optimal lengths and relied on the old block layer safe default
-	 */
-	else if (*bflags & BLIST_MAX_1024)
-		blk_queue_max_hw_sectors(sdev->request_queue, 1024);
-
 	/*
 	 * Some devices may not want to have a start command automatically
 	 * issued when a device is added.
@@ -1077,6 +1065,20 @@ static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 
 	transport_configure_device(&sdev->sdev_gendev);
 
+	/*
+	 * No need to freeze the queue as it isn't reachable to anyone else yet.
+	 */
+	lim = queue_limits_start_update(sdev->request_queue);
+	if (*bflags & BLIST_MAX_512)
+		lim.max_hw_sectors = 512;
+	else if (*bflags & BLIST_MAX_1024)
+		lim.max_hw_sectors = 1024;
+	ret = queue_limits_commit_update(sdev->request_queue, &lim);
+	if (ret) {
+		sdev_printk(KERN_ERR, sdev, "failed to apply queue limits.\n");
+		return SCSI_SCAN_NO_RESPONSE;
+	}
+
 	if (sdev->host->hostt->slave_configure) {
 		ret = sdev->host->hostt->slave_configure(sdev);
 		if (ret) {
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-10-hch%40lst.de.
