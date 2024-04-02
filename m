Return-Path: <usb-storage+bncBDUNBGN3R4KRBH4GWCYAMGQEZZJN72Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C641895454
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:45 +0200 (CEST)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-2a26cdae2dbsf254501a91.0
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063264; cv=pass;
        d=google.com; s=arc-20160816;
        b=HyljiZSKzeSjSl9brF5vC4mYGp9UxNX2hfoygVqf8NURjpp5wJOd8zEn3lL+qe036E
         gBV4Uvdx/jrRgojFxnYJl7o6nGXS3uJ5R4sdc+IWQ/QLOVf2UsD4S/tkDZrkhByT/5b1
         lYIiS8LhRLaOnym8TxJShKfcByOoEE/eFydIM4KfsFaN9EvMZkHELMene1gN68Ob19X4
         PDzIO+RSkG379oRUW7P4WAhhD1tXJWqv4fxIGrfZ+K4HIiTCnDMLkxo1Mci2rv/hFxRM
         mR/vof9FJeOeYNPiANJ+OWpXEh4aVub7oW2hkxzRe+/da7md2ZlExcHMos3lMNpVGZ84
         CxJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3XV3X5HQO9miIBwMBTZSvtuHPIxBVTOXiHAVsdyzM+k=;
        fh=7gXcevZLQ+Gpdi4t8zSHjYKtWa7JpyehI9R6OtSV4Pk=;
        b=hpUcKtgONslNOpMQl9EBm26g6cRI7+wmI2s9QgFXYCYEiFdFK2KGk17hC20HXWn+8I
         mY5Px+SeA9foOB7cnjqccdU+3y3AAG9Mlu9DLGDqCk4aAgal2qPOXMkqKTcmY7TxtnZM
         gk2Lbv47UjUVjgeVLPnpGe7/AQxuIi+hZMmIngzALQtl7msoCx8/vVHco84V8F0i/Ixf
         /DoisB0mWrvwvGWC/zl2rYiWLDbmdp8ZKv97890mBrQ4mxwkutdC/9tmbYlKPxLoiljM
         vdOm04f3CAnSkZMN92XpE9+/sKA5XB2XIxI6M7WN53+9QDgXJsAgD40/0odiDXsqILWV
         iaKg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=P7kwv2Zb;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063264; x=1712668064; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3XV3X5HQO9miIBwMBTZSvtuHPIxBVTOXiHAVsdyzM+k=;
        b=A31zLlpS8rf4xbpeRgxLK6a7N1Aq2WzHuvUWCxQaIXE+fYlKQhFHy3n5XctUe9wpkY
         wk0rGlR7cQLbt3aQEoEzikJgjJzZRz+jCZTjD/0Jj2DqQW1PogAKpinR3gyPH5xeEY75
         /1jUx5XPVWUmrIUohN1Wya1yepfh7AMjZ75Jk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063264; x=1712668064;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3XV3X5HQO9miIBwMBTZSvtuHPIxBVTOXiHAVsdyzM+k=;
        b=c6gP3JWB8CDLqktk5GvWPP258imjZwbxkwJ0HGD2zpFXH4RFHTULsGyt/Y/Ka5xVv8
         dcVZY5vfF1HAN7xlSM7zbtRyRURon92VWmhlIqEI2E8LqnQ++tpw7NH4ToON3X4DTVUf
         RUimo91h7LniifkFUVVBbQ3HDbICOCfjzx8FlJ4ENYF2JBMD+6yszIganRwtmYeKPip6
         9XKFQSTp/2P8AMJbWl+nxMFOl4zM6Ov/RZN4om9hi/HUmPb2a2c4kngfDHoGprlnarqV
         4GpGLjMpDRD2Cb3AFit5wLO5PwFqTlQxV2mts0IhNalye7EgGL4Ui4mHGzB0gohE3naR
         6/7A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXjn3MoArk6SKywZ9OE370VqlYVgdi09rATvjkbgjBFAwgbxpUjSr7511eB2DOA6r7TjlUw3obIr5Sg4zzDIUj/jn2Q1Oueaw2O
X-Gm-Message-State: AOJu0YxChZZEbqt8Aqn+lDbXNmVeqAIf9MeTWxZWeUGcYt9TULszfqQx
	uCoo3x9efJShGT6z7FIZAC0YIOJvsoMx3o6riEGrhXnATnWARDsfqrzo2uyiq5E=
X-Google-Smtp-Source: AGHT+IG5Lcg9aQe52uGE9DoxEpsuJQQ4qvmt83luetrSKIZhmbobHDn1H6Nb0X4AyrZUg54EGEYvQw==
X-Received: by 2002:a17:902:e852:b0:1e0:94a1:95c1 with SMTP id t18-20020a170902e85200b001e094a195c1mr12886593plg.29.1712063263879;
        Tue, 02 Apr 2024 06:07:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:22c8:b0:1e0:c7dd:684d with SMTP id
 y8-20020a17090322c800b001e0c7dd684dls3390319plg.0.-pod-prod-01-us; Tue, 02
 Apr 2024 06:07:42 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXUc+yHKlFCH9uI9iIKXrBJkkaDTxldVvsZfp6G8mFmbvutaCj4jBWJBmxQisVZYGiHbXyTlz9p6Q0brF3KaqrPrm4u12g3EaMq5xvMbDHcyqbx9ag=
