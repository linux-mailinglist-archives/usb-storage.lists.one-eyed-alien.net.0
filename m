Return-Path: <usb-storage+bncBDUNBGN3R4KRBJ42RDUAKGQEB2NEMMA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x445.google.com (mail-wr1-x445.google.com [IPv6:2a00:1450:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C6043451
	for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 10:45:28 +0200 (CEST)
Received: by mail-wr1-x445.google.com with SMTP id w11sf8528625wrl.7
        for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 01:45:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560415528; cv=pass;
        d=google.com; s=arc-20160816;
        b=JniN/18nW3k4xwqM9pVGjnlg1CGQ7Jae5OyrQ8Xfm3AvIzzJk7b31cgmIfxazSMQGD
         qbC/G1M7/siFBY7Gqqsm4Oqb1qn3iMakTGRUhHHNjFf8xnszmCZjCdCkKjqnQiEX7gvS
         op8R2ZMYVZo3t5Ukw4oie13vxO223XXYZh6ElziURyxQ4Ijksu5ae82dcGmWzBFBnTB/
         g8SxxyZuDpoxbj9ikD62pa+1J/EqVhzsCLpVlk/zFZQ3U1NeU7ygUV8oXtJWm2Cs2B+t
         Ye9SwV3NHlrPwqoWsSndFmAtUKzE1/wTpVGXuR+atAgD3Qs92FeU2KsI/oFBaTI32xtR
         oWFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=l4dfWRmQa3PdRLp9yMGlEBcCDOQTgKulpOvp5MNIKPE=;
        b=eQAUEG1K9s2TCAsO4gbVWDiT0wtFq0N5pqXgyJr487meMKBx+hXFanvRe0OmEIF8lD
         dvvGBKvgQndQyJ3MVatOv3dEc+KCsnO3tvRPVqaR3Cio1b8jRdQburoI/RoKJTz8G7+u
         WDDwP5+S0xILuF+ABjwmePxQywKPYos1EK1dp2+n/qFCvqt3A/ksYiG+gkKwYM1MFCgk
         vivbttK+/oXGs1CsuXXP/1RT/HnVFe+fYtPqxxgzijtBt3gYV1MmViIEwtqZWA0gkMkB
         cY7oL6QC6hm7AEEOEshf2K7MyC0qIVHAMlMAPXbLmNBeZUSnI5anSwadH/S6TrMcdzrY
         LpVA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l4dfWRmQa3PdRLp9yMGlEBcCDOQTgKulpOvp5MNIKPE=;
        b=L/9aYOihQg4WO/aXtSeKaWcvCqeaKJr/lUULkxK/FuXv/Odh0k/1p4TdP4Zx/NhqMV
         LQgKI/JxQDwgxHvXQLUlyFhFC9FsU1SaTQ9lJ77AEVdT7mRIrvqEo0UkzmJBDGH50uRG
         G7VbMuGBnV1aKQIKyQss2OTwgEhVBOKtrOwiI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l4dfWRmQa3PdRLp9yMGlEBcCDOQTgKulpOvp5MNIKPE=;
        b=sHFNHZ64cCKbbpt0jMOX5Jo0l0ntZifhMxGsa6L/6IqTlWHowZAzHT5AmG4uW13HDI
         tI5dXIuGId+dwt82tNenPUmq+wN6K/iOJX0IrwbXumX6DaPEN6cSkbhYCdbLL5G2HB+o
         bvoV2t/gQCpRTkqNE6+KS1iPwTFVLmTfIIOO5vOA4FBHbb6GNXIO7U+Y76aM5suQfA2u
         1SZ5JVWln8jN6Xbko4jwHNMSP3xAVJWRhWa94RiA/KBRWTQcmqZ6l/ZAF8F4ySWaixsr
         pGVcEajoX0a8BJC69Lqqt3fePEeMfsGUcWJ9I4SUNaIk6uBvtoEyxyL+CYd+pGoTku9O
         xn8w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAW5k2ipSnp83B6blzKRbuTqYhc5LLmGfHybGc7bHexk7t1gzpLs
	Oz9apZzyrM+aoIxFLbud5sTQBQ==
X-Google-Smtp-Source: APXvYqzext/N3WPnzSq9gWchca+jx9JxsTb92BQETc5w5mUdDmM2XEOf8ZTrmRs6qp6VP6B/aliX9g==
X-Received: by 2002:a1c:2082:: with SMTP id g124mr2605643wmg.71.1560415528053;
        Thu, 13 Jun 2019 01:45:28 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:2041:: with SMTP id g62ls1483355wmg.4.canary-gmail; Thu,
 13 Jun 2019 01:45:27 -0700 (PDT)
X-Received: by 2002:a1c:cc02:: with SMTP id h2mr2638538wmb.13.1560415527234;
        Thu, 13 Jun 2019 01:45:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560415527; cv=none;
        d=google.com; s=arc-20160816;
        b=h2AaH9EfhKwt7qU16dv91koVms8Y+ugxUIhjEspRX4wSmIyvcR9dBbKUHf2xGXukqG
         TV3e+RahDV5SpBSbmPesq+AO1RNq/8zLryIRlAfSCUQlPndGP4ld6UAncyg/cpSOeYlV
         PNAKxWxSgXeeueiefNt7Qo1ViDXRjGnbTubYnCNltaGmmefMU1/1rY62nVcN5zlpZJBV
         M/Tzz/pxyAubW46FuwBQKiaq2K2zR6rK0FJmpS2cqyX/pVToUL+OmAa9unf5wV/Xr95F
         /+oqovDuzhekdjC99pjLqlJEU3FKNlE5WLy4IltL4EGx/WRPQhbZmxuYJ7om9MwDu7b0
         n2Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=pmZir0/Ez2jQe0et8iHFQVjRv0l+fopfvx1ol0mI4K4=;
        b=kIRY1CCF29u30vrj5dIaPpzM5dsneiA9CIPS9aDihMaDpz8WQosJTf0jG/0WRHufV+
         5m8Bk1ir/oF4YC4pEJcJxUI7JenOTx48M6S2o3w81zpcj+jJPaIZh70R9EHmIJhyXZGa
         Xkyi/surLqDsf+k4CMe4RhMNpXqSpilI1nKVFeaVM28YYMwc5skZFuW7Pk69TGnSUsts
         XBx7kd+gP6dSMIm/tn2pQczVfMqzWWOnleOG0cwoyT1qacoyHu02L2upwazuiHXBCxLK
         Q4BsTSChxL0XvSmHFoTgKxCRFLuyCD3ecvuwq3bPRKj60NqCP55DunGLQJr6RHeg8TFm
         Xpww==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from newverein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id k6si2198357wrv.82.2019.06.13.01.45.27
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Jun 2019 01:45:27 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by newverein.lst.de (Postfix, from userid 2407)
	id DEC0668B05; Thu, 13 Jun 2019 10:44:58 +0200 (CEST)
Date: Thu, 13 Jun 2019 10:44:58 +0200
From: Christoph Hellwig <hch@lst.de>
To: Kashyap Desai <kashyap.desai@broadcom.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Sebastian Ott <sebott@linux.ibm.com>,
	Sagi Grimberg <sagi@grimberg.me>, Max Gurtovoy <maxg@mellanox.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Oliver Neukum <oneukum@suse.com>, linux-block@vger.kernel.org,
	linux-rdma@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-nvme@lists.infradead.org, linux-scsi@vger.kernel.org,
	"PDL,MEGARAIDLINUX" <megaraidlinux.pdl@broadcom.com>,
	PDL-MPT-FUSIONLINUX <mpt-fusionlinux.pdl@broadcom.com>,
	linux-hyperv@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH 10/13] megaraid_sas: set virt_boundary_mask
 in the scsi host
Message-ID: <20190613084458.GB13221@lst.de>
References: <20190605190836.32354-1-hch@lst.de> <20190605190836.32354-11-hch@lst.de> <cd713506efb9579d1f69a719d831c28d@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <cd713506efb9579d1f69a719d831c28d@mail.gmail.com>
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

So before I respin this series, can you help with a way to figure out
for mpt3sas and megaraid if a given controller supports NVMe devices
at all, so that we don't have to set the virt boundary if not?

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190613084458.GB13221%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
