Return-Path: <usb-storage+bncBDUNBGN3R4KRBCEGWCYAMGQE2L6LWUQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDAA89543C
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:22 +0200 (CEST)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-29df3d9c644sf5411888a91.1
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063240; cv=pass;
        d=google.com; s=arc-20160816;
        b=PzQZMNQ6+ivj6HBjW0xzQyIHHsh9iGxBMLY8KJCugetnzUr3FBRJ3pG8kPhuk4J3Xo
         F61loczM96Flylfb/tYXfL8OM0KFhJHNptqH4Yrlrt9raigYxWD1b2QaxBepDrZ35ncz
         OSnk217YwR7F9SQkH5Zm2foPPQp6AEvt0Odr2KbpeqzZfXYW05LuimhJ0eYN51AEj/co
         5Ol49WMGqTp+FpzoU4AojZi8Ltj3/yGnIejJ2HBGItB5LbW5STtBxF0pEZN1u5sM7x+C
         MOMoKP2bWRmHPAbKx+KYjYMOSUEr3yk2K4AWO6dyArs6TcKLAZsPg9Z5p9FyMMUVIY5Y
         9ABg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=v5mbpVcJL++YdRTym/1MIqha4690fe1dcCMdfDeCcdM=;
        fh=z5a65tgV04Q+VEIjN5gGmW6sKQqAbf2zoW8a0+K1v+o=;
        b=VQxuA7R27GZfILXg7pawNvJd8ekhb4e70fV8u/RWvVdQYZAR7Sy0bFYf5/aCGKMj1a
         fphnUxbdufoEkCj5fAzWXWvVnpLdP9149mioO3xGKAkYSW4BZ1isDyXv8iBA6OLKtz/i
         7ouD1eK1V0wMUdhmF9yEygiU63FRU1EfvHgXSB87tQITtbLa+yOT3mzwocEHt2vZMOTw
         FRV947jp1mt/ZYQKRXJaS/c1/wBkelzPzMk/VGDwqZWnWT00gBaHZI4CefyLD55L/yFL
         SFNIoCZJudPF524kSeQU5A4OE/OY1H4Co7xjXhrqKZ/ljjVAotou4+ZzJn9yHcCtAhVs
         ZJcg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=ufCrynyD;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063240; x=1712668040; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v5mbpVcJL++YdRTym/1MIqha4690fe1dcCMdfDeCcdM=;
        b=D1+eK38jWyCYcETyHuX7v4JHdjw76Y4GS6gms3lTShnsl0XXTEwRC0DomAiPoi4GQ1
         QbI7wusb+c9eiop1rtdRYo6+U9NAWjeCcfO9dy1qqCoQ1coZ6JJf4vJEVpOvyBCJJ2QH
         58L0iuhtN+k8fHlTZMI+1QlGA+gIYP6PEWn9M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063240; x=1712668040;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v5mbpVcJL++YdRTym/1MIqha4690fe1dcCMdfDeCcdM=;
        b=E5Jkf8l/gIC5Ue+OIYBgmtIhcJdUILngvDMSfuB26BFUJ4J1AjlDEPTp3W8QA3Ox6e
         qOjjD9LqxNG8xNjypbwPx6RLhEgiPDeeJFAGDLPKeWwr2oo9xnDRSRPpP52XWgRRItGw
         1idoBlN9B9BQ+RzJEbgvFh8Aqy+fDZFYLfBZRh2VCLu22y1/EF3AxljIfXBBuiN2ZfnR
         faK/70YReb4n/280/2JMdErsgcsPBvHbixllre4sfT5mh7TYuEXWLnOpEW5NYyJQHHjJ
         rSSwBDHs8OOeklvkpzcGkIy8OGzl/cB+Oz0VlvPYsjvy99uqDHoEh5w9eNUAud4Y6H7f
         Z5Ow==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXbBUGScN3v9fKZSBoX450mPRJCTfS6YTefsMnxaXXvrbg+RtL9kl44KzVERX/2zirgnX1FKfRnZBOFJQCvEBSUlss1qxMT6Pz/
X-Gm-Message-State: AOJu0YzjNddW46sF7Z4cybtrtTZN0i8qVdXfPbr2I7+1fwl8C78W+qO0
	27wiiSAeA7qyTzXXThNSsRcZTDuL6a3A83qR5++pJUmoPgykjB0gI5A7xnLOL+U=
