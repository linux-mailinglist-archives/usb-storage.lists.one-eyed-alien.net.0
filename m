Return-Path: <usb-storage+bncBDUNBGN3R4KRBSFG4DTQKGQEMH6EUIQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E749363CC
	for <lists+usb-storage@lfdr.de>; Wed,  5 Jun 2019 21:08:58 +0200 (CEST)
Received: by mail-pg1-x545.google.com with SMTP id j36sf15456649pgb.20
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 12:08:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559761736; cv=pass;
        d=google.com; s=arc-20160816;
        b=lQ9bh5HSwz1IWLpxETYEQ1AGRaWoQfWZrSOwZ7BHrwFyzjlrCv0KUshiGKwx+qYv/G
         2uGt5nzRqnf5n05Qj+v/qAfHUkhqB+C0wYbQ2BpollUNEQz6HGuOVoazXEmr3QewQTmq
         Xle+65GjEb2ht7N4Gw3F6bSF7ETZvwqkRTdlY8KbCpKeXQdl1ljoSTD4kGvDC2mmK5A7
         5zzDAwHyJtKLBonT+Gib6YJdsIXXROigEl12SYTz8BHWedFnXQuSjaavzj4LyzLS16eu
         rgE4261Ok+4A93v2vlRuidvtIrJLFF1l37Dkjo3W6f+jdv8aG/CIlh9ODJBo2XPdh+a9
         1Hqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wPJNvl6hSt8XjU+JasfvfIbDmTquvp7TFZigduizwRU=;
        b=df8160MFoRbWv+0c6Pw1tFg7G8nRrE6k+KwFuOJwsorQYMN3BFN3DETlPuxKAJAHBX
         +gnGz5yp5Yz+ujs3qXo6Yml/6dz5jvgx+4iUuTit0rCq5FVTe3obcUZJd9bIkPHhWKmR
         O6vsyaoMwMRf5VY6ZH0IufeDiDUYzaqQuhXy+I/IJ1vcc3Lr39RW2Nie0qg1RJLPLqpb
         yITQUiSr/XxHoRcN4o1yjhqD9jdJVeaazizNJk3wSFAxznzsfdDJ75GxytJB2KpBYvKb
         XBYjKb+FTn+EglzysDp4B9iiALLAEZbV+McNtXHH7atTS4m/RgGoOHiZxtZI2/lIIYsI
         5xxw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=W0COMIoN;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wPJNvl6hSt8XjU+JasfvfIbDmTquvp7TFZigduizwRU=;
        b=FIt2CHCwutJBgrLpj2hhLrZ0o7qqmFMRVwvhpo9jFd0fY1o6U+VZ7kipwk7YhnlL/0
         0wABraFaMxZIE98krwuF5Epq133aS4VYSDBuoRbFxGOi+yLQItWEqKPBqxkeEOaTRgg6
         07t+3JwTR6fWM8T0thJMxiIHKTXU9pbCubUOE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wPJNvl6hSt8XjU+JasfvfIbDmTquvp7TFZigduizwRU=;
        b=TtE/L3KRsvGi9OAz6hDqV7bf8utZnVrM+JEmwxyYNLYevV6bdYaqPDayxxPkfkR364
         DLSingJcdaMwPlEs6D/guQwFq6zzL5+8tNPB2lDiy4v/jh3Q7SmE7Qjr1PnGFf74cvur
         vGXFTT+EIxoBnR5UkSJWlREZozGachCvMLIRRAJeb81Oa7SJAasdwg4Mi85Zl+IqYix8
         E7IcSiCKnWdIklbwTFZVsG8Jn8a4dWSyvhR+tIan6hQ5IQHU/JxTi+jf6wTLK7Xu3rVg
         GgV67iJxWWiz/fAukjX3nnQ4SGqXWpCZKaQHPPkRDvtbd/w3bWU7WrSwdZBv00eA742N
         LmGQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAX8o/MeMIoMKMHfpJLO0/Nyo+3n9qJXxgvs29vrFgECar881TSu
	yDyRxVCONTRjbAReBgsHVwA=
