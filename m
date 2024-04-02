Return-Path: <usb-storage+bncBDUNBGN3R4KRBK4GWCYAMGQEEKRPIJI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C70489545B
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:57 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id d2e1a72fcca58-6ea81b74262sf4395634b3a.1
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063275; cv=pass;
        d=google.com; s=arc-20160816;
        b=fceBDKSW2xOFJn0xuC2M6hFTgKs0ZinUTzI5yQE7Bp7q2dqBVTMJYPp4n3mOf6ouXT
         v/Dx4wrnahKytbmMijt3457Kaas0mOAf13Gb6VMwOISo/j4ADby8VcLvUU0VaJ0oLq7s
         tpTNZJYwqQX5e6OKCQd+Sw6SPhPqlMvWN1g8QeroU4sB71r9lLkpaAX/egnST/MRkZW+
         GOOGYesDCcmPQANVCuBhxmnqWEcNnxeYT94TolVk70L5/BrWt9CZXCbFI52Pqscm7Avl
         /Un4YhSzGhuGcdqaWLx3KHxMQT2bs69XMWQW/dIN1OG3UpH9+TyInyZsLCEiDIocnyIm
         PZsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wtVAt4iu7n5qmhH5epN7V4DKIrvcgOLMYVLwaxcdTAY=;
        fh=0TZ8fbWYrzZlOPRJGQB5D+naNxGyIwZC9Csmnhmt3LY=;
        b=BN+dPRRmuaBEmhZGygkMWBOhIZpM3+LzU3ZAZUfv73u1fIWGA2eJeV7LDIULw44sln
         hpF93rtQsCJxAvYgrOEP1OwiwRuT0TnZXNCdjAEknERMxmftmHTkszievbTzIdlHQC9Q
         d7kVvpwo4qByvX5SCOyt+X7Egnftm94Z84YvVDqQnSYLp8/LlsqG0Dq0Q8+E45VeFv1b
         xtlPJKKqNanEdoseGRKlZnID12kN0KZ0e+ELd1oLMsMavS7qXXFq9zYAmeT2bQE9tw+U
         m3CpLYAYcg4IzDk0t8nPLvSOFbtvLsZ2XXz2k3jN9aNbnFOTseMOVFswLJa/q24O3XX6
         lNhA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="cAAc1EE/";
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063275; x=1712668075; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wtVAt4iu7n5qmhH5epN7V4DKIrvcgOLMYVLwaxcdTAY=;
        b=luD6O567ilYxWB8eAyzSDRcEtk3coH51+sCeFlM/jlGgl0zpWp7jp95oLxMR850Ccx
         b3P7O1ENV6FrIhrSChM3yJu6zkvMV80DEGREXvxFiOT1tB5707wj9MOcGfco2oWidJvj
         2Fwke/9d4mZfhHxp+6oA4JC5cQHIEPInEYlGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063275; x=1712668075;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wtVAt4iu7n5qmhH5epN7V4DKIrvcgOLMYVLwaxcdTAY=;
        b=rDiUgEHK4WEPbCoDVqIiJVrj86k4n/Uq4d8DsLJIfH4vmn+6ifbsOEnwUvX1KTj9Da
         0T/tbqdGfxdz/S/5p6VmwxzKVQLndJg2BfPzGVPM5MboZeuj8ZUguC+JCEtv3ezC3bWq
         4AjwyToirzz+CgLu99ATs2TwYMEiKYu711aZr9fNuf5Au6Fge5UJSKFbPqDwq7PHIKBK
         a/ZabDMLzozcB4/Hzd9A3yKzITAHktXJMLraPSpli+3yMqViPHMXm7FsXjkKhSlrLAq6
         LwEa/bdxkSa1TzNk2tXcMcwn7cehiBV0z7X/sXvOuiWrRg+s68Zn413e9g68nOqw4XMn
         w2VA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUFUU4kTjRC4BA72JiA/GGtNC0eGDfl7uU+l2bJXScRvvGMjf+D/BwNDIIn+kR6HI8QQ+4G2i4kKBE27hmTJxmRKFLB07U1kwy0
