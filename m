Return-Path: <usb-storage+bncBDUNBGN3R4KRBSFG4DTQKGQEMH6EUIQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9C9363CD
	for <lists+usb-storage@lfdr.de>; Wed,  5 Jun 2019 21:08:58 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id i3sf16680298plb.8
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 12:08:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559761736; cv=pass;
        d=google.com; s=arc-20160816;
        b=HK19gwCM4pK6TMWXd3f2gToRJtUA5bst1jAI0POgWLI3u9FBo6G8hXRO2KZVlu2nzf
         Q34kPnXEP3CmsCXou5hEyq62eoBSufG/pDY5u3HXtseJ9Z/n9qc8qYdsoTYOvgTfsfNr
         Wtk9SGfRQ/cMfXqPavmiCudcYSxT6tg0FyppwMNx83fjtqXCHQXPHDEp53m9vxl7YJ6K
         4VrAgVYUzMpjUQB4rLUzb9emczsqG7ZVzpePGwTlemJ6iq+2KHremvmGcIyqJNSlDl+1
         JKvLLwBc2MtSeHIRKfvSo6kSylWHxmcRbYXuMY9LBsP+wTt/nJ+AGnKF9RyK7cHqaulP
         UOLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=cWMBPYpJ6I/vihqTdwG9ivdNX6tkgjYY79f8uXrgXKg=;
        b=GKRfQlY4rhhm/yQq2xIVYqZRlsoB4PttSkkY8dJ6fH8OPjJE/kXORMTFwtTHmZVtZ8
         x7MTtYab97G6kYetOkkseePo+LZnasDYTEC6Iq+u4HrNNmQLCCzrRfSoR3Gm+FSKZ9gE
         v7reV7im4Zhpn+Y2sQ/zUEXIvU5zdFLrygby1795WZq6v2jg+UcIfuI7HSUBeOat+eQt
         J5WutdVE5ongd09uxxgkKUiZLkE4ooUhaZNb0Ut6j2ePhYC6LXnh8Eqs+XCVtxf5k+6Y
         Ez5E0mLLKefvRnyokwoMKDWsly/z6yvS1bK6RHdEhqSjYuh0FVVrm+i5i2y9Q1ABBcxx
         4DQQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=MqJkkcnx;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cWMBPYpJ6I/vihqTdwG9ivdNX6tkgjYY79f8uXrgXKg=;
        b=ShkySbducJCJcDf0iT/6uHzi+K4LVg9uiYbVm2WB6vXUSft53ZsFQbhjD0AvAMxFpS
         2P3y9C+cJf9HKEomZFcpsQpCoL4XFsbk1aJtnpmCGIgSOHwUe2Od4d+8HUXll/Tpcbca
         xz8pLMEOdYIYDvMA5OWphWXQA9Iqs5bJR/9h0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cWMBPYpJ6I/vihqTdwG9ivdNX6tkgjYY79f8uXrgXKg=;
        b=cG4Z008R82QprdRH84ewEcyqFRDQh+nYFo849zkxL50JtZkJAc7evyxTbx9vckJy/1
         wkmXpLRZxR195FSfnFxuIvFF4g1/51X9UfTA0Ivck/DrDFtcG/1uB5woIc1erq2RLI9M
         Bh9pOTUmvRuTzne0sq0yfENv4TZrqg5lLtboXcNv9OKyKPvUwkqfmigsXIIy7FPpL2K4
         HzYKLV3oH1toToeWgLHzZSubPKSbplqwr3T4FYIXxwgIzayCWii+MFXV/GfpxiB8FW6M
         ElV/qwscd8UrScnAPm558DQGw1Tlb0dMDIfK4Hv7tEbaEcgmFQ//FvOte8BV/oV6Y9oc
         XGMw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUpJ66+chqOFpEPs39Oi5yTOZzrXRR9OQWemQsakXQ4mNn62p6n
	048/eF5qx8qlsqubPQJ6xu4=
