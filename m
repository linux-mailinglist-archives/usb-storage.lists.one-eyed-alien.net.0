Return-Path: <usb-storage+bncBDUNBGN3R4KRBE73QKYAMGQESZYRPSI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F538882D2
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:56:05 +0100 (CET)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-5a55e232107sf12853eaf.3
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:56:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324564; cv=pass;
        d=google.com; s=arc-20160816;
        b=a/89lEvqVPOEArYxv9mQsvi7BR+pj2aqxcQUW95BVwuEQp/KEd9OyHrSWsUFBN+zUc
         QrNu6W82l3sX0lWa67fQNzjvV7RBo3qsnHTKM91gClnI/KHjSzo7n3SJAXBER1DMr0VM
         vW/o5rKME8h3uxiKjS0VwBqwUfJVMdt0TgNM6zNYg9Sc1LmL2scmP1MX/A1jrgTlfiii
         cmQBLXuqmGXwp5b3x+Ey8cKfsnCqoe1PlYIRFjjAdAuibZhDMd1qmAjGtPI/+5Sa7Y/k
         f8c6K9g3e9I6yakczNZpim8P7fynY6QX8DVC/CC9KbeUqNpAljXIfWC2RAXyGQPoU5VJ
         9BYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Fja2+VZIm1bURz2mxNuLGjkUWhvf4ZL3ZCWTEUzjUKs=;
        fh=85opQxhoQsHF2DL7Z5wZkBIlsPlaMipoUBlBERsc5P8=;
        b=s1cZQBTQPS0cQAyoFbpDKP3e9H9zxqiCs05CL3AdCZwgZ+2zhVvae5s/GfGlJv98uF
         J8zz+hE4d4QJgha2JMMWoMECcNLJrtr/lHphFBFvY3wcQaMVBG5ncyrINqSpFman/T+X
         l09xC4nQDyALmfgKPLOB17oAn+6DOv7CxlAA0mpt1rmS+JI0JO98ix99uGk8F9OYdwNj
         /iFmOPrORbWQUl3FfigPYiBJzTgAESMe/uzh1lOZqxh046vJRuTcPqrZ0T9INKjf+s00
         zcazFUhw74U6cyldAXJekvIKV2rygK8xe/Yr+Dk6Cpl56pTLpqew74Y0AoQo71zimkCs
         NWVg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=dzdtJUHE;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324564; x=1711929364; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fja2+VZIm1bURz2mxNuLGjkUWhvf4ZL3ZCWTEUzjUKs=;
        b=hm6twQKXX/5Uq8w9qqREr/4sojgTHy3XjMcxFGyVLY/UR9rhRLudxsGs3AkfAXHNy8
         epKDbrjlvD6hJpk+ABMj0MzegftJJQEPsK5PfI00/awRvV3J5sK1Txv2gHrNGRUx2yEg
         yM0YDxwOUGKKXov9t+AfsSmFAsvDo5zU4jGyI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324564; x=1711929364;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fja2+VZIm1bURz2mxNuLGjkUWhvf4ZL3ZCWTEUzjUKs=;
        b=MVybAoT9CrJ2AdbIPdzgVSFQSweGm3j0Ath3eNqEq99epH4y80jZu48+P/bFxtckK0
         q7QKRknhZXD25HnPWZI2lLqd65SuIB4ZJAzkHZHKD6RYY3BsZ4wkdNjzCu1kM4YzdRlm
         i8XZ+bkQAYJW2FrSBGxlwQOHfOfqo2Ta53u4Op5ePdUZvpmdHE72uDXF2yRsQcKwG53X
         HvAm30h9DwCu6oispxEAkDruI66U2Ffs/h7XrQrHIvX/8qppJae0xvPtd0Ov3ev4SOxX
         39DdyKagmliCN5dNiK07LhomhE4IyQx2uWwb4ONu5VrUaFIxIbVqub4bD0i8W2horsQc
         wPsw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVP0wCukeHiw7Vof8DqEgns+vgXnhHyWdW1lxX+Tl3kCDOMASJRapR/n82zC3US09FU6IVfabhZ0d0h2RurZg3S7dJr6+RAjJ34