X-Gm-Message-State: AOJu0YzeXhMflpo5yF/kw2lHvVdGAJVxJLNuH0fuzTiuISp0DphmtzLh
	nQpfVzSCuF3xb0/+aH+Ieqy0iAnhXNYZvo0rA91AQZTTgeDJuEsFWeoSiC7ThMg=
X-Google-Smtp-Source: AGHT+IF4ZJt8hcZFGCkaD6QpeNiy8re2KvR+KC3bNIjNBnWCAS7geKWBRjII1eGAJ9uYuJSNnZO7lw==
X-Received: by 2002:a05:6a20:bc94:b0:1a3:673b:62b8 with SMTP id fx20-20020a056a20bc9400b001a3673b62b8mr8822154pzb.35.1712063275713;
        Tue, 02 Apr 2024 06:07:55 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:3924:b0:6ea:ca49:5adb with SMTP id
 fh36-20020a056a00392400b006eaca495adbls3057926pfb.1.-pod-prod-09-us; Tue, 02
 Apr 2024 06:07:54 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUhm1QwatfeVVxgvyK3jhIjuyW1Wrip99JGsNYxWX8X2utA68UJTMxEnF0+yViDGf3RA0hDGkqh8gWFtMt67M6IRwwyzHn3mkzQWGmd3nrcQ0O5S4Y=
X-Received: by 2002:a05:6a21:6704:b0:1a3:bb75:17ab with SMTP id wh4-20020a056a21670400b001a3bb7517abmr11898987pzb.59.1712063274354;
        Tue, 02 Apr 2024 06:07:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063274; cv=none;
        d=google.com; s=arc-20160816;
        b=sKEdOfR2+g6GH3QX6mW+RFuX4cyLfMdiXes8gH4LfewtNME0hIPihzcFu01qwt00J/
         bKDSROiw7GkJFX3wy7T6DpuLcsZ2JvqEqeVvyGIpW6T/vCVluo4MTCRoW1cT+V73tPGI
         eGOj2zXdED01830u/yfJiTerzAZ0ytou7KhfhhHO0PEbASqk8n+jYxAjphq56VlH+OqD
         gGPbY0nKVuCEa75pks/bIW+CY5QQ47SOQRZBAUXREQ8gOO1pceRxgPO71oCpRH2cs6w5
         1PXi+Fd4ikfI4MzycQzA3fzYHbhOYYmKR4Xzm+hmZwO5xI7SAnDG5vEUTCs58qarEY8/
         OOIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FUM5W5T9mR0JgNUyveSff4Ee8B0EnEkRicrpxNbYYi8=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=c0mx3YUGNXcHzJmAFT1HHP1FjM2yQrH0REV3aAXJdzd+azc3H9x9T4IKQBaDIL24Xm
         8yE0Zu1oFCSBi+8LKeOuAlT94kA/D4O0C4C3CgwWDkO6gssAhP/fJqUEsoR+7GWA5Rsv
         lmfpXIWunwAE+0hJ7PH45zynrMwZ8gG867E0DxKF0wDGZm9dYj/Bo+JoVhJGC8wbBr2u
         eq9QwbzjPNUEPe4E+HKygpt2l3OB4uFLIpIMBCUpPRdFDsm0N/Y0IRt9OHtjvBPtsY/b
         7V5npJ2A/mvWY5uIX7PiHomJ4pPNe5Pcl97uo6KKlWmhnkr7FpcXcf6jItrm+ZUshPbU
         vlBg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="cAAc1EE/";
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id k24-20020a63d858000000b005dc894ea130si11007793pgj.384.2024.04.02.06.07.54
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:54 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdrZ-0000000BFir-0YFn;
	Tue, 02 Apr 2024 13:07:41 +0000
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
Subject: [usb-storage] [PATCH 19/23] pata_macio: switch to using ->device_configure
Date: Tue,  2 Apr 2024 15:06:41 +0200
Message-Id: <20240402130645.653507-20-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b="cAAc1EE/";
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

Signed-off-by: Christoph Hellwig <hch@lst.de>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-20-hch%40lst.de.
