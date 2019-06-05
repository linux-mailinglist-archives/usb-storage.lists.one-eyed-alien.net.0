Return-Path: <usb-storage+bncBDUNBGN3R4KRBZ5G4DTQKGQE43RA7CI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8FA363EA
	for <lists+usb-storage@lfdr.de>; Wed,  5 Jun 2019 21:09:28 +0200 (CEST)
Received: by mail-pg1-x546.google.com with SMTP id s195sf15481868pgs.13
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 12:09:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559761767; cv=pass;
        d=google.com; s=arc-20160816;
        b=tRiT/9wC3x2HHqo71TZoc5MnWqRlSKJDTxr7NdkJHNrXfrjyYPWWFsIb7wUrHlUvqQ
         pyhLvhDh0d1e2UfK46OBgcWh5Yd7D3nopxhkiRrSPmYMZRqUziATyctqTjGU7B8QAKfc
         DkfhgMGWv+raB3ZI7EKJ6r0ppN7BvvpX2WjIXvDCPDD/+6CdL1eX4l/PEQzzD6sygNOq
         1tRTrB1+soQgCwMtgIu642NqXucQUChXD09Z/RzMqRm1Z5jxbe5JBHGAsdtrBDZcrjv+
         mj60KAjULjqoTe2TkeEzEflCzkPri/We73WeSHlRMiOrf3P4oYk93p4QFlhEJLkwXve6
         XzHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=MOyD9kys+tscbXW9x4vNLB9qwPzwfMFJg4L4jgMSmUA=;
        b=MwjC9hEonlw/IxobpA+gQ9AvLlMu39UconRmRYAPKrdXHYscvDTtARkhwVO+lCc3ma
         6HYgKa5PnfMCtDY9m+zRihkyA5VmAw5Bt41p7VFOn6rhQ+pH6521xh+BPOFjVo872YaA
         OT40cn/CKAnrVoahQpGOSfgyynjITYlurUdqYinzlUa6WmicNBcORcIh72cvrqA7GpHh
         so+2KFJvi7efdCgpOTBc5irodjnWkvLeYAkeHpg78MrdXCZUEQXN3X61fvh0hlxc0xmr
         0UV0qPSCmnn03Pdw2+NlFQrzd8GBlCOOrcVI13hwa7hlp4vyt3YjiIwUvI/QPD9CgTus
         SDSA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=ELWyStyy;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MOyD9kys+tscbXW9x4vNLB9qwPzwfMFJg4L4jgMSmUA=;
        b=NTkk2O5MkQ7rggvrIsIeoOuXC6FYKtO1UrvUl2IN2VVQlbRLaEr+MUgLCViqtd+ZyT
         BSa2PeQk5SkFhtQnJsJ3A451hBtirr3JB3X8zKL/JUQPsqxwS/oVxOkS2vKNXF78HL/c
         qwwnEIwSIsc126aPl/FmQljLNweEGINtMAZ+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MOyD9kys+tscbXW9x4vNLB9qwPzwfMFJg4L4jgMSmUA=;
        b=LSyWkD9oYdrJPukc6hTSbNB/jH1IYOlaVUCMuf519eJTuJBMpaN2JU8TLk9GiU1KdS
         kdOKIfLvOMQXp1w1FkZy1GSbXbGeF14lNSQ+VQoDLUTYIwyVYra63hvO06tQuku+pP24
         5Y74ND2JtifdULYY7mFfPRWOHePqgUNGDf2y6VIly3ygUKjIcW2P0mKplQZYIWTAdFJ7
         AnyICkbVAQaoRcsBAphpR9vXJOM1JdL8EaD+oS4jIjRYcJ8sqeG9O9VbYRM74Fw3GRPi
         kQULAMQU9wvHWRdczjI9P8RMy+pgbEYWDm3LPJG5sN9SY3IgSOUzo4EvZxLYho2TayMh
         5PoQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUL72kzzm09iQZBptXKGgA7jcH/JEhPXq5ATZBUbGT8HHe1qUtb
	IS5nNO+S7XxgcYECLmvTLYs=
X-Google-Smtp-Source: APXvYqx7J181NLU11H08Ydg/CVo6VcZdhkwgCSKE8Zjsb6eP0N8jy8eW/q4XbUcRN/u3nmva6YrdeQ==
X-Received: by 2002:a63:184d:: with SMTP id 13mr342411pgy.346.1559761767293;
        Wed, 05 Jun 2019 12:09:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:b605:: with SMTP id b5ls733722pls.12.gmail; Wed, 05
 Jun 2019 12:09:27 -0700 (PDT)
