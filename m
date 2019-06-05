Return-Path: <usb-storage+bncBDUNBGN3R4KRBYFG4DTQKGQE25OU45A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A82363E5
	for <lists+usb-storage@lfdr.de>; Wed,  5 Jun 2019 21:09:21 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id x9sf1735940pfm.16
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 12:09:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559761760; cv=pass;
        d=google.com; s=arc-20160816;
        b=OIj4g2aUoI+RjDVa9tkSw40mGnzOIfaDfgC5qn2XYfaPfxA5LZH/AHN8lpHAD+kLdF
         B39Ti03IN3C/J+ldKwakawj95vFajpz3mE8b2CRuwSPIUEE4V9/r01+yJy9mNDlTI5Fz
         u3W8raPjHKQM3ne49Y3gB+EqS3eAvI4zdlo9Q+eoAW9wfENtGuLR/XwJhE+g4byuZ6jK
         Gs4Fl9DKJ2VMq+ZwTgVnpjDPYXT2oEWBcFQX8lKrPOercXrm1EVhBn5h7xtrUkjDyqx5
         PSfTIqz8xdrnJqzFmlxjxM+xMaNWn20IS9hO5PNsnHh6yrWJrtLpZawIqtg1sd7MrGJn
         f62w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Z84At6E8Au5TRveDsHFLa0kH9SMDdgeJF8cA76/5zDU=;
        b=AroRmcD/aTGaA+iaFH0kgGi81yFdBeR6ooH0WWXhJCBMpzf+1mqYbXDPI2NNP1CotC
         vcRpF6g1mxFOyE+AuWRoRBctW3xmPznaeQLhtLbLyPdJji9X1thsRdfRMl7ydNWDFrWt
         wKMry6D6Cs85UvIbyRS5V0UR+dheHl2YQZCxUbJ6re2WHguAOv538qP8W8UWjcL8luK9
         /CW/2l/LzieYoyqZnOnx1/mFHqCmHghlSRHjkmeL7Ev/dDK/1W0pydWoZUp6NCMLBN6c
         gLH/Hk4NKUMcQ8lPcbSTfKSAa25Efhdy5Y8p9+tP21wdreaJrxxPGqYYcRrkyubZacjB
         WLZg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b="e/LRwE9r";
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z84At6E8Au5TRveDsHFLa0kH9SMDdgeJF8cA76/5zDU=;
        b=JBZ31PdpZ+u/ASF2KofGgNAITAyHLtP5/jBrc/rnb8UuvBtWaJZ8ui0kUNChaCwoIQ
         Bd5ACAgETRTA2z9h8YwMTpp4K6BF8SURzkejtLdeFTaDMaNqRkijWEjhsCr/iM94jn+5
         vO0CuL/Bv8dfIdaMOOsAhg+OIGrh4waeTJK98=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z84At6E8Au5TRveDsHFLa0kH9SMDdgeJF8cA76/5zDU=;
        b=aTYPP0Enf4SD/Ajy1Zwrp370qIBNNFYSUnOdF6RH2YJYRMAv6HDbk8zeDNUfVbH45S
         Mce8EnukxoLI1ejzQ/n/4Sjd64AX0Ckx/kCtR3rY+L5Min0HNhNLQLbcmB3VQZntcQdI
         fUJ9dRQbCn0ur9TEhCucY6V2zI7v/K+Mk/KQkkAi8JmHbRMpURA27ubGT0Q1HAE/w9LI
         JEMeYm5nPrW3FEWtgVRfrEMVoDfiAF/zzz27+1y40xQkcknnccwmy6/DQitGfyhmn/M0
         ZtJGFdV6BLEfsX72EjwpSLkIYq2BbnC/d0Td3LL2L51afxIMPebJofSJj4mG8XmEU5yO
         WSBQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAX6tr617VzdodTdmAxuRaOSAM46yp3n7lNmda606ikWUIMqqDTX
	6cbMA/FXyOPqz+aRMahdEeY=
