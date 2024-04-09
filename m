Return-Path: <usb-storage+bncBDUNBGN3R4KRB3FF2WYAMGQEZDVL5ZY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FB989DC8A
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:38 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-1e2be2a866asf49605875ad.3
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673517; cv=pass;
        d=google.com; s=arc-20160816;
        b=ysqJWYHtg1SgbPUmusnBPsTx3v/S4sdL6POMmI2TZMIRzJIFDtfZmGTAnIUdYj9Q0l
         PMwgzMR6szXKCySXhBb0u8wy4d0MRXfx+E44dOMKya2hv8ybQ9VIW1OhWHkww/V8CYp0
         5TjbZ4zY6mn0Q/iQP52cApyTlPyLBpGavKZ2M6Ll/NuxKnPD9zjPbHgQy0GbAsu2zjel
         xVX+N8j6PcvRUDGPEQlTO5WnupyNGhGDJfRPGz5zYXDZS0oQReBPyJUcoLArngw14NfB
         mw6rDHyc26Xf8TOJXJ6RB9hBMvDm1CL58AF3JC2bOS/2Odvkj/2NI5aArlK6YNPsgUbW
         37ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=gF+C0DnPQpkRNc7slY1TPZtHy1L/bpVDM0Us5czU++M=;
        fh=ETyvlSMclz5TLZ2mBpuDGcdvHANHSjjFJtSs7fuNoZ0=;
        b=cbWyfWhmpT5fALj3I/Qrz6SkUKKIK/mc1o4clB06KynisyBV2ATs5XIjIFi3JbnFDX
         IevhdDknMvOzR0Ob6plqJupw9GL/CJ+mUL4q52OA0K4pllPj2NTa1eLbEHRykGdoJ7qU
         Hs/t1HD3IWFA9fMnpmWN+rpWAa5sXc9+NavJtPY1f+u7nF3dD3ZettcYkn0tC7Ya69gG
         AB4KqAxJo9oBaOdwmrNch5YaHOK23osSW8kB4qt/8Mshp/uXmOsa9VoNl5DLnUmRUkc2
         a5ii6Hv5M8KeoIoPizPJYqLidkskL51FvD0tMs6LdZbVYdvkGYa3jBEY4k2ST3KZeG2O
         AB8Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="PyVY/Bt7";
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673517; x=1713278317; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gF+C0DnPQpkRNc7slY1TPZtHy1L/bpVDM0Us5czU++M=;
        b=JwUQ8PSiLDhcbp9D119ZdzYxw0g1s+eTLQTy/OaXXrRX+R7gQkKfrlnvyI9mxX3e4+
         dz+iU+Z9hjbFPNowwvE9wRyap2XclQkJ6RSt8R3MlQpTqm8SWzMKYy4uJTExD3gYb+qm
         Hthey9cBlZ6xMTrhHEUG9n1mEoV1JmFWYf8lc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673517; x=1713278317;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gF+C0DnPQpkRNc7slY1TPZtHy1L/bpVDM0Us5czU++M=;
        b=ckvnYBCH3XWH5dI8bYe7n4QljSCIDfpD2z7xDhGhr+BYDz3q1Bdt9oCnVgm2PiHt/t
         fAU++BIot+1KSpG7Dq+bFSuZhsBsZH1OwO50JT7el9fnsZpstjPQRSO7iwV//T9N+KZF
         Z9lb/ilqPTvp+U6VFzR/hlzuDiB57R9cwy5PtoMUA0Dbyjv6X+4jm9lWdTFIzRQmCgif
         0xqkGg4SMFrdXtE5WOIbPh6FcQU85cF6xmIbAlQZ+hDgzfcfHHUFnnZuGwJM8MviEPKz
         op6zXODKJPxYe0HR7CCmr7TxzYHC0kqp07VLagSYXfanIcntBcwfIXiDuoq0ZFCZnrUz
         x7nQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVdmIjmrB1/818eTcwLketytOQ7DpwN3AI3QvdidaIokEctu9cdWN2UdJQM4rJrdkIqa78tCPZzUoR0yPi/NTGRBWfAGg7nYyAz
