Return-Path: <usb-storage+bncBDUNBGN3R4KRB2VF2WYAMGQEKLT6IRQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAE089DC86
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:36 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id d2e1a72fcca58-6ecec819962sf5544338b3a.2
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673515; cv=pass;
        d=google.com; s=arc-20160816;
        b=b+cA31+vTk2dcgUgS945NVSXk8o6FzW1v0BbIoz0dRHPI5bAeR3u6xoY20qbWGj461
         WkRub1AdDBcVQCP7sE56kcp832XpG4qxaJK83dgAguQmlc3TZGUBvSAfFryRIXeo9VJx
         jdV84SA1kIu1+uTQJ0kAdTaimWM5fPBeHgQYcSUjmelgSmXxQHx7sKDgTO9OctLT67Up
         9nV0C9w2vDHiZTDyhqxTh/Yx3PasiJd6tKi9+yNbKjTXRPvMRqX/ZkSowezsMvS3PmAe
         LrYW0HUvIE2f+3wQhs+7GBsNofUrIdUdYqStiY+YEmQgUt4QvqzkMTNiRIAuZqo556yr
         BZ/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XLfMtRk+gwmrJ6YZmIe5hdsdlyBPMaqO+BcYmBEISFA=;
        fh=jSHEdsvnpQRsSFMblJGUFqlrMrAeozyJalYhCQARBWM=;
        b=Nx3Z/76EPGN/6UTu2wiLUiAWuh8DerYnAT7BwHReA/y+W0RIgC4HEJQgKzFTERoEaZ
         gjiflxNFaTkIwqfvQpQUUiTbV65kLQpNrd2IXPDMHN29KSMGZOPfrhxkBUNBVUQJcfc4
         vqJe/QUfD5bEfKJDDxU6zfH8Rrq5zxEwoZ8g1c+JFDwgDf0i0DlYeMLq6pkMmKwV8w9g
         Mcu4BreoBCx/KTnyoFot+ssZEOduNz60Cu/G7/u/9a7596VwYOhgr38ep0PGrYZLzogl
         D3mCZbhz/uhiTJcvOMw2Vj+/IvmWb4WqaH+HBOk+zMdcBObmgI2kVUR+Qkf5B5icJ471
         QNmw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=MOuX2Dqb;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673515; x=1713278315; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XLfMtRk+gwmrJ6YZmIe5hdsdlyBPMaqO+BcYmBEISFA=;
        b=k7915oxt+mdLqvuv5AptxCyeBBlSLJZKyokqFUaGfWvbe34bSIeszhzzwYB13CttDF
         8gI1o/hHG2JkgRKpNlHtS1JNaMb631jJxhRTt3FsvmEnZRqx+V5pr/AsjpOw1vOWCHaZ
         IRZtXweeRGgPNOnGnt6o4HlPUr9RYStDXGqkw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673515; x=1713278315;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XLfMtRk+gwmrJ6YZmIe5hdsdlyBPMaqO+BcYmBEISFA=;
        b=aZLUizti3lLOuE4C+XT81OtLsxpIFhGBK/RFfyuKJduPDN1IUa4+JCGUNXtR79aMXp
         EupbrFar0JrIZYlIS6JEIW/EJMWwFAqH1SUuJeucJ36FESo855MymffUbyCvoBnrHM4R
         O+KZsRSiQWQdGJKLf4JnjU/ugwY71F2xlq/F2BiE5MOADj2TAlrhm9yV9jc4mCd3LrzF
         uX83gCrxjJEoJcc0kBeukSCDusBRyIlO8NNDu3oINqMF46V34moxGXhk5HNUbNMvXgrJ
         GLZagPxJ3QTRe4GfNrmMvvN0tiy+luyb5zW3HZLMrvIg5Wi5/tIa2WAYvwFzJJwrOW/t
         FjWg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXpieAf6DtAmRPWEpi8TKmOZb9WW0Ku+0Lke0ySPzLyCuRPO2mhwJzsi0WSiXJfW5s4IJGBRmUDBvkI6RQF+OxfC9dITPuWofml
X-Gm-Message-State: AOJu0Yw7Gg1iY9NrhJ+netmjW0X+405lCFX0uD8LGamxNr/rS0LdvGRB
	AUU/Iq6SOcXeXmgFbmu9GblVBghdOYpQBV9W/DY07O0IvWedJR0WjD2iWIu7omk=
X-Google-Smtp-Source: AGHT+IEihd9Uk5RW7o+NX0dIyWrXH4UDHNUxKJolhj5r+4y/nQ1Iu6qA7N4b3B26DivPFRYBngvv/w==
X-Received: by 2002:a05:6a00:c8b:b0:6ec:eacb:ecd2 with SMTP id a11-20020a056a000c8b00b006eceacbecd2mr13454559pfv.33.1712673514825;
        Tue, 09 Apr 2024 07:38:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:9288:b0:6eb:3c28:41d4 with SMTP id
 jw8-20020a056a00928800b006eb3c2841d4ls3445006pfb.0.-pod-prod-03-us; Tue, 09
 Apr 2024 07:38:34 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVmJvgNUMHO9o/G8YlQe2Do6p+HH8oeGCwbEUbHL64AUVi04FzDzV/XYQ+3WNm3r3e0wCgBVixgJCwBNbTQm/lB0H1vLx6RQc0NCv/f9QMT+NYUYnM=
