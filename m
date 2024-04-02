Return-Path: <usb-storage+bncBDUNBGN3R4KRBCUGWCYAMGQECZPLWEQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id E707F89543D
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:23 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-1e211c27bdesf40022305ad.1
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063242; cv=pass;
        d=google.com; s=arc-20160816;
        b=YdbBNC0wmU/aykCq2I/GHd4OHACB4zGMFEsnD4AoINxIhX/gO8Xj9+TFi3if5jIhnC
         A7wN34myZQG4ZC9QMpW9ljwFbRMUe2lSwVe0dS4RwTz6SBCk/aP372fSQVTJ07t1ya+p
         bEdbMPEdSTYmcnwJs8JYQeAN+GC96AlH7LlLiisaPtJ+17eEz/XM+IM+Dyd5SFtW0JSl
         1orww2TCxlh1tz7oRSDlKrcGIh787XAcIK5onqcs4S0tnFrgs91wjlzFgQ1t0/eQ8FoQ
         bB1iAQBmcvA3ucmfWDa+AZMXyWZsB0VAC5edhSPy3dtnKuJxaF7CkoT4rFBZzkmdYzIP
         u5JQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tL2UOdnwEBM6TPk+6fUj9vJ98M+5LGllqAQrG8EJTFA=;
        fh=E/zpbrh70qFbwlQ0iRBp4PjR3UjMrK+FeL0x+SdL9TQ=;
        b=vI0JwcmLj0jZDv03rb6acC1ESZwtrEdVclIGSqG47vzYuOGUevmnzQ52ix4YZvRGVY
         Z8tgDVUhYOieF5V3XNNs3IR4Z973i6eU8ru5b7xyBM0X/AMloCWAHGEpzTzwhWDhEXFJ
         wcXdo2pbOkcooOj11z27Xa3UZqrtnpjXznmcg62yKrw8lsl5VFAgP2q7z4zLL4472BX6
         PKrewL9oAghGpoMeeV5JFXaRXVOHaOnUunZZqx9t28y/NTeKl8MEcrtooJY82tUW9MbN
         xlnJJFlUdUaDvdOnpVyKHALGWHdjBnljv+32BNcF1xlJf5+v8+LpUxkI1GNBP4OkKZut
         DE3g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=ywTbeJLl;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063242; x=1712668042; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tL2UOdnwEBM6TPk+6fUj9vJ98M+5LGllqAQrG8EJTFA=;
        b=aqdaCHaOioVfw3FJmVXUOq+6f3hqpfX9bWM9EBvdq45/tPy4007uv3y9DjSIvMf0Iq
         rpG/6CZd5HoI0eimCJK39jR95Qf15BlZj3nc1aXtnm09cayYoVbo7uFjYIedSQRG/hw8
         evK5kTdQXicvHvrXFu/LPMv7Zq4C7EntQIyWY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063242; x=1712668042;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tL2UOdnwEBM6TPk+6fUj9vJ98M+5LGllqAQrG8EJTFA=;
        b=Pxe0Sxd948mEBIJskwoDngtaMudIAyvDqccBbgRrWdwpDhzum/cJvtVdHWTQT5W9z6
         Xr80mYZk5REUlNjJiS/cMeq4hhnpauDpTHd1UQAFNYs7msZUbAmzI9SapGH9+ilDZ2Yr
         1HhMUtb3LHHL9+0w4OdWomqcVYRe8wO4q00HpFMRP+tiJ0bxOfse83xDHMYKebnY5p3E
         dhl2Y4wrOuEyRKiF7LPa0pGbSQXdRn2OPcZPsp6GIFLxZvxEx3iPVaqC1odDeNO+rOji
         tyi1hXuYUec5knpiQohBSukeaW791Yq9JaTtWKcwlGfbMJghhEi+x5slMva7Rr8JgzVr
         7AOg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX3prFqGork7zL9CUw/7xcMvNugSAigW2h2HRH76QDqCCmdnDOCMjnUu/OJfs7xdNHBTq6jTGHuPmTS+xsEbQE+spTsZK59NA0e
