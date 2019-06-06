Return-Path: <usb-storage+bncBDUNBGN3R4KRBIOC4TTQKGQESX7XXZY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x446.google.com (mail-wr1-x446.google.com [IPv6:2a00:1450:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 140D93763B
	for <lists+usb-storage@lfdr.de>; Thu,  6 Jun 2019 16:20:18 +0200 (CEST)
Received: by mail-wr1-x446.google.com with SMTP id s4sf1071981wrn.1
        for <lists+usb-storage@lfdr.de>; Thu, 06 Jun 2019 07:20:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559830817; cv=pass;
        d=google.com; s=arc-20160816;
        b=yHp7vaqykGbw9ZfLU/ZxqziFQakEA4dOuWhj/Hqaf0HA7ySrUuMtoissoyRX2XSt7p
         PaXapFvmNsTIFI1bSleJXK4mFQO0MpfBD1dfj3Mrw2MpIBmXfc8vyqlc8rPrxm8z6f6w
         XPx/kaerb+4zUD//XJWtVM72YU4RKTbL/kCTL5tprXIoYn+ieQ1m/TFYsZxn2frcFJu4
         JpZ87ScyAVNYVFqab9jTSmYdmfSS0wLBknFyTwIRpVu4Tfn9UymU8cGczoHhIkYOOllt
         W0slqbbFcrdtKklBoyJIcwoK41TRLKLqii5oABhisLlY6mOQBX+Oz+2SHl60hM3gjJqK
         5KBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=a40TrdCk2hUNZWKeszzSV1gCpOAI1n7GYLnZaTvJiH0=;
        b=u4YPlfMo+AapUhx2OUJAim56LEvln0hLLMgIx3zqgYFOA+5gZBwPp1g0FflM5jI41B
         NoWDg0mY4DYTJsVcT5CFoym2Ve5JO+eSs7defNnZ1TF96CKAW4+zx/ilXMb18MzNFrwj
         Hfg5FhW9zRXfVetFq0AuwPqqTClR9d7sz9YchJGepDW7zRTV3hVTAVyNkPH/WHdJ9Q7H
         jHYU1GnGkMvohjhFGFbVqIyXg7nvfwBQq69yX7W+dHigpTT1U8TChLRA4LkZXJL8i6j7
         ZkMUIsVSycHGl5HJmQQpcb4MIP5icqxadYpQH3xsntV1EVaM8va1XanTsmI1tAqSUBL7
         CXmA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a40TrdCk2hUNZWKeszzSV1gCpOAI1n7GYLnZaTvJiH0=;
        b=cXdfnl1hLF1DMN3u+NRCEpr/ms3tj92zX4PMkiBYPXU55Iw0E1+AqixYihgV4W8n3X
         09YH2GG893FpWG9K01qSGHZtHzgT+c1mHGd2Kg7GRJR27j6tKl8jYyNRS9Um/emdJXJq
         mDk5cxALSNjfkuTl2fjeUusjMwYz/eLYpJJlU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a40TrdCk2hUNZWKeszzSV1gCpOAI1n7GYLnZaTvJiH0=;
        b=cpTW4yUaDxuyurHq9bMR3aWFWmmMz4zTogWPIYjpZiSJlcSgGfxMeWpXggpUKcveG2
         XUmBX2V2VAaVa1gNbnxR8iyi0uuYsl2EKc+8ZH1wrR1CHlgL1degf0ekIPmwE7dGPkIR
         gSVzEATTtDsmgE/tySgYXkulVl91h8THzv5PMmlbwGGYVzggcZA88/87ldvQ7PeUeLY1
         LXe5rOmmRat/JsIIiqAceUc8c8fKhycmMuySPZygLHoxYGS9lp1RayGP0VVp1D7dg9eI
         mLt0/CE7xuiW15L2QcfOkbKV6g9kLTQkMbiSPbmTUvUBzJBEoAO3xWKOaHcj4JI8UQIZ
         o5Pg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXI0AyQRL+dPnptWN3lY8uiOjp+vGPMYGccfBPwFHDHXPXtp4mO
	KN4N3DoHhtltKUYzVA7g0ksGuQ==
X-Google-Smtp-Source: APXvYqxdtFiCThioJBy5Nu8ODLqXduKmLVZcOJsO9oMwonooYmYMbnzLQ891jtv3mPuKf2Bsfyiw7Q==
X-Received: by 2002:adf:e9cc:: with SMTP id l12mr413810wrn.29.1559830817785;
        Thu, 06 Jun 2019 07:20:17 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:4e8c:: with SMTP id e12ls1317274wru.2.gmail; Thu, 06 Jun
 2019 07:20:17 -0700 (PDT)
X-Received: by 2002:a5d:5342:: with SMTP id t2mr12943435wrv.126.1559830816990;
        Thu, 06 Jun 2019 07:20:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559830816; cv=none;
        d=google.com; s=arc-20160816;
        b=nPsh4/B4GsC3t3shlgEGjLdKwflAP0JywyFxSQ7VBwQtvBrK+/ApPGIsVHK/F6/ZXm
         tlT1YE8nvnzUdT6RV2rTfspRSaFsezEL1I1mUYkoeBQ14bSPJ2LlvjYbBzD1Bz094Un+
         oIOMchC2eUHkS6PEIL7d0hXbqvb1ZncUM77NHnC6P9lQ0x8AETstzjtzcN0H9pGd+BYl
         Kd560TTe+3IOYx1mZTMeCa4sYArJ9EODyb1FUWqsPoHFMeIqfJbqogpBd2EUxgKrm4Fz
         rK/MYPwjomkFVxlWpqvUUdBC7tHkkaRMZCQlYMJKcxB6wptoq3UNGxuOw2ypNLb2H59M
         m5Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=71R1aFiK2A/Th+jdMI51PnzsNWjtUpEw+jQGO6EL1No=;
        b=zauTYyrf0YVvVYI859km2pzgYjh1TUSERW5nfj8N8CHiB6lxZMoip3XSWWOGruzP86
         f+5czfVf8xqihPCUNGbYNpx/TUWBGHx8H+BtaVj230yZ8owq1yB+Bbj0HXGnarLLadXk
         s/Heyczhy9HxDcjn3a9N6gGSuLngmM8gblG8HfqgT6efpiyQC4a6cDJ2Fia07vMR2KOf
         BLZjR3TR+ntpLX1iQ52QX7r73qWF6pHIZqjNhstsyV+Y0nrYtKPX25uiXnXWTrTeKTZ3
         ENLUsYDYXwC7pPAWU+xkD3dKZcG+s115I9LhcEtTWcElT2bX86Oi/IrGrH7Bc44VZxgn
         fKEw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from newverein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id x84si1506028wmg.18.2019.06.06.07.20.16
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Jun 2019 07:20:16 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by newverein.lst.de (Postfix, from userid 2407)
	id BE3A968B20; Thu,  6 Jun 2019 16:19:50 +0200 (CEST)
Date: Thu, 6 Jun 2019 16:19:50 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Sebastian Ott <sebott@linux.ibm.com>,
	Sagi Grimberg <sagi@grimberg.me>, Max Gurtovoy <maxg@mellanox.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Oliver Neukum <oneukum@suse.com>, linux-block@vger.kernel.org,
	linux-rdma@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-nvme@lists.infradead.org, linux-scsi@vger.kernel.org,
	megaraidlinux.pdl@broadcom.com, MPT-FusionLinux.pdl@broadcom.com,
	linux-hyperv@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH 08/13] IB/iser: set virt_boundary_mask in
 the scsi host
Message-ID: <20190606141950.GB15112@lst.de>
References: <20190605190836.32354-1-hch@lst.de> <20190605190836.32354-9-hch@lst.de> <20190605202235.GC3273@ziepe.ca> <20190606062441.GB26745@lst.de> <20190606125935.GA17373@ziepe.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190606125935.GA17373@ziepe.ca>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of hch@lst.de designates 213.95.11.211 as
 permitted sender) smtp.mailfrom=hch@lst.de
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

On Thu, Jun 06, 2019 at 09:59:35AM -0300, Jason Gunthorpe wrote:
> > Until we've sorted that out the device paramter needs to be set to
> > the smallest value supported.
> 
> smallest? largest? We've been setting it to the largest value the
> device can handle (ie 2G)

Well, in general we need the smallest value supported by any ULP,
because if any ULP can't support a larger segment size, we must not
allow the IOMMU to merge it to that size.  That being said I can't
really see why any RDMA ULP should limit the size given how the MRs
work.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190606141950.GB15112%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