X-Received: by 2002:a05:6a00:28c7:b0:6ed:21d5:fc2c with SMTP id ci7-20020a056a0028c700b006ed21d5fc2cmr6348471pfb.26.1712673513700;
        Tue, 09 Apr 2024 07:38:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673513; cv=none;
        d=google.com; s=arc-20160816;
        b=dn4Q0LsiWVEm4MAutddWeS4ZB3theLGgMkK232Z4g5qtl7j43y2kgy2bmZ2AHj2muh
         i6QrudEUBghIqfhSi9nTHlDPt+wULcwiMt1Vkl+ftiPMwUWgfOpovC3C3lOszLzvwKpb
         kRO0XdlO0C4WCBQriLbV6a9ScwZ4X4hj/m22SwWhoC472SM8/bW6vyDh6M6TT6BLVHMT
         qOZucALiE+5hPUb/Mfh0l/c/ew+vtELgkXBO3a/eDJlbdgV7Du8QRXbGGo64dH4ldFYs
         +7Q1hoV6atjhkXMpAQBx0jotwJu2gkwwI9pSnmKZjHUb+yl3woiFjBI2zNNM+6I7wLcU
         mlMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=W/4MX6Ta0iS+DzFN/hZaJgRdefyKJITkCBys0ksCJ1Q=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=ohU14uFLk461ySkhrJZtns2ykaB1MzSxsZjgMXie+eTMwW4jvC6nMcO/vdS8XdvDXf
         NVpyV2G7paSbXn9tCCA+PJ3sNwOLp1QnA0YQByJskWjjRziwn0RAqyGp+JGEwOLQW+RS
         uZ231ZoOY4lTcSZ/f5aUHQ9E1si1Cjw9FYvrdrVXIg31I2Rn5z7y5VHx3fwXBWIYYDHh
         pT2Gs9KDvKgzTZ7CUndHs38dcz403dLrkfGAmmaD2iimQ8Ac535JA0idOlq5MwtadCbZ
         UY+gzrXYrlicJUFOC2zVaGVuhb8BzMdyLHUih0YNT6elXBFTY8ZPZ1bMUX0LYfsaL+Kd
         i6qg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=MOuX2Dqb;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id h14-20020a63120e000000b005e2c2fc5125si8528580pgl.249.2024.04.09.07.38.33
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:33 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCc9-00000002S2O-14gj;
	Tue, 09 Apr 2024 14:38:21 +0000
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
Subject: [usb-storage] [PATCH 11/23] megaraid_sas: switch to using ->device_configure
Date: Tue,  9 Apr 2024 16:37:36 +0200
Message-Id: <20240409143748.980206-12-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=MOuX2Dqb;
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
 drivers/scsi/megaraid/megaraid_sas.h        |  2 +-
 drivers/scsi/megaraid/megaraid_sas_base.c   | 29 ++++++++++++---------
 drivers/scsi/megaraid/megaraid_sas_fusion.c |  3 ++-
 3 files changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/scsi/megaraid/megaraid_sas.h b/drivers/scsi/megaraid/megaraid_sas.h
index 56624cbf7fa5e7..5680c6cdb22193 100644
--- a/drivers/scsi/megaraid/megaraid_sas.h
+++ b/drivers/scsi/megaraid/megaraid_sas.h
@@ -2701,7 +2701,7 @@ int megasas_get_ctrl_info(struct megasas_instance *instance);
 int
 megasas_sync_pd_seq_num(struct megasas_instance *instance, bool pend);
 void megasas_set_dynamic_target_properties(struct scsi_device *sdev,
-					   bool is_target_prop);
+		struct queue_limits *lim, bool is_target_prop);
 int megasas_get_target_prop(struct megasas_instance *instance,
 			    struct scsi_device *sdev);
 void megasas_get_snapdump_properties(struct megasas_instance *instance);
