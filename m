Return-Path: <usb-storage+bncBCUO3AHUWUIRBOM44TTQKGQEMHKF24Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id C5708374AA
	for <lists+usb-storage@lfdr.de>; Thu,  6 Jun 2019 14:59:38 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id 97sf1952095qtb.16
        for <lists+usb-storage@lfdr.de>; Thu, 06 Jun 2019 05:59:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559825977; cv=pass;
        d=google.com; s=arc-20160816;
        b=atlqSGPLaJ4TWYNvgevZhJEeU/oQ3AcQAi0icpxNmF5+PtY+Jsria9F4+tuqtAG1no
         koIE0MM7wamEaVNSQHjxZg9s3x2+tXtTXubGOG3AIbFWRvBeGacOGR8W2jGDAaQIfDNp
         NxYxAeXqZzSFLiVmS3hpPAUXjlEum0dTU6Rq69XLA/9WXc2bzMdHzCUz6JQvoZ+1HXXl
         x1LW0HY3aG6rZzW28u+dAx7P3lTr/Ip2+gc+vI/w5LLiFR9EnYmohyzKtfnyPhEtm71V
         BmdtY+VOZ7sNpGmKSVsuJ/fjrqJ6WOEgiopzPAftAJNR6tdyr8YgaxozvfBpfVasjIXy
         cCmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=yPloY0AR6s4SG4S4o19NfAaPS+mjKE5lTbnoy6NzSfY=;
        b=ZRVgcaZM9ibiVvxIlnyUE3mxSRP9/vfZ2gVu2vVcyXUH4jtxUuJSsOStcPWalyxgHI
         tjWuAIlF9jhPGcNSZru7fIOPKuFCzIzGEWvoMneTCRk1blAiLKgwAcOIF+QGRBf4EqU6
         qJuenZZ4p93AwNAdo5k+rtaq46356ay64Xqs+lXduChNk/MfhcnsNQ5j7JTLxh4AM2N7
         obT3AT6P4n8ajqPGSojLaJ9KBnSdzCL5/mUz+qnIaJqenhQajRji9MjUYF3BruU83899
         aAX2NWw94jXTiPYFU0UHpNlaTq9yf4GVgn3rg5PCn7JoeocPLcRa9OswjEebZQj5pvbC
         yJ1w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=MkdX75Ny;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 209.85.220.65 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yPloY0AR6s4SG4S4o19NfAaPS+mjKE5lTbnoy6NzSfY=;
        b=d5WpmZpRXd2nKWISpr6kHnT1dgqO5lm1jf/bD1RiEcJFkc0JLzPBytpRPjSoBwAjB/
         rebTLaISb748cKAh5mDHYaNA6NgnIAZ+R6CrEFGVJKeXpS2Z6EW2JSAqDxs+EphNwJkx
         KEkkmZGq+GyopNrHdLzUnESB98mOSybmYiutE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yPloY0AR6s4SG4S4o19NfAaPS+mjKE5lTbnoy6NzSfY=;
        b=h2Vdod86DjPINQaJxkZTZ6y5T02/HkeLhiZ0fRLPuC6gklDxrqkx9hBlQ2Jv662aBJ
         FFXkFNhWxVZDOGbaKuUssBFZCSkiXUt1Xf6zpcTiFh8OsEDMLj2JMaFSPQejzxS8r3uq
         rD3ZTAoVTezZS4oC00Y/aJehEoX7YWU/WaKfXgi2wOiOn19agkbOYm5+dh/QN78bLp6m
         g1hzR2gdIFnIt8vbK1Y6fh8TrQu8Hz9MEQ6cfq5FquLxXRFyR9GHRCarKhd6cYzy94RB
         9YJ8o5++L6fySxHIJgfYdE+gaMiESCzv/UKhmnFCiJuBpM4NTVVew6VYy4oLwQ2zNkWd
         W/CQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVQ0iGSbX+poSqTuTMmFNn+Ju4BKAg2IwpOJKGbvX0DOiVOUxgP
	K+f0sGquaCu6ZTwrcqEONOQsUg==
X-Google-Smtp-Source: APXvYqwLZ7nN2ueexeHy0XBEeZY78ZLM2WlPZoHjUP3A1J4KmFt4Aj9Ueqttsxxl4JtoCcXAxEPqng==
X-Received: by 2002:a0c:95f8:: with SMTP id t53mr19728985qvt.115.1559825977424;
        Thu, 06 Jun 2019 05:59:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:1805:: with SMTP id q5ls1716388qtj.12.gmail; Thu, 06 Jun
 2019 05:59:37 -0700 (PDT)
