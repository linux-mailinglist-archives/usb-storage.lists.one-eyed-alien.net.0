Return-Path: <usb-storage+bncBDUNBGN3R4KRBGMGWCYAMGQET6SEXUA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AB489544B
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:39 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id d2e1a72fcca58-6e6a9ffaf3esf3876216b3a.3
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063257; cv=pass;
        d=google.com; s=arc-20160816;
        b=H4eO6s/jvbAS9EIITreeScBVTASgAMbduBVFuYdwZ0vcIkHnANku7VopJ3B71ytimI
         YuUZzq5Zrby4lKPJ12bFdyoyY588vI979Je/NwR3Uq8bBw2+FUzXh1phtnhOxhDian2p
         r9+ocDfg77Eofr93CevMnsZeZyfE3QV5aiOeg7FKLpiqsu/Z0FgBMGhewVEVjAJSMl7Y
         q0kSz4z5sqKthzhboTE5wi8dm+AaOvExeCWAjNSZ/hYE+F5S8u8C/RqqmyhU/4fVqCn2
         MMFxuJQIDZTdo+VZnt7sPj+dTGoY3AbTpmCJpI27prl0ekgz7I3YbhQMTcf+YOSxdu0B
         Dzwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IoYHh2gI9+tDwjWHUpbaIJAc9smXEfr0+EOkXntm9dw=;
        fh=M6KlEEwF08F4v/YzCPq8Q9kZ6mxGIdZuDpOUx8d0Jjg=;
        b=lm7yVL13Y21Yx3tX2+rRYKu17Ex8cBOf6gQDESWBJTUJVclLdSiK4a8lzgRCx7Nm5G
         8P3OfQ7+HL0IRypXMWH4ue+0itQ+iY7mvZ77FO65YldQQ1pNEjSAvbbBlgCKOkgvyCyE
         zdzRmgDl2LIymz4TLiPOKgpUMxepcFZiEJOfDFj2rmp2guEuN9nXW7K51PBJ5NNBswu0
         owfWxcuJf+oYf+rSGeZRqRutX/IYxbEQZqECR7ZnCVrRzl1DU6Pf3z7BU0VSEkWxtQSX
         cwb8LTwqCki5EM46baWZqVlwfRTR7LchqSRkYNEt/9Xir0qxTZqs5dA8JcrLZ1mZ+tFx
         H61g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=MyL3Sce5;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063257; x=1712668057; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IoYHh2gI9+tDwjWHUpbaIJAc9smXEfr0+EOkXntm9dw=;
        b=JLTNr9oEUr92PePu19/jbAFIExKzolLffBs+pqzBcW6H7xreDQs+AhtfJlPwaFfEy0
         FqqKvVloJB7SkK+nqkthCiHk6WmThP1tPIh1LueUogk1cT85y5IRm7USK0y5UHmcbzZq
         4ZaoVfdBLVEel92p8ksibgW9LKQ2MF6kvaKG4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063257; x=1712668057;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IoYHh2gI9+tDwjWHUpbaIJAc9smXEfr0+EOkXntm9dw=;
        b=SGTHJvYYx8fbEDsBT2KxdoTyoEsyFRsBc1EIE79fu2JWLq2eAW2G4eUsth5MbAFnTD
         aehJHPshilVZnroFjrxPHVRA1HaoowQ/Q6g8kCm9GEcbbN8xR+VjgCDCTflteuzRjaFW
         Xzuj9P1xZCqwa6IYZeNiqeH8w6gvto51ZB4qTG+e/dTxBfWSGm6RsXVKkdmVYlE+MB3x
         dtEerpuKnkkzjGxtVMdGAJVI7TW/fuLedFZMwtpo4hjASWMNxip8lX0M4F1sqAMa71fo
         QJOZ0Yt4dnWSTrGpOxTrRQZF1XwbTHPfsoVN01uIsQ9lSqUjxSK5+Ppg3yD7c+EoYMEc
         pXiQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXBtw5Lp5U7UBk6nUM+sa71xaClVTowu72fpnL9rWT9Xe0j4li3vSHVunvqkUqY5gq2tc3XxlGvOYwWvyXyR8BzZ6ab2kkTTnBS
X-Gm-Message-State: AOJu0Yy0reoUWCH8zcDOgsafANS1aOs47YqzHecFtOzYH3JoZ99iCc3S
	Tlctj1WKRFePEXQE3ivu9VNN2qXXfq+8F5YH02tOdX/OPtlg4HMxVQKi+DkbR14=
