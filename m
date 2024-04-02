Return-Path: <usb-storage+bncBDUNBGN3R4KRBA4GWCYAMGQE2EZYZVA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6B689543A
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:16 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-1e286a919d8sf834865ad.1
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063235; cv=pass;
        d=google.com; s=arc-20160816;
        b=HKVSiirvc+dMw+zlElfegWTXlR5e6RUYkG/GhqWKXHC6D3nHRF4uJw61pzvAG6Qdhd
         fbSm9zkbLi/FFGk8Qlk/YYY/iga69A0RM9YmLRuO/GsTTYz7myjg1MQRNXnYghKfZq1b
         7CfoFzFrp81fJ5M1C0lt3r/SojXkWIDWq/YjnndZ+tVFYW3uj7nWbDb/QVlxWmcZWUNg
         i7gXqhHqjYGl1XKYgQbmox0YeQrB8yfDI/oRh823Gh3jMULVoyt8F2gL+8pCDi+zaDxk
         A6teQuLVU521CtAHSBnPDc0KlGuwgoeK8pwJpMUcj0ywBRmJ8goFA/h5pn6QyKSZb3gA
         /Zxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=l07bigL2Ku5MeQI58ks5knMtlnJxIL0Huaq+44x6Uvg=;
        fh=sKpFegAYkWjNLcZlSK7bh+CDrm/qqJuSOHFJT96F/ls=;
        b=dZNyBX9EWcey6WMIEwFKDOHx45/XQmoOHpMSd254MQgWzs0jpPzNldliwIKo4qiZMk
         pcnth4QFzrWbnQPsAGYap48hBXV273Z6JsgMo2avw8W0c+rNV4Nh5LAR7ABy8QYhcNLB
         xBU1Znt13tvUZisXPrhKkdxVV0JC5l/viiVSjWZ/sC+Fh9w+6LgFHKzmGTBi0ueBK59o
         kkle5Tq7Xqt9vJzZK+fOvNKP40sK1CU3iAO85YBuZoIZL1cE1PZ+mlLo8O6Qoe1uvmoS
         ODM8i6SgkmgS3Ta2bABm6ii8fitRT7Is7uesGxiAiGTwoERWq8ENclLzxKRdO1uiiqyo
         YTAA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=0e88JAfn;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063235; x=1712668035; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l07bigL2Ku5MeQI58ks5knMtlnJxIL0Huaq+44x6Uvg=;
        b=IBzbC/LEGTadtwMGyS65TEnEoRclCe0zjJPfgQoTX5nCpUryuZR9j1PLoKiZE/BzHW
         LE7NUgeQF3nJhevcOFV3jUx17UH3daFe1vGJEU+ZEZvr+X8q2XQt4yRxaFQLg60ZlhHf
         mPV8BCBvY2D/+/CueUgPHWjf2XhQL19C0eqaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063235; x=1712668035;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l07bigL2Ku5MeQI58ks5knMtlnJxIL0Huaq+44x6Uvg=;
        b=Kv13oHESRnGI2V6B4I8Fyj40/FrJ91zFcW1lHmVfOfSD/G3i7f2vLmdtBFWGXtrSL8
         CzLWYgWCHJ7/kS7D5c1VA7Z+YBzauej8u+v/su3NUysORdQL0ODerAX64XRm0E2MDP/Y
         IXdEdlDjPX/NoqIZ40ofbr9zotpdVUqI1iDSga2jUP4+l9HWL7c6W/L2diDKhDEUtZqT
         GScmLp4B7LSETZGDKSpJUB/egU02Bhcgs2o07MQeCLoUC2cpXrjvwbyvnlfZVJx1EIrl
         oFzRupUvdKcwTh+T2JSVb1XZbvP/quf+epka3Q+jOLbtwPOe0eilXWXlrOr5PG5qVEZ9
         z/3w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWGRowbFR8LWG7Ny+yVxn495rfeDWgoTAwn/L2drptEzwUHh8rqf3ISI+g7zKzZxvUlfeaj1EPDEkUTKh+/fChFYPoPMElMAy3w
