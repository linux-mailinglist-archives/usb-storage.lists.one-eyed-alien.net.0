Return-Path: <usb-storage+bncBDUNBGN3R4KRBW5F2WYAMGQE6IKCGZI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DCE89DC75
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:21 +0200 (CEST)
Received: by mail-pg1-x546.google.com with SMTP id 41be03b00d2f7-5d8dbe37d56sf5002774a12.0
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673500; cv=pass;
        d=google.com; s=arc-20160816;
        b=I6w9Yrf3C5cir/8r2Uf3xcTWAyKOUwrijJVN+tCcyjwWWChm6euusYOj959V+9lnku
         nM7F92cUaseFP/Zja3jlQ/PrXkJNtFo9FYspoayK30HiB9jMSJFN5PxrPC7JCdU2WXdm
         obLDZsWRYbwQpdXH7eiBAW/J2UP/UiJioPMtCC+vTwXwILH9L+cDx4J+TRIRQtChfZIF
         7LJhh7l8rZFXt6nBCHgcF8e1wbtNlcF1zZz+xBfb4m8rmN1Ujq02vYNjgzk6iS6kndI2
         Ycjp/vuiDh8bQM91opbl/pxs8C1syBbEWzutWq2aiHSdNdKOdgUb4gIy9IHeSw2ds6EH
         7dDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HjZpz3H0w7QWvCASjfIRLhSTVetxxm5Rhfsh7UFKDjM=;
        fh=l/sqMATbFrnQ1z+MPSEoeCGYaWvES7kiYPprBEb4c9Q=;
        b=um5dcFAPmDso+cwF5qztUI4CkK45/ggPPHpXPv3ZJDq0bd7ruNOR4L/gnTV5afcPF8
         vyuuM1JPM32a8hsflY9rkoDipCuwMEoNikcEn6BVRdmxoUZcBDvnzy8LqW4If66jYIbq
         T0VguPaF+F/dqZpfpOLBe8XtYjh6i+jcyNIQEBLrGJ9czJKejsAxcYgyn/pQnyMhsMIE
         BuAqQjFwAMdBlAC2z6gmDcRVNdDA4e3vZUlzTOVrrC70odE6F5YbfhZ0U1z4mxlH0yz5
         QS5iy62ufiXI5aPAEowZtuYYxAwgK1g7UMzMLbOeSeC5uHsJijazlWOY3Dogn23aCzZX
         HDkA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=DjG6fbyj;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673500; x=1713278300; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HjZpz3H0w7QWvCASjfIRLhSTVetxxm5Rhfsh7UFKDjM=;
        b=hsZOHG0whRdgk00qv8M22eG6j9vyxNfg574X6xauVk3u0rEMfLCsdzw6o8T00xlZ6j
         H+vLnGmGgjOQXZ1LPSXXHeb8334eP8IKQ5i/iN/rliIvBWPEqvq8zqxgV+Dx3tzw8MgX
         38lcU4aWZQbxTMLvgUTTeM11UE1G3KVdOOL1I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673500; x=1713278300;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HjZpz3H0w7QWvCASjfIRLhSTVetxxm5Rhfsh7UFKDjM=;
        b=m8juQQqA1qIAdpkjg1II2lXTAJx6QjzWJmcqrVTpxtbxpq33adikgIc1WTrsRNCWXa
         1JYhuJzHG3RfTQNJ9BqE0xag9Aun/t3ZYctiUqAT/MenB4CYl4NKcrWicntobOKhWtVq
         W6ViMqt8AqHI75dJPvknh8h9F1XFZkiHb96+JhfPRogI2a5S4157JHDYKt1gKqT3R/2d
         Cjw7GWJetm94aBool/eEwLldEApTszMmK9XJkxikWJ6L72H5a5XNCbuq8/AAcMKmHU8Z
         yJHkMcS+5IfLRmGjYkptKAjzG+K56iLiSeLZoDn1LFd1mFCSIq5CWqpdJT8oNlvmIf5c
         UoMQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVDo2gPMULmnr4sCStXoADA8Y9obkMBYABhA2NE8o88lH6Wc2akLBTR/CYHQxxRIYeupDkfBwzi58tpzRc6Dh+32/3hzr5aOcQL
