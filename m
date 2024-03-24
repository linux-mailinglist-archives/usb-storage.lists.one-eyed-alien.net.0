Return-Path: <usb-storage+bncBDUNBGN3R4KRBOH3QKYAMGQELHKCFEY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x247.google.com (mail-oi1-x247.google.com [IPv6:2607:f8b0:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id 464008882EB
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:56:41 +0100 (CET)
Received: by mail-oi1-x247.google.com with SMTP id 5614622812f47-3c3d21fe98bsf127492b6e.2
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:56:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324600; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cu6ZjGF/skkbO0PVgM6BJMOqsCtIoqY4bPC1zQSuSvch+5A+UBmrew9MX1bum6fccP
         axmevZ2n51pZwJc0iXXmC0IxvJQmEhrmfWLwU2WHgbIAAYNLx/YZUoC/3+F6Pb1W5oyI
         X8Z2usuKT69kVgCB7T6qdCXNgtOzjxaSXuAbjKt5U6sHp0GwUYbXeNSUwgyWkp6oJi8n
         LDtYVwL7tbLmCWmka8bnu58ESkKIl1SPUKpk4djwDZ6A1H0MNYZsajq6bx+G5iKjEAUd
         HoJqsGfoiGHWknDU7/YxlK5j2lzIGs5jDOYb+t7ainv45M3q9JXBYrhlPSX9kkreifVf
         2Vrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=m5f2NFjKfmDoYv7qfX4+NTG5yEktchI/MpcMr80XiRk=;
        fh=Kr2tNPil1ZsfsryRjP202gIsg169FilLngXIKblGzM4=;
        b=xergufJmbxluLNf926eD3yG8k3aF4vtc6FoCiCD+mmMeC1KQ+Zy4tf8v4SylBP4XeZ
         Yz0v+Q/id2U5siq3i4B4KWn3FvKBrPhUlIORfvFQuNn/QPt0LG1NLrg77kECBWN9lWl0
         Dq3zR//6O5GPXbi1hhrb0ATB7ManteG+9oc2vlA/UdsV8Kwt+kSFiqM1bgguP5g33SyP
         Y3E6nrObqAmOrA2Nfnn4dnsKUr65nMsiP43CF5cKnnM2hPQ4b/gYKhqshpesNAx+k8jl
         r23wcrfjLFa0veAUz24TUGy84B+Og/xGMOOXfl2zXaDNNVDMqZOUrE8rrN1TQYUtYBJ3
         6ZDA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=VOimJzMd;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324600; x=1711929400; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m5f2NFjKfmDoYv7qfX4+NTG5yEktchI/MpcMr80XiRk=;
        b=Q3mgUU4vCSbiH1mKKm9OcywPr+7yXo3Znv3zwua/nHr3Vzf/v3U6+RLx3ctRqi6Adm
         uSv99023aS9YBk3bE9pOzXjt/B9Qvrs+N8/Wv2lFcci7ifn//U1u/rHMbnXjcxAUqTUZ
         JAiqyEcnZqQjAj7+h5GPe3HTNFZkfuJpNBN1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324600; x=1711929400;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m5f2NFjKfmDoYv7qfX4+NTG5yEktchI/MpcMr80XiRk=;
        b=oL1cxWQzflBWtJGd+sZvYlpwyM7sCm6bOmTlzPmwQPDQLVe80tRPmdkAhu7fK/5AJ7
         krZ8DyFuiuo6q1sIABrb2BQjhaqpmZr2obJI+MLXh7gDcx0b8KA9pdIctm3S6ggmyT01
         ZXJuzrcmG9qJeObGD/TIs9dHP/XciSak8n1MPJri3YNT0DtVkhODlXesv3PmdmnyJVZh
         79uyGL3ocevQr+0pm4NjMts3NZB8FIibIET3slw4WiFemDamKeA+u8cNbPylsokW2HNN
         +8PZxWQjcV0/YlFOik8zykjdGN07F4+v1z5U+bKfCWlMYuAwnBemDjII4OL69F/bvN5M
         NFkw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUTIIR6okhGP9qNQFIMfm0DmKagqr2CK1fvboYnCMx4OensRPyNb6jInQk3EUgctLKO9XhowHhyDth7lgsc0Hre2QLoi9O15yQq
X-Gm-Message-State: AOJu0YxgLnkjlNTuImdh3rSmMMinVTE6mwwHGx5gVzT2y1SFOyGyAgGm
	12YPxcCI0ut/uKiOsR5a1Zv/YjfA/aG66SODp2xwffr5ti/HuHHn+Okn5N0TIeA=
X-Google-Smtp-Source: AGHT+IFUt0amhwNT/DYJjHRQv3d1FGQl5FjyGpz+f+euhZczGDDga0L8fYcYwHP2Z8GRsIBeg/DF8w==
X-Received: by 2002:a05:6870:304a:b0:221:969d:7aa with SMTP id u10-20020a056870304a00b00221969d07aamr6732870oau.44.1711324600111;
        Sun, 24 Mar 2024 16:56:40 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:fb91:b0:229:fbf4:7af4 with SMTP id
 kv17-20020a056870fb9100b00229fbf47af4ls2361718oab.0.-pod-prod-07-us; Sun, 24
 Mar 2024 16:56:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUJSrrrTTGcfoe8qC24U0ZsdmKWVrQKoZOCpFqSHVBuRVBgH7//0qrq02Hy8aE3y3tq8eUxM2J1KQLPQYB78Z5Pv+VZTU9RxZtUrcbmEMxqbpSKSVs=
X-Received: by 2002:a05:6870:b512:b0:21e:df8b:5280 with SMTP id v18-20020a056870b51200b0021edf8b5280mr6758971oap.27.1711324599376;
        Sun, 24 Mar 2024 16:56:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324599; cv=none;
        d=google.com; s=arc-20160816;
        b=fzQj6cm5oxxQb8Jm84Zb8DxCRQC7AwgCnG1Bx+Gg1b799k1fqzSHcnuxX94HhRrkXC
         T8qPMw4uNFdkZnEKZXZ1PS/N9g33AILlL7veRMnKuxXlJymhwPQknna704XyKZBfs6W4
         moOm55Twbjj19zWCqhnyvk+2ppXSEtpkXITCBwKlbYWT60L8DT/cYB3GmkvMNuNYSDFl
         J7on20wDwjRXxok+pyZ2C7Ngd5oB/ceIPXH+LjWaPU/ioNLDOMCDsw4hxrQpfs6AxP9V
         caI1Fox4nwjYhng2aRC2qbWNsNzW7YV3XkVUYl4Y2+vGipGycwBwVShJt23+10Zo5dWa
         MdAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gtobFJFBpzQs/ROtgMighh6c3wHyEnqjb/WQx146tTk=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=JiwYwipg/tVLNm9j4fxJz/0AJxYjwpnHyvHfjsk4ONGEusXEkRnryvKtddj9vWS9eC
         ksMN4ZKuAuHZX9hBzXWl1ZWFL1SLgD8uAM0X3lWxDBu40VgfGPNngK6TkpDnQuS+ev4b
         hnUNJJZB0WNlhQJAXWeLA5jCVOQ2aJCgSyX6u0BxYnYSu5WiYzkiW7R1Sw77uMd/wBmy
         cUWx9IgInWQgqU/4i9rG/UR5d0fBUjX7pd53SkSb2eYjV8sEslLCQG0kGJSaJOeCh057
         5x1hux0x9P3786aMGYtzPTRk2MfWFdprV0qfAUQjl4b3xKzneBM+LlF4wN+zBBY3DRIj
         elIA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=VOimJzMd;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id bv132-20020a632e8a000000b005dc88260f76si6359643pgb.330.2024.03.24.16.56.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:39 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXhV-0000000Dzsa-2yZ9;
	Sun, 24 Mar 2024 23:56:30 +0000
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
Subject: [usb-storage] [PATCH 22/23] uas: switch to using ->device_configure
 to configure queue limits
Date: Mon, 25 Mar 2024 07:54:47 +0800
Message-Id: <20240324235448.2039074-23-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=VOimJzMd;
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

Switch to the ->device_configure method instead of ->slave_alloc
and update the block limits on the passed in queue_limits instead
of using the per-limit accessors.

Note that uas was the only driver setting these size limits from
->slave_alloc and not ->slave_configure and this makes it match
everyone else.

Signed-off-by: Christoph Hellwig <hch@lst.de>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-23-hch%40lst.de.