X-Received: by 2002:a17:902:db07:b0:1e0:8b0d:fb89 with SMTP id m7-20020a170902db0700b001e08b0dfb89mr12941525plx.9.1712063262438;
        Tue, 02 Apr 2024 06:07:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063262; cv=none;
        d=google.com; s=arc-20160816;
        b=DuB2oyVax4fzZS8qIz08Nf70tNxQ1u71CSzNV0jGIPQ2EkjyqewLRs7VKEI6aW6Oz9
         zeP8vCRDFm+lSEFo/LXH4V2aoKgN+QRoPenvMu1KaF/oTGkw+MvvG6POLNTE3mHV2OyY
         se3GM5v/On8d5mlXahDMy2PhJQuq/czFpqtf3e/yW9tNtsCbhXZ3nDSNoGXDPbIR6xuj
         Wout8hmFBoUPusCYGXRAWa3hjLk1jIyjzmEx6LnyBYhxE8cfQmjP1rU3MQqwwjtoUfem
         5jlGj9ycnP2i9+548TyDJYvwe0B2g1CUpjuTXdRURzkoudWuBbQkONPBr4QTXjpsbB2Y
         I+EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zcHRAQ6E+Y3GGq24qJpWU30hnWzchXZTVyq1Sb+d3DA=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=jT7kyvYUQrZbmAQpdYqwOhluFYSU5G8RnGCDEzhJXS2knEEAmhOdUI40dgaOEkUcd0
         pRybpH2IKOf+aXunghfyXqd7jZqwT5kbHopCiU15top7wSG2x99tKcsZngdCEZZvEpgp
         /OLpGe2eGvsHfMhlcy/JcQ/S9Y/jgf7BkUOPkpkcycAt+K5Xnfn4JVUijeTVPvywiHwQ
         HboVPGYgm2lGyNCDyuCbYoI2Q5FCct+A6dqxBcJrBwU9bfHua5/MC17wbaT6b+LiqlRT
         J+QixoUrDz1cZ6mtupCcUNJ+KZmttKYzHnHh2VKTyfsMKk4c6lH52FPYDnsVW0zuUcz1
         w8ig==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=P7kwv2Zb;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id m8-20020a170902f64800b001e259d477d5si3582522plg.509.2024.04.02.06.07.42
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:42 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdrO-0000000BFc3-0bS2;
	Tue, 02 Apr 2024 13:07:30 +0000
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
Subject: [usb-storage] [PATCH 15/23] ipr: switch to using ->device_configure
Date: Tue,  2 Apr 2024 15:06:37 +0200
Message-Id: <20240402130645.653507-16-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=P7kwv2Zb;
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
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/scsi/ipr.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/ipr.c b/drivers/scsi/ipr.c
index 3819f7c42788bc..388c8a10295a67 100644
--- a/drivers/scsi/ipr.c
+++ b/drivers/scsi/ipr.c
@@ -4769,15 +4769,17 @@ static void ipr_slave_destroy(struct scsi_device *sdev)
 }
 
 /**
- * ipr_slave_configure - Configure a SCSI device
+ * ipr_device_configure - Configure a SCSI device
  * @sdev:	scsi device struct
+ * @lim:	queue limits
  *
  * This function configures the specified scsi device.
  *
  * Return value:
  * 	0 on success
  **/
-static int ipr_slave_configure(struct scsi_device *sdev)
+static int ipr_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *) sdev->host->hostdata;
 	struct ipr_resource_entry *res;
@@ -4798,7 +4800,7 @@ static int ipr_slave_configure(struct scsi_device *sdev)
 			sdev->no_report_opcodes = 1;
 			blk_queue_rq_timeout(sdev->request_queue,
 					     IPR_VSET_RW_TIMEOUT);
-			blk_queue_max_hw_sectors(sdev->request_queue, IPR_VSET_MAX_SECTORS);
+			lim->max_hw_sectors = IPR_VSET_MAX_SECTORS;
 		}
 		spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
 
@@ -6397,7 +6399,7 @@ static const struct scsi_host_template driver_template = {
 	.eh_device_reset_handler = ipr_eh_dev_reset,
 	.eh_host_reset_handler = ipr_eh_host_reset,
 	.slave_alloc = ipr_slave_alloc,
-	.slave_configure = ipr_slave_configure,
+	.device_configure = ipr_device_configure,
 	.slave_destroy = ipr_slave_destroy,
 	.scan_finished = ipr_scan_finished,
 	.target_destroy = ipr_target_destroy,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-16-hch%40lst.de.
