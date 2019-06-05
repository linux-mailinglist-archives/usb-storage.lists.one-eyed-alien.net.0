Return-Path: <usb-storage+bncBDUNBGN3R4KRBSNG4DTQKGQEOLBXJ3I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x548.google.com (mail-pg1-x548.google.com [IPv6:2607:f8b0:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id DF946363CE
	for <lists+usb-storage@lfdr.de>; Wed,  5 Jun 2019 21:08:58 +0200 (CEST)
Received: by mail-pg1-x548.google.com with SMTP id g9sf8017024pgd.17
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 12:08:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559761737; cv=pass;
        d=google.com; s=arc-20160816;
        b=m7QMA8Zsx6OTxo/Fni5OJf7O4y4kiX1zlgfhzxgV5KLBSNrJiIgHPM3zHyeu4HERvn
         9P8eAC/q0Ghzk2UBIS7lpa25ylBdK6aO0KhUtOGd9/QGwWgK2CpF+fcD3/ivHpUJbU4a
         x9jgzmPkOlsod7lMU8SxNmAGjvlDKCEO9A1ln8xdGqB/0f7ArwBbaotNiAejQXBvMpPn
         uGGN42ojv2P0pRzsKXmQvTb/ehOMpCxm0UWcteS5HHpANO/H5PhFUPWiGDxnIpQ7OdYr
         lUsYoF89sh8OKT8cvRswc9r/Mys12CbVJJulzSzMhVOv0+js7n3+BXW0hHBwDOw5bolP
         c/DQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tJd+vH/ntna15dEvTqSFvF2fGsLCY+50OqYA3his/Hk=;
        b=JO0Dmf8a9jLgGqpwJToheOtYeSKhqpsCviUr5xQ4YnmprySU40cMkgbmbuE+8hucYp
         lvzA4uNtFJfmHHY6+6OQLimH7umtKROYnPX7z28d9fvnStcatfzecznej72XlFypZGaG
         joGGacsQ/Ue/mqaVjuNecQn1qdqF+ssTrDXUHCLqIGoFN2xphFEbsHifvng2u43ztSNH
         GRI2VuONw74MwQgvMeUPIHTqOcPSYHLMttkWQZzgejykf+V3Qd5B69rYqqQIVwXljnWL
         H1xS9gugCyG7QiOjPNNsWFHCym5XbtPzh4hFvyNgJ7hVpwF2DxvfkhEXhXdtjtuil8LC
         6wxw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=nWELDIOk;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tJd+vH/ntna15dEvTqSFvF2fGsLCY+50OqYA3his/Hk=;
        b=J1AEH7C6A+mAnfl0wN8OEqiK5C8JzHK+GwUpVBhUyf6H+GXUt7jt9bLbZWpU9TCeFB
         VWCD4teHzZVSSCqdIswKICBBmApVXbyjA2OAx9oIoyq0ZBbOrmDWyDrSuKPi0zz0gZ3c
         DyvSdI6F90GAqziB3NECWHskADTnmNwZapY5Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tJd+vH/ntna15dEvTqSFvF2fGsLCY+50OqYA3his/Hk=;
        b=BpnUtTCQeGDZmCg/2nFMo1c02SrVDN2g+skk+YQVEab8HR1dmeuvil+/6b57cxjLNY
         8aZMFIMglUn58rTFYAh/W3gJ6Eb43kLTT/jGdr/QD3gZJxmuu1sI7k3dGLFEJLO679qM
         sEwNscVJ3IPdmthxUn/K+7LZSaAOKZOvceD3YGUOc5uViG10L9kAei3j+7NMDHVRoojP
         HUyS7rAoqf9BNBs9yeucGv3AA1Mfe8O5vhv0ZyPhSm1wtphEgV6KV865nf0AqHVwjW3q
         3fUx+yqOkm8RB8WmrqpvszHw1AH1WC1gm7KJsTAC1ugS1MLJp8aQsJMOqJCZmKquWzpk
         cgEg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVfgPencFjn3BJUuA3Sw2DThH7X8Osis11gQ/zOadgNjJW0dSJU
	ln8PNzVd/q/80O5LhZljf7Y=
X-Google-Smtp-Source: APXvYqx5dOghURA8CV7SU1ca5rM5WwWIM1ScrEpy2gwbV9vcllC+O9iHyWfkq+ylPHF1/l0GToFNNQ==
X-Received: by 2002:a17:90a:37c8:: with SMTP id v66mr40298273pjb.33.1559761737507;
        Wed, 05 Jun 2019 12:08:57 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:868b:: with SMTP id g11ls730696plo.15.gmail; Wed, 05
 Jun 2019 12:08:57 -0700 (PDT)
X-Received: by 2002:a17:90a:cb05:: with SMTP id z5mr42020598pjt.87.1559761737015;
        Wed, 05 Jun 2019 12:08:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559761737; cv=none;
        d=google.com; s=arc-20160816;
        b=hTEv43iQQ0ifEsDPW2Eg+UlwkxeNIb4K6Xt0mZDOj1PpelNtPp6hJLvZHq6Okloisg
         njJAmsD4tbXq4jyBdapG0AqhDbX0A1AZMmCqh68rKIvlOk152qyTvtIs1FQIlovDKFCw
         meDAO8ka8zoWCMR/g4OMQUYTQ3KoXkym/y1ctHCCuwmWvwsV1lEtKDicWKqeYduLxy/A
         5Gw4Zd7nubMqvRFemaYUEoMZfL/8WsymHVVPLzhEYtwO4rX9N+74cvlXSEgXskTj/pOb
         GA2et6oiRThsPOs4aq+x/caae35swKLcUaw+tVnyEw80ES2p6jWOh2nye2eMJBfJ23Ey
         pdbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=R1iW4uk9+JYFBC35gyWtC7mOUT5yXYQUHNN7P97nTSs=;
        b=PhfK5XLoCOqWeCQy/JiwKScFwPQNkjCnidu0xf51z2thZNCruh2+R/p0dIXbrsWgwo
         cVlazE/gCvmh8KjU/YtWJJfE+mIGkzJR41vBYYYOv2cZpz026N9n8NlHJ9f8NesKW0FX
         UBVYlbo44PwraTMKaqXKcBqogRnnURF/LS2MN1UBSNnKqz02xGFZ8ztFhqgr43dbHgS/
         dG/kUzodO4QoVaVx9ptFrEV+QpFX5RWIzl1BOwZPAEzbz7vga+IN6Sto87lo7Q67iOvN
         KfthrZtteF4pqIhBoz13hroZ5IbVr3kmW0F2+jznadj8+NI89Zu5QYJpfTfgNOEpVH8e
         Rh9g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=nWELDIOk;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id u25si28344000pfh.45.2019.06.05.12.08.56
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Jun 2019 12:08:57 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbHB-0005Dh-RI; Wed, 05 Jun 2019 19:08:46 +0000
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
Subject: [usb-storage] [PATCH 02/13] rsxx: don't call dma_set_max_seg_size
Date: Wed,  5 Jun 2019 21:08:25 +0200
Message-Id: <20190605190836.32354-3-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190605190836.32354-1-hch@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=nWELDIOk;
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

This driver does never uses dma_map_sg, so the setting is rather
pointless.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/block/rsxx/core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/block/rsxx/core.c b/drivers/block/rsxx/core.c
index de9b2d2f8654..76b73ddf8fd7 100644
--- a/drivers/block/rsxx/core.c
+++ b/drivers/block/rsxx/core.c
@@ -767,7 +767,6 @@ static int rsxx_pci_probe(struct pci_dev *dev,
 		goto failed_enable;
 
 	pci_set_master(dev);
-	dma_set_max_seg_size(&dev->dev, RSXX_HW_BLK_SIZE);
 
 	st = dma_set_mask(&dev->dev, DMA_BIT_MASK(64));
 	if (st) {
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190605190836.32354-3-hch%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
