Return-Path: <usb-storage+bncBDUNBGN3R4KRB772QKYAMGQEMY6CTOI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id C90AA8882C2
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:55:44 +0100 (CET)
Received: by mail-pl1-x647.google.com with SMTP id d9443c01a7336-1e0a7c58499sf5415795ad.0
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:55:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324543; cv=pass;
        d=google.com; s=arc-20160816;
        b=oHYlygT+x7IGw4APp0TWHAgAbpCp/C1k8/Fw+lirDipi0JUjLfktdD45J37qQuHKnj
         SsF904AN7sxswaNoKIhx+Bj6C0zLOJ9vXWaRExFnDtv9x7CQBXsfIrMX8htcQeWP7NzW
         1izTVj5QxCFQPnfjKPXJGP2EDCu83mfcAQyppl5jZsgesXrsjgz+FyWP5eSml1pnd9bj
         /Qwv07gVH7d76QNc5+IXNWuEF5kJMHxEjEUx2am1oeydQbR/CO3dWp5NWtJnIRO27++W
         egTzfzyMjMVBiMsXHb0Dsu/fiKCzkH4p29eFKoMaql/z1hcOX5EgIEjiEJDVsW8pGZtE
         UoUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ITkOdV5Sv9qHggkq0SY6UHw7AbwDxRDZn6k+7ncMD/U=;
        fh=+Yt6LZq6kywGc+T9G+O8vyAac7rbTJPb6/NwEWKZ4N0=;
        b=MCimc071w9l0ycW4CtOpIuAlceujxS33Xw8qVHm/BnjRAYpIDvPrFsNcfmHR6vKVLg
         iPIlsEeHDOE+/gCXM3Q94c683XvkZoFSRclUu5h4ZEWMBaRJBiNL7qW/bf/X1ZlSGLvy
         F/06E2HBHjuGNLrnsCAcqc6WT4wmWkPglqAFnJJeYL6zgUKdRfKKJxqsYOkDyYSKbSX5
         gYzEI7Pl3UyyT8JG+zTY0Ch8K4+hzK97OafXWXR1fM8DP1utx9N3+oeLNqTPywPg3y4A
         AT93H0C7nG2P+VfA0xR7gBaHgpZlDLfDW/R/H0qY/Jrv9iIfry14EiVmxsRekPfNuZOf
         LXLw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=tW7wzOQd;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324543; x=1711929343; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ITkOdV5Sv9qHggkq0SY6UHw7AbwDxRDZn6k+7ncMD/U=;
        b=RrEler/2meiLy3aZeC8WbFW0hY6wBRAyy/1FgQe2eeRoL3vLzbvLyvJIlk0tUuVSYz
         lxeADoGUxBkY1VVb/liZ/oXmS+Ne4S2Xo+JD/3NOLvBrtXBeot1k9DVsxaiAvA2zMi6y
         VVwCQPxK06rKdUavGAfiI50KWcSXW4+FwjxY8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324543; x=1711929343;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ITkOdV5Sv9qHggkq0SY6UHw7AbwDxRDZn6k+7ncMD/U=;
        b=R0hcYSOsXDYVJ0loTXX9+33tvYVBoce4THBlbM++JUAzn4L01YXHm72/XxKCX9IsKS
         lr+FSPx6H6+6LwWlHXaxL2KIj6RkHTg5pwUtKjSyUVXt/m5KQkXwsy5BYPHW1I0GZjwi
         67H7FCrgCYfoqIQKlMvCQKQspvKR0ZpsNgvkiF8XjHKj0VfjijXwgBms1F8Al9zZsOyy
         PEbVHTb72qheo66YftERCblbnBvu2dYJHxSSgnnGs+0M4bjVc1feDmr2MC7YorlrfMCw
         ZXX+XbLBLejAZvKMNLk/4XrShlBv6hAPL8xA2Yr+Wm+I9d8mgCFwSZgZRO0jZPNM5crj
         ulYA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVHstZZigtwVAtYqmZQGw6I7VBVzShltzC9/ImFU964ZDKsBEiaWNE5AQffhLG+1Tiu5AsvHBtXM+ZdR02K7z9TneJmvj0xy0L1
X-Gm-Message-State: AOJu0YzwnDJnB3F4XoXII1IAvQP9zQ7YQ9b/Fh3eg96wKjDP7+TvTJQ1
	TmkXEY0e2qd9Jq7O4rT3GHi+12n+5/a/X+YJL7kFw0Jqak8rotwyxn0MYwDsSM8=