X-Gm-Message-State: AOJu0YzuoXb7MCJrAxE5rHBfprt9KWWF55YVWSdCr1/DI/reA090gFC5
	DWrLFJeVY2eoloEORYic8ykG1MtITGpMOn0Nwibtf9zx6qqx9Fl1DieE7dlWwdM=
X-Google-Smtp-Source: AGHT+IH1IcoBr1SomwRMV7VgM6F/qFNwfSENUyQNjB0/91GfQnDVMSgF+61g/+81Ic+eejtjrIFgAw==
X-Received: by 2002:a17:902:6546:b0:1e4:ac91:fe8 with SMTP id d6-20020a170902654600b001e4ac910fe8mr1339519pln.25.1712673500156;
        Tue, 09 Apr 2024 07:38:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:d2cf:b0:1e2:a5cc:a25b with SMTP id
 n15-20020a170902d2cf00b001e2a5cca25bls3410813plc.2.-pod-prod-02-us; Tue, 09
 Apr 2024 07:38:19 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV6A9zexqV9OgdItFbkWWz8EOutD4nCQrvbbP+9BTpVqH31/medyzhLzJJ/O/3f7N43XkZSOSBufjTrjopPK8UfwrJeG4f0lgimkiOOeGMSgRLxqVA=
X-Received: by 2002:a17:903:124a:b0:1e2:bbb5:e2cd with SMTP id u10-20020a170903124a00b001e2bbb5e2cdmr13466552plh.54.1712673498917;
        Tue, 09 Apr 2024 07:38:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673498; cv=none;
        d=google.com; s=arc-20160816;
        b=SBd1nzX3OQc0djLt1JcQyzimEpU4BPiYti1vMhoHrCIIZhkRd9OGDs1T9glnfKYJx2
         5xtZANGckUPLY6eYKNtkk7lKnWqk1bmR7ELlmIAJhkNP8BNYzmG96iXPicZEmnhqZOFo
         nkHRK4OkLBvGpEY2y4gSuFO94wmxxDI8LbtZmCA+1nOaQjE6mYY2w+yY+UuX+brG5/Ei
         plAzwkWYC2HQ/sHY77gCmbyA+LMY4vReekDVmrkL1kiElvsFwzw/9Sssa+ptk3mWf4Le
         Ae8jXujRZHi/dWD5AKtHXYy3oIlraOVfSMRcKVHL4LlEY28O1mgqeLDYb7BnBilTTMRD
         60pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7ZXKpZzchlXoMLoZUsfvLqx4ZumsCDkz9Eq9LdEOhu4=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=prUYoXRp/n+QZPCYHnYrOEdDgNxJlJ7rLyQ/z+mFNvpy6toi/igugH8rC0cc1uLvCP
         DXPFgUM5hMyqQcvDJ74vW/MKf5/GxfiFAEucU+HhkSaCSHn1NS5q20BdsjFIm0v1L9r5
         pJWFgNVMbbFhx5Da4yEiXHWRHWkUbZuOq/YbFI2zZ1Oczs65oggmuecmWCavTbuAxgHh
         KYH+Pe4U4ccigdSa6R3UCXDxSYQ/oK4hsYKl16kbqfciEznOBtVE+AN/ioekEctRXSVv
         /kudifMJTg84djt5QrD0c4LWnq6GaW92SbN8hsurTXsxbnoVWY+ObvhgWdxG5mTsDBnF
         RnNg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=DjG6fbyj;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id i11-20020a170902c94b00b001dda5fa4c9bsi6662020pla.257.2024.04.09.07.38.18
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:18 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCbs-00000002Rvr-0VNm;
	Tue, 09 Apr 2024 14:38:04 +0000
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
Subject: [usb-storage] [PATCH 05/23] scsi_transport_fc: add a max_bsg_segments
 field to struct fc_function_template
Date: Tue,  9 Apr 2024 16:37:30 +0200
Message-Id: <20240409143748.980206-6-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=DjG6fbyj;
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

