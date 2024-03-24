Return-Path: <usb-storage+bncBDUNBGN3R4KRBDH3QKYAMGQE6SS3GOA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F61D8882CD
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:55:58 +0100 (CET)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-5a478fe8814sf4090289eaf.3
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:55:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324557; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q8qrzPwFRS+hcluXajrI6DR8C4jW9lQmiZm3T/gzholki3KMvPTbvPzA4blk2VKAod
         DANXLvdlyMvBtrSAHgXTHmzh8UOolsERi6rE6TGsOIW7xzVAOzyLwzil/stAe1K5KZyw
         ezgbAcyeevUSZJIHxRYq0GqR7jcjugrVEsgQpf15j0R27+oPHiJOonf0lblz2SewKm0t
         a3lfAhSmaTEE+RY6+z3hTKuM5vn2Mu7lGVbc0G6NwLQHL+9sfAn5t8JCOPsEb7FO++Y2
         L1j0JJoL32YFiT43Z44z2D6lcDuXxTsowstN6xB2LkK+Uu6tPuFyacRpB3psEB7LhzJ/
         yK5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nNY2x9ImTfvBBl99dTXEuUj0vesMF+tMM4uQgoMsD2I=;
        fh=6mDZ18ogd5w//prNMbsiJisikIQ96Ws5n8ynTjE4nbI=;
        b=I6YDBhjhS+yQegBGdSxs0V9vXbZWAIECUtTrKHDUhmtr4jOt17XiwvU+L6s+/qXKww
         BJqAhHxBUBl7dVU6g5FSn5mSsqRyB/OQM2VqdbtDS9qTNMKRqnIy+aCY327/rqCmSkrx
         HUqHrx62sAt6xSCYq+8hTJIPcN7t5il4TBMYo4K+tNAMF5kXhWBTVMluo7DtUaFbyA2i
         q07uAdeRPCbYaLsB7RIap1/vHdeiNqddi+i5xTQahcIf70pW1RW/ckBrsd4NGTNwOcY4
         NrHagUUeG53bucy8LQgK4rCxA/hThFHAzytxJib5bMv4rUV5AnaaCOy4g5EAB1msNfO/
         9agw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=EPwKA8vB;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324557; x=1711929357; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nNY2x9ImTfvBBl99dTXEuUj0vesMF+tMM4uQgoMsD2I=;
        b=VxKePAMF+QALt6ZtO65pmpDrN5tX8IBq8AE4IJvxo2nfOjYPLDfZhhuykMpERc/xhp
         DcuasdpJMes8fbm5z1FIyjR6tZ8maJmB5JEnlCUmKrXucUUgsuRKHdBrHpvWAlntY4/8
         ocUukstWYcHscRhxrDLBjtH9ATZujjfAh79AM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324557; x=1711929357;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nNY2x9ImTfvBBl99dTXEuUj0vesMF+tMM4uQgoMsD2I=;
        b=LyyAK0r4JNBSDJwCF7+JjYmSQsYNQY+9tuGhWXBimDTgJ03d0mJHNVPJoyYYdECkFq
         1l+/mkphp7Gzws5da9Lhr+mZYTPcF3O9nqmu9qFl0WZQqifZbtkNv+ajquRUL+uMo1nv
         dWyx5TJZVNkn342l3o6gXA1Nus0wTZ05yzzdjzjBlWtMvhz+jRgTNZyujRbOq1DmO+w2
         PNVl0VsDUsgVhkQ7z4m3NOAyMJSNv9J8DSFmfeRQO1JmtL6bWeSqNtdlXq4meUTk8+1h
         uPcScVFQ/4/Fh1nefKYhpWETzo9stI6ufvU7hEGF9FQNyhb8pYrTl14IYmZ2UaCcTroV
         Seqg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUPZ3x175DErApKb26s4IuUZOZAea8YMA9glViu2CwQ+1czyjbLVz4rbAqWgDYHhCgF1Sl5ZTavgP/IS/1CWbP8wlldxWzG0g+w
