Return-Path: <usb-storage+bncBDUNBGN3R4KRBYNF2WYAMGQE3GGSTPI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x45.google.com (mail-oa1-x45.google.com [IPv6:2001:4860:4864:20::45])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F70489DC7B
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:26 +0200 (CEST)
Received: by mail-oa1-x45.google.com with SMTP id 586e51a60fabf-22eeb174f38sf2206638fac.1
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673505; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y5ClcwljN9A0mEpijkNBwHTRYL6XDu/VcZ7R5FwhjEOmqF9vNjAXkUxbE/NjqtfSjy
         x8syB9Es8WnQXTQOTAbqc8usfLAVsfxHYe0/AG2M2UhAgKmeAPPE0kZsrYeHXDXXwyHu
         hD3bNLVaXHeiq7NXr2jlNacFw5lo0JqWmbavFK9b077fx4Nnz3iaP4ELZng/PNHs6XIB
         ge0tDTJTZ7VSoL2gfCkEQE4mQI5ym5Jr2J/ZVOorgwUNQBdL7y/oLUHR3pPmTKOTp9hL
         0r8rFKI3FQXGhSG3N7C3Lld9MfjuPJU9i6o75j7e1l9eI+clEi/9RrTJJKgL/S7kfvgG
         j53g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=OT2B6HpbRZH+9Ir00xS//WHMKF0jgFD3OY6joYlH8ss=;
        fh=ZLAnD7lTGJgDmz5ywsxtgLK3Ke+JsQCPpYvrAO2MEAA=;
        b=n88K0wMrumpfZxcQ9kWCRY/GNvT3YhOsutF4kySDSS/oX4ZKQFQczPt3n2ek+lSpaJ
         dGGBVy7fQDHVb0Fw10tlaa/4GqgyLG+4chCIENbJD81hLwojQF/RGUMcXWfyQvxOI93p
         Xe+oPrRg+bfbQF42PGgxpukMyFVCHqOgP5nwU/9cYSPndyeSmK4kQ8FCty/dDPooVjeP
         p/LGruGRe5FH0QArUxvi6fj0aFoE24uHnTOGzYKjfm7Xj9ezf0Z4j/fMCcSQHz0Ak8Md
         UtjzCyN53pBcrGces3idDaeedvjabg/kGTdSJcp7MFXiSBJ8skY7QyEbN11Kj308A3j6
         cgXA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=clGFOpBq;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673505; x=1713278305; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OT2B6HpbRZH+9Ir00xS//WHMKF0jgFD3OY6joYlH8ss=;
        b=D7o0noz84LMMHSYdV6gQf1ObKMy2bY/s4uXOW5zJc0SBagKObheTQV9QWvYBGcyy2O
         aXEH5z3kI8jqoFy0C1WrMTXRnqNIXb7cgp1Wi7DsAGwdDzIW/s34zlSHeozvBpdBDY05
         233X0bbvWCdFosOxC2N/GUbD4gG0PQEaoDNKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673505; x=1713278305;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OT2B6HpbRZH+9Ir00xS//WHMKF0jgFD3OY6joYlH8ss=;
        b=WbeV8gLTdM42UEJFi1EFskwlmU4bkZD0FA0R+rRpyIrhy/O3IkR/3RSmenv2VXXPGe
         gS+E1KN8BZ7qz07xlzgxFRCOSAxZ80OKA8pyowqb8wt0x7mQtYcfHRd+khhLnkwLp5k3
         l5uPt+zcBPumMk3l6YT5TwILGxa51Em0IMrsTgCeD+hN7LyFkXv0uTeSgk4WMRPG/edn
         YS0fJD20IIr8AjDyNAG7PoGQFbZBv/1p3aOOIKL0XAb6XAbGBW1Xv9FbTiI9aGAIi73p
         FMgZTRXTiWbiC6wm/9YeN1WFSUfEifFWPNqJSJouv4h+ElKtPQUBKAnuQO3IH4NBYezc
         eoaQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUKIsnkowzK5iRGh2LHbzOcH1vpSIvQjfFUFMSp9gSD8o+BIv30NCmdtbUdLRfARcH/qnHW4SXQWDtAcWTqgU8Q1On/BkVJys7a
X-Gm-Message-State: AOJu0YxwSsF42n2f9rPSTphdB6VYTLFb4f21u65G5v9Ip4KwZTND5/lD
	wQ6KPIKbmQsBvnzvFE5/e3evhaSjxqVTDlJyA5HtWDG3kYiXcFVdcfpyUyCVQsQ=
X-Google-Smtp-Source: AGHT+IFXDdTbQeiYhvPux7abRbsloVX56b/OdK9EqFy41flzckYZKt87kzRG+QB3DXxPB0hpB2thWQ==
X-Received: by 2002:a05:6870:958d:b0:22e:9266:a7f6 with SMTP id k13-20020a056870958d00b0022e9266a7f6mr14227375oao.6.1712673505232;
        Tue, 09 Apr 2024 07:38:25 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:d892:b0:22e:bec1:5963 with SMTP id
 oe18-20020a056870d89200b0022ebec15963ls5221808oac.1.-pod-prod-04-us; Tue, 09
 Apr 2024 07:38:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXJS2H1wN+d/u6Ux1YURZ7k3k3J+eaIFM/Ia+2uRTFB4xq33HYvl00Fb5HBGCUxB3mYua4IlKsujbinpM6kr4iuTsVIhd0NnLF2YLgN+scqfSCh+dY=
