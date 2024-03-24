Return-Path: <usb-storage+bncBDUNBGN3R4KRBIX3QKYAMGQEEBSBRCI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 4320B8882DB
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:56:19 +0100 (CET)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-5a4e252a350sf3655589eaf.1
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:56:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324578; cv=pass;
        d=google.com; s=arc-20160816;
        b=zNHunXCzZs4lcVb2auQesOFHSkkLBbZJc2Jykr2OkplJLFpVvMPJ+TUaA9QzuoPJWl
         0YtA2XA0egneDQirIiphJTduuE4iBKjMpPjMdXwsaENFHXYloyi8W4lq0S616fMEaB0Q
         OqB2SLskkqAcG6Hkx6vX4F7kiNu2qOK1Lk7qh5rkOv/Bny19Gy4VTwvqjmyeYVb6IHHC
         TLUVHQQRoQ11a0DwEtg7uiT+6+N5/OsY7D7+bg0nKC2Wz5MBKpcpfPVPErON0DWQanOm
         QB0EFBL0UTz4pgxno4XxJpmnzlgO3e2pdYFUZtku7BUfv2y3LDB84fr9FzvVBwo7F6sP
         fyBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pxiviFkL3ZyhYBgUN21+i3jXjAWD4uGSZ7ugDzozkt8=;
        fh=yEaozKpQ2iF+99MCCsSG5DgxRra3P0jQu8ANn+Sx7nI=;
        b=IqO7Bz9+EWc9EGmGmLPq60TpyrYTwRtrnw2gutgpnWqJRV6hw6NomM8K0g0YpcEMLi
         +vSh7/3FZkM6RQh3Apicwx6d3AiaE3NJRLppWCv6FJ/ooYOjV/1Rsyfux1jrmuoinFoR
         GZARlDnldDJbIdaqFtaggybMCB9HfGh4BKG4ZTwolmpn/riJClSYg1Rcib8qC6R+N4zP
         a2/KHEqlMTZ6vh/YSTOfwugtNA1xUZpVMS55zBSZbzRCpYERWKzTQK1SL1zZs7Q5vtD4
         CcXqtXdnijxx3qJvDJsOzXbR6ciEsH5F+pW5G38zszZWnuLZYt61nKQpLIcOGvSWadpS
         fqZg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=QNv5BRtj;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324578; x=1711929378; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pxiviFkL3ZyhYBgUN21+i3jXjAWD4uGSZ7ugDzozkt8=;
        b=ChAeBWMjPSfhCFB0zJkD59PV9jdihnnUUfutCtk4vThwGm9PNcUpn2E5ZbQ2FGq03l
         ixbgne4Zq3Zr+OUWHp7NEbTWdSUHWOFc7hC/t5e/mB3sk9kE16J4uHG6LK+EVgcMKtMl
         V9LgB6Jf5NcGC8TkP0aSPcBmal17H9hRcCF/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324578; x=1711929378;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pxiviFkL3ZyhYBgUN21+i3jXjAWD4uGSZ7ugDzozkt8=;
        b=sck7UpGdDKoU6ie1X8Uwwaf9T0r1hpVsOmBEBq5I1DrTbZkiVK9BiHp6zzcdXyEo4i
         avS57yCCAqsykMqtWTozpfJYGPlHpToPV4roYhZps+9f4/vuxSaXFMuH8vDcs1eBNmsW
         75R6sUHXmSJuTqId8jN+QQMKQuj+XVGeQkhI/ocgjQJU0yaDne4AwqpDqEVRSImHNnMX
         NX7zHt5h1FTy9kht+G4sqzVn+1B2zUgJLi/phZUl7uAwDwdv2Lxv9z3z4ffevnE+qTjh
         v2SKgcUON1mtvmXXwRAtEA7gUl7bWPvMkPiLsaH8KH6JyBmoNIMnhCbeJgO9PYsWKapt
         hVRQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVY7hvJPiMiN880REiAn3rSLxignGxyUUsEauxGCASEW2IyzJxo6PnwGe39U6K/gCPwSdrp5cAc3uUMACZ4+JKE/gX3xg0nLBK0
X-Gm-Message-State: AOJu0YwwlEyL0f5gDK8lhIiVVO4gE4ELnXth8rH89OWDJ5mp5AyEBLtN
	JbknCzEQB8TfeDD0o5rTvcTVd1C4Q/34r+OOQ9NvL0SjpTi5dSBiSTLMXId0xP0=
X-Google-Smtp-Source: AGHT+IH7lt5GlKnsmGycu2nusjL1xeDr9+0+A07TgtEeGFp/ORX0vrMg8UtT64+gTXD2TBEaWske8w==
X-Received: by 2002:a05:6820:2007:b0:5a5:16df:ed22 with SMTP id by7-20020a056820200700b005a516dfed22mr6522305oob.0.1711324578146;
        Sun, 24 Mar 2024 16:56:18 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:bb92:0:b0:5a5:3718:5787 with SMTP id h18-20020a4abb92000000b005a537185787ls1315427oop.1.-pod-prod-02-us;
 Sun, 24 Mar 2024 16:56:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVf5hPvPls60BxbX+n/UkmvViGJLPstXSAG1nS/Hg8FHsnQjKTEzNMGQIPlv1EGMrtMs/0ebfNkhJrdPW8ZLs2SJ1QCd+Zi0sM0dRYYG7U/HRBmCGg=