X-Received: by 2002:a17:90a:8982:: with SMTP id v2mr46100331pjn.136.1559761766954;
        Wed, 05 Jun 2019 12:09:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559761766; cv=none;
        d=google.com; s=arc-20160816;
        b=qcvDtCeqTI2AAMWE1zd8u48VPraS5j9hDv0fbpptjO4qwg3tHPetF96RtQSwDXI5rF
         k1E7CHlA33/+8XkBjEVloHXGUqNA/+9t5RfYALG0aOWWB4dTJQb1LXsBD6CcbpBJlWW/
         /EBNfcdWJ2qwKe7bjTPl6nLtroCVe8YHDqGtVr0kzf2WSXwl2yey/1qwewr59dVtKqHz
         mzlB5+GDC8sijjd4iLLZhhbut0oYevwhj2twjhgxSKVnLAxT/tp7Bzjlj7Bv49hsAe/F
         2XhPtNza9LRgKYYdnDvP+KgFn+ok+ACFRbuh7cki92IR2DC1RjpmnQk3wBe8bElHJsmT
         8EmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BZynmndmGYCWQ7WGzgFBa5UwSeviNORnIHKuHoOiZgI=;
        b=JUcP+ZbF9DEKsS3iDsJM0yFBmJvlxG5DLrwmVYm6f6zYEwq3Rx+EpPeAoaIFvycRZm
         I6iuh6BXNSrdAB8v/cA+Lx1TNkkk/s3ZUKpASVNdPgjTj3rE/6lXSQ4JSxw1EwwEMbvD
         Nhs7C+6nuM/SD5xM2+u7rI68qQSuaJ1Cm0iCyiE38VTROCbjgUPqVLE7rE8nm9uoJ4/6
         rhUhj+N+0HhZS/n40FvH81eUv3FNkgEQJ4ttVjRV9vr5oAb2bH5vDhfrPAdrPssy0r/V
         FII+/8a8jA+6IAPI3iMlFuc0/ui1WZ1zJUXx56WSzfpH2mKI7p9kT9rM7OrR3c8B9YX8
         VY1g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=ELWyStyy;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id d10si27329988plr.307.2019.06.05.12.09.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Jun 2019 12:09:26 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbHd-0005ug-Su; Wed, 05 Jun 2019 19:09:14 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: Sebastian Ott <sebott@linux.ibm.com>,
	Sagi Grimberg <sagi@grimberg.me>,
	Max Gurtovoy <maxg@mellanox.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Oliver Neukum <oneukum@suse.com>,
	linux-block@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	megaraidlinux.pdl@broadcom.com,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-hyperv@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH 09/13] IB/srp: set virt_boundary_mask in the
 scsi host
Date: Wed,  5 Jun 2019 21:08:32 +0200
Message-Id: <20190605190836.32354-10-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190605190836.32354-1-hch@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=ELWyStyy;
       spf=pass (google.com: best guess record for domain of
 batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
 designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
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

This ensures all proper DMA layer handling is taken care of by the
SCSI midlayer.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/infiniband/ulp/srp/ib_srp.c | 18 +++---------------
 1 file changed, 3 insertions(+), 15 deletions(-)

diff --git a/drivers/infiniband/ulp/srp/ib_srp.c b/drivers/infiniband/ulp/srp/ib_srp.c
index be9ddcad8f28..944fe8eee1ea 100644
--- a/drivers/infiniband/ulp/srp/ib_srp.c
+++ b/drivers/infiniband/ulp/srp/ib_srp.c
@@ -3061,20 +3061,6 @@ static int srp_target_alloc(struct scsi_target *starget)
 	return 0;
 }
 
-static int srp_slave_alloc(struct scsi_device *sdev)
-{
-	struct Scsi_Host *shost = sdev->host;
-	struct srp_target_port *target = host_to_target(shost);
-	struct srp_device *srp_dev = target->srp_host->srp_dev;
-	struct ib_device *ibdev = srp_dev->dev;
-
-	if (!(ibdev->attrs.device_cap_flags & IB_DEVICE_SG_GAPS_REG))
-		blk_queue_virt_boundary(sdev->request_queue,
-					~srp_dev->mr_page_mask);
-
-	return 0;
-}
-
 static int srp_slave_configure(struct scsi_device *sdev)
 {
 	struct Scsi_Host *shost = sdev->host;
@@ -3277,7 +3263,6 @@ static struct scsi_host_template srp_template = {
 	.name				= "InfiniBand SRP initiator",
 	.proc_name			= DRV_NAME,
 	.target_alloc			= srp_target_alloc,
-	.slave_alloc			= srp_slave_alloc,
 	.slave_configure		= srp_slave_configure,
 	.info				= srp_target_info,
 	.queuecommand			= srp_queuecommand,
@@ -3812,6 +3797,9 @@ static ssize_t srp_create_target(struct device *dev,
 	target_host->max_cmd_len = sizeof ((struct srp_cmd *) (void *) 0L)->cdb;
 	target_host->max_segment_size = ib_dma_max_seg_size(ibdev);
 
+	if (!(ibdev->attrs.device_cap_flags & IB_DEVICE_SG_GAPS_REG))
+		target_host->virt_boundary_mask = ~srp_dev->mr_page_mask;
+
 	target = host_to_target(target_host);
 
 	target->net		= kobj_ns_grab_current(KOBJ_NS_TYPE_NET);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190605190836.32354-10-hch%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