X-Gm-Message-State: AOJu0YxmfCWhJxxbgkMeldGRYHIvaG+AU8bxkiR0DA15yGdpJbGWarI7
	cKrDId3WSZPN2aCLWs0wSOKqMJz5AYyH1PIMZhZqsAb2MZWWITid+ui/mMuVpmQ=
X-Google-Smtp-Source: AGHT+IEgBX6Y3MchtzJVKH9EVVmXTiv1HwkrnZsz9GqML4v8MpZhcbBLq2SQpSm9XAw8P4VRQvkhrw==
X-Received: by 2002:a17:902:f54a:b0:1e0:c3b5:196 with SMTP id h10-20020a170902f54a00b001e0c3b50196mr23936920plf.20.1712063235433;
        Tue, 02 Apr 2024 06:07:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:22c6:b0:1e2:408c:6df8 with SMTP id
 y6-20020a17090322c600b001e2408c6df8ls2635706plg.2.-pod-prod-00-us; Tue, 02
 Apr 2024 06:07:14 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUrJ/pOFsKK6Hny8PZZ/LazSovI3z/WmcZXbeqIz8TNKizd3On0TdRLW0CvIQRDTSYXwJw/QFogs9ABPdGNx65MURdTesFa8tRCjOESWduyUSBauns=
X-Received: by 2002:a17:902:da8c:b0:1e0:d09d:ea59 with SMTP id j12-20020a170902da8c00b001e0d09dea59mr18279218plx.31.1712063234253;
        Tue, 02 Apr 2024 06:07:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063234; cv=none;
        d=google.com; s=arc-20160816;
        b=Yzb+VYphPKEcEJV2VLuDwoIIMiEr0zpRyLLGFnGBtxdoguqQfsEOKUVRM2UXQjpePw
         DL1zgivdgT715TnntYNXOjPzh9iz9fXNiEKpTnCc8FtpQ3ofJq7z2HoL9LXFkRj8oJC9
         2PBKY/zxdRMafrfGhVpd/sH/Qm0SGF/m9F5hE6/+/yzNT9zTDOJwZWL2jcEjlq6lGeLF
         NnRyAOka3g+pEQDEIzIS+EBT0T4mytXDbX8VusSKfSHcU99vKVSJjrRof/lIm2CgSq8o
         4DIo8HfFVp8YMFahwedA35uS28ePdRkbAMc5DU8WfU4AFRjtS6xKpYYjUNmz77eCzWXi
         zALA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=p5X2PaxxYoyr+dxLtTTLAIf/1GAJYNRYTlreOACgm8s=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=HVJPFdPVDt1oqfAYcRZrUGyBFKkK8scMCCG1YS91iSQ3enLjewbaG0R60Ru5manGqI
         ZE6LGPH7MSmdszs6H+JBpp5/jz+YT7VCG9gEf1cjTn7TCexudyXuPWD/wNT4aipwkj0c
         ZSv8Ubpay0Wuenmi0or8a+OxsV0ykgC6/03AoMYYB42G16AVkrK+1c5NtPSiHc2uqokD
         3IIGpIVHF1wdatOu96vmv0d3W2Vv8O2OOPzMlgzsHSUNr8t4HsJEktGEYbMazD7Bnt34
         C2aWn9ziMFxHs4MgCHT7OhfvfKvUEUasjLQ0QEHNVUEIz+V6kZyx2zJQV/tdTRqInyg1
         Wxaw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=0e88JAfn;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id kd7-20020a17090313c700b001def230864csi11301072plb.82.2024.04.02.06.07.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:14 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdqv-0000000BFO9-1FZB;
	Tue, 02 Apr 2024 13:07:01 +0000
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
Subject: [usb-storage] [PATCH 05/23] scsi_transport_fc: add a max_bsg_segments
 field to struct fc_function_template
Date: Tue,  2 Apr 2024 15:06:27 +0200
Message-Id: <20240402130645.653507-6-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=0e88JAfn;
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

ibmvfc only supports a single segment for BSG FC passthrough.  Instead of
having it set a queue limits after creating the BSD queues, add a field so
that the FC transport can set it before allocating the queue.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-6-hch%40lst.de.