X-Google-Smtp-Source: AGHT+IFC69FvHYUGwENsTZWp3l9pOJyiUmug5iImpxTZMMf6cCP/MGPbevG1wO9MX5hhvKEItDJLGQ==
X-Received: by 2002:a05:6a00:1992:b0:6ea:c2a2:5648 with SMTP id d18-20020a056a00199200b006eac2a25648mr12819875pfl.3.1712063257696;
        Tue, 02 Apr 2024 06:07:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:23c1:b0:6e7:dfd0:f5fa with SMTP id
 g1-20020a056a0023c100b006e7dfd0f5fals3032606pfc.0.-pod-prod-07-us; Tue, 02
 Apr 2024 06:07:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXDwjb22xCkKj+8iwcVMyFp08A7KbBDBhwUG05aOS7NnHbE+lTTBY2ASM2hdEoMtP5K1pwLLYfqJEhax8/8qs+Q7Qhvb8XQS0dtAEe5DdsL4dipdxU=
X-Received: by 2002:a05:6a00:9398:b0:6e8:f57d:f1ec with SMTP id ka24-20020a056a00939800b006e8f57df1ecmr14035282pfb.17.1712063256331;
        Tue, 02 Apr 2024 06:07:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063256; cv=none;
        d=google.com; s=arc-20160816;
        b=ulzl7QqoKOePKwPb0rJ7IVy/5wZySw5VxaF97hmBJLMaCcGNkKCL2CjPve82VeddDL
         7klWm/LeN0sNxLli/eTp7kpl0i4bAV+jzZdlXnnGq/KbxXUeVzgsA9cjrgOrtm7E/IX/
         d4yWB0pkxVzogzGB9oSahheoKByDyGFuejoLiIkh5+Lu6A2wm28WWx555jbi9bISh1D+
         FL20Hm7ELPkz+ZAyH9OsYYI8osNiBmwroVpxMt1wtFVQ4zX9TZj3QjFL6GBby+0lkP0V
         COliV1VY7p/OpStAohrd20uIIo6N17kFxXz4wQiGAykAicgNH5Z5Zm2BlegqgAncCaZm
         hLVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SIIkUrTZx1WSQtHQl6hiIrj9ZtAFhhqtXXsQ0Oh8ifQ=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=rCBhl8GH3X7mY+LxsF2K2rohdhtFMLHlFyl8L4BJeCYzn1RxnZmfTQJYz8VWdnSh5g
         ekgRyy+Ezky4vjTz/OWtKnAzCxAjAvJu0sUpvpz5I0VKDMrQuk1Q6A3VCAT14V28msEr
         G1jFJ7CTaZ+GKjECGS91HgFM7T9vhAW4UR07KBg2vBfmlEXh5VVsyHmR++N5Uazurjoc
         aqDQq5etcg4QeFldSnuPxMan61/QOEUy8f2cqgMqYWFjtUN2yd6vV/SeXuQfLcMgh0mH
         FNJMaYQ9N0vK7yWvrjuLq2s9+KjkZh1DlfKiVItdPNiFTFW0mYWUKNpcHLpMaYKWrmCs
         AxPA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=MyL3Sce5;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id o14-20020a656a4e000000b005e83853c49csi12517780pgu.16.2024.04.02.06.07.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:36 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdrI-0000000BFZX-0Mtp;
	Tue, 02 Apr 2024 13:07:24 +0000
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
Subject: [usb-storage] [PATCH 13/23] sbp2: switch to using ->device_configure
Date: Tue,  2 Apr 2024 15:06:35 +0200
Message-Id: <20240402130645.653507-14-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=MyL3Sce5;
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
 drivers/firewire/sbp2.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/firewire/sbp2.c b/drivers/firewire/sbp2.c
index 8f7810b2a4c10f..827dee0f57dde2 100644
--- a/drivers/firewire/sbp2.c
+++ b/drivers/firewire/sbp2.c
@@ -1506,7 +1506,8 @@ static int sbp2_scsi_slave_alloc(struct scsi_device *sdev)
 	return 0;
 }
 
-static int sbp2_scsi_slave_configure(struct scsi_device *sdev)
+static int sbp2_scsi_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct sbp2_logical_unit *lu = sdev->hostdata;
 
@@ -1532,7 +1533,7 @@ static int sbp2_scsi_slave_configure(struct scsi_device *sdev)
 		sdev->start_stop_pwr_cond = 1;
 
 	if (lu->tgt->workarounds & SBP2_WORKAROUND_128K_MAX_TRANS)
-		blk_queue_max_hw_sectors(sdev->request_queue, 128 * 1024 / 512);
+		lim->max_hw_sectors = 128 * 1024 / 512;
 
 	return 0;
 }
@@ -1590,7 +1591,7 @@ static const struct scsi_host_template scsi_driver_template = {
 	.proc_name		= "sbp2",
 	.queuecommand		= sbp2_scsi_queuecommand,
 	.slave_alloc		= sbp2_scsi_slave_alloc,
-	.slave_configure	= sbp2_scsi_slave_configure,
+	.device_configure	= sbp2_scsi_device_configure,
 	.eh_abort_handler	= sbp2_scsi_abort,
 	.this_id		= -1,
 	.sg_tablesize		= SG_ALL,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-14-hch%40lst.de.
