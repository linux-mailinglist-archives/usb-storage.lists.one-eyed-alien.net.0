Return-Path: <usb-storage+bncBDUNBGN3R4KRB4VF2WYAMGQEXEZZJ3I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x48.google.com (mail-oa1-x48.google.com [IPv6:2001:4860:4864:20::48])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D77A89DC8E
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:44 +0200 (CEST)
Received: by mail-oa1-x48.google.com with SMTP id 586e51a60fabf-229ede09748sf6398355fac.1
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673523; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZzTMowrS7wuRAugUnfrHo9KtFQK1qPA4fmkvYCtNBsMPsqaBG4cID2ZY8VXGWC2td9
         C9f8xOfMCS++819ZaxRdrXhbBOloRR2FFvf5lcsGe5aQ1vRiJTIpclEBRalf/NVCgGsn
         KVccpKUekXyE3diyIb2wx3at+rlwgj78X/ZjxsDkbXe94IdX30iva1I/NedPcXEqRA0Y
         ECSl8Xjp4V3dIBHCdgT6+ULgwjGGf3WlMRtupnu1Q+YgVVXiWaHhaQyq8NNgaL3n2zw0
         eNXSkpvxphNgHiV6EmvC2p8w/hBX+4pco/jo//dB60+o4vjUthozC90HHeqEwiJLTas2
         nfcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=//0TNq+RbwX6+1qKyikOYHDNT61PIkbU3k74S0oGRtI=;
        fh=U94ZCJNNZuizdDDSulCQVcc12fTRvQ++SOKgQGsNlR4=;
        b=mXpHp2jPhnTezsHcFJMVMgvuPhvcgHljRdKvrjY9mjCMl3pVCnhY36UG6lhnEbjkW0
         Bhp2IHufToiNzFxT26yn/T3GOVUQEu/RdM68+lkO5U8Z2UXi5LnLjNHhNURMoTJCPU3c
         VjLnfiFBlEL4MXZQlIKsoP3u5ogBsV6NOCfDSEfc4I9PtYNr+ZrE4qYLp67I5D5pSobj
         ibgAHC3fGYFwaah7XIkxJkNJPiqIP36A7ltkokJI3G7nZ6v0tXLrINYOQXCAayE6GMtK
         OOAbu8vUYO7qdi3cS10J+vAn9EdoMuBWylWj8bZiigXBEGsKwAzHwYoqDqDXTZhIvo95
         wzrQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=FP2lfPlt;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673523; x=1713278323; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=//0TNq+RbwX6+1qKyikOYHDNT61PIkbU3k74S0oGRtI=;
        b=IZzSbIHk2WaFmzqVCxc3Pt9aVeTRZiSeDoqlveRrZvr//aMWOR8DH8ynN3zTMywQ75
         RsWFiQiFPEcefFDNu0eHgczyfCd4zaWynjwf/7uTq+X7NMaWC7zwBKhBEwUVlsGM+0Qx
         +XYiXJDVbTJd54qMNIHUbxZsmd9BFIh63ib04=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673523; x=1713278323;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=//0TNq+RbwX6+1qKyikOYHDNT61PIkbU3k74S0oGRtI=;
        b=IZX5W6Ah9XZ+5Mh0JztbG20eZkSsRklVM+uNSvJiH5hofQJ9vD2n5Hu96ux6nKi/J1
         6AVHIcyAn7S75TncxdmuRZrP7Fg+jyK3qkK4l1VgNigcqBil3agtKrmTkBvJ6QNvnqAP
         78+YLG7rBqkFFMK2OYZOGXBLmVhE+2uIAg0lVhZq4C+76jjswdb0KAznT5HmoquKMHlk
         Jjy9tYq8KIriQW/2dPDk0nbqmFMvRxN4I5niB8VWkDTT2Rbn3Sm8LmroJqYMGY55U5zl
         x4klQQej/XswbsDIC1fnMk1HfgRihB4a1cy1zu5ABexT6oYMbspU42DqvNxbav4ZJJS6
         ARDQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUxUAN5/AoqMA3BUQx+ifCEdfmuQVAzuDhROVn0V7fkZteU5vMsIOzC73HEHdiRENUX7I2gnoUTOG6UiFf10a3UtJ5N9Dt1wow7
