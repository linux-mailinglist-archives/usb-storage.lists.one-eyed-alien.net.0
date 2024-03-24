Return-Path: <usb-storage+bncBDUNBGN3R4KRBAH3QKYAMGQEBBDBLKI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 079E18882C3
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:55:46 +0100 (CET)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5a4873596e8sf3875430eaf.1
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:55:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324545; cv=pass;
        d=google.com; s=arc-20160816;
        b=HNbf3gTamYPWP5qBbLO5nQe1+adh37dIA6T6d+2h26RAzUK76W/tjf+6CwY5Fg2QoG
         jOF8Onex467UxVPq6cAWp0fghXNkars6p4XfmCwqI70c4Wl6XKrvfa2OY6lR0aOUQzUn
         B7yn29OuO3KD7H3OxtN9Koun0PGw58I+olUCxRU1BsbpWx6wqCwbiM+1SNAQ06EGR2On
         5MrzD9aHG8/UhMylc+hgWlMVhB1CqOJApM46gV1HBgVGDlPsw3xLcKRdiRcw+MgE/xih
         0ecR3YH+97/zA+GFusYiIF8OTAwa06kKcqMjf3uuAZPScYu/YGIOHDrZzrPYmPjc6oly
         XBLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4OnvWOdPNEsup/atI5/xVQ5K0ByFewRBUpiCJhuZSAY=;
        fh=ihDAFF3E6JkWdviFSU9JqucjqjJJ04/GfPNJi0FIAPE=;
        b=ZJUBiNLUZLwoMRz6oDsDpI4MBLL5i8rC0ezDYhfRpr3eU/Pk4CmYjYl7WAK0tYyuBH
         G+19sBn8lmuW9GzXLt5HZVdyiSyHNqipfyuRRXEi8/Sbeag3RZHOqRRqoN7xS/hx6Uak
         VgjsJgaLXgm7np452VyMso7T3Lzx2xUul3w4zNx81yAqrReXw9h3Avv4MeOFRYsL7Cll
         gHsG0MxfsSpKCzLq9ct9nFWz2aVzVfWfiGiksE5EhLqdKpj73l58+Wkgd7FRXDi2gQ+P
         AJENdWXwNe29hgNc7ULyeH7tZCWxm8zz6qu9FFT6Gd6nqH1UqzCRTH0IHYgIqTgK8drc
         WwQQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=EKuYXNlp;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324545; x=1711929345; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4OnvWOdPNEsup/atI5/xVQ5K0ByFewRBUpiCJhuZSAY=;
        b=PWlhuZ15IcB6xqOj+OVhc1d8951RDWfzQm7yUI8L+QGV5WLTdm7iBCS9GE6iXFr3P/
         QtByH66UFMEs2BTh9RBfKCodCnBtwropztXDsXErFgQrDmuKdVFCwS3BBhknG5RjXgAS
         FhviHyoUF0QwtmNyWbdaPixW31afVGIqJZMLk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324545; x=1711929345;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4OnvWOdPNEsup/atI5/xVQ5K0ByFewRBUpiCJhuZSAY=;
        b=S9Z/Cbf+zY3ARMP7QfKobqG+uYbDNhGRG94540NrVPIbAvJjaIlTYVSjLm0gHTp3op
         sxkDskFU10vqr4XLu18YxCl5w/KZ7IMqKi4VybAraYWk/iaaLzvOyY+HRI69hL+8B03A
         XWqfb4lWZkoKtAWUwB6lCOyp0Ce0F4rMwYVxwgitbH0AHLusONBv/ZJQXsShxhX1PW3G
         fOaPJ90vnchgJ7RK4k63icsQFJUgY2HWU35RHXfy25fd20LLOB3nV65NmYZcM2sLNG/q
         88kgO4ZecNJCb6vyQghkoBBm6ADmsB8q08cBZhNlKAEFkJT11wMcq1rxkSu/G7A3u3Oh
         /U4A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX8WjE/W6L8WOK6WiOY/ZpC5rPfqZOfzANLTOlX9NLhQYIQR5Us9kWbqV0fmb4huRVWoegN1MqSUv3B+2prM+SeVOLizdWbH0LV
X-Gm-Message-State: AOJu0YyToiehQwP4W4NLeanQ0wt0hxygmOq14ynsgSn9QzYKSTIUEKFQ
	/QAjP0Zt2QB/RWrDaLehFx00M5VOGwoXZKvtsElEuFMYl7mT1YMrfxZA5qdRYqw=
