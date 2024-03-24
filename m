Return-Path: <usb-storage+bncBDUNBGN3R4KRB4H2QKYAMGQEKZ4SUKI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x48.google.com (mail-oa1-x48.google.com [IPv6:2001:4860:4864:20::48])
	by mail.lfdr.de (Postfix) with ESMTPS id 683698882BA
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:55:30 +0100 (CET)
Received: by mail-oa1-x48.google.com with SMTP id 586e51a60fabf-22a2b0d0f7dsf521189fac.2
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:55:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324529; cv=pass;
        d=google.com; s=arc-20160816;
        b=ImdKebNKuh4tPziwLcZyCiPj6UOj1k3qqN5CEXFwJdSp5dk1nW3jOKX4xaf4ooExE/
         Lmpdb9EwhGFcAuniGXTraAZJj/ww+mBstxWpxa9QJdgCWXAOYfuWNKJ4GmJx6oUc9OXU
         cJT4xlbQcxbb/I7OXf1jAl0g0Xkbdmcc/51KtID6Smnk7s8Uk2VU3uCNB79zy6cJ6SPp
         24j+osUsSI0gTNYtWmqX5Py6toYafhkn63Rd89PmC7BCEMk86Svs+vKY2+EXSbnYJWq8
         lHSgIkoUqg3NOHMf9VQCfMecNEAm/zU3XhQLNC1kch/jg43x4NWvHoYcF+SZS6FfFtye
         b9Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=r2hi7rm+zPALKkRmnfpQZHHPixVsT1bSbW26S1cWdTY=;
        fh=UWt+UGOLsI0LX0CK6Y5DhKecQUMVXeRc4ANmuwQKVto=;
        b=mn5uBf51V5GfE16cs5jmqI2Y2ucjO8a/jA7VeXew+OWRbv64CurMSWIfk3oN3jEMLx
         f86ZBFemyxjgR08xC5tCD5TpIEB850AGpVhln2Zw1N3Y+JMpncNdLbsoOQEZ+M1hsD1B
         /YdBG/jzqiazF25M8RgJTbRfxaUfYyVU8x4CLdUtCc5RU/SQif3Ypo5hV8148dxfjnsF
         d6P/rI/+0awitAJqEOc1OX5wr1dGFFEkKnkgFMF2k4g/i8PMPj4jdDPXbindu4nfy2qS
         QjhTTGx0uo0CBCeqd4xUSgh9pjBALdonZlLW2TIEE50HT6Mo0SdVMIVMhyV/tRxCLgZm
         pX9g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=uTzehiaV;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324529; x=1711929329; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r2hi7rm+zPALKkRmnfpQZHHPixVsT1bSbW26S1cWdTY=;
        b=cJj9Hc/5O7BVX+fheH1WCYMOVIX6pFBV0zjKV/dhuDGE6zFr5dDJdHr8LoUWOAo+7q
         1INRtTkFLjjIMqzOm0H6Do52oR/jKh5EXRZ6fwqquHTb3WqUW+XXkeVzIUlgSlhhUT7H
         GcqJu/+rORQu7G4qM09VaNo1SdVuFkE+ChmSg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324529; x=1711929329;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r2hi7rm+zPALKkRmnfpQZHHPixVsT1bSbW26S1cWdTY=;
        b=EovILCQyc4Pa4fVDKDktP3M0GL9N4FniDOe4+PnSzftOYLS0RftsBrLdYYVAzOidRa
         yF+WmmUIeL7BEIrBswvSsZIaK2HmoQqOMULRw9GrPz+Sqw/M/EyyMmSKLOfOCmwQ2uyb
         R0sa6w+pH0H9ROWb/lHKthrjKJN4Yb0QgEFhqWRi+XLjBFqkwvAeHxqWCTGfP1UCRWD7
         WwDEYMbD8Mb+wQxP0YvltzPKQTeIkLjG8aa+uL2HkxjYOuY9Hpq4NoEVRsDT7WvfgCda
         Nq478Aq1+qLRPfEMhM2OYbqQ1EIgYVYutB40MU8vcooFW5W0FneACznB1C2wGeeQUEt0
         ZRbA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVqCWh6bZFn1krInystp34mGiPpbKMycMJXGn4eQZ03W37WVEDHLPg7YUl+eR4nL/+h0ujuJlwXl4Ppuk9eVff5VMXywNqWgal/
