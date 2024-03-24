Return-Path: <usb-storage+bncBDUNBGN3R4KRBBH3QKYAMGQEMWRFMUQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id 885328882C8
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:55:49 +0100 (CET)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-22a0b2edd89sf1283876fac.2
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:55:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324548; cv=pass;
        d=google.com; s=arc-20160816;
        b=b8Fk6FZ3LhKg0bkQPHTxBe0k8pZNc+IXurm/rwc2BOTmsa6EqDx+6BjqmN82c6Y9E8
         WH5UoWtXzaCObKVbWnojwmToyJo3Qggta9USPsTNfyEP+uVx5hLXsRX7gLV+nmmyDWDE
         Q7WuGz/YM2U0CDMuYlpqe9EVinhf/CkNmD8iykfBG/Y3UIW4abXmfdYpPe20tfLsbpNP
         33sYHbrFVkraVpHrIJ1HYyFKwMPJiXLVa7pFmGYQlNjx/CCqa0YAg0NXwQf9M+QRY0bE
         6WEpcz/3Bc97R3eitz9losTFla3Nc4X9EgdeOchPVtbLrkAF3+NR9aifvSEGJ2nIhUux
         QuGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ddYb0oaz0kDDe7ujbQg+B8skrHEGKtWCUYsUL6/Is8k=;
        fh=yH/4qdfTliAedyvcILFTMowu4Y7kmgzntwjhaEtKlgI=;
        b=DzOqhEPUptu5EWynL22KrJSEmw3/cE2nRMwbjv5m/M7dy5Uhh6RSgYej10hTDeNKKB
         cDVy6Z9fov4LhfknuXkKp4LvLETy6dJ10NIvC+h72RfOhEAk0SRoVn7+fCplAxJO2cSl
         PLEpXQN1unsLbV5d3hP4YvPm119Qs9KBrZebnRRXqPgOExZEQsMnbqJaRwviuoqUITLy
         xhfkHVE8MNz03ljYgwzKmAM6kpW5kChmk2if6tOuGBkSYND9fVIcz0PBCflti/tUWcUH
         Ak0Qk5ZVpq1vgBmpTa9nxTSMjkbLE5lOOG231BJloxhkyzkm6JXhcqGezPz7gb6+nOhs
         9c0w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=XbCc2oME;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324548; x=1711929348; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ddYb0oaz0kDDe7ujbQg+B8skrHEGKtWCUYsUL6/Is8k=;
        b=UTA8TWIqYPnCEK4NUqFQmaBxfkSg6SrRCTY09e8ghGgNOXhcHItow0K34LcC6EXF7M
         rhhM2/vAmGRQWMLtwDhYa3y9gRrqbsEHYdRLyYIB5wDkS9HuYSAWRaCNlW7VAsrqGdbQ
         iV++QHv9Y6eFvxgkcMmAOcf50CPqzn3eSJLOQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324548; x=1711929348;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ddYb0oaz0kDDe7ujbQg+B8skrHEGKtWCUYsUL6/Is8k=;
        b=dm020uLXcviar9scijgWTS38Bzg1oUBzro2OxphmpIKxMB9eCOswVd0thk2d8MWo5i
         fFQWzfXHFzdc8naT8iivW0UkKMY16EJO4mHTxgFmv1mykr+ljN6uPD0P63l/QfHl15Kb
         dzh0kLVzTfpq69P8zsurkvnZoDRK4Xli4Sj1RaPR92xHxUMu99Cy0VtcOBYb4TA6jUgH
         zBIk9KI9r2erzjzsj91/SpPSWK5V7V3YEyKQEWWzEqmUqQPvPqltRRVkCJegqETof75u
         KOP1CSaYT/PcqZu12/qieI11CfialAODxgFIG3yhgO1Uwm1ywykcmJ+tO+tSw2LV21Wg
         yUFQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXS770adGd/Ol5h4ySYcim4Zlm5yk+cI0yRw8mPcFTqo2Pfe5wdT9hZz9gqYMTHCo7z7/2FxbZfOe6hAF3y+I6iHLwF0Vv4t24F
X-Gm-Message-State: AOJu0YydxGSjsxoi4fiKn4CSgy0TujteKi4ILU4C9YYpbDMapW7WrXFL
	Q9FpVYrFZYTlcSqD7YRqH5AFTW+HcoVFAuWqNiuOY59AGlWEHTjAHGW6yrT02cY=
