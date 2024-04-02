Return-Path: <usb-storage+bncBDUNBGN3R4KRBIMGWCYAMGQE6AXONCA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C131895456
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:47 +0200 (CEST)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-2a2710e1854sf200791a91.0
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063266; cv=pass;
        d=google.com; s=arc-20160816;
        b=yp/F/N/J7db5KA2lIMu+He0TtqNDTrzDl7YVyYHWz/3BzqVrTJProb1q7HNZBbT5Ei
         aLk63rEGxSTbZxZj2D0KpsPi3M9NRbTVQLtpipXb67H/IIFxlN7X3RjGxb9RhJpIbHYU
         H5nK169X1vSSzhODUS3Pj7e9Fp0FZAxM2PsYfvwnKKmBk4twDfoLwclAfoiQ0Ef+mKO+
         1kOpEAZRyBFPVuSlkzRXjdwsX9RKuRMsTN16B6tHLg+4empy/FHRifQdKDF1OHSvo3Fc
         0ujFVwVy0On5Y2uCaunvoVwWdSe/Co+YK7S8zkNd8yRakc7GUvcIKYHqH0WBECS+DMq3
         I0CQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CF44bEH+UJHXXgAvHfq6yLfQGzsv3GxWRVDfGof3mq8=;
        fh=qcoKXd+OHTNCZyaruzsvPr79G5irv5DOFSay7ReCLoo=;
        b=ghduaLR6YQ/ZNDySbZwbjyDsdQ6W4mla4mJApSNwD/s8tYkh5m0yeZLOh+WGx3trQO
         7ia2ufRBPUYGjpF5VAWgkFUvlhjw6doyNX3e5xwTKmXWwOFG5Eo82dv9D7gtcHjSA18b
         oSHFSQlZKjFMAlnunNUB/yOO8Q/gpJnQI6HWyDQHe5U8i6BzzWcg5irx+jhKXfhnA9QD
         Jb3pqPcAzX4B515/0CaRhu1T93O9bysiMZPyrqqR9VVdGtJX1kymJlXExOuaV0uSvBS5
         lZ4j4x1Y5ricGw9paJiE3fYCuuGK8uBOYv1KZls4z278KaMlRjU3df9uTPUGpqKvw8p8
         A3Aw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=c3CGdgLR;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063266; x=1712668066; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CF44bEH+UJHXXgAvHfq6yLfQGzsv3GxWRVDfGof3mq8=;
        b=eOefDdux23MeuJ0rO+3mzxMuf3r+gzbr8wwGnNLVOz2KY/yw18J2zL7Gq78NrFDLoK
         8L5QbfbFn/uhEY77fNcRF0Qro68W3OoIYuviCPwVKS+7ZiBWp6bx4yX5JvI67az8ULNJ
         961yho9qcZI/kAMJ/kbNJg92zN4GI/UYoFglA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063266; x=1712668066;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CF44bEH+UJHXXgAvHfq6yLfQGzsv3GxWRVDfGof3mq8=;
        b=kdjzxijbgquiTv28U244aueaJryOp1UNCXHCeFbliUwqSP868LvK7QHNGTs3p07l8H
         sUseqHSIR1f26NuxBw3WBhm+Jqpe1xzjO0mevfjKd56Q65/1wyGRdeLjN/UCDBHOk4Z2
         kOIAp7aT980ITMtATQMxpPo3XrdeNeMqnJdpg4CZqxbzTlQvod7pY/VtdqHEwFJiORKe
         NceT6tDVZOxqBoB9t6t8qHXOrlPxBQONjunk5PxU48YeWh8f9YXFTg/jetxGSHoRa3db
         8oe55nH3Oz66EulFodNhK9wo5WiFMbnb4cEQUeel9g3LWudMz0y9h7l68rR9ZdNIgVSS
         AXlA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU3ytS/olQKjdUZOaajcJ4kr/JHe8Nv+2ehHc0lSXfkW8zgAGqk9mn+/QLtmq/bqW+7Bnu7w2K+OCm59Nmykq9jlYaxxBWfRFlR
X-Gm-Message-State: AOJu0Yw7ntGwq96OjkMlknXrW1dMQnmJpUOTSVjvisgi0bPshyec0H/4
	LMrS+uGG90SuIcPWGYahhJ4gf2oqou2Xplz/Re7B9lr903EbHFUcKvlGUKvdlHE=
X-Google-Smtp-Source: AGHT+IGrmop5m8pACSrUBg9vYhRYfIdS1cg9URYgt4jaNhr4VYvDUZ0ZpdBB+0lJk7Y7uuiwlZQ/5g==
X-Received: by 2002:a17:90b:8d0:b0:2a2:1935:444e with SMTP id ds16-20020a17090b08d000b002a21935444emr8568757pjb.21.1712063265907;
        Tue, 02 Apr 2024 06:07:45 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:c582:b0:2a0:8f09:c70c with SMTP id
 l2-20020a17090ac58200b002a08f09c70cls713672pjt.2.-pod-prod-09-us; Tue, 02 Apr
 2024 06:07:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVeP3+nLjBd2gUcFXqFgC0c/1u2YBush6CO8yJ8NmrW6M84ljIEOwI19hMYQTDOX6JUTmJm8PrONDLKevgaSwXcAclxvdrL1ZYzBfkAn8g8XUvOiSs=