X-Google-Smtp-Source: AGHT+IGoyEeHDCL9hd7/iqxdCoVVSAFx1nPY6pWXyJUGdRmVLD9M3726Oj0nywU3XOirRJkG2POQNg==
X-Received: by 2002:a17:90b:364c:b0:2a2:2559:feba with SMTP id nh12-20020a17090b364c00b002a22559febamr7949766pjb.40.1712063240511;
        Tue, 02 Apr 2024 06:07:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:6c03:b0:2a2:72f:668c with SMTP id
 x3-20020a17090a6c0300b002a2072f668cls3019917pjj.0.-pod-prod-06-us; Tue, 02
 Apr 2024 06:07:19 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUtvl+ZcZ3DqrnFq9Ir0XromDmEPqGlvYWFhytnUXFeaZlpB5BMFLIXwd8mQPTzSU7WqXF284nkiTt3DwFZeoJuXqX3+QGlxe4Yp55SjYr23Dm3NSo=
X-Received: by 2002:a17:90b:84:b0:2a2:5f96:9d73 with SMTP id bb4-20020a17090b008400b002a25f969d73mr1302705pjb.10.1712063238765;
        Tue, 02 Apr 2024 06:07:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063238; cv=none;
        d=google.com; s=arc-20160816;
        b=GZ99/vNzh1i9xjxlaHhBg/l3etXcotts3pQm+5NLfcDapF6p2DHXCAaKjgeuEwOJ/z
         +GEKeuAWLHujiA32FNyf9XxY09kKD5uw+n0ztTS3GXXsSfxJ6jghjsbux+5/OSs+JBaT
         eiElH2UxrKlsPiG/1j/FxIpRMORtfmv+tdUH5WGiS6QSyncC++XOKcQAiQ0Kltl3lUBF
         YSiJtLit7L0SCxg+4mozdn+JVOKKjCi3MZ+uWkIT/X3vlCOpXSuYh+1gFoJSeJnRxb01
         pGfl0dsrUGLuOMy6D8+dHN3OL0TCz+74g6mW932Jt4772fzWZNK+FWrZ942OE3pNcP01
         5D3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VBIBUFaO97zUF6G+3A0cb49irSQcCE/7QvWr+MjaeWk=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=Oxulm6BhXRdBH9ZaL2pdVE4oRBQf0rINXvakB6wtDmjLwZJX8URC1WmK38wHDRY+JW
         t0+2GCT+ffls/1z6MhQAFMnAnO+N5xj2UPtTcSXEKvvGayqkyRCdfKv75n+vZHWX+Zyl
         SQY3HKAv5H1VWKgGKy+/jfSQl1iJzDOZ5GAqv85wCaZVWWb8whW7escqiVPXifKBtKgA
         dnz63zU34Y8GDg1fmdpNmPIk7XcdrTxHLhlok7Vx+fh0VOY9gFNR6GxuQFoAFMu+vfIW
         +tiq/V/fNavnCpNRk4fTf6B+TNClHT3w2GZSHZYjKFfhDrDEoGuT8E+SX1GE3U5LiFDb
         ZTbg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=ufCrynyD;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id m6-20020a17090a7f8600b0029bb52196e3si11149143pjl.48.2024.04.02.06.07.18
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:18 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdr0-0000000BFQY-2RNZ;
	Tue, 02 Apr 2024 13:07:07 +0000
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
Subject: [usb-storage] [PATCH 07/23] scsi: add a dma_alignment field to the
 host and host template
Date: Tue,  2 Apr 2024 15:06:29 +0200
Message-Id: <20240402130645.653507-8-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=ufCrynyD;
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

Get drivers out of the business of having to call the block layer
dma alignment limits helpers themselves.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Bart Van Assche <bvanassche@acm.org>
Reviewed-by: John Garry <john.g.garry@oracle.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/firewire/sbp2.c           |  6 ------
 drivers/message/fusion/mptfc.c    |  1 +
 drivers/message/fusion/mptsas.c   |  1 +
 drivers/message/fusion/mptscsih.c |  2 --
 drivers/message/fusion/mptspi.c   |  1 +
 drivers/scsi/hosts.c              |  6 ++++++
 drivers/scsi/iscsi_tcp.c          |  2 +-
 drivers/scsi/qla2xxx/qla_os.c     |  6 +++---
 drivers/scsi/scsi_lib.c           | 11 ++---------
 drivers/staging/rts5208/rtsx.c    | 24 ++++++++++++------------
 drivers/usb/image/microtek.c      |  8 +-------
 drivers/usb/storage/scsiglue.c    | 11 +++++------
 drivers/usb/storage/uas.c         | 13 ++++++-------
 include/scsi/scsi_host.h          |  3 +++
 14 files changed, 42 insertions(+), 53 deletions(-)

