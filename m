Return-Path: <usb-storage+bncBDUNBGN3R4KRBEFGTXUAKGQEUXTFQLI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x447.google.com (mail-wr1-x447.google.com [IPv6:2a00:1450:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id BD52B47D6B
	for <lists+usb-storage@lfdr.de>; Mon, 17 Jun 2019 10:45:04 +0200 (CEST)
Received: by mail-wr1-x447.google.com with SMTP id g2sf4402512wrq.19
        for <lists+usb-storage@lfdr.de>; Mon, 17 Jun 2019 01:45:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560761104; cv=pass;
        d=google.com; s=arc-20160816;
        b=bZP9H5LouOT6PZA9XnDBcNIJhzquZs4SHtGVFaquzHUtktbZwoWJuxCwswFSl6e9f4
         /AnsKFKfBjOkeGbtcseZrInGh+8Uu2cP9ITOCeP5Sa+AcHoIS3atKqtVwaLtF3hjHIhh
         5HhkDkVKC04kWiKSPakpGHp+0PnVdoz8weNxtujv0xjHtRopHQtVuCt3TexIXKIUqtv5
         FcFPZ9rQhuAiF+6USxjwjPb52lQNjl0pttn9cWAa2PQtJAZrXT+y+Zg2IdIVrdYsS08O
         N/GARDQ0Q3UEiytjADAZV5B0YW138uGf9P/uOFvjZ9dIC7ADulZPYmgyVsRZLsJ315s9
         IlAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=PHlJCfPZ8/xFQDTiDIxFTPpjUxRELVAjLkR6DmA4IVc=;
        b=YJ1ecCdTRDfsswvWE5uQVBNAc+s43E4dxATjYQH1mmI+JVN62xtCrcrEqKi3ItWyCy
         0F4t9QI+lfQLMAjdOxlSsksqrBh2wAIt6lNQZtG0FJjsQlOCwn45T0K2RwhjpZflYQrc
         5E08ypZqPrX5pmXCcTEkE7554poMyjy5eHcZOD5NwkPNzRD9nAIGbRua6YYaOVS+Oqs5
         5VEpKPfHSj+MUlFh/8o7IxcAkgra03CAS1ZFc7m9XHxxjF2CvAx4vnDcl4qrOO+9d9K1
         5aD3B/FeeD36GcsjXG4/v33akwK9O5eJiLzQ2daDCv5sCwZGekUQbalxwBBHPmjTB928
         kS4A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PHlJCfPZ8/xFQDTiDIxFTPpjUxRELVAjLkR6DmA4IVc=;
        b=Bb/PrvUQNvoEuP4H2YS0q0dvcYJViWqGHXvlbl0q1ms89/zIHgHeQFcgCJ462Sw2fU
         HsHsQITPCFUKgck7eJzm7Fns1Tr3Bsc3DEoh3qLNPV9mLGXf+/AIa+ySX2BOWvAXU7kh
         TOZpnyhw5Qkq1s/28Ki+xu4jDdY7NTFdOMEX8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PHlJCfPZ8/xFQDTiDIxFTPpjUxRELVAjLkR6DmA4IVc=;
        b=pBF54Q8lGhy76bcgKBx+IgBuIp7CGGTCLeEXH3vAGhvufeTosATrjaXAgL1ADJO2zI
         v5BH23vYy/P3vPPua/mMnyLGPZm3xdsgR29kVvHXME4lYcNaKJFTv9ugudLVxHwUbmzC
         8Aw/3Ortt5BJ2R/D1kohECIZqfAs9oVfQ7KyDIsViXcN6MfdAjt6f7aarB91JDfBJanX
         QyewQt0Z7WS1DXw6wkOzQz8RNVI7F60iMTw8ONu+HJFU1fW1MX5PZ11SLOcmqKEE1xwR
         pG+0opsTWFH2Hq+W93tiCEKZxugJ8Yxc0HELcn8LYBSSIhB2ucnQT6P0CngC59XLyQ9h
         h47w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAV/XOm3R3My751sexQL83m4zPpaGZLZigkQzsPdEgLlcYG6GvTE
	nlPBlEaht7i4OPUn3jJMLgCqMA==
X-Google-Smtp-Source: APXvYqzkGo4LqRo4+xjoTSIhLKtmw36abxYBMQLp51RG3JKtZypSD6AoPagodWG6URlXphxbLjsmYw==
X-Received: by 2002:adf:e8d0:: with SMTP id k16mr62566593wrn.31.1560761104503;
        Mon, 17 Jun 2019 01:45:04 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:ec02:: with SMTP id x2ls3703262wrn.6.gmail; Mon, 17 Jun
 2019 01:45:03 -0700 (PDT)
X-Received: by 2002:a5d:4484:: with SMTP id j4mr7632489wrq.143.1560761103655;
        Mon, 17 Jun 2019 01:45:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560761103; cv=none;
        d=google.com; s=arc-20160816;
        b=Ir1RYxCZjI3kuZVV4eh/rSurA2Z7wtdxHWXyfnnZpD1QcXkO01Fy34sUbvRiINpyXm
         tx4Ulmca8Z1jG+EBmgMXDAhQqN/bKRDfnuiQeiVPC4yaj37vx+ugyEtgPja75nBZbUio
         dJePg8Anq1rxa9Q+bwq7JP0gsluqjyi4J0TGCbq8KhMjSa8V7wX95aGNJQzMO043XI+j
         hO/13Y4yqgNuXuCFZTtUfO39hMhzFsSeo3PT7mbQIe4AoNPdXpcwZFa/XNiH/ADrRfzp
         7aJjWghoa4Xtud/hoM/FC9DeG68tVn2nmRC4lKyk6RAeixE8WDGWdIWpBIWFgYz0MM/6
         u8RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=W2L8YwhuK0dBbtup+XP5UTJXcciA1C0ZZQuQnVQws50=;
        b=f8RIhKURQPn6+gH9Af6nuZf4D4gM4LNnLk4uHmPlwM65Y8qEmiJCQF5MVC3OkCs1Ft
         qCFl+HFTFgfD+5eyRv0CQjPBLMITe3m1abV70jYyUkBTBmlSK43VSpdcjKkU0+XMKBCW
         8FNfkFf76SnlEcQLaqiyt/Qtn1+Hwf7GrICB5jGgNV+AJJyFazstfXr3+OR5YCnSwK4O
         hrnbmjnF0KQqlSe1XCGAJtyF42ADWFeEQrZG4SugUwuhg65tyF/bu1K6lvCCtbUeS5Zr
         zc9jDUMkUN9u6WzvENCfEh073I1Yy6RAnWDoSEN1crIID8Smtf+IVh/FqMEe40mh9Umc
         D0tA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from newverein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id a66si7645wmh.32.2019.06.17.01.45.03
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Jun 2019 01:45:03 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by newverein.lst.de (Postfix, from userid 2407)
	id 6715C68AFE; Mon, 17 Jun 2019 10:44:33 +0200 (CEST)
Date: Mon, 17 Jun 2019 10:44:33 +0200
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
Message-ID: <20190617084433.GA7969@lst.de>
References: <20190605190836.32354-1-hch@lst.de> <20190605190836.32354-11-hch@lst.de> <cd713506efb9579d1f69a719d831c28d@mail.gmail.com> <20190608081400.GA19573@lst.de> <98f6557ae91a7cdfe8069fcf7d788c88@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <98f6557ae91a7cdfe8069fcf7d788c88@mail.gmail.com>
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

On Fri, Jun 14, 2019 at 01:28:47AM +0530, Kashyap Desai wrote:
> Is there any changes in API  blk_queue_virt_boundary? I could not find
> relevant code which account for this. Can you help ?
> Which git repo shall I use for testing ? That way I can confirm, I didn't
> miss relevant changes.

Latest mainline plus the series (which is about to get resent).
blk_queue_virt_boundary now forced an unlimited max_hw_sectors as that
is how PRP-like schemes work, to work around a block driver merging
bug.  But we also need to communicate that limit to the DMA layer so
that we don't set a smaller iommu segment size limitation.

> >From your above explanation, it means (after this patch) max segment size
> of the MR controller will be set to 4K.
> Earlier it is possible to receive single SGE of 64K datalength (Since max
> seg size was 64K), but now the same buffer will reach the driver having 16
> SGEs (Each SGE will contain 4K length).

No, there is no more limit for the size of the segment at all,
as for PRPs each PRP is sort of a segment from the hardware perspective.
We just require the segments to not have gaps, as PRPs don't allow for
that.

That being said I think these patches are wrong for the case of megaraid
or mpt having both NVMe and SAS/ATA devices behind a single controller.
Is that a valid configuration?

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190617084433.GA7969%40lst.de.