X-Google-Smtp-Source: APXvYqwWEtyXhes74Al19gSKsDvlBN3TfpcLzcI8krRmAXiCamZrSKRARxyUcsedGRxNMt0PNDC0LA==
X-Received: by 2002:a17:902:a505:: with SMTP id s5mr43672055plq.54.1559761760407;
        Wed, 05 Jun 2019 12:09:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:b605:: with SMTP id b5ls733689pls.12.gmail; Wed, 05
 Jun 2019 12:09:20 -0700 (PDT)
X-Received: by 2002:a17:902:2947:: with SMTP id g65mr44892027plb.115.1559761759947;
        Wed, 05 Jun 2019 12:09:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559761759; cv=none;
        d=google.com; s=arc-20160816;
        b=DAYWaLkkoogYUsgJuv50Ihu648zXfNPCtCZma5Lk67QUu2N6fqxT07f1hWVsQb13ha
         SCESZ7x/ITjb9+rCwsmswkJ7rAZA+8pjzjDKUxnlnhgGjNfZxs+vri5B7eJizW6Unw3O
         nL4W4ocheyGr4+lzuv6aEi6LTlgmKeEjTrGzmPp7DnUNURN2xttHBHD3RVusdMAGdJma
         ahOPMTQhjihy9aN4KSNl2SY+R25W4/+jERN1l8TO2zlLvmDv684S33wjuMg9YeidW5Rk
         qEHcTyy2ulJOXYM6nht2RW5K6JoZHMju4ISVp9pwrCrvJXjKOkXLXEiWhJKYXMD4pCgX
         qETg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ft2pGuvl7lOdipsW5yXOzcXLvsOnET6aGSo+dOUOkYE=;
        b=O6+bB4xCOGvdA1Ysh7PnUXL8IKp28RD9AS/1tsKrElgWXY/7B43mXhs6bRzUJ8lMfn
         wh3xeuPKbI1otE3heTDc1tAuEZ+BDNMbXRHksa1WQjxFYCO60Ow6ZxtQUmCmx5UQpEcz
         J7cayKQkzh5I01GE8sR6KXupv2FGxbdF9ABkx5oBsYgeHlz6R75oFGaU780ywuzkV2/I
         PPnl39n1NArc3YaeJ60nZMLPtOGYqG1dD05FqCPxrnkc8Qc0KY7V0PZLcEMYoBGQQ7eD
         G70nDUedCoQHcIyrR3ufQhOQURTwSiKOhp4SBqfNShtI0IbXHxGyhvXrJfFKa1ZN+dN8
         XdxQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b="e/LRwE9r";
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id a1si12417936pgh.196.2019.06.05.12.09.19
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Jun 2019 12:09:19 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbHW-0005ir-71; Wed, 05 Jun 2019 19:09:07 +0000
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
Subject: [usb-storage] [PATCH 07/13] storvsc: set virt_boundary_mask in the
 scsi host template
Date: Wed,  5 Jun 2019 21:08:30 +0200
Message-Id: <20190605190836.32354-8-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190605190836.32354-1-hch@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b="e/LRwE9r";
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
 drivers/scsi/storvsc_drv.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/storvsc_drv.c b/drivers/scsi/storvsc_drv.c
index 8472de1007ff..e61051c026f6 100644
--- a/drivers/scsi/storvsc_drv.c
+++ b/drivers/scsi/storvsc_drv.c
@@ -1434,9 +1434,6 @@ static int storvsc_device_configure(struct scsi_device *sdevice)
 {
 	blk_queue_rq_timeout(sdevice->request_queue, (storvsc_timeout * HZ));
 
-	/* Ensure there are no gaps in presented sgls */
-	blk_queue_virt_boundary(sdevice->request_queue, PAGE_SIZE - 1);
-
 	sdevice->no_write_same = 1;
 
 	/*
@@ -1709,6 +1706,8 @@ static struct scsi_host_template scsi_driver = {
 	.this_id =		-1,
 	/* Make sure we dont get a sg segment crosses a page boundary */
 	.dma_boundary =		PAGE_SIZE-1,
+	/* Ensure there are no gaps in presented sgls */
+	.virt_boundary_mask =	PAGE_SIZE-1,
 	.no_write_same =	1,
 	.track_queue_depth =	1,
 };
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190605190836.32354-8-hch%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