X-Gm-Message-State: AOJu0YzFIwLEuPoM4Vig8LONHEltg6n/CDhtip8GKu8l747uW3263exe
	4ap9ilbNnsDyD6VSWnDFn2l/0eIPkoMNXuEzIi73zW/nCCQAEIHBV/AYTlYQcdM=
X-Google-Smtp-Source: AGHT+IEHlY8zb+ETAb6RF6Noo5ChQSSSuma7Wp/+4YI2JOM+uNjo3kFCg/Pus6WnIr18r2QkpMJUyQ==
X-Received: by 2002:a05:6870:a11e:b0:221:8dd0:9920 with SMTP id m30-20020a056870a11e00b002218dd09920mr6831032oae.47.1711324529098;
        Sun, 24 Mar 2024 16:55:29 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:7896:b0:222:6d59:56da with SMTP id
 oz22-20020a056871789600b002226d5956dals2819835oac.0.-pod-prod-05-us; Sun, 24
 Mar 2024 16:55:28 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWqyDai3XiygDF1tkkdU6lp1Bf72QcpFNUtgk3HHhMLLI9spgRqO1AdMfjGx6pP+3Y8Nu4dHgxcYKimh8Cucczf1VrrkagA2Z7QuAOn2nrYGo4Aa4o=
X-Received: by 2002:a05:6808:17a7:b0:3c3:c560:b1d3 with SMTP id bg39-20020a05680817a700b003c3c560b1d3mr6486873oib.32.1711324528333;
        Sun, 24 Mar 2024 16:55:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324528; cv=none;
        d=google.com; s=arc-20160816;
        b=bEtpYect8NsrTgmRQ0ePqVH4vi3VDkrTxhZG4f0nSOG3Asd4z06RPJGYXEjyCKsLqr
         Q0GHZ5p6ebtDnNsw7QCqVfU8oyxo3FdIvkzER2tM5laK+Hoe3JlvC2GAOQCXTdhc7j7N
         XNNtOeXGPaO5l/vzT7H/o8P4/L0UcCeVJPIpAoT9KV5GnPE1qB3MZzlaKgU8qeqUGNPJ
         DnI77YuBYUJBhIcnMDsyAIfEaggEKp7kp6XuewKfEg6VSHh79WsUGqe9ex+uXUqKHkKB
         snTfp//HbGRKPPbRDGq7NWz6By0GoGQlGtF60yKXaXGRYLSOmujIuY1sGFj1nJ5hNh7O
         J3SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nvdQfwJLbeHnAUQyn4LV7PgOkGPeM0Gg8xt8AYIC3uU=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=OtFzHaPN4GAHPUN1CcI9zJJwpKOZA0PElLK64W7fqUeaAx9QYlmldzJ88GZJJP4ZMB
         rmHwm2MJzn7aHEVzFuxnmRE0VYRl0iuZ2LIaRjT0N7kxQAeTsKXcq0rTvbea7ruIuQae
         oUrgj7VneubEInO/tUR7HzEe0+UtxE2BP5nhsNVop5C05EEskaftZWf1p2cUKxewm9wi
         WIblCexDd0G3+gQJ+pOFv2EcPBwz2BzytegJ//ClSsZIpVyq+LQ8zXmyD+2UGikZ4zb/
         /GEykybB2AiB6cq1hC7JWR+KhVBem+XMf55vKxCr+F1RHzXaDsU6GytUa/mozsacHT7S
         sPpA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=uTzehiaV;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id o28-20020a637e5c000000b005dc4b244601si6648387pgn.522.2024.03.24.16.55.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:28 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXg2-0000000DzLn-1sTF;
	Sun, 24 Mar 2024 23:54:59 +0000
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
Subject: [usb-storage] [PATCH 02/23] bsg: pass queue_limits to bsg_setup_queue
Date: Mon, 25 Mar 2024 07:54:27 +0800
Message-Id: <20240324235448.2039074-3-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=uTzehiaV;
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

This allows bsg_setup_queue to pass them to blk_mq_alloc_queue and thus
set up the limits at queue allocation time.

Signed-off-by: Christoph Hellwig <hch@lst.de>
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
index 0380996b5ad27a..0bac3f49d8057d 100644
--- a/drivers/scsi/mpi3mr/mpi3mr_app.c
+++ b/drivers/scsi/mpi3mr/mpi3mr_app.c
@@ -1853,7 +1853,7 @@ void mpi3mr_bsg_init(struct mpi3mr_ioc *mrioc)
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-3-hch%40lst.de.