diff --git a/drivers/firewire/sbp2.c b/drivers/firewire/sbp2.c
index e779d866022b9f..8f7810b2a4c10f 100644
--- a/drivers/firewire/sbp2.c
+++ b/drivers/firewire/sbp2.c
@@ -1500,12 +1500,6 @@ static int sbp2_scsi_slave_alloc(struct scsi_device *sdev)
 
 	sdev->allow_restart = 1;
 
-	/*
-	 * SBP-2 does not require any alignment, but we set it anyway
-	 * for compatibility with earlier versions of this driver.
-	 */
-	blk_queue_update_dma_alignment(sdev->request_queue, 4 - 1);
-
 	if (lu->tgt->workarounds & SBP2_WORKAROUND_INQUIRY_36)
 		sdev->inquiry_len = 36;
 
diff --git a/drivers/message/fusion/mptfc.c b/drivers/message/fusion/mptfc.c
index c459f709107b7c..a3c17c4fe69c54 100644
--- a/drivers/message/fusion/mptfc.c
+++ b/drivers/message/fusion/mptfc.c
@@ -129,6 +129,7 @@ static const struct scsi_host_template mptfc_driver_template = {
 	.sg_tablesize			= MPT_SCSI_SG_DEPTH,
 	.max_sectors			= 8192,
 	.cmd_per_lun			= 7,
+	.dma_alignment			= 511,
 	.shost_groups			= mptscsih_host_attr_groups,
 };
 
diff --git a/drivers/message/fusion/mptsas.c b/drivers/message/fusion/mptsas.c
index 300f8e955a5319..30cb4f64e77047 100644
--- a/drivers/message/fusion/mptsas.c
+++ b/drivers/message/fusion/mptsas.c
@@ -2020,6 +2020,7 @@ static const struct scsi_host_template mptsas_driver_template = {
 	.sg_tablesize			= MPT_SCSI_SG_DEPTH,
 	.max_sectors			= 8192,
 	.cmd_per_lun			= 7,
+	.dma_alignment			= 511,
 	.shost_groups			= mptscsih_host_attr_groups,
 	.no_write_same			= 1,
 };
diff --git a/drivers/message/fusion/mptscsih.c b/drivers/message/fusion/mptscsih.c
index 9080a73b4ea64a..6c3f25cc33ff99 100644
--- a/drivers/message/fusion/mptscsih.c
+++ b/drivers/message/fusion/mptscsih.c
@@ -2438,8 +2438,6 @@ mptscsih_slave_configure(struct scsi_device *sdev)
 		"tagged %d, simple %d\n",
 		ioc->name,sdev->tagged_supported, sdev->simple_tags));
 
-	blk_queue_dma_alignment (sdev->request_queue, 512 - 1);
-
 	return 0;
 }
 
diff --git a/drivers/message/fusion/mptspi.c b/drivers/message/fusion/mptspi.c
index 6c5920db1e9dc5..574b882c9a8540 100644
--- a/drivers/message/fusion/mptspi.c
+++ b/drivers/message/fusion/mptspi.c
@@ -843,6 +843,7 @@ static const struct scsi_host_template mptspi_driver_template = {
 	.sg_tablesize			= MPT_SCSI_SG_DEPTH,
 	.max_sectors			= 8192,
 	.cmd_per_lun			= 7,
+	.dma_alignment			= 511,
 	.shost_groups			= mptscsih_host_attr_groups,
 };
 
diff --git a/drivers/scsi/hosts.c b/drivers/scsi/hosts.c
index 2d92549e524319..7f987335b44c1a 100644
--- a/drivers/scsi/hosts.c
+++ b/drivers/scsi/hosts.c
@@ -479,6 +479,12 @@ struct Scsi_Host *scsi_host_alloc(const struct scsi_host_template *sht, int priv
 	else
 		shost->max_segment_size = BLK_MAX_SEGMENT_SIZE;
 
+	/* 32-byte (dword) is a common minimum for HBAs. */
+	if (sht->dma_alignment)
+		shost->dma_alignment = sht->dma_alignment;
+	else
+		shost->dma_alignment = 3;
+
 	/*
 	 * assume a 4GB boundary, if not set
 	 */
diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 8e14cea15f9808..60688f18fac6f7 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -943,6 +943,7 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
 	shost->max_id = 0;
 	shost->max_channel = 0;
 	shost->max_cmd_len = SCSI_MAX_VARLEN_CDB_SIZE;
+	shost->dma_alignment = 0;
 
 	rc = iscsi_host_get_max_scsi_cmds(shost, cmds_max);
 	if (rc < 0)
@@ -1065,7 +1066,6 @@ static int iscsi_sw_tcp_slave_configure(struct scsi_device *sdev)
 	if (conn->datadgst_en)
 		blk_queue_flag_set(QUEUE_FLAG_STABLE_WRITES,
 				   sdev->request_queue);
-	blk_queue_dma_alignment(sdev->request_queue, 0);
 	return 0;
 }
 