ibmvfc only supports a single segment for BSG FC passthrough.  Instead of
having it set a queue limits after creating the BSG queues, add a field
so that the FC transport can set it before allocating the queue.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Hannes Reinecke <hare@suse.de>
---
 drivers/scsi/ibmvscsi/ibmvfc.c   | 5 +----
 drivers/scsi/scsi_transport_fc.c | 2 ++
 include/scsi/scsi_transport_fc.h | 1 +
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/ibmvscsi/ibmvfc.c b/drivers/scsi/ibmvscsi/ibmvfc.c
index 05b126bfd18b55..a3d1013c83075c 100644
--- a/drivers/scsi/ibmvscsi/ibmvfc.c
+++ b/drivers/scsi/ibmvscsi/ibmvfc.c
@@ -5541,8 +5541,6 @@ static void ibmvfc_tgt_add_rport(struct ibmvfc_target *tgt)
 			rport->supported_classes |= FC_COS_CLASS2;
 		if (be32_to_cpu(tgt->service_parms.class3_parms[0]) & 0x80000000)
 			rport->supported_classes |= FC_COS_CLASS3;
-		if (rport->rqst_q)
-			blk_queue_max_segments(rport->rqst_q, 1);
 	} else
 		tgt_dbg(tgt, "rport add failed\n");
 	spin_unlock_irqrestore(vhost->host->host_lock, flags);
@@ -6391,8 +6389,6 @@ static int ibmvfc_probe(struct vio_dev *vdev, const struct vio_device_id *id)
 
 	ibmvfc_init_sub_crqs(vhost);
 
-	if (shost_to_fc_host(shost)->rqst_q)
-		blk_queue_max_segments(shost_to_fc_host(shost)->rqst_q, 1);
 	dev_set_drvdata(dev, vhost);
 	spin_lock(&ibmvfc_driver_lock);
 	list_add_tail(&vhost->queue, &ibmvfc_head);
@@ -6547,6 +6543,7 @@ static struct fc_function_template ibmvfc_transport_functions = {
 	.get_starget_port_id = ibmvfc_get_starget_port_id,
 	.show_starget_port_id = 1,
 
+	.max_bsg_segments = 1,
 	.bsg_request = ibmvfc_bsg_request,
 	.bsg_timeout = ibmvfc_bsg_timeout,
 };
diff --git a/drivers/scsi/scsi_transport_fc.c b/drivers/scsi/scsi_transport_fc.c
index 0799700b0fca77..7d088b8da07578 100644
--- a/drivers/scsi/scsi_transport_fc.c
+++ b/drivers/scsi/scsi_transport_fc.c
@@ -4288,6 +4288,7 @@ fc_bsg_hostadd(struct Scsi_Host *shost, struct fc_host_attrs *fc_host)
 	snprintf(bsg_name, sizeof(bsg_name),
 		 "fc_host%d", shost->host_no);
 	scsi_init_limits(shost, &lim);
+	lim.max_segments = min_not_zero(lim.max_segments, i->f->max_bsg_segments);
 	q = bsg_setup_queue(dev, bsg_name, &lim, fc_bsg_dispatch,
 			fc_bsg_job_timeout, i->f->dd_bsg_size);
 	if (IS_ERR(q)) {
@@ -4320,6 +4321,7 @@ fc_bsg_rportadd(struct Scsi_Host *shost, struct fc_rport *rport)
 		return -ENOTSUPP;
 
 	scsi_init_limits(shost, &lim);
+	lim.max_segments = min_not_zero(lim.max_segments, i->f->max_bsg_segments);
 	q = bsg_setup_queue(dev, dev_name(dev), &lim, fc_bsg_dispatch_prep,
 				fc_bsg_job_timeout, i->f->dd_bsg_size);
 	if (IS_ERR(q)) {
diff --git a/include/scsi/scsi_transport_fc.h b/include/scsi/scsi_transport_fc.h
index 483513c575976c..fd039306ffbb20 100644
--- a/include/scsi/scsi_transport_fc.h
+++ b/include/scsi/scsi_transport_fc.h
@@ -709,6 +709,7 @@ struct fc_function_template {
 	int  	(*vport_delete)(struct fc_vport *);
 
 	/* bsg support */
+	u32				max_bsg_segments;
 	int	(*bsg_request)(struct bsg_job *);
 	int	(*bsg_timeout)(struct bsg_job *);
 
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-6-hch%40lst.de.
