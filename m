Return-Path: <usb-storage+bncBDUNBGN3R4KRB7NF2WYAMGQEB4C6SSY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id 1175389DC97
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:55 +0200 (CEST)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-2a4a1065dc4sf3273922a91.3
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673533; cv=pass;
        d=google.com; s=arc-20160816;
        b=r1qXl3t3392a2OtjrL+4arSU2y8FIGVyLU8qas89ug3ngAswipt2ZBlARGUhPjeyj3
         ybEO2eL5oJ4qLxRLOUNXN0lnB9syg/HUxncFp9mbP77L0LWa+p7el/LreURZzpRAbDC8
         ixSlt+vKHs52ni/BoexHkb1opKWTg2ssN5uoc/CsapRBhcI2eRwxHw7U04HCcRTlXVlx
         r5D0t4xdaaQYxcIdBri7MMHmawU+zggl5BkpuH6C3RB6InxbxUQjEofMgm7YanB+EkIG
         +in0j5u/zaUR1AzpHmqPPfvrtf0ztmyIoY6EnyK36Zxvjlxyq/NFR8HTYViKdrDtIeg2
         mIAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=TfDCSnEu4APRAE07uVvKTfufzuanglL440YLuLG2/7E=;
        fh=fnETCP3UnUFRw3q9FLEap+vbsMFXmQRPJRMoHPkSoq8=;
        b=Ea1lJcdSyZmVMDtT+MK+BwlI5Tw2dfXoWGWttXbznPsAOLcXKMZ5cQ72bARRDz+kOM
         bUVoOgEi9QkY/F//fpRu3YEUTyceaHn/847hT5PddLRr6o9th/ZjWDNB3erPGmv7ut8W
         SBrgEVnwQhh9od21BRiXeXkSn2fQpUwvTE8oCPua3l2fB0LsBIxFy+mkzdNx9Nvif9Vp
         XJrumKOxu59WjyPHV/45P9CvBVcMB4Q95F4It0QPqaF7X4OwvWZ8I6Yvzi2KmhcxnAKe
         E+/AZNvF5kIIBodhfLYRnNig6kEP/AUpHMr51ZU1ePrQCdH+grxUoIO6zjN9HlGekW03
         Q/Ng==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=gLiCmJmD;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673533; x=1713278333; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TfDCSnEu4APRAE07uVvKTfufzuanglL440YLuLG2/7E=;
        b=c6dhAxK15gTJUGCXJAIcMa4eRyXSri6bmIma4zWKKL0duy9HKsLIgP60ErAkMWQyof
         ZQg4ADVyiXfc1Ol7d3BdA+I/uQaVR77kXASqxVXz7PQE1lVX/cymknsO5edFroEw3jRS
         tWQ2oCvkR9y2JNW2tU37J/bnXcaeZrb8X9xW0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673533; x=1713278333;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TfDCSnEu4APRAE07uVvKTfufzuanglL440YLuLG2/7E=;
        b=qv13Dj3ny4/xzIwfUBsh27X3jQKcEUIN+1JUHQcls2w8qOgJo0GVDBujFpwj5tavAH
         jNdhgVTNOUFlSZyCtkACAXop2bJl3WhQvAmuDP9NnLF6cULE1AAvuTPc/bJdbvBfk5sU
         6XFjtA8m6WadjPhN0vhhwWp5SAfknqOvCJ22Jj9JhFuoFE8KkJAW3p+Axx16GpQx5xi1
         AKRnxaRJMBd1b6G/RcuvKigwfxSVQIJy6ox5EwoiJI12fSLwreNtjtmgBHqVfoMF/2Do
         zI0uKvNTQekP2XF1C0JBI/aUYwMrWjUK3/PYfFiRfPr38Hkuzu4KGNNNELxzdImS34w7
         pf5w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV7OZlufYotYPAb5+FHuyKv38HDWbyh9UiAh9W2AvWPAKWmXMafWjuIAO2u+011+lzXe5fhSfQ09KN5ysJDhQPLM2oW9GVX/sCg
X-Gm-Message-State: AOJu0YyPIoovVtCuAVz+BoCDxIWsvfd7gUc0qCtw9Y7Cnul1SnfW7HYi
	7gcpikzXgS8mYrxcCrUUQ69F4SivIaiSjJRDE/KKjLhlVLN+xiX09lkhbzPCoug=
X-Google-Smtp-Source: AGHT+IEHyZvRBJ7ho98T98ONIt9iGnTeOI/y8gdKxoi4qUV8RMO1Z0e5eL6k2C7YWdPzNRsJYQstNQ==
X-Received: by 2002:a17:90b:3ecb:b0:29f:7672:7fee with SMTP id rm11-20020a17090b3ecb00b0029f76727feemr11333005pjb.31.1712673533577;
        Tue, 09 Apr 2024 07:38:53 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:6d61:b0:2a2:88d4:8941 with SMTP id
 z88-20020a17090a6d6100b002a288d48941ls3480092pjj.0.-pod-prod-03-us; Tue, 09
 Apr 2024 07:38:52 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWKe6jR5X0FZVgkOEAYvl0Xr4Ww+LQ3k5OYA8DF3pl1GVFV+qPYQRg02AdE4bfrHCRmfCm9NTjXiJQMEk64SggmODvnnpIeg7LzDgGrTtSqcePCgJ4=