X-Google-Smtp-Source: APXvYqxgQJp4NVI479rIFshXJFy7viE9sXmQGb/KU8Pz99xGhOwkyI88Hs99dvbYNIrJIGRjvJgbwA==
X-Received: by 2002:a63:5a1f:: with SMTP id o31mr348037pgb.254.1559761736466;
        Wed, 05 Jun 2019 12:08:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:870e:: with SMTP id b14ls744548pfo.8.gmail; Wed, 05 Jun
 2019 12:08:55 -0700 (PDT)
X-Received: by 2002:a63:af44:: with SMTP id s4mr262355pgo.411.1559761735603;
        Wed, 05 Jun 2019 12:08:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559761735; cv=none;
        d=google.com; s=arc-20160816;
        b=cN7aL8qT5kr5Zvnei9Jc9j072IlsWUOWnc8rdl9qM3rhYoiPRyWbPAG/PHBapdLVRv
         20c98et1yPoCoaz9MiGhpqeaNsImi+Wfb7ToHJQ31rVK8v/7bLConNBV7DL0+lxluIOf
         A7SGr/Vs+ebziMWty8SmpqMt3bSSG+NB3wk51sdw4VQcI6Ba2BizzkGUVSVbuGwoY6Jn
         qiSu9bB4Ln0rMLzYTb0vXLgOOfXj6J4F1rqJYE0KeydA6J/acTUdPpnLzjz13Wap6sjl
         drKvSA/U00OF6vQdhDOJTZ/UKCipSpDAqrfOlLpcNHI43FcCx6fsI+apFYkMUK+ACPZ6
         qJBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2ex9Z2d7jbc5bnEXbMR2ptptCi3L56lPOpUN37M2uJs=;
        b=nYPMecWix2jL9pdytt32FT5EZqqr7dRc152SJ9fgKUw7WKTK1Zuix+m8HfpMC57aBV
         +q4G36b3Uttjl6luKrhCk5glRFGDpWYIyORcWWB1rfoglYDDHdRi84p+Z5DI0hd74Wnu
         RHjgN208IF1M1079z9Ga20pUe+t2iVZ7/hB6x0ikuZMdlMyVejikuCdaHlL732qs61Il
         tHO10YeDDJzLYmO01AlLGkoQCyxhIdFjspuo8QVdcpm5AxKoPDh9P4LYpWT2toWWnbNa
         HZHaU8dG9GsYgKHtWNuhXvl1VIhd+UV7slD4KT5Y3dFsIWMoK8S5rrBy/wm1Zv6f+DkX
         0Ozw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=W0COMIoN;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id 83si3921500pfc.49.2019.06.05.12.08.55
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Jun 2019 12:08:55 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbH8-0005D5-E5; Wed, 05 Jun 2019 19:08:42 +0000
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
Subject: [usb-storage] [PATCH 01/13] nvme-pci: don't limit DMA segement size
Date: Wed,  5 Jun 2019 21:08:24 +0200
Message-Id: <20190605190836.32354-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190605190836.32354-1-hch@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=W0COMIoN;
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

NVMe uses PRPs (or optionally unlimited SGLs) for data transfers and
has no specific limit for a single DMA segement.  Limiting the size
will cause problems because the block layer assumes PRP-ish devices
using a virt boundary mask don't have a segment limit.  And while this
is true, we also really need to tell the DMA mapping layer about it,
otherwise dma-debug will trip over it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reported-by: Sebastian Ott <sebott@linux.ibm.com>
---
 drivers/nvme/host/pci.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index f562154551ce..524d6bd6d095 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2513,6 +2513,12 @@ static void nvme_reset_work(struct work_struct *work)
 	 */
 	dev->ctrl.max_hw_sectors = NVME_MAX_KB_SZ << 1;
 	dev->ctrl.max_segments = NVME_MAX_SEGS;
+
+	/*
+	 * Don't limit the IOMMU merged segment size.
+	 */
+	dma_set_max_seg_size(dev->dev, 0xffffffff);
+
 	mutex_unlock(&dev->shutdown_lock);
 
 	/*
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190605190836.32354-2-hch%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
