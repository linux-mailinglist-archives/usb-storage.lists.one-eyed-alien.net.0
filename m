Return-Path: <usb-storage+bncBDUNBGN3R4KRBY645XTQKGQE2IUAO7Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x447.google.com (mail-wr1-x447.google.com [IPv6:2a00:1450:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B73939BB4
	for <lists+usb-storage@lfdr.de>; Sat,  8 Jun 2019 10:14:28 +0200 (CEST)
Received: by mail-wr1-x447.google.com with SMTP id b14sf1921772wrn.8
        for <lists+usb-storage@lfdr.de>; Sat, 08 Jun 2019 01:14:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559981668; cv=pass;
        d=google.com; s=arc-20160816;
        b=wyvqPalCIshcGnAj+D1pDlW9UWeYuN1XDv9EYsNZcNr9+j3OcIOK0M4+LHHYHEXNKA
         +ZpXxPKj7CSMN5VC3RhltFlA9q97oJIwqxrGxKct6JPDKsMz85XTFOrlQ1+W+AA2ws4O
         x0ZVfMSww/Shf10mPnxCVmOAiXlOXxG5mhyQaQfXHA/5BYwUiqYgPrgLcKZWiw//zZcs
         dEasrNcqrqozIwPOeCQd7spApzqNXlEUPu7+kGrR9pDWpTdSh+0WnSTpTWg1LuZ4xUaM
         2eL5CAy+bFdacIqsLli80hm4e17Yy6CuFWc+BCMT0pB8Tg4Cq/GJYanz6PxRR89eNn7R
         GClw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=F8gky9f+Fckbh75ZlIBrz5/aMEi/1EFNsMre4k3sXU8=;
        b=PocaWot+c6CtaH79/i0SR6hF5T/ArXLo19W2EPO0oMl37PXimw+Zf5nVaUZsUapf32
         HCdXGz8V8hXeZyKmgJ9o/OevbGcanD9gK5rfMLFwUQjWyKm8y7Ltfygkaac8gPnIv3Va
         sOi3k6U7D0c7aIa+g8rxmeIOFq6yNWs36Oi0O6R6dKcM2UW7Ss1tvumOjUezMYNcfFho
         c2Qc4tw4OLEFUbYSzg9ySHEZnWF/9DiihZE41Eecg6DhE1S9A6DktZNt+3D3PwOiH40v
         xvc9kEdNYcMvAoPgiWPDnwj4yBPZxvEOSjlVBOmjqjbpK32/YZ3UqefVH1D807zoBw4g
         kDIA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F8gky9f+Fckbh75ZlIBrz5/aMEi/1EFNsMre4k3sXU8=;
        b=dD6G1wDKIBKUGTqtU1Yq5pNIIB9840bGHkqeF4XgWGr2IqmO4fNpS90mlejLopvyxy
         bw0I80nOp1kCZAMYDa06joO5XFSJ8c+4/YM9Z+hnIllZfNGLuLma+83/5CxvvKUoZq5y
         nZUNPULt/mB52lssH6ykC8q8bU/nLfCLAmKWM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F8gky9f+Fckbh75ZlIBrz5/aMEi/1EFNsMre4k3sXU8=;
        b=MmOwaQFrsoKfmhYEoMqG4zS0V6a8oUz4nWnA5S2Eu6vvUEXdM29Ilnh0T/Dzby+T4g
         8cCTWS+9E0mON4vF/H9KH2owfndW0rGrPNMJEOUV8kORk5nyzJClfNCteV92b0VxPG0h
         v2VU3SwhMe99OgyS2yML45ZV+xWbEJ0l6RUiiey0pQJ/A1AThEVbK/vDCGa7uzG5AKO9
         TA+/YZZcC/8w4f78RdF5ZInklRnhUK7xP6pI5GzD5af/z9TDSa10hBCwcTHgTKQAhxjF
         5Hi/4HI39nNBKwqwUaMWmzzb1GMH2vSRmgXvu/3WjGQdXFoL57QQTmEIZjuGqtnldRRp
         Z86g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVi97VkcrFUrUW67D6kvPYldqtlbwaO4nW7otHsl2z9o93tm9mC
	V6Vo5iSExDU0rpkwwtHb5wGhBA==
X-Google-Smtp-Source: APXvYqy6f1gT8T4E4FHjsIL+L/E34sVz7OxFdy7FP2OLXugi4ykDdzRkJFW+XLlxkVtbuB2z654qgg==
X-Received: by 2002:a5d:6acc:: with SMTP id u12mr28269249wrw.349.1559981668176;
        Sat, 08 Jun 2019 01:14:28 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:b484:: with SMTP id d126ls3368049wmf.2.canary-gmail;
 Sat, 08 Jun 2019 01:14:27 -0700 (PDT)
X-Received: by 2002:a7b:cbcb:: with SMTP id n11mr6204064wmi.146.1559981667344;
        Sat, 08 Jun 2019 01:14:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559981667; cv=none;
        d=google.com; s=arc-20160816;
        b=UH84EXLaPa67s0MObh76j5qYRsywXVp9M6fxLc2ZTFHzfs9Lb7Kh17lhKItER0drio
         B0UJxmp1Z2xftecYypARTF+b6MqEYFFUfCzkbk6crbLDovvxT+YNeUNyJazbF6eo+tpu
         BMloEzqly/4cm0wBgk31z1U89SBqfLsGwac9cWkwpUEYohzKb0fgrRe74VApRFghNFkT
         mjJuFBQqjLezig1YhvAGr6GM1xRZzVSNRzpPYqlzqlRc4gXURNhCu7tx1aJT0yMpCVy1
         hiZX0DOhVEodB4ooeADdjm8UeMsnGKcy0ndcMqOZxYJEMVxkAtTYAHvah59SD1WuLfJg
         31Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=tHWAKOeFhbxqTWoTb1T6szenEnfDug4m6PHjchuPgI4=;
        b=HS9y82/8oQKcG0FVBkYzveD4QUNTfkHgwYudb2lQhISXs+9ZDVDp00a2OkKu1JezRQ
         +uFyFDFY/uQcSIOqsA9seA/+uYr7bICd+GNlKXK6TJzN+rTqLsd1G2YROMMJ2g700H5V
         3NPZ8iPrVoUQ28WDUFm1ptOTqwfMaWOzX+S+rpVCdfNJETuZT2l/i+04HtMTMDk542C+
         OeLKXrukgDT6tKcUMagoxpFFbHcklXmdoqcB+8qioxFwQLRQHuV270Ufuc5vx5eesAsK
         yzljc3sFxpJlqp5afXUuKjeTYUNjh10J3zk1KXTEYiLglKevZdD+vM3ChF5Zt1IPd8kw
         MJNQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from newverein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id t11si2215913wrr.212.2019.06.08.01.14.27
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Jun 2019 01:14:27 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by newverein.lst.de (Postfix, from userid 2407)
	id B4A7168C7B; Sat,  8 Jun 2019 10:14:00 +0200 (CEST)
Date: Sat, 8 Jun 2019 10:14:00 +0200
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
Message-ID: <20190608081400.GA19573@lst.de>
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

On Thu, Jun 06, 2019 at 09:07:27PM +0530, Kashyap Desai wrote:
> Hi Christoph, Changes for <megaraid_sas> and <mpt3sas> looks good. We want
> to confirm few sanity before ACK. BTW, what benefit we will see moving
> virt_boundry setting to SCSI mid layer ? Is it just modular approach OR any
> functional fix ?

The big difference is that virt_boundary now also changes the
max_segment_size, and this ensures that this limit is also communicated
to the DMA mapping layer.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190608081400.GA19573%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
