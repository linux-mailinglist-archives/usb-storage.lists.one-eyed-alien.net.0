Return-Path: <usb-storage+bncBDUNBGN3R4KRBVNF2WYAMGQEB22BMKQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x147.google.com (mail-il1-x147.google.com [IPv6:2607:f8b0:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA9089DC6D
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:15 +0200 (CEST)
Received: by mail-il1-x147.google.com with SMTP id e9e14a558f8ab-36a1989a5ecsf30149425ab.3
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673494; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y2FkMNt9W0XdNQOzCyMBrvQIR6McRulYHNlsZshhMnMbwX//2woAh1WzettDpxRmgL
         waYTGAkMnj0zQ8LaYbE0AcVs/uhan+Rr1kN2fpsF4MeLciHSRJ3II/+8v1poFS4HSlmy
         PK50iNFPp7Ioh7N35eQR9UPSFK93nU3KSDkufA4I6fs7s0pKO6wOelZf1y85A8KuBfLJ
         N559IqLCtzzQeSnYM0JIhlliXHWc52QkgF9M634V1uVDXhNPegbqkLwb/4ezFLiqbWy2
         ur3naM69Aj+Vn4Q/2p+oRUrkehaJYE6XorB6QB+KICFRowsvGPNsfZNug/KcS+0whKFj
         JksQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IzMjfR/P06gzb25HpYTP3barGTSo4lcrbETNTxCu1gw=;
        fh=H+Qh6foYQ2UeCfcVfT35Bc4qs0w9s4R2+NhvWL+qqXs=;
        b=Qi8gXH6+u4TGO1E4bm8l74CzGsmUyBnGj6J6zJuUhWVmyDM1zxD0e+PkNAoUqE0Rf4
         KLExji0zzSAIVhmqjtzEPcO5mwgXUOM46FsIsuPy/aX3bTIB/wD+4PdQhq5ggu/se6Id
         MRh0WEY4vHby5KV0+hhEm5RTFtlJzxQmEYXdVhIhtF+po94S591YqxaaW1bsAxGg1FbI
         0+5LpO1pJeqbIAKjuQX6+htZ3XourzFxrEflbkbfFl3aXL3ZnFCzeDW/EnZ6385dWrna
         d6yEqR6F2iOh/3CAUgtDGeOJ0tnRGUsoO3rhSh+3NYtgKs2cUoqaElxuWk+40+cOBFYr
         Qg5w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=oEZ55pmT;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673494; x=1713278294; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IzMjfR/P06gzb25HpYTP3barGTSo4lcrbETNTxCu1gw=;
        b=gqgmhBau8Ah5T7ruK7Pp+0/G+Dq63QamemDqZBB+sJVvB6zh7UmaGRF/KykL3Gnigt
         X38+veEQAk64w6JK36UwK6q+/wReH3cw+QJmkEWz0+6NzkCTiARxuNtSdikZvq2Vpr0I
         OdfwLvbX6orlQQWkiwMnceGk+whw1yvHRIlDs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673494; x=1713278294;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IzMjfR/P06gzb25HpYTP3barGTSo4lcrbETNTxCu1gw=;
        b=ghw9TZsJv2Ikr6BrG/q63/qz91gNEErxjVfu9eeW6W62pG8WkbZMoewGn7j5WGfWjq
         e6I+wSFDKlcS4vabRZL06vwt+v9zCLXz7dL/iEP/rGnNjqfaC1OqMRYs+2u1SwI27YrW
         7gg7j3AXAL8wrKEBfVsMdQDd7EdjQnoRfGGKj3q6/GBg78skqTDm7UC8Eo4HqAvWKAxO
         KqUWVNSLM8zL7vdr8JifJuWdm9mvfdwGFnhN+hABZZstSwkaRXgJ3KwmtfZWCudwk0/y
         O6OGwymyhP84pqegeucWDnx5mg7TphH6xY6baviUVWor9d1x0KBYDMpqcLiBJIu6MSpj
         SyNg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWhg7PtU6Q5EzeeqXO/Yx8oNNwCZSsotPdYTCE12PL551aNWPMdo4XVLBp//t+BCk9ERoDJdlN8Yn4N0oWUtDo62wz3lLElo1hJ
X-Gm-Message-State: AOJu0Yz4+lemlgonnVY+3e9BGxMddCaNgG0k8lVhftZxE/Dc+3qTWOlW
	WhOjaNGVze1iCXymxsuRDykC+PwxWgB7ZbGs8nGgh16r19UcXAwCIllGzWF8+Fc=
X-Google-Smtp-Source: AGHT+IH4xWponoTPAFlGFUmu2qBG8dHh6N1qi5UPOPfujFVD2TNtVI6nawcAozZ4AJfgzyxmST8H8w==
X-Received: by 2002:a05:6e02:1fc9:b0:36a:2e11:cd5b with SMTP id dj9-20020a056e021fc900b0036a2e11cd5bmr34124ilb.13.1712673494105;
        Tue, 09 Apr 2024 07:38:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:1d1a:b0:36a:3529:cdea with SMTP id
 i26-20020a056e021d1a00b0036a3529cdeals431977ila.1.-pod-prod-06-us; Tue, 09
 Apr 2024 07:38:13 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXbBsMgBBeGWyx8zXhNYPxyM7kfgoTcB4mBsuRvD0haD6w+GuLjQXXWjaOkbk9Y3669UGnc9t3Fpm47BKV5+V0jAyxEKwe7s60FFbzuU9QAdgd2qbA=
X-Received: by 2002:a05:6e02:152c:b0:36a:2669:107c with SMTP id i12-20020a056e02152c00b0036a2669107cmr34306ilu.11.1712673493100;
        Tue, 09 Apr 2024 07:38:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673493; cv=none;
        d=google.com; s=arc-20160816;
        b=kh3ktZ8zC1fNpWxvxaZvzMDTn94UvNKjcsvBVZCbj/WPeSJO4W5MkPFHx/hmDKPFfM
         YOhd0edQaKOZEEVUjHlUK+vCe/HvYlHEr7iPApQYr4sIQHNehFZNKmdLj4xt5cbCHnBZ
         OPTm0eZjlssI0IQ2Qz24CgVaFWE2WytfvhpQZZo8GidngYx/3/y29eF+TZ3ZuEV3ETrf
         1h1iSsDiRd5WpBBOlvs1KufOvJqg/yjdQ2FXOrXpgDgXnalQjnIrxmo5yYDUieiLzR2L
         dYun6G7q2IdZNyThEp70fMb+ZXPO+kVsMZZIkrf1lsOf9HjnF4HtvQnaDGb3cTtHBUxG
         GqWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nSPtk6jZGp8QvPTvzZwAvFtBB6IzSAryJRvcoMl8erM=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=CKhJXQD695EqzmAs9yPqgCSPj3Xc/QO0iUFbPj6R/X33nFsd3qSF77uSWEjHdG/ZTo
         YKJt5u6BlhnxzP2q4kyjsl4WUA3v24jA4+WAhE7oRdXYnzVsqXCy7UXAjo1fNbFBkdgF
         jIRjqGe/GBthxbAvyYyb+BCgODZV+Aue7WDQ/l6iU2mbNcNgBsihYbvm3P19szE9+JZY
         Yrcy6Q9uN63szPZ/bmx8vpuY5dwHrUM3LolCcgFhjFoO2m4/V4IQqWpbM/yYrOK4jmL+
         y2nfml5vM8+GwTrpDDhZAsT7eq/6rjKEfL99iquypTgUb+Vs2xRMp8yyweMeaDA6bQ1q
         IsvA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=oEZ55pmT;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id e21-20020a63db15000000b005cf588da70fsi8609606pgg.643.2024.04.09.07.38.13
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:13 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCbk-00000002Rtp-3IYa;
	Tue, 09 Apr 2024 14:37:57 +0000
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
Subject: [usb-storage] [PATCH 02/23] bsg: pass queue_limits to bsg_setup_queue
Date: Tue,  9 Apr 2024 16:37:27 +0200
Message-Id: <20240409143748.980206-3-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=oEZ55pmT;
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

This allows bsg_setup_queue to pass them to blk_mq_alloc_queue and thus
set up the limits at queue allocation time.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Bart Van Assche <bvanassche@acm.org>
Reviewed-by: John Garry <john.g.garry@oracle.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Hannes Reinecke <hare@suse.de>
---
 block/bsg-lib.c                     | 6 ++++--
 drivers/scsi/mpi3mr/mpi3mr_app.c    | 2 +-
 drivers/scsi/scsi_transport_fc.c    | 6 +++---
 drivers/scsi/scsi_transport_iscsi.c | 3 ++-
 drivers/scsi/scsi_transport_sas.c   | 4 ++--
 drivers/ufs/core/ufs_bsg.c          | 3 ++-
 include/linux/bsg-lib.h             | 3 ++-
 7 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/block/bsg-lib.c b/block/bsg-lib.c
index bcc7dee6abced6..ee738d129a9f5e 100644
--- a/block/bsg-lib.c
+++ b/block/bsg-lib.c
@@ -354,12 +354,14 @@ static const struct blk_mq_ops bsg_mq_ops = {
  * bsg_setup_queue - Create and add the bsg hooks so we can receive requests
  * @dev: device to attach bsg device to
  * @name: device to give bsg device
+ * @lim: queue limits for the bsg queue
  * @job_fn: bsg job handler
  * @timeout: timeout handler function pointer
  * @dd_job_size: size of LLD data needed for each job
  */
 struct request_queue *bsg_setup_queue(struct device *dev, const char *name,
-		bsg_job_fn *job_fn, bsg_timeout_fn *timeout, int dd_job_size)
+		struct queue_limits *lim, bsg_job_fn *job_fn,
+		bsg_timeout_fn *timeout, int dd_job_size)
 {
 	struct bsg_set *bset;
 	struct blk_mq_tag_set *set;
@@ -383,7 +385,7 @@ struct request_queue *bsg_setup_queue(struct device *dev, const char *name,
 	if (blk_mq_alloc_tag_set(set))
 		goto out_tag_set;
 
-	q = blk_mq_alloc_queue(set, NULL, NULL);
+	q = blk_mq_alloc_queue(set, lim, NULL);
 	if (IS_ERR(q)) {
 		ret = PTR_ERR(q);
 		goto out_queue;
diff --git a/drivers/scsi/mpi3mr/mpi3mr_app.c b/drivers/scsi/mpi3mr/mpi3mr_app.c
index 38f63bc7ef3bf1..a45406fae2629b 100644
--- a/drivers/scsi/mpi3mr/mpi3mr_app.c
+++ b/drivers/scsi/mpi3mr/mpi3mr_app.c
@@ -1860,7 +1860,7 @@ void mpi3mr_bsg_init(struct mpi3mr_ioc *mrioc)
 		return;
 	}
 
-	mrioc->bsg_queue = bsg_setup_queue(bsg_dev, dev_name(bsg_dev),
+	mrioc->bsg_queue = bsg_setup_queue(bsg_dev, dev_name(bsg_dev), NULL,
 			mpi3mr_bsg_request, NULL, 0);
 	if (IS_ERR(mrioc->bsg_queue)) {
 		ioc_err(mrioc, "%s: bsg registration failed\n",
diff --git a/drivers/scsi/scsi_transport_fc.c b/drivers/scsi/scsi_transport_fc.c
index b04075f19445dc..87b2235b8ece45 100644
--- a/drivers/scsi/scsi_transport_fc.c
+++ b/drivers/scsi/scsi_transport_fc.c
@@ -4287,8 +4287,8 @@ fc_bsg_hostadd(struct Scsi_Host *shost, struct fc_host_attrs *fc_host)
 	snprintf(bsg_name, sizeof(bsg_name),
 		 "fc_host%d", shost->host_no);
 
-	q = bsg_setup_queue(dev, bsg_name, fc_bsg_dispatch, fc_bsg_job_timeout,
-				i->f->dd_bsg_size);
+	q = bsg_setup_queue(dev, bsg_name, NULL, fc_bsg_dispatch,
+			fc_bsg_job_timeout, i->f->dd_bsg_size);
 	if (IS_ERR(q)) {
 		dev_err(dev,
 			"fc_host%d: bsg interface failed to initialize - setup queue\n",
@@ -4318,7 +4318,7 @@ fc_bsg_rportadd(struct Scsi_Host *shost, struct fc_rport *rport)
 	if (!i->f->bsg_request)
 		return -ENOTSUPP;
 
-	q = bsg_setup_queue(dev, dev_name(dev), fc_bsg_dispatch_prep,
+	q = bsg_setup_queue(dev, dev_name(dev), NULL, fc_bsg_dispatch_prep,
 				fc_bsg_job_timeout, i->f->dd_bsg_size);
 	if (IS_ERR(q)) {
 		dev_err(dev, "failed to setup bsg queue\n");
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index af3ac6346796ba..c131746bf20777 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1542,7 +1542,8 @@ iscsi_bsg_host_add(struct Scsi_Host *shost, struct iscsi_cls_host *ihost)
 		return -ENOTSUPP;
 
 	snprintf(bsg_name, sizeof(bsg_name), "iscsi_host%d", shost->host_no);
-	q = bsg_setup_queue(dev, bsg_name, iscsi_bsg_host_dispatch, NULL, 0);
+	q = bsg_setup_queue(dev, bsg_name, NULL, iscsi_bsg_host_dispatch, NULL,
+			0);
 	if (IS_ERR(q)) {
 		shost_printk(KERN_ERR, shost, "bsg interface failed to "
 			     "initialize - no request queue\n");
diff --git a/drivers/scsi/scsi_transport_sas.c b/drivers/scsi/scsi_transport_sas.c
index d704c484a251c5..424a89513814b4 100644
--- a/drivers/scsi/scsi_transport_sas.c
+++ b/drivers/scsi/scsi_transport_sas.c
@@ -197,7 +197,7 @@ static int sas_bsg_initialize(struct Scsi_Host *shost, struct sas_rphy *rphy)
 	}
 
 	if (rphy) {
-		q = bsg_setup_queue(&rphy->dev, dev_name(&rphy->dev),
+		q = bsg_setup_queue(&rphy->dev, dev_name(&rphy->dev), NULL,
 				sas_smp_dispatch, NULL, 0);
 		if (IS_ERR(q))
 			return PTR_ERR(q);
@@ -206,7 +206,7 @@ static int sas_bsg_initialize(struct Scsi_Host *shost, struct sas_rphy *rphy)
 		char name[20];
 
 		snprintf(name, sizeof(name), "sas_host%d", shost->host_no);
-		q = bsg_setup_queue(&shost->shost_gendev, name,
+		q = bsg_setup_queue(&shost->shost_gendev, name, NULL,
 				sas_smp_dispatch, NULL, 0);
 		if (IS_ERR(q))
 			return PTR_ERR(q);
diff --git a/drivers/ufs/core/ufs_bsg.c b/drivers/ufs/core/ufs_bsg.c
index 374e5aae4e7e86..433d0480391ea6 100644
--- a/drivers/ufs/core/ufs_bsg.c
+++ b/drivers/ufs/core/ufs_bsg.c
@@ -253,7 +253,8 @@ int ufs_bsg_probe(struct ufs_hba *hba)
 	if (ret)
 		goto out;
 
-	q = bsg_setup_queue(bsg_dev, dev_name(bsg_dev), ufs_bsg_request, NULL, 0);
+	q = bsg_setup_queue(bsg_dev, dev_name(bsg_dev), NULL, ufs_bsg_request,
+			NULL, 0);
 	if (IS_ERR(q)) {
 		ret = PTR_ERR(q);
 		goto out;
diff --git a/include/linux/bsg-lib.h b/include/linux/bsg-lib.h
index 9e97ced2896df2..14fa93268630ed 100644
--- a/include/linux/bsg-lib.h
+++ b/include/linux/bsg-lib.h
@@ -65,7 +65,8 @@ struct bsg_job {
 void bsg_job_done(struct bsg_job *job, int result,
 		  unsigned int reply_payload_rcv_len);
 struct request_queue *bsg_setup_queue(struct device *dev, const char *name,
-		bsg_job_fn *job_fn, bsg_timeout_fn *timeout, int dd_job_size);
+		struct queue_limits *lim, bsg_job_fn *job_fn,
+		bsg_timeout_fn *timeout, int dd_job_size);
 void bsg_remove_queue(struct request_queue *q);
 void bsg_job_put(struct bsg_job *job);
 int __must_check bsg_job_get(struct bsg_job *job);
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-3-hch%40lst.de.