X-Received: by 2002:a05:6218:288b:b0:183:f0e8:b632 with SMTP id vw11-20020a056218288b00b00183f0e8b632mr32862rwc.11.1712673504401;
        Tue, 09 Apr 2024 07:38:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673504; cv=none;
        d=google.com; s=arc-20160816;
        b=LQwcvl3gkCGJT5ZuRgPrD9SiKELmk+hDUOMvSXt6JxjQOZUX3nA2yY6DoPvzW6Sp9C
         jVKGmlYXQnmoyzdvF4synpX1tAS95krixw5kvOCC8PzFEdFqozuCyB7FmJ7kyCeu27ES
         T1ItysRcdwqrVnDGj0wqyKkdRiSfiQbqk/Elw54dyTna6CIz5QKg9KAE97i4YGizcWZz
         vQ3nX98lSGwRP1MtNTZkoaBPC388VlnGyGWj0ZQiiya+R0GHfz5uVQbCHsX9/rS1v2+c
         XBWwIp3SXKpz8kcRn/tAUpY2siSUU2WaW675ihc6GfhdipgJTSRK1f2gywwIe8kaZJ9F
         qc7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VTfZ5Vvuh7yJPIR02HZcek9cCdk7ZE6FVNyM0wSZfLY=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=MtKkbN6Y6lzbNsrDXeBwMYjck+dlFP0OdxOKM0eJrrIKj3elSYLxWv0dCQPS/VKPG3
         sGOrLM2Kamv4HWD/L6wvZC+XyLac2cE9CZWKrY1L04kNn0F2t8DQRpmpQ+qMfARmCT2K
         f+GElzHBSVnv40pSaKyZZqcGnJfgsEyDKxID4LTDtgEKRWHdT3ClIlR0ufZnWJW567Yu
         wi1KzGQkykMTaCGVQzDtlUnFjgh3gttJGaKhUXk3slicG1ADnJwqmBiWcHOsKPou5umE
         EkWN9s3xjFnukIOeORchOyvOBdxhoIBHGwVs1t/S5f4ZpxNJ62vyp4nkvRaxLSU2rLau
         BpkA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=clGFOpBq;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id i3-20020a636d03000000b005e842a59daesi8939011pgc.864.2024.04.09.07.38.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:24 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCbz-00000002Ry4-3Tw1;
	Tue, 09 Apr 2024 14:38:12 +0000
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
Subject: [usb-storage] [PATCH 08/23] ufs-exynos: move setting the the dma
 alignment to the init method
Date: Tue,  9 Apr 2024 16:37:33 +0200
Message-Id: <20240409143748.980206-9-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=clGFOpBq;
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

Use the SCSI host's dma_alignment field and set it in ->init and remove
the now unused config_scsi_dev method.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
Reviewed-by: Bart Van Assche <bvanassche@acm.org>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Hannes Reinecke <hare@suse.de>
---
 drivers/ufs/core/ufshcd.c     | 3 ---
 drivers/ufs/host/ufs-exynos.c | 8 ++------
 include/ufs/ufshcd.h          | 1 -
 3 files changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/ufs/core/ufshcd.c b/drivers/ufs/core/ufshcd.c
index 62c8575f2c67ed..83227c8708599b 100644
--- a/drivers/ufs/core/ufshcd.c
+++ b/drivers/ufs/core/ufshcd.c
@@ -5274,9 +5274,6 @@ static int ufshcd_slave_configure(struct scsi_device *sdev)
 	 */
 	sdev->silence_suspend = 1;
 
-	if (hba->vops && hba->vops->config_scsi_dev)
-		hba->vops->config_scsi_dev(sdev);
-
 	ufshcd_crypto_register(hba, q);
 
 	return 0;
diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index 734d40f99e31e6..7ffc28e2278420 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -1187,6 +1187,8 @@ static int exynos_ufs_init(struct ufs_hba *hba)
 		goto out;
 	exynos_ufs_specify_phy_time_attr(ufs);
 	exynos_ufs_config_smu(ufs);
+
+	hba->host->dma_alignment = SZ_4K - 1;
 	return 0;
 
 out:
@@ -1510,11 +1512,6 @@ static int fsd_ufs_pre_link(struct exynos_ufs *ufs)
 	return 0;
 }
 
-static void exynos_ufs_config_scsi_dev(struct scsi_device *sdev)
-{
-	blk_queue_update_dma_alignment(sdev->request_queue, SZ_4K - 1);
-}
-
 static int fsd_ufs_post_link(struct exynos_ufs *ufs)
 {
 	int i;
@@ -1583,7 +1580,6 @@ static const struct ufs_hba_variant_ops ufs_hba_exynos_ops = {
 	.hibern8_notify			= exynos_ufs_hibern8_notify,
 	.suspend			= exynos_ufs_suspend,
 	.resume				= exynos_ufs_resume,
-	.config_scsi_dev		= exynos_ufs_config_scsi_dev,
 };
 
 static struct ufs_hba_variant_ops ufs_hba_exynosauto_vh_ops = {
diff --git a/include/ufs/ufshcd.h b/include/ufs/ufshcd.h
index a35e12f8e68baa..93afb726213f0c 100644
--- a/include/ufs/ufshcd.h
+++ b/include/ufs/ufshcd.h
@@ -374,7 +374,6 @@ struct ufs_hba_variant_ops {
 	int	(*get_outstanding_cqs)(struct ufs_hba *hba,
 				       unsigned long *ocqs);
 	int	(*config_esi)(struct ufs_hba *hba);
-	void	(*config_scsi_dev)(struct scsi_device *sdev);
 };
 
 /* clock gating state  */
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-9-hch%40lst.de.
