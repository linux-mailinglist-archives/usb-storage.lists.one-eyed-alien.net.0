Return-Path: <usb-storage+bncBDUNBGN3R4KRBEP3QKYAMGQEVTN7UBY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id B306A8882D0
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:56:02 +0100 (CET)
Received: by mail-pj1-x1048.google.com with SMTP id 98e67ed59e1d1-29de02b98casf3158684a91.0
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:56:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324561; cv=pass;
        d=google.com; s=arc-20160816;
        b=0dlLxEQPOtZiial/59NFFXuttn0VZP6a1/1r9AAQq799mIRTvty9vOmMjLAM61oB6d
         uvNgnaycyjiXBOZud87i0wQvv2ChLYwn20WENEVSLLG8cetEN5Jg762eRafszQesQUPS
         T3Ko1VKFpLUdUedmkAZHXqIMqhjyrt+FDmAGjIZO2stugW+h4a52w5X8prBrJbT/3U3I
         x3WHt9jpMo7MIcRDmChzieE7xqqdeNMDCfskmFXjCfA5FkX+xZ6txMk553GoTBNqChvM
         asWmWj9POzqnTlGwxUIXAzjtAIwZx2JigxlvsVD0qMJas4haO2jITbEJu4LuG7iVinlX
         UYug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=q8GTA6EO+ku6ZaeV9/P3Cc04aR18o7XVcLzJ5hIIiLI=;
        fh=l1TDDFN+SrO+aH7OD7CTanknO/Q28IoY66URUm4qTVU=;
        b=UQyGFZBr3K1Ko5ZKShod9yLZ1NuAykk7QSMNub9R1nEqhjZBG6pEACgCxZ5U2DnDsT
         PXA4TLwlHlQJHR9yDTudpSae/glVJrNAhCBLuYjzvEL6DT3Ul3G3foaDedrds1kkPkJo
         FyD55lGb9SpJJzY4gXDxDk4Isdn7ewVojkSmMAJZuxO0nEDDzKJXx8EunV9aQfzkg89S
         RE5sUDmubzO/5C4v7Wl3Tr37UY26Lv8GTHzSU5A/7D/bqiGrpze7LJxdD5+OaPvUUmOv
         4o9k6dPLbj9Lv48MW76MPCgPp2Cs40VZ9Kkfw8K5Q+fwUdMsNlpQgSDJFhFYjs6BqYdc
         1Hvw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=mUzKVDRm;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324561; x=1711929361; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q8GTA6EO+ku6ZaeV9/P3Cc04aR18o7XVcLzJ5hIIiLI=;
        b=MVxY4Hlz6qxDwtbihWHWY/t2fm7azT/YF9rLDQYS71RvsaRyU6lm0HKDLn5sErhQtv
         GaTajlZip3vJbWa3ZyRjRnHjU88901FnZQhQwGYQX4x0INEJNDqi0TnP68Wuspvrg7of
         QIymvIH22JGDHZxuBIC78zZQnRjpQMWoTw+dE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324561; x=1711929361;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q8GTA6EO+ku6ZaeV9/P3Cc04aR18o7XVcLzJ5hIIiLI=;
        b=D+bq8+Zn9ikXJOMiav0EPrby3707e2gq3ZBrxPDKoAu0wb8t9LewW/gFmP3DrI/eQU
         Kn9Hgsu1hihODztdOwIFahpw8CwSAbtLHkvS2+1a06VgEv2vP9EcbowvvGhP7bacOk9n
         yagllUIfwBRfr/KfP43lMIkKdqcQQPLP0PBwlkgJ/+0wfOZxQXmMgjMjKrxqIhpzqk0I
         83YN0FNsJAMOvzwo4klkjI0c8tGKkPnjsSJKIsAkBAj4z2EXButHG6x8VO31lWol4zCT
         mbKIrppfC5sat8LE6vD6Nn8gTJw5wyHt4e5zj8SXXHQIEUfNa2qTQ/Mfw2HBOTrA8x5d
         L0cA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWLTXa6uCq2LH3/Q6B8AqOEpRQGN2lz73smlFYgNEdZIao2V96GROcOUCcgg6IDkQ/5zYkCcagOJXiVlwWMoac38pKRFLmT85PY