diff --git a/drivers/scsi/qla2xxx/qla_os.c b/drivers/scsi/qla2xxx/qla_os.c
index 1e2f52210f6050..5bf7aec217c826 100644
--- a/drivers/scsi/qla2xxx/qla_os.c
+++ b/drivers/scsi/qla2xxx/qla_os.c
@@ -1957,9 +1957,6 @@ qla2xxx_slave_configure(struct scsi_device *sdev)
 	scsi_qla_host_t *vha = shost_priv(sdev->host);
 	struct req_que *req = vha->req;
 
-	if (IS_T10_PI_CAPABLE(vha->hw))
-		blk_queue_update_dma_alignment(sdev->request_queue, 0x7);
-
 	scsi_change_queue_depth(sdev, req->max_q_depth);
 	return 0;
 }
@@ -3575,6 +3572,9 @@ qla2x00_probe_one(struct pci_dev *pdev, const struct pci_device_id *id)
 		    QLA_SG_ALL : 128;
 	}
 
+	if (IS_T10_PI_CAPABLE(base_vha->hw))
+		host->dma_alignment = 0x7;
+
 	ret = scsi_add_host(host, &pdev->dev);
 	if (ret)
 		goto probe_failed;
diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
index f1936f98abe3e2..26b51406c477e3 100644
--- a/drivers/scsi/scsi_lib.c
+++ b/drivers/scsi/scsi_lib.c
@@ -1985,15 +1985,8 @@ void scsi_init_limits(struct Scsi_Host *shost, struct queue_limits *lim)
 	lim->seg_boundary_mask = shost->dma_boundary;
 	lim->max_segment_size = shost->max_segment_size;
 	lim->virt_boundary_mask = shost->virt_boundary_mask;
-
-	/*
-	 * Set a reasonable default alignment:  The larger of 32-byte (dword),
-	 * which is a common minimum for HBAs, and the minimum DMA alignment,
-	 * which is set by the platform.
-	 *
-	 * Devices that require a bigger alignment can increase it later.
-	 */
-	lim->dma_alignment = max(4, dma_get_cache_alignment()) - 1;
+	lim->dma_alignment = max_t(unsigned int,
+		shost->dma_alignment, dma_get_cache_alignment() - 1);
 
 	if (shost->no_highmem)
 		lim->bounce = BLK_BOUNCE_HIGH;
diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index 86d32e3b3282a5..c4f54c311d0549 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -70,18 +70,6 @@ static int slave_alloc(struct scsi_device *sdev)
 
 static int slave_configure(struct scsi_device *sdev)
 {
-	/*
-	 * Scatter-gather buffers (all but the last) must have a length
-	 * divisible by the bulk maxpacket size.  Otherwise a data packet
-	 * would end up being short, causing a premature end to the data
-	 * transfer.  Since high-speed bulk pipes have a maxpacket size
-	 * of 512, we'll use that as the scsi device queue's DMA alignment
-	 * mask.  Guaranteeing proper alignment of the first buffer will
-	 * have the desired effect because, except at the beginning and
-	 * the end, scatter-gather buffers follow page boundaries.
-	 */
-	blk_queue_dma_alignment(sdev->request_queue, (512 - 1));
-
 	/* Set the SCSI level to at least 2.  We'll leave it at 3 if that's
 	 * what is originally reported.  We need this to avoid confusing
 	 * the SCSI layer with devices that report 0 or 1, but need 10-byte
@@ -219,6 +207,18 @@ static const struct scsi_host_template rtsx_host_template = {
 	/* limit the total size of a transfer to 120 KB */
 	.max_sectors =                  240,
 
+	/*
+	 * Scatter-gather buffers (all but the last) must have a length
+	 * divisible by the bulk maxpacket size.  Otherwise a data packet
+	 * would end up being short, causing a premature end to the data
+	 * transfer.  Since high-speed bulk pipes have a maxpacket size
+	 * of 512, we'll use that as the scsi device queue's DMA alignment
+	 * mask.  Guaranteeing proper alignment of the first buffer will
+	 * have the desired effect because, except at the beginning and
+	 * the end, scatter-gather buffers follow page boundaries.
+	 */
+	.dma_alignment =		511,
+
 	/* emulated HBA */
 	.emulated =			1,
 
diff --git a/drivers/usb/image/microtek.c b/drivers/usb/image/microtek.c
index 8c8fa71c69c411..9f758241d9d376 100644
--- a/drivers/usb/image/microtek.c
+++ b/drivers/usb/image/microtek.c
@@ -328,12 +328,6 @@ static int mts_slave_alloc (struct scsi_device *s)
 	return 0;
 }
 
