Return-Path: <usb-storage+bncBDUNBGN3R4KRB572QKYAMGQEALF2BOA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 9863F8882BD
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:55:36 +0100 (CET)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5a51278547bsf3077063eaf.3
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:55:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324535; cv=pass;
        d=google.com; s=arc-20160816;
        b=ETy2gAs5HaHz3hj8Y+xvo99QJneqMLmx2iZLrP+PDrliTBa6jtTyrD7Jau0pTmLcNR
         B97RQhQXs4SzfZXQe9FY49jprFtzdLiRBi5AKlzsBqWUYPoaSeKLMnhfyeFV7EB/Tc9T
         9cclm17lXfJTSLD5F6ryeO/lBbTOMTfl6F0VNEXbo4MhpxaFRAXhxmpc+ScFxrFXFk4i
         OtQ1W4Zya+C4099EjaKYEgTz5Rqicj1N/d2W7g/j0+HfNEPoJhojhM/OAIgrJgQTdbqt
         iZBxsw80sv3pfyvFjux5JqWVjt5wFeZ1cmo8r/dD8OQemqQn5aVEIdnc+462nknMQ6c8
         3BCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2S8UJGlwfNNOJT8XAkFCA7EbaoHzqwmqp/T2DS4N5NU=;
        fh=JO/qRLVUwRpTy3L4ZSXjZkv5E1EJMYQ7/UZuMHmWxtc=;
        b=XaA2ScSZzCIWtkznKN4Z8G5m5R9CC40IxYmC4RiFdRd30SxsHn4PNdNyC8cK5Id3b6
         rk/kKbG99Uhp2y2VuepOoEb33BaHJpr5HZQ1L0tCc8uCHUBxs9USCdP6D39o0LSg2/OR
         HWksIQumU3yuupsmhY4fbWH+sRlzJ8LLCUAAjaD1cSkG4gDSdJD79xrouVi5I0tPsYpl
         ZcVsHflTFmbyvBMssrHoapw0P1+c5NfpFec5NFh6HGqvY+Jbq5cyitTgTi58V7nnpstW
         G9z5XLDjnC/aDe3VrwE31o2PuxsVLnI+FrVEbA258OVYqgW5O/ZOvr7gklqj2mFrou5c
         vNhg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=Q1Gh7k6V;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324535; x=1711929335; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2S8UJGlwfNNOJT8XAkFCA7EbaoHzqwmqp/T2DS4N5NU=;
        b=ExbDSEBne6ZluaZK8Nqcgio+TNYKN2D+5QmZ9fXA0/raLh9j60dTVzjZ2YWPkusrcU
         NXovL4v+mSNoN6zAbM8B+DNkG/u9lAvzXAqeIONuklCw16TVmc/flspMXAMU2Hmu7Tb/
         y6rmTd83GH5VAs9QqptmYNu1sxvGisIwLsc5s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324535; x=1711929335;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2S8UJGlwfNNOJT8XAkFCA7EbaoHzqwmqp/T2DS4N5NU=;
        b=MK9n5tX3bctiXKRYqrbNaYOJWSsBskHEc5n8XdOUlKqmRepmlJTub8hGGv3yvkL/Vt
         /igNi5OScuvJhWC7bMMUMNLG5/pbHC+93meOgnQL+PI0TT3zALKcLvcCku2uxDy+0e4l
         FYFrNsUhOBFhv25b29VUU5bhTnpdQhjZ6i0ujwBVCNfEteGxY22mzHYbLWt4T7Z7RFks
         +JyV9LCRzq6XHEbNwQVNu/TTZKwnKLvuWzjuWzoMZ8f3kJesbAgYmm1K99DpULbwdJ1I
         vYkV1NLQAs19S5pn6bNL992tp400ML1uvwgH1PXffCjGTv2+Jy2n2sZIbj/dnMxmrGe/
         LoJg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWA6QqkzJ/V+VLA5oOtvFgpm0/lsIw7doboHejSAM2pwmOvxNDzBMnW713A4EP/0cJx2467LLImlaj29cJwr40RaFZ48Z7dTlVX