X-Gm-Message-State: AOJu0Yztmc/fysDynUfsFwUrPswKM2BDbYODcwC1qY77TNVADcYkUVNv
	rJFQqWmjXQeCyYWMJ4gkarDpFMcBO8L5EoPSl1NTRcfG5S3PCYn61TN9FvtLgHQ=
X-Google-Smtp-Source: AGHT+IEl3bDTQirX0IhBHQPJQjlHYUVt8fx6sug1GTRSzwcawM846fvvQH8jCHi7ZbCt5Dl9jzgwKg==
X-Received: by 2002:a17:90a:4310:b0:29f:e772:61c3 with SMTP id q16-20020a17090a431000b0029fe77261c3mr4368925pjg.27.1711324561287;
        Sun, 24 Mar 2024 16:56:01 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:c58a:b0:2a0:34c4:f7c4 with SMTP id
 l10-20020a17090ac58a00b002a034c4f7c4ls1600634pjt.0.-pod-prod-08-us; Sun, 24
 Mar 2024 16:56:00 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWe0xGNaQ2HrnHozsPFyJAlrbSR0qISqatP3JEY22qpXCE63yItcPpB7ZOSZ1dtmTfud4b1IMx++A595tL/8IHeEiS69txRWilHNpXshTVIpy18gC0=
X-Received: by 2002:a17:902:c951:b0:1dd:dbf6:57c2 with SMTP id i17-20020a170902c95100b001dddbf657c2mr7780671pla.43.1711324560101;
        Sun, 24 Mar 2024 16:56:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324560; cv=none;
        d=google.com; s=arc-20160816;
        b=QGKF8Z3lIDrX03nGWaKuB2Hb3o/JVIOzTpz6xFzT5CRerp0PncfAwut3huSAwA74ga
         bTiqQrekAD/EwLfWjgykzt0CRUkyLZthkZuouE/wvIoC+FiR10Qa8cy43hrhO5KBj1yQ
         ktcNmZMyiaJTgloDLPpSsc9LwUa8IQ6W8+17LQV6/k+UB6VsVMOR65Pb3dKMxeacMDsz
         AYYsAY64WlYMbVbBVBfuMlZq6GyEERgfDlMQzpgkXB+l2qDHYFzdKpjyowFm+5FeviFh
         Nh3HVFkAZlFerbB6QaBgLXMzuy/o//OSd1Tj4Sp64V7QiHnTU87KjkDx6dM+axhOR+zu
         1Fyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OPWUBHnGb0JxJ3ne4A3+w3BXzTBtlAWCEg6mk8pbIPQ=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=nKUzrrQho5bbjYsmmrRwpJ/OBuivp4Cyq0f74hFHHFOY+t2Q8jDreYZdCuNUv948DU
         /i2a4A3yR6cAqdBUatXWABiUDZ9gZJTa6TPYw42uMxfocwJbxKXw7UQblaypfXIuw2ey
         DybVnOzqSOS+uiYAdSIiUW3SVNM2J5jwb2zGkXkukjgRdc1+dn6d1AajjCVxt7ntdVej
         o0Juqn17dvmDZDsN/4u+8mP6vqQmIVlueTpyrdnVdlRnNlt9CRNz7CQD1Osyk0rL0EY8
         jWMUZ6WN3jS/M1cgamJ+T9lnybv1Y2pO0K3pae6EHctsLWYDX9j8B2UpLWFljP84CWL8
         JGGg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=mUzKVDRm;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id z7-20020a170903018700b001e0b5f4d2fcsi1937088plg.447.2024.03.24.16.56.00
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:00 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXgq-0000000Dzdg-0RFW;
	Sun, 24 Mar 2024 23:55:48 +0000
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
Subject: [usb-storage] [PATCH 12/23] mpt3sas: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:37 +0800
Message-Id: <20240324235448.2039074-13-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=mUzKVDRm;
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

Signed-off-by: Christoph Hellwig <hch@lst.de>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-13-hch%40lst.de.
