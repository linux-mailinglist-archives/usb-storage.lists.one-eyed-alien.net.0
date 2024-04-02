Return-Path: <usb-storage+bncBDUNBGN3R4KRBFEGWCYAMGQESOF2NTA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2EB895446
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:34 +0200 (CEST)
Received: by mail-pg1-x545.google.com with SMTP id 41be03b00d2f7-5d396a57ea5sf3581279a12.2
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063253; cv=pass;
        d=google.com; s=arc-20160816;
        b=i+pz0PlFNIKHG0iZKmOqepdWTrQVy0NWRxrkRYFKf6IREevuu1agDskqHw1+bqIAOK
         T8SF7jmrcMsfNlEV7hTvg/tCxkpuCM+cnOyzlMvnHktVuuOAgFEUpjj8q+vvTvmUHNtH
         qFAKadEiuJ7ejmP24kOjexKTVopWBzvlN5vqsAEYRAI/04lG8JOf9XPgzkTfrcTqypXo
         l3Y+0DOqNVIcWkdjKijzEx3MGjdgmgrNSbx3DZcUkP231D9+qGCcW1rOMbI2SGOdhBA1
         kqSdbuZq7dpuMeaE9q7/O0f+XSUTHQUjph2q4c8yNPd22IR6vVns29NC/5zFxQyMUXyr
         o4KQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=s1IPO8MJjBJ0E14QXl2Q+XaiIGE3nvK+DtGKj60azDM=;
        fh=kkBDS8BIUPjWB+AUabCxcmyjBXA/eMHQk2QwIcuX96A=;
        b=ldAcFgTqJJez94u4hPsKCgvo0CennPNjuN9lyQLrEGh+FtRSvUVUJJW+ZSUwfxG9/4
         csKeRxjiYsbXfx53mEmb+jiVtyGDhA2/f1e/tuGPE3q63EYg6eRHY//0rBAoIthCksNZ
         oXNPaYW/HIiK3uKt11G2VIGbgy9XiIbAjZE1bHya5WwSOpjIuF8gx7BmcOKG6UMPKnrE
         cWRKGIdd9rFO+yMqYGJRSS6DYfsQL5eUS0RMn5CwQK4IJ86q9XEzcsHucjcq79l3QQUe
         iC3f4pnRCQDlfiJzov+i5VIlHktpru1CH+1A8d7KtUxhugrRml6EMcWFGfOcdBnS6yWN
         7wVQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=Pi38csK7;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063253; x=1712668053; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s1IPO8MJjBJ0E14QXl2Q+XaiIGE3nvK+DtGKj60azDM=;
        b=gKJmW3tIo0U6mjIAgD8e/sQ7OXeXgEQNmopyAEWqQDdmsv6XGOLtRD3ljk/bXB5yln
         C9sBY+19HdN9grjpWfDnwUronZEVfWecxB/oGuKCj7mDKUVA0dHRH3BjqVBI+b1WU/Z1
         4ia059R8ZeddgO60fx1sGrYOEB8afdXHQySZU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063253; x=1712668053;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s1IPO8MJjBJ0E14QXl2Q+XaiIGE3nvK+DtGKj60azDM=;
        b=ZxZAq/8F3dDhovLslZNo279nKw8ngLFK9OGmnciXmA2lzB+1gJ7YEX4qN2S54zjkLn
         kGmHV8OoJSyRmkFL6/z7JRse4l7sBv/++rJZ2Iz3UJZ8HVDbQ8ZaMWLuMkIzOl54wHSV
         3gSD0gGTSKbSzxW6vIMgnSstUrVz4SrQyVUavXLxB7mfeYq9WnMgvraT8/hTJoduQHgM
         KKasCWioudCBSOSR6aSlamqP9oDY22P6WxI5JM+0n7BbQeX0EFyt5T+j8Vbx4s7h6bzh
         sGW44+FBV8pX7iO4fn4k3N6AB/NxEpc6ywL1FMlx5qqhQPD8i5TI+wtXfRPZaYxdwnVn
         DDyA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUTruuVNbk6xufuWH8eBvspyLKBSSSq9sfxsV5ukULHf35nqmWE49wysG+r7AU984zeU56CENS2w2AwBTkIkNveKotDoJf2uAlQ
X-Gm-Message-State: AOJu0Yzugj3mwvElleCVgODrGCUQMUPBT1Qw0RbMgFwL97sVC054qiBJ
	vdLWThk0QqNl1LgHbASG36xLTzdhFaDE1PPDP+l2c5GvGeNKptMQ48QEmQPCKAc=
X-Google-Smtp-Source: AGHT+IHSsuvfiwrzOqMmsxWKhGHUbPx1u5gDd0oko1StHHQH1Z2/IkvajZGByAZjRuYjHREcAXi+6w==
X-Received: by 2002:a17:90a:f3c6:b0:2a0:5234:6842 with SMTP id ha6-20020a17090af3c600b002a052346842mr11254920pjb.31.1712063252808;
        Tue, 02 Apr 2024 06:07:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:8a:b0:2a0:976b:63c8 with SMTP id bb10-20020a17090b008a00b002a0976b63c8ls2614206pjb.1.-pod-prod-07-us;
 Tue, 02 Apr 2024 06:07:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV+BD9qDL4GN4q9AzsI5Rtm7YRL5H6KXoBHMYcdikvuzMqypnCkHx1xKYrCcdoXJWsE1LZRuYz6G0GFJe4IPENOremwyq15XDCl9ICWdWhxkQdJMfk=
