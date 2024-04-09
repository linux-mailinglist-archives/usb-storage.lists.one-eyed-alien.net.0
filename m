Return-Path: <usb-storage+bncBDUNBGN3R4KRBCFG2WYAMGQECFSE36A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FE389DCA0
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:39:06 +0200 (CEST)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5aa2faa7115sf3448106eaf.2
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:39:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673545; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vp4+ks/LQTnsEBE2boBM9/weEDSbpSFxA7uuVHShsrgKnJ+V47p4Lf/j7xDFHFAAsO
         zjPSvaZpePQZh8IB3PAcFYPcZM5KNF47u0g0hJOb0c4ceP3FSlAY8OJ/NdpVL0Ym0beS
         hnG07cawDIRlx0Jh6j/fiR5LgRXpno3SoHEVztkSpzQDRg5cXXhpraNYS7be46e4g0ZX
         Z07LTXeBeSzlaYyR8COm9adP0EgNaEmPiinxBzUjioHBhYfKk+vRU86S/1jHBa7h6PaK
         lKedNbITf8u442QrJOforNocnddx2Pq+YS4iYo/hT2AZdq7/bX6fp+cb+aTos0WHbuJx
         VbaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Mpr05MQGS7yRUygMjqS8BSY6qNOvKn5O2U2Sr+8BPg0=;
        fh=KokDIi2NXKDVRgHMIeoaR2giLOSzsyWk2OSAt9LsXH4=;
        b=DA4gtK2BZvOYNTtDl5NtN8pK9jcRjfjgLUXnxVFS/MQWapAZHeRXfG2ONAlAdjtWiu
         nh6uXYERo/tPpelt2iWNw37a6iDw56idZ/S7Gk3JkyAau2a5cgSeaVM3tWL2xfX0ckZY
         dCw/tSwBcwAaXVOnWYxI3hsyQ/L9laemJNm63AzPpr1FUzqZoeEeUmP9g7Sn4ctW4W64
         GkoT3NHrgtcwe/mg8IDzA2jx1JyQBo3FB7AUYyqwoG9I9OMJ8+Xg26vFKNxze80ayAG9
         wZ0AGwgntFmdm6+emcwuul/VBhXZjJRhJlAymaY4tl4HQLD9t8/hgLPtp0XAJ+zz62NA
         qj6w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=huC71k7P;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673545; x=1713278345; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mpr05MQGS7yRUygMjqS8BSY6qNOvKn5O2U2Sr+8BPg0=;
        b=UYflvRz35tRdQPXaW/rsiw6ButVJGcs+xvj6tX2fl93gt7RUf9SVlAF457smb4CfkO
         2Ek8o/eYi2AhNLCXGp9kWxna6LDezCYxDDQ+gByzZQQpOArF3q9b8k//4/yJKA9b5NBH
         ofOlc9vZ+FjMTUH8BZ3yqrHApGMBE4kVqsIDs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673545; x=1713278345;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mpr05MQGS7yRUygMjqS8BSY6qNOvKn5O2U2Sr+8BPg0=;
        b=YO15mc/ZIc9sjkzx40bcUv0czK7WySDPZydide8qP01n6Pi7+bCReOAPujy+ovKrsx
         NL6+IqtgkgjdZpFs4/mxY16zD6jgQ+s3byqb7vQuOAzHLvyPeRqTP2hP51t+CoNNV5ST
         OsHqBhsiAmqPgvY37fQGM6gFj1S20OFdTYlwigRtwp3u5AYEWQqUk/FooHjoF3TLsAmF
         b+UfQrr1MELvaWtLmeddPgN7VMBo5gt139xmTGiIcAcXJT0oN7eSlGeTh5OdnZtqRn7U
         Yoj0EeG0c3WlRhnFWqrOhkYKTKAkYxDnewfzyFCPFDcGIDq09yBz2BG0wxbr0hfXYxKZ
         5vUw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVaUjGAUEu/6Fg6psbDKY/2c42J3LZRvNFzIM7uJKGi9Hp7tLAH9WpSaOpmt2vUBjK+7HjMwSC2B2Oq/+EGcuxE7CchgtrbZcqg
X-Gm-Message-State: AOJu0Yz2z0Itd4mPOvRkxg4BtQa0Aoau08VAwrYJg8pUbCt7BC7QiZIy
	BDtvIrWqdzm7UbgQDgkwEi5IX45QgVa+5bvapY9q/w5Rw7a6TLcgPaC8Qay7wJM=
X-Google-Smtp-Source: AGHT+IGUaXNLpvtEvFNu2OOAflpqPcA5KpsDssQ79aUSu9kc/xmz0ldRsGdsvOgaaQW9TuiZrB7BCQ==
X-Received: by 2002:a05:6870:a10d:b0:22e:922f:a4f3 with SMTP id m13-20020a056870a10d00b0022e922fa4f3mr13284938oae.15.1712673544911;
        Tue, 09 Apr 2024 07:39:04 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:80d4:b0:22f:10a1:602d with SMTP id
 r20-20020a05687080d400b0022f10a1602dls741647oab.1.-pod-prod-01-us; Tue, 09
 Apr 2024 07:39:04 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX3PXgTFZafN8s8Iq8IUr+Kja1ggI5IYCQxtZxGKC2+4UytInyf/9h1AsxETmNsyFwsnFhEWpZCKpLXPyPEDpVMHM2LJK6IZOw+JUli5ymgI+rieiw=