-static int mts_slave_configure (struct scsi_device *s)
-{
-	blk_queue_dma_alignment(s->request_queue, (512 - 1));
-	return 0;
-}
-
 static int mts_scsi_abort(struct scsi_cmnd *srb)
 {
 	struct mts_desc* desc = (struct mts_desc*)(srb->device->host->hostdata[0]);
@@ -631,8 +625,8 @@ static const struct scsi_host_template mts_scsi_host_template = {
 	.can_queue =		1,
 	.this_id =		-1,
 	.emulated =		1,
+	.dma_alignment =	511,
 	.slave_alloc =		mts_slave_alloc,
-	.slave_configure =	mts_slave_configure,
 	.max_sectors=		256, /* 128 K */
 };
 
diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index 1d14c678f3d3e3..eb4ba03e082d89 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -75,12 +75,6 @@ static int slave_alloc (struct scsi_device *sdev)
 	 */
 	sdev->inquiry_len = 36;
 
-	/*
-	 * Some host controllers may have alignment requirements.
-	 * We'll play it safe by requiring 512-byte alignment always.
-	 */
-	blk_queue_update_dma_alignment(sdev->request_queue, (512 - 1));
-
 	/* Tell the SCSI layer if we know there is more than one LUN */
 	if (us->protocol == USB_PR_BULK && us->max_lun > 0)
 		sdev->sdev_bflags |= BLIST_FORCELUN;
@@ -638,6 +632,11 @@ static const struct scsi_host_template usb_stor_host_template = {
 	/* lots of sg segments can be handled */
 	.sg_tablesize =			SG_MAX_SEGMENTS,
 
+	/*
+	 * Some host controllers may have alignment requirements.
+	 * We'll play it safe by requiring 512-byte alignment always.
+	 */
+	.dma_alignment =		511,
 
 	/*
 	 * Limit the total size of a transfer to 120 KB.
diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 08953f0d4532aa..ca6d01fc4b9456 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -822,13 +822,6 @@ static int uas_slave_alloc(struct scsi_device *sdev)
 
 	sdev->hostdata = devinfo;
 
-	/*
-	 * The protocol has no requirements on alignment in the strict sense.
-	 * Controllers may or may not have alignment restrictions.
-	 * As this is not exported, we use an extremely conservative guess.
-	 */
-	blk_queue_update_dma_alignment(sdev->request_queue, (512 - 1));
-
 	if (devinfo->flags & US_FL_MAX_SECTORS_64)
 		blk_queue_max_hw_sectors(sdev->request_queue, 64);
 	else if (devinfo->flags & US_FL_MAX_SECTORS_240)
@@ -910,6 +903,12 @@ static const struct scsi_host_template uas_host_template = {
 	.eh_device_reset_handler = uas_eh_device_reset_handler,
 	.this_id = -1,
 	.skip_settle_delay = 1,
+	/*
+	 * The protocol has no requirements on alignment in the strict sense.
+	 * Controllers may or may not have alignment restrictions.
+	 * As this is not exported, we use an extremely conservative guess.
+	 */
+	.dma_alignment = 511,
 	.dma_boundary = PAGE_SIZE - 1,
 	.cmd_size = sizeof(struct uas_cmd_info),
 };
diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
index 878840c9b5b99a..09d769a371ca06 100644
--- a/include/scsi/scsi_host.h
+++ b/include/scsi/scsi_host.h
@@ -405,6 +405,8 @@ struct scsi_host_template {
 	 */
 	unsigned int max_segment_size;
 
+	unsigned int dma_alignment;
+
 	/*
 	 * DMA scatter gather segment boundary limit. A segment crossing this
 	 * boundary will be split in two.
@@ -614,6 +616,7 @@ struct Scsi_Host {
 	unsigned int max_sectors;
 	unsigned int opt_sectors;
 	unsigned int max_segment_size;
+	unsigned int dma_alignment;
 	unsigned long dma_boundary;
 	unsigned long virt_boundary_mask;
 	/*
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-8-hch%40lst.de.