diff --git a/drivers/scsi/megaraid/megaraid_sas_base.c b/drivers/scsi/megaraid/megaraid_sas_base.c
index 3d4f13da1ae873..def0d905b6d9e3 100644
--- a/drivers/scsi/megaraid/megaraid_sas_base.c
+++ b/drivers/scsi/megaraid/megaraid_sas_base.c
@@ -1888,7 +1888,7 @@ static struct megasas_instance *megasas_lookup_instance(u16 host_no)
 * Returns void
 */
 void megasas_set_dynamic_target_properties(struct scsi_device *sdev,
-					   bool is_target_prop)
+		struct queue_limits *lim, bool is_target_prop)
 {
 	u16 pd_index = 0, ld;
 	u32 device_id;
@@ -1915,8 +1915,10 @@ void megasas_set_dynamic_target_properties(struct scsi_device *sdev,
 			return;
 		raid = MR_LdRaidGet(ld, local_map_ptr);
 
-		if (raid->capability.ldPiMode == MR_PROT_INFO_TYPE_CONTROLLER)
-			blk_queue_update_dma_alignment(sdev->request_queue, 0x7);
+		if (raid->capability.ldPiMode == MR_PROT_INFO_TYPE_CONTROLLER) {
+			if (lim)
+				lim->dma_alignment = 0x7;
+		}
 
 		mr_device_priv_data->is_tm_capable =
 			raid->capability.tmCapable;
@@ -1967,7 +1969,8 @@ void megasas_set_dynamic_target_properties(struct scsi_device *sdev,
  *
  */
 static inline void
-megasas_set_nvme_device_properties(struct scsi_device *sdev, u32 max_io_size)
+megasas_set_nvme_device_properties(struct scsi_device *sdev,
+		struct queue_limits *lim, u32 max_io_size)
 {
 	struct megasas_instance *instance;
 	u32 mr_nvme_pg_size;
@@ -1976,10 +1979,10 @@ megasas_set_nvme_device_properties(struct scsi_device *sdev, u32 max_io_size)
 	mr_nvme_pg_size = max_t(u32, instance->nvme_page_size,
 				MR_DEFAULT_NVME_PAGE_SIZE);
 
-	blk_queue_max_hw_sectors(sdev->request_queue, (max_io_size / 512));
+	lim->max_hw_sectors = max_io_size / 512;
+	lim->virt_boundary_mask = mr_nvme_pg_size - 1;
 
 	blk_queue_flag_set(QUEUE_FLAG_NOMERGES, sdev->request_queue);
-	blk_queue_virt_boundary(sdev->request_queue, mr_nvme_pg_size - 1);
 }
 
 /*
@@ -2041,7 +2044,7 @@ static void megasas_set_fw_assisted_qd(struct scsi_device *sdev,
  * @is_target_prop			true, if fw provided target properties.
  */
 static void megasas_set_static_target_properties(struct scsi_device *sdev,
-						 bool is_target_prop)
+		struct queue_limits *lim, bool is_target_prop)
 {
 	u32 max_io_size_kb = MR_DEFAULT_NVME_MDTS_KB;
 	struct megasas_instance *instance;
@@ -2060,13 +2063,15 @@ static void megasas_set_static_target_properties(struct scsi_device *sdev,
 		max_io_size_kb = le32_to_cpu(instance->tgt_prop->max_io_size_kb);
 
 	if (instance->nvme_page_size && max_io_size_kb)
-		megasas_set_nvme_device_properties(sdev, (max_io_size_kb << 10));
+		megasas_set_nvme_device_properties(sdev, lim,
+				max_io_size_kb << 10);
 
 	megasas_set_fw_assisted_qd(sdev, is_target_prop);
 }
 
 
-static int megasas_slave_configure(struct scsi_device *sdev)
+static int megasas_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	u16 pd_index = 0;
 	struct megasas_instance *instance;
@@ -2096,10 +2101,10 @@ static int megasas_slave_configure(struct scsi_device *sdev)
 		ret_target_prop = megasas_get_target_prop(instance, sdev);
 
 	is_target_prop = (ret_target_prop == DCMD_SUCCESS) ? true : false;
-	megasas_set_static_target_properties(sdev, is_target_prop);
+	megasas_set_static_target_properties(sdev, lim, is_target_prop);
 
 	/* This sdev property may change post OCR */
-	megasas_set_dynamic_target_properties(sdev, is_target_prop);
+	megasas_set_dynamic_target_properties(sdev, lim, is_target_prop);
 
 	mutex_unlock(&instance->reset_mutex);
 
@@ -3507,7 +3512,7 @@ static const struct scsi_host_template megasas_template = {
 	.module = THIS_MODULE,
 	.name = "Avago SAS based MegaRAID driver",
 	.proc_name = "megaraid_sas",
-	.slave_configure = megasas_slave_configure,
+	.device_configure = megasas_device_configure,
 	.slave_alloc = megasas_slave_alloc,
 	.slave_destroy = megasas_slave_destroy,
 	.queuecommand = megasas_queue_command,
diff --git a/drivers/scsi/megaraid/megaraid_sas_fusion.c b/drivers/scsi/megaraid/megaraid_sas_fusion.c
index c60014e07b449e..6c1fb8149553a8 100644
--- a/drivers/scsi/megaraid/megaraid_sas_fusion.c
+++ b/drivers/scsi/megaraid/megaraid_sas_fusion.c
@@ -5119,7 +5119,8 @@ int megasas_reset_fusion(struct Scsi_Host *shost, int reason)
 					ret_target_prop = megasas_get_target_prop(instance, sdev);
 
 				is_target_prop = (ret_target_prop == DCMD_SUCCESS) ? true : false;
-				megasas_set_dynamic_target_properties(sdev, is_target_prop);
+				megasas_set_dynamic_target_properties(sdev, NULL,
+						is_target_prop);
 			}
 
 			status_reg = instance->instancet->read_fw_status_reg
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-12-hch%40lst.de.