X-Gm-Message-State: AOJu0YygDY5vKsz/rUA5vZlPFExRLeoAReAuB3RxlGiBI8NdQ5j4SUrG
	Nf9QHAu6dR47NdhN38na/pgwLn/oYxUG4C13J9PzE9j2E2vi6Z4wRl+5u+MGMU0=
X-Google-Smtp-Source: AGHT+IE9XGhgF6fB0kh6Hvjz4V5h3zn8xFsIRczWYyndLGhsFmME+KFK6c75LFFcDMipFQkF556v5A==
X-Received: by 2002:a05:6820:1e02:b0:5a4:7696:6ba8 with SMTP id dh2-20020a0568201e0200b005a476966ba8mr4999325oob.7.1711324563934;
        Sun, 24 Mar 2024 16:56:03 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:dc54:0:b0:5a4:ee4f:96d0 with SMTP id q20-20020a4adc54000000b005a4ee4f96d0ls406161oov.0.-pod-prod-09-us;
 Sun, 24 Mar 2024 16:56:03 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWM9jaeQuTtByDTDmloo3oYx9alACBkfuMW7JSHmd+7yIna7cCPJodKGJjThb6AERXbT6F/m/HZYjn7N9Tk+FMKAar2GM9dr48HSot+bI62oJI1/68=
X-Received: by 2002:a05:6808:1487:b0:3c3:be4a:7dea with SMTP id e7-20020a056808148700b003c3be4a7deamr6796653oiw.43.1711324563074;
        Sun, 24 Mar 2024 16:56:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324563; cv=none;
        d=google.com; s=arc-20160816;
        b=lPiUYwBGSkZpZAJbsJ9fwkWcj3cuQJaYg8ceIwoRg513Q7m2lDpSG7r5cbK9DptXYo
         RFaeuINGSY98DdrWIusY1dB6T6jj+4YSsSadh5Y6ed4hXVtrs/pw0jYgBGDlNq8tcs3N
         w7yOjIKBdGJC3+UZnkm5uljyEZqxtoQv4UL+7NknPTedSYqAC1EsVmuhQ3VWy3GGxeZ/
         Ry6Mvfg3qcdEBRCa4Q3t54z4r4xpD28L9gn9rmP+60rlDOb4O0Hpx42ZumX3+xqIZzGl
         D+PHFHmJYPsbY9+jyuQSNFJBq3b2hSqJDnh61kRAgJHYNDQTxhHsHVtDqNvir3zo5OTZ
         LtDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RnCyo7qhwq23D9tFFvSbYwOoXaeTJSw56vcXA+xjGxw=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=CidqAgWeiGJ2FBtlYfS5im81uXlaZhY1/MXVobYvbVbq0Tr5/I/XlY5phmHAuv+Sg5
         C+mpof66AnoUN5hIO9sZuky/GAxmh33YOvuW9H0MhJ3crBR5C277W5vSkJzUGABTWc2A
         WtE8wisr4MBnAXNz2DVT3j/5yEM0sb0htdxbT+w9/6zh9/VoJtZ6y82KMWPQfQRsHtIy
         jfSbaHMjdBHyWr5Wd6aqcOuarpKGSnxkedM+/cpekOoifjboKq0gRowlZHP16SjR7FMj
         n1uxKTNxy5OhigdBN6tDaVw+eyDa+ByXY/DRKP8Yl06J/RkSdtxhQ7suAy8Wp5J3uWm3
         JhVA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=dzdtJUHE;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id n2-20020a63e042000000b005e83f34efa0si6434166pgj.185.2024.03.24.16.56.03
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:03 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXgt-0000000Dzej-2z5n;
	Sun, 24 Mar 2024 23:55:53 +0000
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
Subject: [usb-storage] [PATCH 13/23] sbp2: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:38 +0800
Message-Id: <20240324235448.2039074-14-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=dzdtJUHE;
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-14-hch%40lst.de.