X-Gm-Message-State: AOJu0YyG3fICMfJ9xKKBVmudMKzZa5i5FoSozpRBfDMNqC43jDg1QjU1
	6fuuVHYOzZDGd00KYpZsY9IIbsDTP7+wXKEgXExy7IQgY4sLU++qP2O4JzTHTC8=
X-Google-Smtp-Source: AGHT+IFhmTUUJ6IyJVMl+hW/cif/Evzm4cuOyTRhw55onOQ2xt8G/tHv7uc2RWYkNybCC83KKIGuyw==
X-Received: by 2002:a17:902:e744:b0:1dc:7bc:d025 with SMTP id p4-20020a170902e74400b001dc07bcd025mr15729232plf.4.1712673517178;
        Tue, 09 Apr 2024 07:38:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:d2c1:b0:1dd:2b95:71a1 with SMTP id
 n1-20020a170902d2c100b001dd2b9571a1ls2411097plc.1.-pod-prod-08-us; Tue, 09
 Apr 2024 07:38:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXfuIgPJjs5zlWEMuXLQJE21deEfssN/G37f/R9bGi/hL/P55zO6hxxK2glIZDMlI7pOmeqZzkPCgIOwDrXW6q0M95bJfpp5iTC2hRGiAVgPqOTLBs=
X-Received: by 2002:a17:902:7ec1:b0:1e4:2b90:758e with SMTP id p1-20020a1709027ec100b001e42b90758emr4736989plb.39.1712673515882;
        Tue, 09 Apr 2024 07:38:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673515; cv=none;
        d=google.com; s=arc-20160816;
        b=WFRxw7r5ib/01p0rLLMsaNwXD/P1OCS3pv2fdt2bHJxHddfvBwjkom+gH1v4z9k9y0
         LZRt+judszIwbhW/cpqaSU15Z/aO99Ks0ee4S6nrZUpMAyd5pmkbSK9R6ZGJ81g8UuSt
         cZxYr1gXjXuRMtoSt/gBhWo0CmlsSuY6Nzd2EF7D5yyFXrrlAwIbqX+wjYSEWyJz6IbO
         BsJuvohgdWKBU4P6Lr67uJ/vvVYa/ktas+iEs9W3ZZ6gLVfGbHKGcuNOMGnPGkyToDsg
         3iejXQdc+dbBkXm7ma6ffYMsON+IPXhnPJH2fr/0YsRMCNOdl0+xNZMyIvnrYvg8pl6E
         7P6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cqYqWFTBl2pJXFP9SVVo2Uy79DUJMmG3lG8Br3u5Nbg=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=oP78hgdXsDctn8UccwQ5pewUyM1wuRnWEMu3SOFFXdOGaznM1hW3z0fa2oxmKIQk0B
         4EKjVv8A6Gv9P9icFqHS6awREsXk7cVvxxWd/p1dt/HezvM58jQi9b9Kw4S/FcJIWHaA
         4h8m+wY543eoOFc5HwtrlXMzL8KoRdSmwHndH6088TNgAza/n/MxV7rlXxN2d/vOJuQg
         VY2nIRQ/krhCIikn1xMu85kz/VSWaITBqOH+lz73m2aZ4Q+iuwz9JJimyFKP9qmXK634
         FS1x0vbF1Z81DX1DdWq3AjQ1g8mDxhz7KKe0KBWyazgGGPmBB4L89V1C6+7WYIS89+Zy
         FMoQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="PyVY/Bt7";
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id iw11-20020a170903044b00b001e0b3a87dc7si8115580plb.140.2024.04.09.07.38.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:35 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCcE-00000002S6R-3GXS;
	Tue, 09 Apr 2024 14:38:27 +0000
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
Subject: [usb-storage] [PATCH 13/23] sbp2: switch to using ->device_configure
Date: Tue,  9 Apr 2024 16:37:38 +0200
Message-Id: <20240409143748.980206-14-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b="PyVY/Bt7";
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-14-hch%40lst.de.