X-Google-Smtp-Source: AGHT+IElkpFp7i5jCox2qH1XyOy8QLfW4Yq92dvEOx9KMuSx1PdZfNLLmhMLexzYfiMd5oUwtTcXyw==
X-Received: by 2002:a05:6871:298:b0:220:8cca:b632 with SMTP id i24-20020a056871029800b002208ccab632mr7019736oae.17.1711324548385;
        Sun, 24 Mar 2024 16:55:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:1719:b0:22a:33ae:1107 with SMTP id
 h25-20020a056870171900b0022a33ae1107ls698257oae.1.-pod-prod-07-us; Sun, 24
 Mar 2024 16:55:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWh48cDtRajHbLtBItFKdAe2DWtUTJeYfCcID/hG+8Oatc2Ni0fFbZSjmX8HNnPrPb4mXzNna9SWisuhoBZ5H1eYO6n2JTAjnpu2JIegZtR950+8aI=
X-Received: by 2002:a05:6358:5924:b0:17e:bae0:fe8a with SMTP id g36-20020a056358592400b0017ebae0fe8amr7243952rwf.2.1711324547541;
        Sun, 24 Mar 2024 16:55:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324547; cv=none;
        d=google.com; s=arc-20160816;
        b=ZYusWMYKg1cs7cNNS/paWSSOsgU9AXRjaGGP8yiGt373AMcFeOtxq8LXAYhUEXHzfa
         rPlz0Im3o3hasoMwxXSQai29tsc9v7G5m+kwk/X54AwZxizjrPCGwgqpFoLVEVUycynK
         eBa+2eYEZD6B7GzfduEc0YcBTvW6mFBV0y3QspcfmED2f8t9MoNgZbiz7BO4cbZEhENM
         pibKPKSkgr2vJExSXJGBqSMX4op/TvU/w/6lOSxqbQNDVhXex2myi9cFIbRprWbjbDwx
         LJhAn5kv2FuKftMWjPAB4L8GJ7yqHoE368F65kL/45QeEdQPcBjjGgjkuOoBftvxu5Gh
         iBrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WXYhCbVwCEU0UHf+sQtOcxTHe5YrehjKDolUaK54+l0=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=p2ldBdqs/6RxbKBLixrZ36uPXr5VRRc0y7HFARTOZ+h9j5ch1X8+t9b4+uc2K0kb4Q
         xsflD22OQ/I1wu3CrIGILzlPgA7DGUlqMlEz3pp8VXavKnQNA+5g0H9f1Ra5ajV5WgcZ
         WBi/CaoilcLOtQRUp/aGbsZ6GerAslOCIebbeo3rIhafzCjPA1cBJX5B29SdDF2ozkyx
         H5veX/8J5IFjSu+Pr5JjZjJ0fMkOQ01LXRAVwJ8LgUCvT7PxSk+oiBr1EVv7yXA8H+Qy
         zs3+pjT5AJpoLBrIqJzdoeuqRkcx1WXGEQdSIyuLMJwjCYmpGnTa5igM/XOyR7b0IuTr
         Yslw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=XbCc2oME;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id x20-20020a63fe54000000b005dc3d92a492si6285946pgj.39.2024.03.24.16.55.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:47 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXge-0000000DzZ6-3X9j;
	Sun, 24 Mar 2024 23:55:37 +0000
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
Subject: [usb-storage] [PATCH 09/23] scsi: use the atomic queue limits API in scsi_add_lun
Date: Mon, 25 Mar 2024 07:54:34 +0800
Message-Id: <20240324235448.2039074-10-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=XbCc2oME;
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

Switch scsi_add_lun to use the atomic queue limits API to update the
max_hw_sectors for devices with quirks.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/scsi_scan.c | 49 ++++++++++++++++++++--------------------
 1 file changed, 24 insertions(+), 25 deletions(-)

diff --git a/drivers/scsi/scsi_scan.c b/drivers/scsi/scsi_scan.c
index 205ab3b3ea89be..699356d7d17545 100644
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
@@ -1077,19 +1065,22 @@ static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 
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
+	if (ret)
+		goto fail;
+
 	if (sdev->host->hostt->slave_configure) {
 		ret = sdev->host->hostt->slave_configure(sdev);
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
+		if (ret)
+			goto fail;
 
 		/*
 		 * The queue_depth is often changed in ->slave_configure.
@@ -1115,8 +1106,16 @@ static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 	 */
 	if (!async && scsi_sysfs_add_sdev(sdev) != 0)
 		return SCSI_SCAN_NO_RESPONSE;
-
 	return SCSI_SCAN_LUN_PRESENT;
+
+fail:
+	/*
+	 * If the LLDD reports LU not present, don't clutter the console with
+	 * alloc failure messages.
+	 */
+	if (ret != -ENXIO)
+		sdev_printk(KERN_ERR, sdev, "failed to configure device\n");
+	return SCSI_SCAN_NO_RESPONSE;
 }
 
 #ifdef CONFIG_SCSI_LOGGING
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-10-hch%40lst.de.