X-Google-Smtp-Source: APXvYqzkJBv+Wy4PiV7DBQbeMcKCi8fHff+0zkQ27n534RCLWde868zCw29vsuyymVoQsaUFIob1Sw==
X-Received: by 2002:a17:90a:21cc:: with SMTP id q70mr18994798pjc.56.1559761736572;
        Wed, 05 Jun 2019 12:08:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:b21:: with SMTP id 33ls714325pgl.1.gmail; Wed, 05 Jun
 2019 12:08:56 -0700 (PDT)
X-Received: by 2002:aa7:8dd6:: with SMTP id j22mr50004113pfr.192.1559761735971;
        Wed, 05 Jun 2019 12:08:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559761735; cv=none;
        d=google.com; s=arc-20160816;
        b=0dAuE3SbrXujJzk6z2EjvXP0nw1R92qetDNEa9t1Qa4ohuDfkEVjnAFu0GLaY7/ZQY
         vOocemTal7ps0+zck1D/jmbkRlmNLkinQLyQgM4hL8LAgirsLk7M8CWiYgu+ajsGQMh3
         Cl1f+8Z0+VdtycRgu4FFpTwxLGe60UQRNofUtoqxq/01jJKTlYHSr2eT9UqUDzT/11Bd
         j+QUUOPT/wVR4VumxfSWTolBEBuEwZ5M0FfANzhEyFIdkbFd62/VhbHTRm/+Am9UkO9z
         oWV+PQLOb/w+VY6L71ezxPMUoc1Cs5A1TZ+tEC54Ut4Zhnacg8cQ8BO15SvEtOUHmXpE
         c7rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=aXk533Y40BLOyImNad0BaK/HkvfBpi+VFKiLovkq2FY=;
        b=05LF6ncL5OlobIrVqsTSFowmcd7kdf8FFiKuZS1UNZhOakCvrZ5O6tQbOAYsYf1EyB
         m1BT/7xJJ9SBM2ZDjum1SEuyCpEmtuTTF52MlvTy4g2pRyzLHIZ5CO4Ev3tuzjR2uygc
         nP2kr38Hf94+BENfi5BLGW3ton7LHDgEfIfZWEjog1rYbDaoeU2jXm2egPIOefLbdS5I
         k4WrH4GpncKmVFiizhd+k+Uil/J7MtoxicjXzve01twCkgkD121WA8NlRiqX+a1F/TEx
         F0zuJb02/0C8/Iks6qOJC7P2jlpuO/PMKLOv7WcN63CeAuMhLgZ5uGcS5B8hL+yvNQ8m
         dKsw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=MqJkkcnx;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id e18si28202883pgk.236.2019.06.05.12.08.55
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Jun 2019 12:08:55 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbH4-0005Cx-Qz; Wed, 05 Jun 2019 19:08:39 +0000
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
Subject: [usb-storage] properly communicate queue limits to the DMA layer
Date: Wed,  5 Jun 2019 21:08:23 +0200
Message-Id: <20190605190836.32354-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=MqJkkcnx;
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

Hi Jens,

we've always had a bit of a problem communicating the block layer
queue limits to the DMA layer, which needs to respect them when
an IOMMU that could merge segments is used.  Unfortunately most
drivers don't get this right.  Oddly enough we've been mostly
getting away with it, although lately dma-debug has been catching
a few of those issues.

The segment merging fix for devices with PRP-like structures seems
to have escalated this a bit.  The first patch fixes the actual
report from Sebastian, while the rest fix every drivers that appears
to have the problem based on a code audit looking for drivers using
blk_queue_max_segment_size, blk_queue_segment_boundary or
blk_queue_virt_boundary and calling dma_map_sg eventually.  Note
that for SCSI drivers I've taken the blk_queue_virt_boundary setting
to the SCSI core, similar to how we did it for the other two settings
a while ago.  This also deals with the fact that the DMA layer
settings are on a per-device granularity, so the per-device settings
in a few SCSI drivers can't actually work in an IOMMU environment.

It would be nice to eventually pass these limits as arguments to
dma_map_sg, but that is a far too big series for the 5.2 merge
window.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190605190836.32354-1-hch%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
