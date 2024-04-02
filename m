Return-Path: <usb-storage+bncBDUNBGN3R4KRB7EFWCYAMGQEYCYSGVY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 26403895434
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:10 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id 41be03b00d2f7-5dc992f8c8asf3956940a12.3
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063228; cv=pass;
        d=google.com; s=arc-20160816;
        b=KZSlPFjrZI2c3NeswFxJ2m5Vc8pDAeHAKOENkRVog2DCZU4MZE5GRd0+fHqlshRG6D
         0DJIZKUoItr1vK2t29AQKp84ea7lGVBwWVxnvf7ZniJLf3Y7c3aS3latotTPAj1VEd3k
         9jZPP6hORB0dUkmgfeJ/VYvKRXyA1UmH+8hMyE6Cg0FjZIwFe1O1BTuvuAkT5zdhz8ex
         csY7np/TGkHTcbmTJ4BK8NzI5KwH+zWFVoAnlDNMjkwu/fVQ/4uk16eSLjSBWoxH5REo
         i9txapBTPx0QC9nVUwze2PewbKH7UXXR1g2CtBA0/tHlEtKSQw5vSgMSbAMjVxxzuZAX
         o6ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=P+Yc8GnDuLaRtRxISzxxe5sFPOwctLPAGK23Eqc9VMg=;
        fh=v3DKRnlTFD8td2JJ0A+kLMwJwL+TrKoQmnPtNqt1GOM=;
        b=TI/NdajwriZ2LF2GvdvdXtvx3iUWvDebFB63Cb9SOvqWEKP9v8fQNGmd0olrc6gdpg
         BsV2uN3FfOO0Uw1Kl8JzZPODTh+2lNbY+oHloYPb33xzwyiE6rIoSIdzirjM1MBksh0S
         2rb838Kc2QsL53s5isFTetScZAskh74eAA7Z559kCTX2xqpHgMYdn2KMkQm1iQVbS8AQ
         jdTbFbEGUft8lYLyriAi2Cy0p1GygHm+AXWvJCmEGa/5npDlPJrWpvE+zZSLzB+360am
         /8mmap5jFaSxR3fOpQpxNL1Sn3MVZQ4g6dejt4YB/QFnkx/VDOCPQvz5GIU/ibMoZq0x
         XMVA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=1LDi0Lo2;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063228; x=1712668028; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P+Yc8GnDuLaRtRxISzxxe5sFPOwctLPAGK23Eqc9VMg=;
        b=R+SGKPxHxhEpFNeZBDnajBEsXsdc8yWUL7hJ8akXilhKyoPasJerXNxKDadkKc7+mA
         zx6GLiLaRxsJ0YZQf04bbbEj/qJ5uW2FH8SBAXbo2HcEez8AnWVELtjsjZHGkBLwIlN1
         gvNNR+uP/3rcTnUGQMUYOJmlwQYK6hSatYYB4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063228; x=1712668028;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P+Yc8GnDuLaRtRxISzxxe5sFPOwctLPAGK23Eqc9VMg=;
        b=JchKEVOdZ7r7nxTxrdUA5CGZeEk1HbmJhEEEnNSEI+QNh13axp0HGuqcxyYvjZhgp+
         EB1fPIXu+eaxqLyh72VYC/ADAPQNrVsYDgh0C8balIRszrTPmskN4FEAclqEEdkeQsTy
         nScYdzROzDv9xgeP+YHsCsAx1llZMZk7lV9wuhRTZhsx49FE9FiDK6/Se0F2K3Pkr49X
         KrP+YH4RWDfECjPmUqkL+tzcIT79sNMvtTyMPwZMQm/RwltNEjgv+UOYaEcalVstg7L6
         E12bkoFIsIn0lVaCxURKIRG30dETtK3qPWu753qZYwbJjjDOXmrNUxTDtel85f91OWoB
         0w5A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUht8aZy4Tn/0EW1q6g1j4ICvFNE1uDiHTSYQAKREc2t7Zpf/Zgsg3KyoOoIIBWoHThPQbRoEL5iyY7g3lz1KSWcykZC22Wo7W1
