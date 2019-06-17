Return-Path: <usb-storage+bncBCCYRD4S2ALBBA5STXUAKGQE3VCJO4Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd48.google.com (mail-io1-xd48.google.com [IPv6:2607:f8b0:4864:20::d48])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A5F47DF0
	for <lists+usb-storage@lfdr.de>; Mon, 17 Jun 2019 11:10:29 +0200 (CEST)
Received: by mail-io1-xd48.google.com with SMTP id i133sf11463095ioa.11
        for <lists+usb-storage@lfdr.de>; Mon, 17 Jun 2019 02:10:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560762628; cv=pass;
        d=google.com; s=arc-20160816;
        b=dvi41jzr1lNC4I92uY9Bg3ANp9NVkYe8XzvUHMww/K9lVlq8dLBi0dxwCGR3QjeChb
         tksRUUXkwY7J1P6UpvYiWj9Ay8o3zhHuK8yo0nxHX7IT+r6FHADi/QQ/GTxupuuh2ejn
         i6F7i9Y1f15b/wTMn9c4Es6KjUk4o5+PVovbRSaPPQKNklaeNHJpo8VVkctBLmzFi/NH
         boBNdf/6T2pKs7j0Mp5RV5kYSkFgcp8ZKjcWHxi3G+P/wScWlV14UEFkMhpYBcywbJjP
         2tKj5GNhzUQYriF+fBChIyqXk3Jvfbubv1o/QWhBin3jXLOZrEZI4WLgC7yGbdt+fleh
         bIqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:thread-index:mime-version:in-reply-to:references:from
         :dkim-signature;
        bh=zG8gtIkY4tjjJLLCNqTdDdKRJ3H5RNIDzu4yiZDT39M=;
        b=BLin6/uFS8qh4OadfCB9mW0pYjDotZUekR0PHSQSA9v7JOkLBjqP6rlgGFRv8lB426
         Jpzl4avupqBtVkCF+htEPHrIa55hxnpzAfRQA11YsjvZN0ldMRbG3hx8PVz+DeSYPqIo
         aL1cR+c4sUpWxmmvyK4VMaVxbwn3Ge3JSmm02X0SkIOe+rzv72M9JCI4D0T+PtViWlek
         XbBiZN8dZnNzMKiX0V816LC1ewYuOJ2++xeweZHv0Y4Lti7BYoyuLYpY1bK/RAkbRREr
         /yfLLI+MjVC+/0ZeP/gqr/bkJAMuIx0xAezG2VTLIwdGcbiqgRVyq59gQnhs5d05ilvO
         ThOw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b="ZVXe7pF/";
       spf=pass (google.com: domain of kashyap.desai@broadcom.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=kashyap.desai@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=from:references:in-reply-to:mime-version:thread-index:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=zG8gtIkY4tjjJLLCNqTdDdKRJ3H5RNIDzu4yiZDT39M=;
        b=IETfQvfD/wQuExN8WJZgPVkPodhvhDeVTkUdzteO5r1HJs2Rsn85ID2yp/7tdcGHlK
         aA7dNc/swZIc782UVqbLlRwhqJTqsJ7ahVWKCSx0gWB0MtJ64Bv3RSLUzMBrhYnI3qhx
         9A0+Y/dJVUqjzI3tRobxz73qu2PnB1UfvUF5g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:references:in-reply-to:mime-version
         :thread-index:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zG8gtIkY4tjjJLLCNqTdDdKRJ3H5RNIDzu4yiZDT39M=;
        b=dQ7lA0b46q0hTbQ2cPiiR5RpADUkChXBxddVKMVIyahBKwJB0yxGxQZx4V7IDbvQh/
         ToHJ4382nnh5VNny2xUPARRuJv0Ll6AZUErunbK+s9CzZbtkdXBgUM9qj+dM0wxJ718+
         y/aqLi9Mqg5tDZBF4IKFrQSU80aba2uP3p/QgFqsSaWxnE7JiJBTGzSX3OWCiz/y28nD
         jzBtWdQ57/63EgbtQ98yUUVCHhekYjt0zkEfbvygKZF9ZTI60ZwTmTi3YydoGnTXQVci
         yKLcss7Y8xdVy4G4WpfzNkjLJSrWMlG4djgnTKZu2IJ+xdhI3JldUvPh4ub7j3Ff1jV2
         vHSw==
X-Gm-Message-State: APjAAAVELN1F+jV4DuUtmsEYFDXQxZYL7kOj5ohKk465Pvpof2tQAcQR
	XbfOX93SVx1SpCu1V6Ukg3k=
X-Google-Smtp-Source: APXvYqxKw0pjRLlp7E2NtieeUSkOBtTWbJfolLiaedskB8Ug/1A5ZMeglT4JiR49ZclB5zcv6QDtGA==
X-Received: by 2002:a5d:9550:: with SMTP id a16mr45356814ios.106.1560762628121;
        Mon, 17 Jun 2019 02:10:28 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a02:c7cc:: with SMTP id s12ls2057940jao.4.gmail; Mon, 17 Jun
 2019 02:10:27 -0700 (PDT)
X-Received: by 2002:a02:9567:: with SMTP id y94mr85497317jah.28.1560762627752;
        Mon, 17 Jun 2019 02:10:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560762627; cv=none;
        d=google.com; s=arc-20160816;
        b=YiaakpGmltz8Z9EETmg6WWu/bWzr+PE3iXbZlqhvjDUvcy3fvEYjj5jdtGn+pSx5bo
         th+II5IyVY3ZU6UiK+dPgfF534lDm5U47IWF1JUJaUOQBOK6CzD8oRi3ywdmd45nciAA
         kOhld9P6VhOvd92Rlz5uackxon99SwBAvB0i3X3kBdJEshWyaWb2UhM1uVTv6ILiYH3r
         BVTLdS7q7nek0wUdOoy74FC2Msj/u2zSwdVr4mleTOohe4SMosrwnZp48fAwRBUZKBX2
         DMCCDIl0QDLYf1f9eshjIlswkJKfUh6jCJ4ZyMNHq9Hjs/iUkgYj9aZ6thQ8uRRywenH
         rIJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:thread-index:mime-version:in-reply-to
         :references:from:dkim-signature;
        bh=Mj+s4plNnZbEVe10BIzmZ1IijmMEuCHawFgLwkcZqoI=;
        b=DFW/pR97VqxUZJeNN7k96V/hdlShXSpH62mg4ZQaafdvD+Cki9Vpt0+rBjxu8N0H4T
         fR38dBzBbGhBRXG5B1d2oSUTJFWlNSop/If/gjtCc4KCPTOqRtYMvT5hb9Iv5JaGwgKN
         6UuisNcQ7HiDlh/vb8ZxbgfD5NlKyul2SBO/MvgUHsZdHhHjFe/BabVWoP3edybK7jIY
         6CTUz7jL4WevXtjGDuiaGO781cUvrPAhW7+eyWSqwGuNfNkfCR/Kk8Hl2TtSt5fuPTRW
         H+l8u4M1n1cU+yqIUk90TaL4+drclTG7rtzQjZrKQ9LII+1rgaY4S8TBk10opLR6zATY
         BzDw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b="ZVXe7pF/";
       spf=pass (google.com: domain of kashyap.desai@broadcom.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=kashyap.desai@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id i21sor6555669jan.8.2019.06.17.02.10.27
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 17 Jun 2019 02:10:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of kashyap.desai@broadcom.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a02:298b:: with SMTP id p133mr87239176jap.37.1560762627424;
 Mon, 17 Jun 2019 02:10:27 -0700 (PDT)
From: "'Kashyap Desai' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
References: <20190605190836.32354-1-hch@lst.de> <20190605190836.32354-11-hch@lst.de>
 <cd713506efb9579d1f69a719d831c28d@mail.gmail.com> <20190608081400.GA19573@lst.de>
 <98f6557ae91a7cdfe8069fcf7d788c88@mail.gmail.com> <20190617084433.GA7969@lst.de>
In-Reply-To: <20190617084433.GA7969@lst.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQNLjZIO2zMn7N+9xPobnDbFSu4o5gI2RJdJAgF+bYgBfxw4kQGu5dmvAzKBgtajXfsrgA==
Date: Mon, 17 Jun 2019 14:40:25 +0530
Message-ID: <e7443be50725bbdcdb6f1f4cc73955aa@mail.gmail.com>
Subject: [usb-storage] RE: [PATCH 10/13] megaraid_sas: set virt_boundary_mask
 in the scsi host
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Sebastian Ott <sebott@linux.ibm.com>, 
	Sagi Grimberg <sagi@grimberg.me>, Max Gurtovoy <maxg@mellanox.com>, 
	Bart Van Assche <bvanassche@acm.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Alan Stern <stern@rowland.harvard.edu>, Oliver Neukum <oneukum@suse.com>, 
	linux-block@vger.kernel.org, linux-rdma@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-nvme@lists.infradead.org, 
	linux-scsi@vger.kernel.org, 
	"PDL,MEGARAIDLINUX" <megaraidlinux.pdl@broadcom.com>, 
	PDL-MPT-FUSIONLINUX <mpt-fusionlinux.pdl@broadcom.com>, linux-hyperv@vger.kernel.org, 
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kashyap.desai@broadcom.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@broadcom.com header.s=google header.b="ZVXe7pF/";       spf=pass
 (google.com: domain of kashyap.desai@broadcom.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=kashyap.desai@broadcom.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
X-Original-From: Kashyap Desai <kashyap.desai@broadcom.com>
Reply-To: Kashyap Desai <kashyap.desai@broadcom.com>
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

>
> On Fri, Jun 14, 2019 at 01:28:47AM +0530, Kashyap Desai wrote:
> > Is there any changes in API  blk_queue_virt_boundary? I could not find
> > relevant code which account for this. Can you help ?
> > Which git repo shall I use for testing ? That way I can confirm, I
> > didn't miss relevant changes.
>
> Latest mainline plus the series (which is about to get resent).
> blk_queue_virt_boundary now forced an unlimited max_hw_sectors as that
is
> how PRP-like schemes work, to work around a block driver merging bug.
But
> we also need to communicate that limit to the DMA layer so that we don't
set
> a smaller iommu segment size limitation.
>
> > >From your above explanation, it means (after this patch) max segment
> > >size
> > of the MR controller will be set to 4K.
> > Earlier it is possible to receive single SGE of 64K datalength (Since
> > max seg size was 64K), but now the same buffer will reach the driver
> > having 16 SGEs (Each SGE will contain 4K length).
>
> No, there is no more limit for the size of the segment at all, as for
PRPs each
> PRP is sort of a segment from the hardware perspective.
> We just require the segments to not have gaps, as PRPs don't allow for
that.
Thanks for clarification. I have also observed that max_segment_size Is
unchanged and it is 64K.
>
> That being said I think these patches are wrong for the case of megaraid
or
> mpt having both NVMe and SAS/ATA devices behind a single controller.
> Is that a valid configuration?
Yes. This is a valid configuration.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/e7443be50725bbdcdb6f1f4cc73955aa%40mail.gmail.com.
