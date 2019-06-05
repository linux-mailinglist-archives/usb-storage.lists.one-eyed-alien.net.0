Return-Path: <usb-storage+bncBCUO3AHUWUIRBD654DTQKGQEBJQIL3Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC7C36638
	for <lists+usb-storage@lfdr.de>; Wed,  5 Jun 2019 23:05:21 +0200 (CEST)
Received: by mail-qt1-x845.google.com with SMTP id w41sf95399qth.20
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 14:05:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559768720; cv=pass;
        d=google.com; s=arc-20160816;
        b=q9h5nqxNEkFM3zkahril0v325abv9hPMYAyOE8/mZ8I34H6iSOqDdOij4PbBCgrLmA
         n2If/+FkMHiOBl80rrkhmQWCfo4ZCOjQ2oX7vd8peh4qs+qptsf1/BWvBSCL7Qpc6PyU
         STp3PwA1ig+zUWHCvsPOhVtBVsUha3WDXuVU1hjG98RzFSgdhdyDhCXmVgIYxYbTMRy1
         oPUu9rhUInpdG3GtUhgqjeQBFSJ+PKDYjtwlYRQef4fsk8pnHjrZemBtiXuRqYixbV0I
         uSK3mptQtMppDPLD3bKsSGdxOOAIPv3PGP/vM/aOAx5BaW4kCcw/LIE8NE4eDRJiypQ0
         tgrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=N6nJdbuoZkVi/CEGuwKCerFAKwcBxCQiFECp9H+6VQU=;
        b=uQWjFQoIC4sunDt6/J1tRc3GNkKcQ4Y+p5HUkGPmLyCpXMzD5838fXCekJhmtDJtcR
         Hwt8BHabAjCjpcaITASqsMfqAXSnrEtX100XYCmsZPF/sFN1rlFoKou/WGwyoi6B+r5R
         GxXqJDnuMtahWbaRELpNdG08DlEECFU7tqSEHeGH1YdWBF8MhOq1h7dRBaFdJuFYrHty
         l8kZ4UC8So9uZYc1Dyexe/uCOf2N5nY3a34qAHKEjBzLjlNMmblnt6M7+j7mAn1ME20J
         y9oe4Jwg4C4KlrtbKqnG4U1jp6h101vxznZqRLhh8oOQPoIbbkOCSSLKiNeeKruusBGW
         +pFw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b="jn33M/OL";
       spf=pass (google.com: domain of jgg@ziepe.ca designates 209.85.220.65 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N6nJdbuoZkVi/CEGuwKCerFAKwcBxCQiFECp9H+6VQU=;
        b=N1iVCcMZfIqSsl0jaYCZ+bySrrOKLGH2zbf0WOKuJbVnUuvumLvtDSlDo9MVB6OPL5
         kPUdetappe/xoEbBH+w6G+gLqCTtoqfqEuCKA8OwiYo9p1zB9ZKkhURCZqRR7vexnaiC
         4AaoSIv82ZJw9AlXOrUB3hnAXnjahr5/+o+dc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N6nJdbuoZkVi/CEGuwKCerFAKwcBxCQiFECp9H+6VQU=;
        b=mtd/o9KJuZxE9gIln8uCEK0IpYpx9EdQwuCVSZ/GPyRd3lg/p6yBllm+isxU+0YIfo
         q/xHp/srFOlaInaKqVTCeqxl1QOgUFdwjMV83Q53WrO8Ds5rirXiDxH3G6TPd64mruDn
         5HjxKTncQZ8PxYS7QsPHZsYZe2bC1NaE/9dGXQ0QPeDIOsSV/JqjlYshdyMf7U1CGDGJ
         b9cxbIP3svsfmRfu3yKQV+rqluDx2Sfs9qNrak0N6yixOap/6dfr2dGNO95NDLEArA5i
         6Lzjueocad3lgpXC0qmDUf3W7u8CMqAWIWUfg4UJkEaR0vu6HWdk0aSrPiIEWd4yXdak
         Y7JQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXzi+Sknrq2826fZ1M/WzsT3+QYsM4ixm6lZagPXoEk2RF3fsU/
	g3rW/e6lPEonLJQ8yW6+F+XhUA==
X-Google-Smtp-Source: APXvYqxLE2NktnOyudWubkgzIlFigAR0caTl59RvOngh9bKdYLzFtDyCgkiQJTD6zHfj6n5xMM4meg==
X-Received: by 2002:a37:e512:: with SMTP id e18mr35083349qkg.346.1559768719912;
        Wed, 05 Jun 2019 14:05:19 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aed:2101:: with SMTP id 1ls1064167qtc.3.gmail; Wed, 05 Jun
 2019 14:05:19 -0700 (PDT)
X-Received: by 2002:ac8:2473:: with SMTP id d48mr35987834qtd.373.1559768719351;
        Wed, 05 Jun 2019 14:05:19 -0700 (PDT)
Received: by 2002:a37:7306:0:0:0:0:0 with SMTP id o6msqkc;
        Wed, 5 Jun 2019 13:22:38 -0700 (PDT)
X-Received: by 2002:a0c:888a:: with SMTP id 10mr10551110qvn.0.1559766158043;
        Wed, 05 Jun 2019 13:22:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559766158; cv=none;
        d=google.com; s=arc-20160816;
        b=VE0MROmQ+lOXA11xA4nOSSLUDHeH66TzYtzEOcqh+N+bW/eGNeDZ7mc0ENgrRrGw8f
         /5onv67emRJ1nvxYTrB4Iyk8vlfG2ui2gJrkuXlKvZ6odJSI5ITClFfKzKsgZ3VLg3f+
         tM7+V3FZbdN6Z11nGD3g6otJJ4sDBoVXGec7NvoU2PEC2CmOq7JhxiGo8YuMwsaXyn6O
         IxwnG8S2T6kig7/hOxGXDNsqgtJl5wcNkTYJJclEx8SgeuHhuHzk5HlZyh4KGLt8kDn3
         asuu2DX5NLjfmd81wuthBZDiUxqSf5meDSxPUvCUkQoqUvejIeGPp/rG4MImLJGI73fV
         a2Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hdVKMo8506TgrZK1PYQwv5IIzq/3ub7YoF/TJnHz4iQ=;
        b=XlQ05naoK5pIOX/SGK5LDYzv4CowtTrozeNsN/WOc8Hs/i9ZRgu4GXRyqjC/1b6Q6R
         0geSqytbYGNAkCNJT41gUVRsCN62d3vqtH6/uyaX5LvwI9dYJUwBnYJAhqxCikxX7pLr
         2QVCHNRcXe3KSwO3jk06RZ8OnZrYcex3tX/QYGKasjuKTvCfcjd8wzPuGbajsfu8V21F
         5DrJPrTPUFr6N5P36tyAGhhQKNnkcugOIAHv4qFG3qzppXndsv0Dn//xM60J5eW6O/RK
         qept9PkxtW6UDb46r0XJh1C/3IW1jknzJ7bVp/phXC+g0STUeuBsRbeD1SA1InWPjDbb
         iouA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b="jn33M/OL";
       spf=pass (google.com: domain of jgg@ziepe.ca designates 209.85.220.65 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id o18sor4911053qke.38.2019.06.05.13.22.37
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 05 Jun 2019 13:22:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a37:6312:: with SMTP id x18mr35736460qkb.300.1559766157655;
        Wed, 05 Jun 2019 13:22:37 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net. [156.34.55.100])
        by smtp.gmail.com with ESMTPSA id v9sm884883qti.60.2019.06.05.13.22.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Jun 2019 13:22:36 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
	(envelope-from <jgg@ziepe.ca>)
	id 1hYcQd-0002uk-Vd; Wed, 05 Jun 2019 17:22:35 -0300
Date: Wed, 5 Jun 2019 17:22:35 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Sebastian Ott <sebott@linux.ibm.com>,
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
Message-ID: <20190605202235.GC3273@ziepe.ca>
References: <20190605190836.32354-1-hch@lst.de>
 <20190605190836.32354-9-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190605190836.32354-9-hch@lst.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b="jn33M/OL";       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 209.85.220.65 as permitted
 sender) smtp.mailfrom=jgg@ziepe.ca
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

On Wed, Jun 05, 2019 at 09:08:31PM +0200, Christoph Hellwig wrote:
> This ensures all proper DMA layer handling is taken care of by the
> SCSI midlayer.

Maybe not entirely related to this series, but it looks like the SCSI
layer is changing the device global dma_set_max_seg_size() - at least
in RDMA the dma device is being shared between many users, so we
really don't want SCSI to make this value smaller.

Can we do something about this?

Wondering about other values too, and the interaction with the new
combining stuff in umem.c

Thanks,
Jason

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190605202235.GC3273%40ziepe.ca.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