X-Gm-Message-State: AOJu0YzkXTtUJ0wKGckPwn0xQBhsjoEkzpXauyuc3klPBp/ZN1fopXQq
	/7gSzS4CDea9HgPu5tAcll6PRPex5Rw2/Po5KUj+7qQ08184L/uGg9ld5pDe+h4=
X-Google-Smtp-Source: AGHT+IHXM/ThR1I5AvEalacxQB5kmiGWSXSpkNabdW6XFRSRBQrlio+NucBilbzuHWlTX7djegLEMQ==
X-Received: by 2002:a05:6a21:185:b0:1a5:6b2a:c5de with SMTP id le5-20020a056a21018500b001a56b2ac5demr11710309pzb.47.1712063228331;
        Tue, 02 Apr 2024 06:07:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:2d98:b0:6ea:a54f:b92e with SMTP id
 fb24-20020a056a002d9800b006eaa54fb92els2891847pfb.2.-pod-prod-02-us; Tue, 02
 Apr 2024 06:07:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXyLLQLxZfl8cJ377SKDZvLC0vx9uFesgEJT58cwaAQNqZYAoKxBG5myXHAJlsZIqJWgWmTXJAwcZhL8mLIZBXQDHgtBe966lnGvLhRWwhBzOVPsdY=
X-Received: by 2002:a05:6a20:8406:b0:1a3:6364:bd10 with SMTP id c6-20020a056a20840600b001a36364bd10mr12282600pzd.49.1712063226958;
        Tue, 02 Apr 2024 06:07:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063226; cv=none;
        d=google.com; s=arc-20160816;
        b=oA90nryA50sImyZjqAYyB0xHgv3JlOeZ5AoZVQc1U2aOLYBosueiF4Ma5tj4+lwuKM
         LVA8rjNvMl+nkFcDHRYng5hJ5st+PMwCzEawLgxv0UV/KdOjwcRZ5HuQPtXJ78iPNfzl
         Mlk0Y91wJCX4vFaiuAnhYt8WdE2BnGWqL8txxUxsF4iyu2iu3nUw8y+fkVhPAi/A1DsH
         i6kcY4lT57jO9YJdoVjKv5hA2XCikIjNdVgKJ4+7vTNp+emp1tdgM9Ij7x6ZZIyvQqxS
         ftvTE6/KV49NmFesXqvMZR8d1QObsIxZM3MfYXC/9WPbBBisjceLDSnzBrfpmxVt6XaI
         uf1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lyFay2MEWHGjyJkVgKdY3+4m9YXmReiC41jMUT85tAI=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=en+f0mukkPDqN76OFfPZCYs5Vfm2e3wqRaBpnWtjEiv68ZgDpG7iNftM5P+5ORY78M
         DNe8gB8Homtvx/8R0J1hJSKmSDUXQ5RwEGDCiDONnygaRrtE8ZZGXtIH283G1/Rsr7/Z
         EwUPtLbODha3TCeTqIxMWn3REvgRRM5gB9CgkqS54w7KNuiLzil0tSxNTd8chZVqnD4Q
         8uIJtSjlqNY2HQRyfFC4SnmMQIVgjmqeYbv+yVEXq0M+/6BVdDZnpqdHqXlDLhOcaJKt
         Avb/OQm9GGUS6zYhutmStQtL1J2ioWUWp/obKD30+2tsErVxhuF+2NJOmcQsf4vEQMKj
         22OQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=1LDi0Lo2;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id u18-20020a656712000000b005df469b4f7asi11336188pgf.489.2024.04.02.06.07.06
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:06 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdqm-0000000BFJv-2anh;
	Tue, 02 Apr 2024 13:06:53 +0000
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
Subject: [usb-storage] [PATCH 02/23] bsg: pass queue_limits to bsg_setup_queue
Date: Tue,  2 Apr 2024 15:06:24 +0200
Message-Id: <20240402130645.653507-3-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=1LDi0Lo2;
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

This allows bsg_setup_queue to pass them to blk_mq_alloc_queue and thus
set up the limits at queue allocation time.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Bart Van Assche <bvanassche@acm.org>
Reviewed-by: John Garry <john.g.garry@oracle.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
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
index 55d590b919476e..ce5445eb9d0e4e 100644
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-3-hch%40lst.de.