X-Gm-Message-State: AOJu0Yxua5K6VDw6umsIceM638ReP0fewfKOsCvn5ytWO0VK9hu7e9U2
	QjEuBY5EdEP0Xhuoym/u/BWBbKHnMdsg70uuDkAgRqB4/sHl80nVNF2aVvofKU0=
X-Google-Smtp-Source: AGHT+IFH2YpAh9XFu7BPYuxneLw2Myy5GT8ul+iyRKHwp6YjmGEf2yovFuwdc4cIIMx+U035t/vKuA==
X-Received: by 2002:a05:6870:1711:b0:229:ce0c:36ff with SMTP id h17-20020a056870171100b00229ce0c36ffmr6243753oae.30.1711324535457;
        Sun, 24 Mar 2024 16:55:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:84ce:0:b0:6ea:9492:9707 with SMTP id k197-20020a6284ce000000b006ea94929707ls828579pfd.2.-pod-prod-03-us;
 Sun, 24 Mar 2024 16:55:34 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVqaprzdWS2U2LkxNCC3yqCuFMZzu9AqVeRxCTICaBE3g1RNqBHwFPH1/e0cbTcXPd1gZQUjKWT6Do1HbmJUdoXiyhf5L2wmVqgxY2/IYlXoCf6ADg=
X-Received: by 2002:a05:6a21:3293:b0:1a3:5fb7:42ab with SMTP id yt19-20020a056a21329300b001a35fb742abmr7256302pzb.59.1711324534061;
        Sun, 24 Mar 2024 16:55:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324534; cv=none;
        d=google.com; s=arc-20160816;
        b=dnJQUPKcWoGWXAl3+UawIcu15jm9o6AuO7cUjupRX9FfnLc5vffTFdxDfaJoAE/TRr
         N87wbHDrmhFnGvl+MU2wglmx20OQFuwJUNsyE/5yL6paCjXyhC0hYmJnSjrYSWhksLtu
         0Yb9/MJUduPkdoO4Yd0uUDLa0U44mctgdt/4uR4HW3bjJVaYKXFSIt52BnSP0vaq1keU
         Le7C6YvmDFuTCxkcFmlCFz5kQfa5tNNt3Lr6LoleJ9cwAcAcC/qAxDIRoDvGnZiwD7Ls
         MBT1ulMhxRQFzQ3BlojT3jE0XT6oUkBlcJKIO6AAD6qy4fiM02C0mOXoxKW5aNNPG3za
         ifkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rf6PjrXwu7364vZU4ZL9Ykj49zwA3myfqTzlnUym/Zk=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=PMl9I7boBLaB68HNCv1eGVEeCqNPbQAMM2XMPYFnmWmhVuntG2C5DHarLJP9duiLWF
         mDrEFNadbDLQz4j5BezEC/SoV/99UIMU7ZIzgP7N7887/acg29rzdPJoPeKboPtslIbX
         vHHdy25HHsDi7y1SMZGzmV6WxQOQjDY9j2jDTSioyjiq2ttuCcChuPfAnePZ5b5OvM3H
         gTvQc6o1YfahriYyxlzX9GEY4XWVoFT8yyvg5eP2HORR5TTSBu+YpEpH8PazyoFNnhq8
         UuoWEF/jn05YceCTQDUaWMibpQwv/8bwtIQ453ssrMrPMaJ4ecVAspgBFqFdAa3DYPRv
         wPVQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=Q1Gh7k6V;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id l10-20020a17090ac58a00b0029e077ff2a2si10160531pjt.45.2024.03.24.16.55.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:34 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXgE-0000000DzPl-1LSc;
	Sun, 24 Mar 2024 23:55:13 +0000
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
Subject: [usb-storage] [PATCH 05/23] scsi_transport_fc: add a max_bsg_segments
 field to struct fc_function_template
Date: Mon, 25 Mar 2024 07:54:30 +0800
Message-Id: <20240324235448.2039074-6-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=Q1Gh7k6V;
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

ibmvfc only supports a single segment for BSG FC passthrough.  Instead of
having it set a queue limits after creating the BSD queues, add a field so
that the FC transport can set it before allocating the queue.

Signed-off-by: Christoph Hellwig <hch@lst.de>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-6-hch%40lst.de.