X-Google-Smtp-Source: AGHT+IEuRGKgloABIIAYe3ae+kH6RMxue5iA5o3I+boW51tt9DPLn8pYk1cjfvG1cMG8a0TcN5KD7A==
X-Received: by 2002:a17:902:e549:b0:1e0:b257:3261 with SMTP id n9-20020a170902e54900b001e0b2573261mr3352017plf.42.1711324543328;
        Sun, 24 Mar 2024 16:55:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:ced0:b0:1db:2ca9:b5b8 with SMTP id
 d16-20020a170902ced000b001db2ca9b5b8ls2375580plg.1.-pod-prod-07-us; Sun, 24
 Mar 2024 16:55:40 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVlzypG4oHwqWOcqJZb0G9j4hINVYcwT1e0cftwCA0L7HbfzFC9O9opSSZ3PhlnNpke6eybP8DaEy2FvGU3QIOuAWyuJhCPnZySnDzqLyScXHuRaWc=
X-Received: by 2002:a17:902:b096:b0:1df:f9fc:c9f7 with SMTP id p22-20020a170902b09600b001dff9fcc9f7mr5367124plr.61.1711324540569;
        Sun, 24 Mar 2024 16:55:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324540; cv=none;
        d=google.com; s=arc-20160816;
        b=rXwcTvhgs4FPdonV6ViIr9Bgm9olBk0N2vitJ5TzoiLWcXiPLDDhPCaoUkdMWf0ImN
         tBCAtQ2akRRUIC7wybw3Jw/z74S/FsYE9gQuSS2idVtZ5C78NitCYvo+S8h/woSh9JDD
         Be+Y+PwuXrc5xOas+gNan6gPsTZ7F1lcg479BJH7xfxqlA/F86IibbXMJzAP3hRfgdU0
         PlkzIVAOp4RN1n7jq1OueQktvK3/Fg1secLllsOm3hur4MNGgEymsOo1937A32XxxwQU
         fHykyvM+PLgpuQpNjFZaSyLaiuHfR7M3/aBApunP29eeLGPY092CN8GE+lkN5J1HIZRI
         5xEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TV2KULhx0jXvmBL1siFqJvD3Q15LHPygeYRaqDNqSRw=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=BrDtDc3HvNODUuiVpoxA5reNwbqjIWdNshYddJyN2+naD7EJDBA3VC6Pt9ZiAkSvlP
         avzha012U/c59e5cVT2IerXHDyBq2XJVWFM7WSM5jwsHVj9aFkC/1JWBPkfPOVztTLDb
         0cvERlHm3hJol87yA2VcOXF1EBtoJZtUL/0eTKySXmjER0uTU3u9PXieZugbTo/65j8o
         4PXStyzSBwScrxZUCqNA3P19mQvVgGMiFGsqWAtFboDZ9sdifW/i5QvFud6JVHksR+2F
         PQbVHo+LaJmmVjGJ/tESp9o5BVVHQ3bX0vVSuj4FJnIbDwgJAiMQvVQaRPGFB00tzOpq
         5xzQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=tW7wzOQd;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id q18-20020a170902e31200b001e0096b286bsi3845017plc.632.2024.03.24.16.55.40
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:40 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXgW-0000000DzW8-2KV4;
	Sun, 24 Mar 2024 23:55:29 +0000
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
Subject: [usb-storage] [PATCH 07/23] scsi: add a dma_alignment field to the
 host and host template
Date: Mon, 25 Mar 2024 07:54:32 +0800
Message-Id: <20240324235448.2039074-8-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=tW7wzOQd;
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

Get drivers out of the business of having to call the block layer
dma alignment limits helpers themselves.

Signed-off-by: Christoph Hellwig <hch@lst.de>
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
index 4f495a41ec4aae..a67a98bd7ae2d7 100644
--- a/drivers/scsi/hosts.c
+++ b/drivers/scsi/hosts.c
@@ -478,6 +478,12 @@ struct Scsi_Host *scsi_host_alloc(const struct scsi_host_template *sht, int priv
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
index dd674378f2f392..d188749f29e407 100644
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
index 71ace274761f18..0668182e1c469c 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -824,13 +824,6 @@ static int uas_slave_alloc(struct scsi_device *sdev)
 
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
@@ -912,6 +905,12 @@ static const struct scsi_host_template uas_host_template = {
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
index 6d77c48e8311fb..b0948ab69e0fa6 100644
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-8-hch%40lst.de.