X-Received: by 2002:a17:90b:2b4f:b0:2a2:1fcb:350c with SMTP id rr15-20020a17090b2b4f00b002a21fcb350cmr7791326pjb.19.1712063264701;
        Tue, 02 Apr 2024 06:07:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063264; cv=none;
        d=google.com; s=arc-20160816;
        b=VS4ktff0DVdD+4t5JYDcq61hvjW+++t2frKxFqepgsq1Q0p9u/fFa0AQJxzmXxjoQb
         mIsiuxcQjTfCSpXNf62dqyHMjy/UHecxSlmOPc0A67yFXC9RPLzcy4l0TQNzWGbpU7z8
         b08ka42vC+Ou6dhZWKZnUnRWGuzHXFnJ72ozIceaP7iFRe2dH9KlOO0kjYsOuoVZGuVc
         3sNYDtwhXD0rE/Co+nPxK0GDXMB5faujUqpcZZibFQ9tfmBlpebmik/iARq/T5qh2ngq
         zNEeoPIbpIkGo8o2su1TYH+Glc3e5ENLfZWOfMJpSdsGlFk24o3vlvXO5k8GD4YdONpD
         0xQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CgAVUVTWuAKX9NrXsHZo8j0LTvmn+uoULAjkUZGywmQ=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=BOszK9rnktPoh+M7Yg6MBhf4g+qWovMS7DUFuBTGY6Lxhf3Rhb7s+7u/FU4nkhRQmt
         LUZRCI0ynQoT7HhQkxw5MxjeZkS7tM8isYGM5yAgCqLpjlgq1YSFo9YU7mo2E0cqAweY
         zRUrorriCescrgjRKi/hK/OhMkhDi8VMCz28X3brtCtYjB97wvVzeZVdj+fb9Pm1Zz00
         Hi9zmJFlDGNGvoIme1BQwnG0Fh4Q8Mtz26ljrCTJf02F4vro5pSkdrVR+pSVaytnxez2
         dlcseWDSiK6JOQvBc+x4wX4dpl1CMBKNiypR3PraQr0I5whR2zY5LI5J4eKKHWoky2F8
         eXfw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=c3CGdgLR;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id m6-20020a17090a7f8600b0029bb52196e3si11149730pjl.48.2024.04.02.06.07.44
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:44 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdrQ-0000000BFeE-3TY7;
	Tue, 02 Apr 2024 13:07:33 +0000
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
Subject: [usb-storage] [PATCH 16/23] pmcraid: switch to using ->device_configure
Date: Tue,  2 Apr 2024 15:06:38 +0200
Message-Id: <20240402130645.653507-17-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=c3CGdgLR;
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
 drivers/scsi/pmcraid.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/pmcraid.c b/drivers/scsi/pmcraid.c
index 0614b7e366b776..0efe2fc8b30826 100644
--- a/drivers/scsi/pmcraid.c
+++ b/drivers/scsi/pmcraid.c
@@ -197,8 +197,9 @@ static int pmcraid_slave_alloc(struct scsi_device *scsi_dev)
 }
 
 /**
- * pmcraid_slave_configure - Configures a SCSI device
+ * pmcraid_device_configure - Configures a SCSI device
  * @scsi_dev: scsi device struct
+ * @lim: queue limits
  *
  * This function is executed by SCSI mid layer just after a device is first
  * scanned (i.e. it has responded to an INQUIRY). For VSET resources, the
@@ -209,7 +210,8 @@ static int pmcraid_slave_alloc(struct scsi_device *scsi_dev)
  * Return value:
  *	  0 on success
  */
-static int pmcraid_slave_configure(struct scsi_device *scsi_dev)
+static int pmcraid_device_configure(struct scsi_device *scsi_dev,
+		struct queue_limits *lim)
 {
 	struct pmcraid_resource_entry *res = scsi_dev->hostdata;
 
@@ -233,8 +235,7 @@ static int pmcraid_slave_configure(struct scsi_device *scsi_dev)
 		scsi_dev->allow_restart = 1;
 		blk_queue_rq_timeout(scsi_dev->request_queue,
 				     PMCRAID_VSET_IO_TIMEOUT);
-		blk_queue_max_hw_sectors(scsi_dev->request_queue,
-				      PMCRAID_VSET_MAX_SECTORS);
+		lim->max_hw_sectors = PMCRAID_VSET_MAX_SECTORS;
 	}
 
 	/*
@@ -3668,7 +3669,7 @@ static const struct scsi_host_template pmcraid_host_template = {
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-17-hch%40lst.de.