X-Received: by 2002:a54:4102:0:b0:3c2:590e:4635 with SMTP id l2-20020a544102000000b003c2590e4635mr6574533oic.34.1711324577277;
        Sun, 24 Mar 2024 16:56:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324577; cv=none;
        d=google.com; s=arc-20160816;
        b=0sqiRbnhpnovXR3trB5asE9Wzhsgc18tQqytuRwRifNTx05ZbptMSgKp9prW6UDMX+
         EHZjt8Ql7x07J+FGbCC8xrbWnAlFYn9ye2aBEzs68DkFBCh9PHf2LTbX443HoB1nxmo/
         uC159cQ37tJpFTsReQf+40X02OvJ3Z445W8A/sJP4BWk7lQoxpwgXqEA24O2BfwyGf1C
         S8qnXoD6LYNtm/+iz9IZHWOTHA+V8xQ3MquswDqu47dn1FkFhWS1EmolX9zaK2ADv5cV
         w27L+OoHDAVh6vCzQzeb43mAOw24XAf6TDt5FKuR8AfS5s4shFU+5eS692kkawZ/s99z
         t6/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=T8ehCRIZEnmsHiyVVTq703MnTOLl40e8Jhvby/3yq3E=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=HeaL8UFNT21ScsFI7gwWGPZuiRqivri2mKeR8/TOPEl6yym+SKt3L5QgwF6C8VBoxp
         C3YT1lUegFx1G5NAnspKDFIo7/UimzQdgioYNTIeXKhKqJDjbCTb53FbJlit0/q9NNfi
         zHt1IHv9RmwZfw5yuGhYO4W6NVfCVUrB4N6NqMs3H6uKhjScjxJ5Pb4Ap0fLKT42t/Am
         z3FJWAUKr0Jq8DG9klSgIw9zkrKefl8QgsNkYIy6YjIOvsCbpASOfgmuqlafaJoHDOnT
         aCwYFLBdJPQ1uRuAEyASNh9QpGm41H4MjbrbhFhjkxvAeNvWsmeCIeIpHfB9G7Vgjy/H
         9irA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=QNv5BRtj;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id g28-20020a63375c000000b005e840af67bbsi6055860pgn.755.2024.03.24.16.56.17
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:17 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXh6-0000000DzjB-1Bp0;
	Sun, 24 Mar 2024 23:56:05 +0000
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
Subject: [usb-storage] [PATCH 16/23] pmcraid: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:41 +0800
Message-Id: <20240324235448.2039074-17-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=QNv5BRtj;
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
 drivers/scsi/pmcraid.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/pmcraid.c b/drivers/scsi/pmcraid.c
index e8bcc3a88732a1..0184fcbc15a9e2 100644
--- a/drivers/scsi/pmcraid.c
+++ b/drivers/scsi/pmcraid.c
@@ -195,8 +195,9 @@ static int pmcraid_slave_alloc(struct scsi_device *scsi_dev)
 }
 
 /**
- * pmcraid_slave_configure - Configures a SCSI device
+ * pmcraid_device_configure - Configures a SCSI device
  * @scsi_dev: scsi device struct
+ * @lim: queue limits
  *
  * This function is executed by SCSI mid layer just after a device is first
  * scanned (i.e. it has responded to an INQUIRY). For VSET resources, the
@@ -207,7 +208,8 @@ static int pmcraid_slave_alloc(struct scsi_device *scsi_dev)
  * Return value:
  *	  0 on success
  */
-static int pmcraid_slave_configure(struct scsi_device *scsi_dev)
+static int pmcraid_device_configure(struct scsi_device *scsi_dev,
+		struct queue_limits *lim)
 {
 	struct pmcraid_resource_entry *res = scsi_dev->hostdata;
 
@@ -231,8 +233,7 @@ static int pmcraid_slave_configure(struct scsi_device *scsi_dev)
 		scsi_dev->allow_restart = 1;
 		blk_queue_rq_timeout(scsi_dev->request_queue,
 				     PMCRAID_VSET_IO_TIMEOUT);
-		blk_queue_max_hw_sectors(scsi_dev->request_queue,
-				      PMCRAID_VSET_MAX_SECTORS);
+		lim->max_hw_sectors = PMCRAID_VSET_MAX_SECTORS;
 	}
 
 	/*
@@ -3666,7 +3667,7 @@ static const struct scsi_host_template pmcraid_host_template = {
 	.eh_host_reset_handler = pmcraid_eh_host_reset_handler,
 
 	.slave_alloc = pmcraid_slave_alloc,
-	.slave_configure = pmcraid_slave_configure,
+	.device_configure = pmcraid_device_configure,
 	.slave_destroy = pmcraid_slave_destroy,
 	.change_queue_depth = pmcraid_change_queue_depth,
 	.can_queue = PMCRAID_MAX_IO_CMD,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-17-hch%40lst.de.