X-Received: by 2002:ac8:3f01:: with SMTP id c1mr39532701qtk.147.1559825977094;
        Thu, 06 Jun 2019 05:59:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559825977; cv=none;
        d=google.com; s=arc-20160816;
        b=lU3Ff/p2Hnza/MB+91CVhuj1xx086a+bp42V06yc3L+9KeucFM+6VaIsaAk9hdQn8P
         KpgPadW9c6ayxYgx0U6utHbCstf1JyX0oSrjWRqi3ggcXogwwm2qyQzDV5BKIVcJsfW+
         ZMldf+xY8RnDjtq7xf8ZjoP8Mr2Jwe0PMWHQpg2M3uiNdE/UgAOrzoIps0DMOI4yZiLI
         Hhpg5hm/Zn/5G7W6nVlvz8Z1PbaXYptNhTozauwESZOQ3OiOi5Uw0NmzSuHMbDBAeKjr
         CtydBrGu3JS2coKpqDy8TKWc8fXla6oce/xz2ewD3ebhJW2jdF7mwcqkLWpl9xja8fKp
         jjmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Pcms2hpiozX31D6cP+b+pcEmPCGLaGYLU1hDb/Ksv08=;
        b=fLnQNeRob1bXelCiiHwGEBS079VpBkANKv/LP9m0Te/yik8Q8nwfA1bruwU6ECK8d3
         18Nx4fJ/cQMYwtxsOduT+BY48xMOTiuB/1IJ+/lV/UmJbKje/uj38uZte0+AG734+z6y
         MW3PYVrDih70TuWApO73ONJ0PDU6DGIZ3HvPtqs4FWa3Fg03i7UIEOrNP4F8+f9oq/jG
         sOslmUL0DelkbBSy3GFKZMiCZA8x62eISIpxc6pDee3DmNbjDXBMNsgRgyg/1+zUVW/b
         0BSt+EmncysuJPGL+Fm9lROKp9F5HbB7+H6WaNA2Y85kxL9SdKks0KG6dRPimxj+wqyg
         oyXQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=MkdX75Ny;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 209.85.220.65 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id m50sor1956217qtf.44.2019.06.06.05.59.36
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 06 Jun 2019 05:59:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:ac8:7a87:: with SMTP id x7mr32060230qtr.215.1559825976661;
        Thu, 06 Jun 2019 05:59:36 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net. [156.34.55.100])
        by smtp.gmail.com with ESMTPSA id f67sm934787qtb.68.2019.06.06.05.59.35
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 06 Jun 2019 05:59:35 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
	(envelope-from <jgg@ziepe.ca>)
	id 1hYrzT-00057B-B5; Thu, 06 Jun 2019 09:59:35 -0300
Date: Thu, 6 Jun 2019 09:59:35 -0300
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
Message-ID: <20190606125935.GA17373@ziepe.ca>
References: <20190605190836.32354-1-hch@lst.de>
 <20190605190836.32354-9-hch@lst.de>
 <20190605202235.GC3273@ziepe.ca>
 <20190606062441.GB26745@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190606062441.GB26745@lst.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b=MkdX75Ny;       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 209.85.220.65 as permitted
 sender) smtp.mailfrom=jgg@ziepe.ca
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

On Thu, Jun 06, 2019 at 08:24:41AM +0200, Christoph Hellwig wrote:
> On Wed, Jun 05, 2019 at 05:22:35PM -0300, Jason Gunthorpe wrote:
> > On Wed, Jun 05, 2019 at 09:08:31PM +0200, Christoph Hellwig wrote:
> > > This ensures all proper DMA layer handling is taken care of by the
> > > SCSI midlayer.
> > 
> > Maybe not entirely related to this series, but it looks like the SCSI
> > layer is changing the device global dma_set_max_seg_size() - at least
> > in RDMA the dma device is being shared between many users, so we
> > really don't want SCSI to make this value smaller.
> > 
> > Can we do something about this?
> 
> We could do something about it as outlined in my mail - pass the
> dma_params explicitly to the dma_map_sg call.  But that isn't really
> suitable for a short term fix and will take a little more time.

Sounds good to me, having every dma mapping specify its restrictions
makes a lot more sense than a device global setting, IMHO.

In RDMA the restrictions to build a SGL, create a device queue or
build a MR are all a little different.

ie for MRs alignment of the post-IOMMU DMA address is very important
for performance as the MR logic can only build device huge pages out
of properly aligned DMA addresses. While for SGLs we don't care about
this, instead SGLs usually have the 32 bit per-element length limit in
the HW that MRs do not.

> Until we've sorted that out the device paramter needs to be set to
> the smallest value supported.

smallest? largest? We've been setting it to the largest value the
device can handle (ie 2G)

Jason

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190606125935.GA17373%40ziepe.ca.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