X-Received: by 2002:a05:6a20:9146:b0:1a7:ab13:d4ec with SMTP id x6-20020a056a20914600b001a7ab13d4ecmr24452pzc.2.1712673532436;
        Tue, 09 Apr 2024 07:38:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673532; cv=none;
        d=google.com; s=arc-20160816;
        b=rIklaNU+obDfklRQexVVnWQRoCEWShd+6bYp8gdkDmypsjYHRphv64m2KqZmHxcuBY
         QNJkWr4itV5GDwkp+ZFqwHW6pXbCHkkLX5ZH3LaKdhBB3r84RC0tbd7Cp28YGi1f7fsl
         nZNznjpOEtc9IBOcVpyUWvaTaJFbtEIiKjnvTmS51Tp3BJZtHI2Qstte+/RlsflSwssG
         24ogx+1L4O/Qmi+ZuSqdeK3Xpivs0vZQZhIPC347psfbiPXx7kdqmBx1yZTFYEOLeyZ5
         TEGkT785A3omKvw9EqfScGUw/GUGYS+ZV/VwMNdy3S3CWWn/Jwf5/MCQRZ+Ohgi3pVWq
         qogg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Q3I3m4pzyEWyxZP/v80LIj69GcUb/mYDNlqFRnXpXeo=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=bZiRR5S+D3OZ4kgayITwbkkB09HjVuRX1EOBzATfkMbrMVXo1o/UxtvkuN6MPJxWrk
         rrBq7ctzBbfKigNwlifZosyZTf8zGYbul3yeb2poMXSKdtZOY4EfjfzvcPf9PSMc517M
         z2Ys15/Hb8ON5KVSyIH2J3/5G0W+hDoyucEAbtVxaT+jBakBJcVIfBmpWHAAdeNzwMmD
         2IBXPFqIo8A7zMCIl8lu6ZAIAI1YSwOhAv+0d3ndDqQXCjVa+3PZAOGbxznaQ9LTLVAG
         yegDZh81XTtHs7Z7nzHhirSxM9KfeOXiXlRyG/NgKj70LJ+yIpf50PWmWcJq0WJZ9Ht5
         GJ0w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=gLiCmJmD;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id o24-20020a17090aac1800b002a53b565379si3412698pjq.59.2024.04.09.07.38.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:52 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCcU-00000002SF0-4A8q;
	Tue, 09 Apr 2024 14:38:43 +0000
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
Subject: [usb-storage] [PATCH 19/23] pata_macio: switch to using ->device_configure
Date: Tue,  9 Apr 2024 16:37:44 +0200
Message-Id: <20240409143748.980206-20-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=gLiCmJmD;
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
Reviewed-by: Hannes Reinecke <hare@suse.de>
Acked-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/ata/pata_macio.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/ata/pata_macio.c b/drivers/ata/pata_macio.c
index 4ac854f6b05777..f046bfa5c6e7f6 100644
--- a/drivers/ata/pata_macio.c
+++ b/drivers/ata/pata_macio.c
@@ -796,7 +796,8 @@ static void pata_macio_reset_hw(struct pata_macio_priv *priv, int resume)
 /* Hook the standard slave config to fixup some HW related alignment
  * restrictions
  */
-static int pata_macio_slave_config(struct scsi_device *sdev)
+static int pata_macio_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct ata_port *ap = ata_shost_to_port(sdev->host);
 	struct pata_macio_priv *priv = ap->private_data;
@@ -814,7 +815,7 @@ static int pata_macio_slave_config(struct scsi_device *sdev)
 
 	/* OHare has issues with non cache aligned DMA on some chipsets */
 	if (priv->kind == controller_ohare) {
-		blk_queue_update_dma_alignment(sdev->request_queue, 31);
+		lim->dma_alignment = 31;
 		blk_queue_update_dma_pad(sdev->request_queue, 31);
 
 		/* Tell the world about it */
@@ -829,7 +830,7 @@ static int pata_macio_slave_config(struct scsi_device *sdev)
 	/* Shasta and K2 seem to have "issues" with reads ... */
 	if (priv->kind == controller_sh_ata6 || priv->kind == controller_k2_ata6) {
 		/* Allright these are bad, apply restrictions */
-		blk_queue_update_dma_alignment(sdev->request_queue, 15);
+		lim->dma_alignment = 15;
 		blk_queue_update_dma_pad(sdev->request_queue, 15);
 
 		/* We enable MWI and hack cache line size directly here, this
@@ -918,7 +919,7 @@ static const struct scsi_host_template pata_macio_sht = {
 	 * use 64K minus 256
 	 */
 	.max_segment_size	= MAX_DBDMA_SEG,
-	.slave_configure	= pata_macio_slave_config,
+	.device_configure	= pata_macio_device_configure,
 	.sdev_groups		= ata_common_sdev_groups,
 	.can_queue		= ATA_DEF_QUEUE,
 	.tag_alloc_policy	= BLK_TAG_ALLOC_RR,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-20-hch%40lst.de.
