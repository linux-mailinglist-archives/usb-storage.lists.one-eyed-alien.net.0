Return-Path: <usb-storage+bncBDUNBGN3R4KRB65G4DTQKGQE3UF5RSI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id B131B363F2
	for <lists+usb-storage@lfdr.de>; Wed,  5 Jun 2019 21:09:48 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id b127sf19403573pfb.8
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 12:09:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559761787; cv=pass;
        d=google.com; s=arc-20160816;
        b=LN5blKOPIt4EneRBW9/cIiLhrnVO7kFJZzT/THVgRMHpwappFW6KRwGxUpPL4KjSdC
         e+q6YYw0954IukB75BwYEVWQgzlqWPJAKCLNKLEMX2bD3Y9Ki3ieTV0u6caacpuCXytW
         fOTiMD6oCV2k0QLZSv3Img+6d9aAu/z0e6hP0Vs3uykwod1wkr9C99zjIzcnNRA78F+K
         /bweuvyGIz5HH/8ngFCetPXaQGKtlzvVNIJc4ripOppynoyG6GWbqAN/kA9ahBSLHXov
         KLbfwLsxTIjdseAeuIGvaiCxOl+9UtZSyLJHgY7k0o+rb75lnzKfGVmtgQj2GA9wjAwm
         61PQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Ohf2fLhYpdWJxUts2XFPLqgz2prRPs6BDzb+elSLPGs=;
        b=LRnwU5jFS7S5L+tMT9m2SPEjZyD8Ja9ONDxp2FN1k5KFFHUBJ5wfyQC+Y1mMheEiCE
         eZsYJ1NilDdrx+Ftf5D1TvQDXQqxHetWoQZT+3ra6SSvODnPZj+90yeOEjwb8sO9l5cO
         vJvN6MLf79ycQxs85moCqKEidlfonNwlH7D/Qwj5qnY92joKYCgfs7eMquqcLbicvcqQ
         BGQ6Gg8AUOjZ+TcCpeoGFS5BmXnFEU3YFplN4ZZX7yG/Gqq/njAwglVrAZt6X89Orm+T
         QshEeQmqMh9YZsw4VxjHqmBzb137NC1ZNEfAvzMAC/Vs8dxFSrUQdXMZpnjzJNQ1Aza/
         2YZw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b="PtFwz/8o";
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ohf2fLhYpdWJxUts2XFPLqgz2prRPs6BDzb+elSLPGs=;
        b=akIyx+fOj/ewmA9gnAtgRbuZaHt630YoTMWKRglKyMqHxMKLmCJa2cBHNnwOyHvTRF
         OFt4ap5fuwTeTvMimy0bvQXFedbEoH5jFG1sUO+t/yYljNahLuRNol/kHx3lfFBQjKT/
         9ocnWugyST9X7kZ0NzFwffF0DxywNeFZuWCcA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ohf2fLhYpdWJxUts2XFPLqgz2prRPs6BDzb+elSLPGs=;
        b=g8/UNhdP/juD15IPrfI6nbdwi1uvTPcfgXinXr7cjdHPeG4PKzbC/NNd6Jqk4P7khZ
         PBD8ONeS01mV8s+/JcKT0qjTYOyngqrgxvnfagn9qxrr4bMSuQt1qBeHatykzHChAg0K
         nKqvcF9fw2gXPV6MJAof0BDQbpuEVC6d1/O2LW9zyCYQDkTz6RWC2G3tm2VjMuSJhurd
         5U9cMESErf3ehHhCP9HDHKMSqLs+GEUktMVtXVWhkQtGIUbUlmUNvnbr+avE3cMGygL3
         D7tEwiOGkgxuUWm+7YRyly3Cxygo2Ju1/bJocHLNLnFsm06rcHTUDMrFivoY1V3sy/gU
         XtRw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVHnazBt/6k+FdbpS800vzX74Q5Ajvi7ULhkFmGug3Ejabj3U7b
	pItATnfPD6eD8Le+1Q9YHNQ=