X-Received: by 2002:a05:6359:1581:b0:184:69c5:c088 with SMTP id jv1-20020a056359158100b0018469c5c088mr44756rwb.12.1712673544120;
        Tue, 09 Apr 2024 07:39:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673544; cv=none;
        d=google.com; s=arc-20160816;
        b=04RbnYzul0ujKW+bk/XhA3RjqoxhCnJZdCi063MZpmL6RhfGN3IqMVTuEQ6RpS9PrE
         TX+ACm+yQLIhudUQdXurMxXDrs9P4jilGxYKdskvfN6B/6IdUHqXSywEC+C+ds3A2kJZ
         wsMmvoDeQv98QxHTyBADFig2Iw5b4/EHID8LoZtNLJ+pulRC3lFdAdza9Y8SfDcS+9+M
         McIwvpZ6YX4SZBYTJq3BE2eUhaj64p3iJyJMtlnJ04W3M03NMR1yCiOLex6NH3q9qTBX
         9qfDH1PgHBCEPWZn+Q+s72Cb2f6HloX+dPqtgjdjF9wHdW4mqafNErGxBsoqqyo3cX4x
         oCBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tY9EZbVOWQQqN6Qy5rZAOJKfDHxH9ZT92YoWmtvtxeo=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=u+Recc3Eah4ZdFi4nOQDLpPkD04amYU0tuLfooVxqUFYUhJsAVBoyjeGtgulF2geuC
         Vvvmi11Bm+AVdZKCZEDjPvyjsaj0dEHGU+a2IBa7UBi7TJGjF+iz7k2omjSKPsUoahvN
         MnYHd1WEFop2dIcmE7QPWcDppJ6HI6SKi57YbmhuNvhlcgX9IU+gBIRkEjFK66hF1NU2
         NTLDygqtSF/2HTDLcr3F3+x/7uSRnsFB/WAFiyA+Xv5BoI0MNY2CasbWJD3OJ4a04qpV
         A4OxcHKuKgvCAquI35hVOke1KE34O9Lvmxvq04lWzTOqQtq15bXW/D+TEsyd3DEBcRZd
         VepQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=huC71k7P;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id bv128-20020a632e86000000b005dcbba4b76csi8672649pgb.331.2024.04.09.07.39.04
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:39:04 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCch-00000002SJC-0Cq9;
	Tue, 09 Apr 2024 14:38:55 +0000
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
Subject: [usb-storage] [PATCH 22/23] uas: switch to using ->device_configure
 to configure queue limits
Date: Tue,  9 Apr 2024 16:37:47 +0200
Message-Id: <20240409143748.980206-23-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=huC71k7P;
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

Switch to the ->device_configure method instead of ->slave_alloc
and update the block limits on the passed in queue_limits instead
of using the per-limit accessors.

Note that uas was the only driver setting these size limits from
->slave_alloc and not ->slave_configure and this makes it match
everyone else.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Hannes Reinecke <hare@suse.de>
---
 drivers/usb/storage/uas.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 0668182e1c469c..738c183ccada8d 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -823,19 +823,19 @@ static int uas_slave_alloc(struct scsi_device *sdev)
 		(struct uas_dev_info *)sdev->host->hostdata;
 
 	sdev->hostdata = devinfo;
-
-	if (devinfo->flags & US_FL_MAX_SECTORS_64)
-		blk_queue_max_hw_sectors(sdev->request_queue, 64);
-	else if (devinfo->flags & US_FL_MAX_SECTORS_240)
-		blk_queue_max_hw_sectors(sdev->request_queue, 240);
-
 	return 0;
 }
 
-static int uas_slave_configure(struct scsi_device *sdev)
+static int uas_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct uas_dev_info *devinfo = sdev->hostdata;
 
+	if (devinfo->flags & US_FL_MAX_SECTORS_64)
+		lim->max_hw_sectors = 64;
+	else if (devinfo->flags & US_FL_MAX_SECTORS_240)
+		lim->max_hw_sectors = 240;
+
 	if (devinfo->flags & US_FL_NO_REPORT_OPCODES)
 		sdev->no_report_opcodes = 1;
 
@@ -900,7 +900,7 @@ static const struct scsi_host_template uas_host_template = {
 	.queuecommand = uas_queuecommand,
 	.target_alloc = uas_target_alloc,
 	.slave_alloc = uas_slave_alloc,
-	.slave_configure = uas_slave_configure,
+	.device_configure = uas_device_configure,
 	.eh_abort_handler = uas_eh_abort_handler,
 	.eh_device_reset_handler = uas_eh_device_reset_handler,
 	.this_id = -1,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-23-hch%40lst.de.