X-Received: by 2002:a17:90a:db96:b0:29b:5c1:5e05 with SMTP id h22-20020a17090adb9600b0029b05c15e05mr10022045pjv.2.1712063251232;
        Tue, 02 Apr 2024 06:07:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063251; cv=none;
        d=google.com; s=arc-20160816;
        b=vAEN0KHPsfzZKcoUsJ+hSHlL8EHglXPF2Qatb4JDNALHpDPk4fvPYX4UE7XKdMh6dy
         Ht3Vtc6v9EG/AqHKDc1Bh1HETKFDCECFzxzQ7v+3YLxMsf5MvXcDO/WBd/3HXKYo5MoV
         jMXf6pgJahjvdtt2PjlYBpsrraw4u5iPeaHPvy41cZrSxYXT0P96U75xmzQF+Wlg0eQr
         DJNtmkiUHb0qe9d3Gl+tnZUDeTizDde0E9v4UYw39od0kdf1kFrIxtJL+1aoXLLTiONz
         TQe0kJj6ZWNjZxcHxO35JjVhrf0r2O5k8OB06Vl7uUQkBZIcb+b7goZa2Orxm6sccHAl
         K/1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=W/4MX6Ta0iS+DzFN/hZaJgRdefyKJITkCBys0ksCJ1Q=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=DeY/KlXHOtH/B9jxoziPtSc2icfUhv+XhrdQvx6QY4ZLuFE9UQ5YpjAQU1kTG9RI6F
         5FFGuVX89qRSGVQGBuNO0CIKxOaNjksehXzESveEMnxzX6+JyNcWriFl8w/9jjPdLqGM
         hHv3MvsdeBHujIhniq3ZG+tm6I4+ktGjsA/bvS2AXqKJj0pPPSfgKadj6rhHlVdNTcQw
         97HpHPuDLGcpgfWia/LY3uT6OrzBdGmfK4Rjjf0YaKawT6BPo8kQ2k4qamA7/MFduTy9
         3xwZGOkUo2L0Jdr5JRWXHnuAu1cdxwPy+HWfF6LSBw5M5Iew5LSPbGAq7dwqbheNcF4y
         uELg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=Pi38csK7;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id e13-20020a17090ac20d00b002a257c52f92si1326827pjt.168.2024.04.02.06.07.31
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:31 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdrC-0000000BFWZ-18IE;
	Tue, 02 Apr 2024 13:07:18 +0000
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
Subject: [usb-storage] [PATCH 11/23] megaraid_sas: switch to using ->device_configure
Date: Tue,  2 Apr 2024 15:06:33 +0200
Message-Id: <20240402130645.653507-12-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=Pi38csK7;
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
 drivers/scsi/megaraid/megaraid_sas.h        |  2 +-
 drivers/scsi/megaraid/megaraid_sas_base.c   | 29 ++++++++++++---------
 drivers/scsi/megaraid/megaraid_sas_fusion.c |  3 ++-
 3 files changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/scsi/megaraid/megaraid_sas.h b/drivers/scsi/megaraid/megaraid_sas.h
index 56624cbf7fa5e7..5680c6cdb22193 100644
--- a/drivers/scsi/megaraid/megaraid_sas.h
+++ b/drivers/scsi/megaraid/megaraid_sas.h
@@ -2701,7 +2701,7 @@ int megasas_get_ctrl_info(struct megasas_instance *instance);
 int
 megasas_sync_pd_seq_num(struct megasas_instance *instance, bool pend);
 void megasas_set_dynamic_target_properties(struct scsi_device *sdev,
-					   bool is_target_prop);
+		struct queue_limits *lim, bool is_target_prop);
 int megasas_get_target_prop(struct megasas_instance *instance,
 			    struct scsi_device *sdev);
 void megasas_get_snapdump_properties(struct megasas_instance *instance);