X-Gm-Message-State: AOJu0YzYT09My+5G0w8gmJfcUeh61e76tUgjSSaHbPVu+mXjObZwKY3N
	IK1leb12IW8drggGJWExog0gR6WsIKgbdzXsIRHQPkB8RuIipjYTpVIm8eVY3pI=
X-Google-Smtp-Source: AGHT+IGlx610JzmDESdDLtdX1QlN0WPrCNV4oB3s4YFuR/WdomLCnWyYbTOFm+oL2EgRmvbW9w2EOA==
X-Received: by 2002:a05:6870:65a5:b0:22a:6c9a:ece8 with SMTP id fp37-20020a05687065a500b0022a6c9aece8mr12169028oab.21.1712673522811;
        Tue, 09 Apr 2024 07:38:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:e813:b0:22e:c3c8:1340 with SMTP id
 o19-20020a056870e81300b0022ec3c81340ls1456527oan.2.-pod-prod-03-us; Tue, 09
 Apr 2024 07:38:42 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUqBOkgXO+9xeOJnIHDarlj0lOrBNtH8VlK40Jpes8zimg4W0hCb7tvZUTgOInYcyVLXho80ckLmxPvw6KWMjmyarPlb/GK240EcTtZAxMyANgy0D4=
X-Received: by 2002:a05:6870:124f:b0:222:11f2:11d8 with SMTP id 15-20020a056870124f00b0022211f211d8mr11597892oao.26.1712673521824;
        Tue, 09 Apr 2024 07:38:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673521; cv=none;
        d=google.com; s=arc-20160816;
        b=fYUCnC1E+C+cV/rCTvf1b/QSl5QVCqKlXcUDMhQo8Bg9KXLRX1M6Jbelvn1OQloL4N
         +MlYAR/15JFNO/hLlbeKu6AgxCPp8ZY5csmNKXe2b2hQ7igFecWpAZ1N9AENtNPvtfzX
         79kmj9l9Kk6BecuD3z+ph0G7thRFYv/XEhiqqQFzUnN3uPbQDGbcfHxKpoG70ABB1Yyl
         5vUXGB8kIY48n5DksRfpc1eHFYzH7ITqJ8Eo+f3SZwCPqp8AXy9PoSbGsc0T2SCyb+BB
         WJhrcf4x/qTP3Iiu5rnuw2bmT3GMlbSZSmYMtpcS5keV8mqvWYARi9KnJJ7Qj0bG/oNj
         7egA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=laYvUn5io1AYOWOC1+Nnk9PRyfmaFig8uP3M4PW1qWw=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=nkCnI440yfGk4jf2pu7/ovSIB+whB991TdrEtypbHn9C0fkBUwi+yEEFEc8YmBraK1
         VhuQ83idqOv4fbgkHWfGWRR9lWdtcS4d5AxBG9htqDt/AF4GXu/YzJWVxQnG3PZyuw6d
         nsmu44MmSUXsNlisOLKUYg4WdfvZDZa5X7VkUqO4fuDVg+fvtJT0WJak5VAUhXvHzeeK
         4rECGV1qZZNIhQ9BC9GRvhNF/xjs6pqFSLhrN5/41knjtS7IfqDc2T33O+22IDPbStMp
         nJakjAgI2h96Dg6/bxZAudeyeHsFeNhfrHHZYtJbixk1XCxvHzGcDShLAjaPDz4cYtYc
         gtog==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=FP2lfPlt;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id a73-20020a63904c000000b005dc4897a9b6si8839286pge.413.2024.04.09.07.38.41
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:41 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCcJ-00000002S9L-34V8;
	Tue, 09 Apr 2024 14:38:32 +0000
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
Subject: [usb-storage] [PATCH 15/23] ipr: switch to using ->device_configure
Date: Tue,  9 Apr 2024 16:37:40 +0200
Message-Id: <20240409143748.980206-16-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=FP2lfPlt;
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
Reviewed-by: Hannes Reinecke <hare@suse.de>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-16-hch%40lst.de.