X-Gm-Message-State: AOJu0YwsAtORX3kXpl/PwQ97CP4bSFeCGMci0gS8/2qb88Vx07a31BR3
	Hz2moCM+5zmcWhD0COTAwLUrp7VOxr8Z8PVzmzaOXXYSyiYnFXrKC4tQksDaMfw=
X-Google-Smtp-Source: AGHT+IHghWCuoAp6uxlWkaQR233SIHlbbMSCsIf8zyuwCY5D35+L+sl6gtVpvgIPmad3CEgptXs9VQ==
X-Received: by 2002:a05:6820:98b:b0:5a5:23fb:448f with SMTP id cg11-20020a056820098b00b005a523fb448fmr5088169oob.1.1711324556973;
        Sun, 24 Mar 2024 16:55:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:9b4d:0:b0:5a4:bbf6:3d9 with SMTP id e13-20020a4a9b4d000000b005a4bbf603d9ls4280943ook.1.-pod-prod-01-us;
 Sun, 24 Mar 2024 16:55:56 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWB5w7LwHFLqrS1ToIEUL/Bv5K5HDyxhfcAqnBInd88RGMseuEptljsmZjNG6cHFnjcsNk+VhOtVvXD/pkZQtVOZWx4tm/IVjnFmA//3qXCHPZ+Fms=
X-Received: by 2002:a05:6808:bcf:b0:3c3:d269:5728 with SMTP id o15-20020a0568080bcf00b003c3d2695728mr226455oik.28.1711324556059;
        Sun, 24 Mar 2024 16:55:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324556; cv=none;
        d=google.com; s=arc-20160816;
        b=H4KGMK+VLpWcattba/eEkwHiwufJ06Ly2+R9lAZ2nUzA/m3qCRaY4t4N4sXow3VRCa
         jz4hNF2yFlgS47n9/bCjKtU9kzHnCAt8KFQdF4iLNCoXPlq1NtCoWSl0NQQ62jsxH0Gt
         1FPggKjixWim1L8w88MoULeb5EUy3fAdVeKg/Lc/+MHOghgBevulFrHRQQmkq2ZDBso/
         cAz9C5vz2rS6l2nE3ETys0GWSnbY3TXD3UjweF56Lb3cdg1OJXxyJhBP6qYm3ctpe8FN
         zd7KT7FyyvLMoeFgVdjlDCswEKk0EvTmFm3bBqtdZGp8kqPjpUgEE0y+Ke39dRiSlQ4p
         YGgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qJi5WCtY1yhQ9UxhLc1APOVXudQDNK947ENHC/rdITw=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=pGChfXft3pK4bYDPmFTmVNspB7C1o9VRpFX0GPXTT43waz/vtWFFOxTzFmCAgxLDi3
         H5Au1fxIEBmspjx7CLloEAULiDsnBEupGy4q+/uCQPEffQai+KvToUc5yqE3LzBa5Nx+
         okEB8AIbPmyTYRzA3mcXgnRmb++KUA3mgTVtci3pmK4bbex2/nt25qJvuG9ATtFWOhfD
         +eAMtc1DOkWTfjjsJKtDqvFPp8EaC3an5a/TYPbI7UGBB0sDT8RPnC9beytwrV9g6BTh
         QLKNhGokiWiNeOhi1iUetsDxj7Yd3euDY4rTULXAWD7NxqfxTt+iz59WdGk6cb7YkNdY
         ivTw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=EPwKA8vB;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id s3-20020a632143000000b005cf588da70fsi6265004pgm.643.2024.03.24.16.55.55
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:56 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXgl-0000000DzcT-32yh;
	Sun, 24 Mar 2024 23:55:44 +0000
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
Subject: [usb-storage] [PATCH 11/23] megaraid_sas: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:36 +0800
Message-Id: <20240324235448.2039074-12-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=EPwKA8vB;
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-12-hch%40lst.de.