X-Google-Smtp-Source: APXvYqy5/JqfqRglmZdh4l32VzEHFxDmfj+Z5yIC+LCypqtcBEUY0tZVcstjuwe/gF9znhxK3e4Eww==
X-Received: by 2002:a63:471d:: with SMTP id u29mr259970pga.39.1559761787377;
        Wed, 05 Jun 2019 12:09:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:2148:: with SMTP id a66ls765445pje.3.gmail; Wed, 05
 Jun 2019 12:09:46 -0700 (PDT)
X-Received: by 2002:a17:902:7c03:: with SMTP id x3mr20965061pll.242.1559761786921;
        Wed, 05 Jun 2019 12:09:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559761786; cv=none;
        d=google.com; s=arc-20160816;
        b=JxGYFdumQLiGBIX98p3Y9XTLLTjKEkDUHAIzY5KmHnj3x6x/2dAJPUFQMikUd+Odcv
         uLSaAuqjtqhDaMo5ssP5EWCa0l41L5p3MVMG4yhPLvBVBdNNhvHhMlvRiXfkgPUd4BxL
         Vr31C+78520qoop3n10eeeySoeeomn57NOwb5XCj1kAMPP5mLNx1Hy3ZKxy+yyOnRQ3k
         GuF1GJ3bb+6UIeivatb7n7oHSLHWfdTs7wlcaGZ3vU8OX4JoXQo8RuM78IJeU/xAqVgf
         gWql9KyWPyGH//olKLoEMBS8sVKsrO05KaEZ47urgAuDeWbb9snnWZ8s7L8ZePGGfATa
         HG9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=eFJweHzSpLpiZ2x1/tGLuA1P3AGVwoc6WM7qjfxVfqw=;
        b=WFv7K6zZSl6SeakG6q/8++GHSVceMj5aId64xlhw2rD81rC8kDBSfy5OfqwZs0pYhn
         ZrlYkLEkzVnJUnVsso0Iy5SXfP0U6I6JLs/2VHCMiaeTPkaezgN2+HciQvkKtr7v4rAy
         TALLPh9Yfh8F+OBcQoijYAdT0atlcD83s8Zl1ZfYVZPhSj+gO4k93V8n8sAZPcrw3ZLI
         Wad1qyeUxc4djMFPTZ/fx/iAQIoVf5UJGCz9/TMnTDCiMb7SymDirU0/rgInDXpsDiTw
         dWKp1lM185NnsiEgtpprc3524oK3TeeryZ1FaQzuQ1xkhuCaJz0391zz+WEkU0hpzsHA
         hKWA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b="PtFwz/8o";
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id 61si29488637plr.51.2019.06.05.12.09.46
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Jun 2019 12:09:46 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbHS-0005cs-FI; Wed, 05 Jun 2019 19:09:03 +0000
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
Subject: [usb-storage] [PATCH 06/13] ufshcd: set max_segment_size in the scsi
 host template
Date: Wed,  5 Jun 2019 21:08:29 +0200
Message-Id: <20190605190836.32354-7-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190605190836.32354-1-hch@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b="PtFwz/8o";
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

We need to also mirror the value to the device to ensure IOMMU merging
doesn't undo it, and the SCSI host level parameter will ensure that.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/ufs/ufshcd.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 8c1c551f2b42..4e524ade489e 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -4586,8 +4586,6 @@ static int ufshcd_slave_configure(struct scsi_device *sdev)
 	struct request_queue *q = sdev->request_queue;
 
 	blk_queue_update_dma_pad(q, PRDT_DATA_BYTE_COUNT_PAD - 1);
-	blk_queue_max_segment_size(q, PRDT_DATA_BYTE_COUNT_MAX);
-
 	return 0;
 }
 
@@ -6990,6 +6988,7 @@ static struct scsi_host_template ufshcd_driver_template = {
 	.sg_tablesize		= SG_ALL,
 	.cmd_per_lun		= UFSHCD_CMD_PER_LUN,
 	.can_queue		= UFSHCD_CAN_QUEUE,
+	.max_segment_size	= PRDT_DATA_BYTE_COUNT_MAX,
 	.max_host_blocked	= 1,
 	.track_queue_depth	= 1,
 	.sdev_groups		= ufshcd_driver_groups,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190605190836.32354-7-hch%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