X-Gm-Message-State: AOJu0YzQsvODCWBvZ9xsVfaukYACT5DSvVm73Qz9yxepAZtV2yYj8rdK
	scrZHv26mc6UBvEw9f0WAIpIB3QrZQYGiZa1QtsVdLnltbeZOJjN6nWNzX7gP0c=
X-Google-Smtp-Source: AGHT+IEZFBydPwBh8NEDUA0FMwE2pVO4Tn90nxf6cQOiMhCsFcxYjy6msPwN2n31XbcbVcM/x872Dw==
X-Received: by 2002:a17:903:1108:b0:1e0:25f:acfe with SMTP id n8-20020a170903110800b001e0025facfemr14711154plh.42.1712063242550;
        Tue, 02 Apr 2024 06:07:22 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:32ce:b0:1e0:a802:c5a8 with SMTP id
 i14-20020a17090332ce00b001e0a802c5a8ls3221746plr.0.-pod-prod-04-us; Tue, 02
 Apr 2024 06:07:21 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU9mwOI3Ye1dNGtZg+9XNfGnFL5sAARc6ISPPJ09dc7M6kw8geZ2rGhGBgZ3KlZKFkztqRARfX3Wph21f3Qpyk8RygxXS2ffYYfOubeGPfDZeYgir0=
X-Received: by 2002:a05:6a20:1047:b0:1a3:63fa:f760 with SMTP id gt7-20020a056a20104700b001a363faf760mr9879238pzc.14.1712063241252;
        Tue, 02 Apr 2024 06:07:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063241; cv=none;
        d=google.com; s=arc-20160816;
        b=EklgWoKoOJ+/RD/Ql2iVhsbCKteibh4XDa2uAi2BTp/0DJX7HpIt1b3UQcfM3gynOq
         Zbshll3U2AEw7L0XzDkP1Ts51FkORz+FggFOA6QAdWBC0RFuodaHz/+pHyxiUiaKLDsp
         6oIa+pIuVqYNWJC73UyQikkalOE612/hR7vNTOb6caVaUcuCDgI+5uJ8rjRjuSSFbx1U
         KmYKdmuxAjmFd/naFcSrnKjNq2u3P4xripL489OlhUESW1oNXqhhLIT210n2v0h8ebSv
         ynHz8nFBJZE7ouSYqUo381gyqKmbjCVCAcfMmdWPEo/keDzB0uUkQpCPcxfjHbalBkKz
         ucHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kHfoIa0HAY/LCpSWKmY9EQ8Q5uoZBs99upeyG9argx4=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=XfZ6pg2fXhvoZ9mcIknNU7LQSpF4M310WQavIP3QTLRrZGUB+W+XlnWfTIjhbCKAWS
         +gNtRzV7FmL/bzJ3J53oi7PaSTTYlayxjuaX/4Ci7dv3sl2w29NQbkrDS5vzuqABYGXm
         7E5zhAWqSD6fVqi7HD9FcZv3MAfeT5hdSTkOlgK/o2sE6/P/OkQCzBCmJHmfOqFlLU1b
         P3t1yvso1/IX9lQVAU02y2iA8fz3dHfSZ5cltvDhvj5o12ld+zjKrYqGu3Inv3LDzMe1
         MmrREi/+6cTgD3PpLBe5pG4InkVxOpfemxLvgQIol15dlQMWOr3yqpnPwjAEbeIaEldr
         l6ow==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=ywTbeJLl;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 199-20020a6300d0000000b005e2b1e8547csi11184376pga.367.2024.04.02.06.07.21
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:21 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdr3-0000000BFSP-2VZc;
	Tue, 02 Apr 2024 13:07:10 +0000
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
Subject: [usb-storage] [PATCH 08/23] ufs-exynos: move setting the the dma
 alignment to the init method
Date: Tue,  2 Apr 2024 15:06:30 +0200
Message-Id: <20240402130645.653507-9-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=ywTbeJLl;
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

Use the SCSI host's dma_alignment field and set it in ->init and remove
the now unused config_scsi_dev method.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
Reviewed-by: Bart Van Assche <bvanassche@acm.org>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-9-hch%40lst.de.
