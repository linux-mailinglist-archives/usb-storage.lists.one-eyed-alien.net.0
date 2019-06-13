Return-Path: <usb-storage+bncBDUNBGN3R4KRB57YQ7UAKGQE3723BCY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x446.google.com (mail-wr1-x446.google.com [IPv6:2a00:1450:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D1C433BD
	for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 09:34:15 +0200 (CEST)
Received: by mail-wr1-x446.google.com with SMTP id u2sf8515057wrr.3
        for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 00:34:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560411255; cv=pass;
        d=google.com; s=arc-20160816;
        b=RdkkheirFg4CaEwRfiHwgennKTQzDarR1r4K06Ns+3agVufkcLi+6i9tgF3EbDM1aI
         F4x7jmWPN7rfyJ1Vw7MwSWU5Z2tQJPV1qjFck+q7nXn79nKyx44QEwf0Nc0UxM72d/at
         d4VUDn11hO9+bZZWu36iMg+orhHb+K5ul0lagoz6LoABlQPl2T2XYafXlmbYJe0z12fz
         rVlFNxlPHsI465gMOq4RDJm7OY93g4Cd42MnhGAhRyxbqSN2HkH70BVSoTr5XTvqxU1/
         ljKh1PjG9nlcIODlVymYaBIA/p4Kn09Li/fVkLHcjfi41EOPO/AQ+RJjdCsInRAnT7BN
         i56g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ASHX5+Bip452LsVqjZy9N3l3/5UKMBFHGY+F4+nbjM0=;
        b=l5OJMC+2vu4Vn7B27FfKNSUZGDIQ6BUCAUeV13hNjU1rTqZ7sLoCM5i5tjgptHxwEd
         tXdm3FMZN74cYCEqPLFK+dRS1yC3M6TipbGzWAwJjEv6L39KEEY0B6JTH7ryt8ELwWyj
         PIe2XAqGaBnhhe6lZ3H1qI5RMt1LlvYTNLZagDusWB8JKJREz34i2g/ljZYvUK3U1703
         MqTVUM5aBxi2GJftBMvQy5UJP3nYfdi0BbuEufiBD97s49GPZX2jsDu2kTe/QQO2R782
         st1HFLaixou3FE4YY7nJpQ8L25QWyU1bvycp/tucW5xtfFwjvNL6Q1X3i1Kiy8SAiz+9
         z5GA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ASHX5+Bip452LsVqjZy9N3l3/5UKMBFHGY+F4+nbjM0=;
        b=lpwuMkNwc+GOCElky7lENTH5JQSxgXBpAULxk1YfKf30a333Ig1P0FCXQaDbuHAv8F
         CIsIr2wBa9tPDy5T8qQm1BiakhSOZIJ/fqFAOQ/eiPb6ETxR2t5xGEzyIkEXpMAp1Xib
         fyb2hYb6AQf7MT4wHXq6pSm6TOtUsZysiRqD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ASHX5+Bip452LsVqjZy9N3l3/5UKMBFHGY+F4+nbjM0=;
        b=habMvFuzhyeX+oH5Py6BAg0qcSHKDmm8q0NtkEX0+ZD4T+gNTJgfZVUrjhR4Uvi+YQ
         KOGnV41PV9bVrl9mV7CUXUjVllFsYV3iRKkKsurPi8nShDHYN3lgBljvh3Cno2v9WNwr
         uYbxz+T2jfpKzkcTiNQ2Pyz2n0U6oUjpFrHAxE1JsqNLosMOb8/CGl64cnHq+tY3Nf/4
         O8rz9Av782Ocf6gEsDEss73+YqtneAyrI2X54nQ8vZssmQYl7NKC/DFmlCNoRW4YVIJR
         YwufrjLNIeiWLbxBUEFYLKzsM9NcUoIwXCEcVZ08waLJsevD//6OGd0pAUsJodPrgchm
         nh3A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUQMkFALY1cb0HWa+XpSaG1hfHTPr3kSmLaHJmHcK36ylLWdxUA
	LooxQL1h7NTzUK5D0T1Cp4jf2g==
X-Google-Smtp-Source: APXvYqyY6+HH4nqoenma1YSAGJ6jof287ENpsoe85H2/H+O8moXnCO+4NFoknaEtWTS2NXGWRqGXzA==
X-Received: by 2002:a1c:c003:: with SMTP id q3mr2391569wmf.42.1560411255450;
        Thu, 13 Jun 2019 00:34:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:e844:: with SMTP id d4ls1101814wrn.7.gmail; Thu, 13 Jun
 2019 00:34:14 -0700 (PDT)
X-Received: by 2002:a5d:6acd:: with SMTP id u13mr12192118wrw.154.1560411254608;
        Thu, 13 Jun 2019 00:34:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560411254; cv=none;
        d=google.com; s=arc-20160816;
        b=ZLZqmSXtWxFaQT2StP+bi8JfSqOwbDQ3VhaiyMZcBAv5s+RvbzDxP7Ql7///izDY3y
         4FYPIIcBpoGH4qEjF3VyfdypI9NC/SN74bLCS+ncJeRBHec1smMdxzS94gGq+YC4xPYE
         HXf+SP96PcqU8/rtsH76GPQun/eNtsWy4mLIkJEIfnysrhMMFQOOpG/mMsPojVHV3oSN
         9TUGvsdV37SFztkcWCS7s0clm+TWkB9GIP6Hcc0bDcFMRGZ7snsBK1KDzxcRZZFBZ8ra
         /iF2PD4hwtEmCzrr4ayIwCJ84xJuMGhBHPiyE1LiMpeJN0nSiSf+LPEJ4nSCDvP97JYm
         71cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Pi47r2nVZGLDFxN7xlFNzHp61251RfH2QIVCxaJe0UM=;
        b=RT/9txcjMvziNTCqaXnnLHt7xX87vrowFz2kN7A+cSB1I/xBT9SEje4T9qkMbISQv+
         KUr4tJ+GeltgewI3mw7uTulzJO5qg1Mqm9ov39kkBN7+Yqt6eBwhkOyQtpiR35wnORpx
         DDWpGpTJQ50eMjucSrET7ogMK46x4Gsx9YvVDi364DX8ei9BD9mUAJrFvBkr8y6EjUnk
         evalwgF4EoC5oU+I6p2O2fTTKwx5hvkqVO3hqU9d9D7+EOpE+73t2zxjGLEUR86HJMOJ
         J/DypCx0wuR29dQKsTq7eF+/NsqO9VablohyZtBxfZjbuK2Pdqz1lSz5MozVyOLNiXTR
         hGtw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from newverein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id j2si1850381wrq.293.2019.06.13.00.34.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Jun 2019 00:34:14 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by newverein.lst.de (Postfix, from userid 2407)
	id 21C4E68B02; Thu, 13 Jun 2019 09:33:47 +0200 (CEST)
Date: Thu, 13 Jun 2019 09:33:46 +0200
From: Christoph Hellwig <hch@lst.de>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: stern@rowland.harvard.edu, gregkh@linuxfoundation.org, hch@lst.de,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-renesas-soc@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb-storage: Add a limitation for blk_queue_max_hw_sectors()
Message-ID: <20190613073346.GB12093@lst.de>
References: <1560400504-26884-1-git-send-email-yoshihiro.shimoda.uh@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1560400504-26884-1-git-send-email-yoshihiro.shimoda.uh@renesas.com>
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

> +	if (max_sectors > 0) {
> +		struct device *dev = us->pusb_dev->bus->sysdev;
> +		size_t max_dma_sectors = dma_max_mapping_size(dev) >>
> +					 SECTOR_SHIFT;
> +
> +		max_sectors = min_t(size_t, max_sectors, max_dma_sectors);
> +		blk_queue_max_hw_sectors(sdev->request_queue, max_sectors);

I think we need to do this unconditionally for the rare (or maybe even
theoretical case) of a dma max mapping size smaller than the default
max_sectos.

So something like this:

	blk_queue_max_hw_sectors(sdev->request_queue,
		min_t(unsigned long,
			queue_max_hw_sectors(sdev->request_queue),
			dma_max_mapping_size(dev) >> SECTOR_SHIFT));

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190613073346.GB12093%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