diff --git a/drivers/scsi/megaraid/megaraid_sas_base.c b/drivers/scsi/megaraid/megaraid_sas_base.c
index 3d4f13da1ae873..def0d905b6d9e3 100644
--- a/drivers/scsi/megaraid/megaraid_sas_base.c
+++ b/drivers/scsi/megaraid/megaraid_sas_base.c
@@ -1888,7 +1888,7 @@ static struct megasas_instance *megasas_lookup_instance(u16 host_no)
 * Returns void
 */
 void megasas_set_dynamic_target_properties(struct scsi_device *sdev,
-					   bool is_target_prop)
+		struct queue_limits *lim, bool is_target_prop)
 {
 	u16 pd_index = 0, ld;
 	u32 device_id;
@@ -1915,8 +1915,10 @@ void megasas_set_dynamic_target_properties(struct scsi_device *sdev,
 			return;
 		raid = MR_LdRaidGet(ld, local_map_ptr);
 
-		if (raid->capability.ldPiMode == MR_PROT_INFO_TYPE_CONTROLLER)
-			blk_queue_update_dma_alignment(sdev->request_queue, 0x7);
+		if (raid->capability.ldPiMode == MR_PROT_INFO_TYPE_CONTROLLER) {
+			if (lim)
+				lim->dma_alignment = 0x7;
+		}
 
 		mr_device_priv_data->is_tm_capable =
 			raid->capability.tmCapable;
@@ -1967,7 +1969,8 @@ void megasas_set_dynamic_target_properties(struct scsi_device *sdev,
  *
  */
 static inline void
-megasas_set_nvme_device_properties(struct scsi_device *sdev, u32 max_io_size)
+megasas_set_nvme_device_properties(struct scsi_device *sdev,
+		struct queue_limits *lim, u32 max_io_size)
 {
 	struct megasas_instance *instance;
 	u32 mr_nvme_pg_size;
@@ -1976,10 +1979,10 @@ megasas_set_nvme_device_properties(struct scsi_device *sdev, u32 max_io_size)
 	mr_nvme_pg_size = max_t(u32, instance->nvme_page_size,
 				MR_DEFAULT_NVME_PAGE_SIZE);
 
-	blk_queue_max_hw_sectors(sdev->request_queue, (max_io_size / 512));
+	lim->max_hw_sectors = max_io_size / 512;
+	lim->virt_boundary_mask = mr_nvme_pg_size - 1;
 
 	blk_queue_flag_set(QUEUE_FLAG_NOMERGES, sdev->request_queue);
-	blk_queue_virt_boundary(sdev->request_queue, mr_nvme_pg_size - 1);
 }
 
 /*
@@ -2041,7 +2044,7 @@ static void megasas_set_fw_assisted_qd(struct scsi_device *sdev,
  * @is_target_prop			true, if fw provided target properties.
  */
 static void megasas_set_static_target_properties(struct scsi_device *sdev,
-						 bool is_target_prop)
+		struct queue_limits *lim, bool is_target_prop)
 {
 	u32 max_io_size_kb = MR_DEFAULT_NVME_MDTS_KB;
 	struct megasas_instance *instance;
@@ -2060,13 +2063,15 @@ static void megasas_set_static_target_properties(struct scsi_device *sdev,
 		max_io_size_kb = le32_to_cpu(instance->tgt_prop->max_io_size_kb);
 
 	if (instance->nvme_page_size && max_io_size_kb)
-		megasas_set_nvme_device_properties(sdev, (max_io_size_kb << 10));
+		megasas_set_nvme_device_properties(sdev, lim,
+				max_io_size_kb << 10);
 
 	megasas_set_fw_assisted_qd(sdev, is_target_prop);
 }
 
 
-static int megasas_slave_configure(struct scsi_device *sdev)
+static int megasas_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	u16 pd_index = 0;
 	struct megasas_instance *instance;
@@ -2096,10 +2101,10 @@ static int megasas_slave_configure(struct scsi_device *sdev)
 		ret_target_prop = megasas_get_target_prop(instance, sdev);
 
 	is_target_prop = (ret_target_prop == DCMD_SUCCESS) ? true : false;
-	megasas_set_static_target_properties(sdev, is_target_prop);
+	megasas_set_static_target_properties(sdev, lim, is_target_prop);
 
 	/* This sdev property may change post OCR */
-	megasas_set_dynamic_target_properties(sdev, is_target_prop);
+	megasas_set_dynamic_target_properties(sdev, lim, is_target_prop);
 
 	mutex_unlock(&instance->reset_mutex);
 
@@ -3507,7 +3512,7 @@ static const struct scsi_host_template megasas_template = {
 	.module = THIS_MODULE,
 	.name = "Avago SAS based MegaRAID driver",
 	.proc_name = "megaraid_sas",
-	.slave_configure = megasas_slave_configure,
+	.device_configure = megasas_device_configure,
 	.slave_alloc = megasas_slave_alloc,
 	.slave_destroy = megasas_slave_destroy,
 	.queuecommand = megasas_queue_command,
diff --git a/drivers/scsi/megaraid/megaraid_sas_fusion.c b/drivers/scsi/megaraid/megaraid_sas_fusion.c
index c60014e07b449e..6c1fb8149553a8 100644
--- a/drivers/scsi/megaraid/megaraid_sas_fusion.c
+++ b/drivers/scsi/megaraid/megaraid_sas_fusion.c
@@ -5119,7 +5119,8 @@ int megasas_reset_fusion(struct Scsi_Host *shost, int reason)
 					ret_target_prop = megasas_get_target_prop(instance, sdev);
 
 				is_target_prop = (ret_target_prop == DCMD_SUCCESS) ? true : false;
-				megasas_set_dynamic_target_properties(sdev, is_target_prop);
+				megasas_set_dynamic_target_properties(sdev, NULL,
+						is_target_prop);
 			}
 
 			status_reg = instance->instancet->read_fw_status_reg
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-12-hch%40lst.de.
