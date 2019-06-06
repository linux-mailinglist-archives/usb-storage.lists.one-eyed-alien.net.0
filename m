Return-Path: <usb-storage+bncBDUNBGN3R4KRBQ7D4LTQKGQE7N7V2CQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x448.google.com (mail-wr1-x448.google.com [IPv6:2a00:1450:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB1A36C2F
	for <lists+usb-storage@lfdr.de>; Thu,  6 Jun 2019 08:25:08 +0200 (CEST)
Received: by mail-wr1-x448.google.com with SMTP id s4sf614491wrn.1
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 23:25:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559802308; cv=pass;
        d=google.com; s=arc-20160816;
        b=UvuCeJZfvW4+KwOmfVqb/AXPlxBPlNDafchUnCRV8WXCySrCsapjCi1xLxR8Gzhgo3
         VbRAcmdkIFZmM4gADPDXR8s9xRM2zZE21KiRS+QRDrxrMYKbO8AW4iiZ7dfbd0Tj3anF
         3Lx0gkChBizhM5MwInhP7lMgzffSNxpx2ikeoEZK87dKOHurpG4NkNiZPhVMfJEuNaBp
         TjqBfFSV9A+zQzSR+7FH8iNmminYvix73i9l9HW44LDbDxQ1SHvhoZiZT/yA/N0ye1xk
         EO0z3NACO03rx8wEW2Oacm5ZMEpqu9L7wIgWQPhNQzioPW0IYrHpDq9XSxisTDu/jMU3
         tEpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=wPCJLkGnL0m17M1ELksLOLtwZOLTMcwW/M1wiw1l6JA=;
        b=O+t6Dsy9ZAQLPwTRU0pUBFacvKVVCSmmu4oPX5HkCo5jDdwX6XxAgWw+0TRiSRlYci
         pz9TirA/O0NDD3r7qiyNm1FlbKtRfr2Pwwh38CHdRPw8fDPBBTvcYBgorIzANK7IeAIz
         PwVHpbyO/8L6Ff9ueqIxRitYXm7VHczXOJt2JNXcwSgjCI/DlFRIfu/R5L0O7SJPpFJ0
         npNU6vsVeiNNPJClEiOrp7hLGuIw+0Ywe05hFUxAA3HOYmZkRgloXFqvHpUBSAiQOCSZ
         yWpBMg9FtQIOQLTXjgxlKxfSHtHhukFZnp+JqwHsBxV1GXCK0qEBrbi2/BlG7PyFc0Ds
         Cvjw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wPCJLkGnL0m17M1ELksLOLtwZOLTMcwW/M1wiw1l6JA=;
        b=jTKx1b4cChEg0Kkmki9GRo/VunRlzaQ+Kc2uCRUxooCv7QAtW0BiW/AcIRUYHfqTL0
         47dFzBIrthMJjwJud9KPH68ff2sptPLYahAIMtRUORElEl5FEW3hZXEKI/ukzvPJLp8Y
         sQPiTYtuMUPjqV6RTM7ikuDI/FZQB+V1TQ9gA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wPCJLkGnL0m17M1ELksLOLtwZOLTMcwW/M1wiw1l6JA=;
        b=Jav5Puqf3fccaB+mfi7vtjN8G/BeF8B4BAkbQwfd4GJW/whqnFSXC0vi5RsIcwRdbl
         Excd9oEWL+el38VQon2Bf+0luyc+JfxxOK5MmP1UJy9jSZW+AZuFb7L3YxeGaE/Os3NJ
         qRTdowGZW2zGLBjmf1JpHclZnyDMXRhLZLLXIgQFBWqiqCvIoRMWhlEnrrNkQz2QlvRT
         L+BCwc6kGGDombmgePWnb1tDnRY09tg0A2SF3E0S8hgdUhnz8UVwXK15RUcxrwsVJWeb
         b6wMfdwI802T+R+7/TWcI3t9dpYh5he9PycLjPWUHT+okzB552qbAmtTVkDFd+qATGfm
         bemQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXBvuqXsbV1UVDc3GjRG5E5QRP6qnry70E+MkZO5ICQgVbTiK5t
	M54trnYvLK4dWiILqZSrJITSDQ==
X-Google-Smtp-Source: APXvYqzBUDrrGzKh0EnEbwzwIslo6RaD2LatEpnKXBHKRP9fEBoP2ha/1ZsiUXqfdIF6vtW6GUbhwg==
X-Received: by 2002:adf:e9c4:: with SMTP id l4mr12809401wrn.142.1559802308247;
        Wed, 05 Jun 2019 23:25:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a7b:cb50:: with SMTP id v16ls198025wmj.3.gmail; Wed, 05 Jun
 2019 23:25:07 -0700 (PDT)
X-Received: by 2002:a7b:ca43:: with SMTP id m3mr10621613wml.45.1559802307488;
        Wed, 05 Jun 2019 23:25:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559802307; cv=none;
        d=google.com; s=arc-20160816;
        b=yF7Ji1Ptr+b4FUOISlZo9X4uwrTumZQscFNEZKcsdmBtY2cg+5k00u6wE1RuNkmEAJ
         ++oVXgsytfmtodOk40ExLxeEBUDDtdSN+3nA6qj86/dtk5YvxrK8Bb93XDy9cj3FNrdr
         qYQtsfqepM4ozX2Zt/t8AGPo25ylVfOVh7iAxm7pja4kGrohAnG8TnC8knKUVP+XEETh
         SgRtKiuqIa6yHeRAteZd7BzfO7DnD7k1PaWRDA3OoZW3JEk28p/PuFFGIJxFpddE6ksn
         ytLrFAAtlzf0YBv0TRNiNABQvozdUOinglNjzKRG93JisfM462dh9LM6Tl/fjLFbwG4i
         ccog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=WG8/lZ6748OOqpvRU8r8qlwSAwQXFqGY2KzVQx5D9XY=;
        b=WW0tjda5TDN+IaaZvZX4WngG4WeoMmkthCdM2xJPbFbMPVubhgl7iUs6TMxZogOGsT
         jf4A4oLfHQCCrc7oXfZQDvFYLa47t0kxutlQTSxmKqwXX5hcJ6zNgCLaQw8VRpJWPp4/
         Gm4XPnEoWuMtnDsXQUMA+h1EGrfMDWijQ0YW+jD4k9hlcr6SZxCoXbNFbVbBOqdEP5sy
         ALQrUnTBt3tWWG954/lf0y78OZRsNCc09HPc8IKB9VP9o8/TJino8OIoVAkzLetS/I99
         aeYdMwCdwVfvzKkySiHpYha+7A9mwmZwINzLOA/9Cbne7iLdR9uHyLH2PX4WdtpThqYi
         9t6w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from newverein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id c6si817997wro.384.2019.06.05.23.25.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Jun 2019 23:25:07 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by newverein.lst.de (Postfix, from userid 2407)
	id 4448768B05; Thu,  6 Jun 2019 08:24:41 +0200 (CEST)
Date: Thu, 6 Jun 2019 08:24:41 +0200
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
Message-ID: <20190606062441.GB26745@lst.de>
References: <20190605190836.32354-1-hch@lst.de> <20190605190836.32354-9-hch@lst.de> <20190605202235.GC3273@ziepe.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190605202235.GC3273@ziepe.ca>
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

On Wed, Jun 05, 2019 at 05:22:35PM -0300, Jason Gunthorpe wrote:
> On Wed, Jun 05, 2019 at 09:08:31PM +0200, Christoph Hellwig wrote:
> > This ensures all proper DMA layer handling is taken care of by the
> > SCSI midlayer.
> 
> Maybe not entirely related to this series, but it looks like the SCSI
> layer is changing the device global dma_set_max_seg_size() - at least
> in RDMA the dma device is being shared between many users, so we
> really don't want SCSI to make this value smaller.
> 
> Can we do something about this?

We could do something about it as outlined in my mail - pass the
dma_params explicitly to the dma_map_sg call.  But that isn't really
suitable for a short term fix and will take a little more time.

Until we've sorted that out the device paramter needs to be set to
the smallest value supported.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190606062441.GB26745%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