X-Google-Smtp-Source: AGHT+IGeTVRbzQMdd9ItmRMA0iwjB2YrxdcoxsGDvfW0YwuKzvnV23VpDsxVwxrPdowRCjYcrpk6HA==
X-Received: by 2002:a05:6820:2611:b0:5a2:37c9:d91f with SMTP id cy17-20020a056820261100b005a237c9d91fmr5469616oob.5.1711324544944;
        Sun, 24 Mar 2024 16:55:44 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:9b4d:0:b0:5a4:bbf6:3d9 with SMTP id e13-20020a4a9b4d000000b005a4bbf603d9ls4280904ook.1.-pod-prod-01-us;
 Sun, 24 Mar 2024 16:55:44 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWn9SImQMf6J1dNguRoldMMsaXesI0S3msAcHYdlEE3s+qtL6CGXYtcRnBbSkkvyXFki4eVgaT0ThJ9KNabL7PHUye5HEdMC98z/cKo6oiThB4c0Bg=
X-Received: by 2002:a05:6820:98b:b0:5a5:23fb:448f with SMTP id cg11-20020a056820098b00b005a523fb448fmr5087878oob.1.1711324544146;
        Sun, 24 Mar 2024 16:55:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324544; cv=none;
        d=google.com; s=arc-20160816;
        b=hxo2gqzVeCmaodKBNpx/2pusoZgdStd51w6+HTMEHjvcrldKxkBRIcaAdexNMfV1tc
         paW/wqhaUozTIcDWb1u3h+RJd50MLyaZXAnbfQFa6VBxx9g7AGsYyCs0nhCoswCnyxrd
         hEDwRZnk5GEP++F5mAngQ88KR8BgCn4OGpoIfvllkgcUuc6tkuqK1VWdHKmSok5vu3LH
         z3cMY5Fkgs2+lejDLTS5vpDrDFygttE6oIjj/C6V6aiKqpQdquruTOFaeAYvYwgXvcFv
         elXIrElDf1N+hkpOl1TwuqBMQmHbzKre1fl2Sr9jHdbssHAWJullCuCG9VeiyavDAYb8
         8eTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QpEcu6br0nAm6nvHblhU5Wfkb8gpPkNvyq7w8yaKxUI=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=CqiNANhmrxWh6TpyzL+dQ50ABnwvpaCLVyG17UI8JDqU3NH3mpRiwTf/zwZqPr7QB6
         feOmvL1bNuk/5c7nyBaURYdsWhlI2M6ba20LtEqhIzs8BWDNerf5aVpa1OS1jMwY1EC0
         VocC+komz8PAVlsnOhl4qKC3COYt8wmwVOq4nzN6fIkyXta3pR7WBWqi3S7VaGlem1Mc
         pzq9k8QxfG8uN99pvoFQagABae4qeGyCJN62zDUB8GfgPes09sB4qSHK8tlgOhUm+klm
         ISz1DIHQQxXIRqD+jy96jhTbFjFLYj4WDfLFQi2xrnMlBwOSgt/f3lBL7hfAiQMQI4bW
         qf+A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=EKuYXNlp;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id g13-20020a63fa4d000000b005eb4df79741si6377681pgk.533.2024.03.24.16.55.44
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:44 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXga-0000000DzXo-2oPb;
	Sun, 24 Mar 2024 23:55:33 +0000
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
Subject: [usb-storage] [PATCH 08/23] ufs-exynos: move setting the the dma
 alignment to the init method
Date: Mon, 25 Mar 2024 07:54:33 +0800
Message-Id: <20240324235448.2039074-9-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=EKuYXNlp;
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

Use the SCSI host's dma_alignment field and set it in ->init and remove
the now unused config_scsi_dev method.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/ufs/core/ufshcd.c     | 3 ---
 drivers/ufs/host/ufs-exynos.c | 8 ++------
 include/ufs/ufshcd.h          | 1 -
 3 files changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/ufs/core/ufshcd.c b/drivers/ufs/core/ufshcd.c
index e30fd125988d7a..7d593395aeff25 100644
--- a/drivers/ufs/core/ufshcd.c
+++ b/drivers/ufs/core/ufshcd.c
@@ -5262,9 +5262,6 @@ static int ufshcd_slave_configure(struct scsi_device *sdev)
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
index cb2afcebbdf514..061919448d3936 100644
--- a/include/ufs/ufshcd.h
+++ b/include/ufs/ufshcd.h
@@ -373,7 +373,6 @@ struct ufs_hba_variant_ops {
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-9-hch%40lst.de.
