Return-Path: <usb-storage+bncBD6LRVPZ6YGRBLEMRLUAKGQEHIQ3G4A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ua1-x948.google.com (mail-ua1-x948.google.com [IPv6:2607:f8b0:4864:20::948])
	by mail.lfdr.de (Postfix) with ESMTPS id 217BB4498B
	for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 19:21:50 +0200 (CEST)
Received: by mail-ua1-x948.google.com with SMTP id b47sf1983413uad.3
        for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 10:21:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560446509; cv=pass;
        d=google.com; s=arc-20160816;
        b=zXfoghWkqAHkEISWdw8Il46B9p85uL7nqvG87OexMxgaR/8u1IFs4lgUgFMyNET95H
         sooQRezmPYM/9rdllJL6lWnUFKW9QM+thWK30RobeMXBiIaDQj5g0wv751G8Ac40UAi/
         oE9NtC6fleXN3OUlj+1l7gpHTBadDj2lrY+exjeCLcn/X6DVnVCZw2YSSbRW9XDLscxz
         RzZXvBe5KMfLgYYT/8n+gIq5xhw0obKJt+qMRmNV9dEu7pwbUG645so7SP1PI2YC9dbi
         IoWG1UqPO1CKS4RNdSuF32tb58DAqQIfldWFZQM72dSHq0mVXzPw/uO7JYYVbHheRaut
         Skjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=rfCoVjIvpGg8YnCy/cpEIkgAOE6V8wg3f1d3ERW+l3g=;
        b=WR8PLrHvIggU3b0bUba4lZxJqWWST9Zj5kf/gXQdTFqhEK1qi6M4Uv3tbkdRqvC0Eg
         vIWT5Rjpn+AaFThUOt29WFeA/hJ8y9WumerF4fXaaYxTFQKNKfoLFzHRiR/YGa4B5Q0S
         qaUmXEXtBYMc7Phh/Bz3vf4LdfVVv3AqTnUfrPHa3B3rMXHOASEFIM4KM/2N7/IGcK7P
         4anrQ8q/bxbLBrVMY1tv/ajize34mSFPAB4zGFaacDQEop57LxpzKtnTkFICJFEpR7zD
         7Mt6APnxAJfZl7V9X1mcdhoqN01lZQjbif2nuQ0C+oA7+8U5ic0/3ym9wD9fHB/DgRmP
         HudQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d0bf768@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rfCoVjIvpGg8YnCy/cpEIkgAOE6V8wg3f1d3ERW+l3g=;
        b=ElvMt01ErDOk40RKrihGOA/B5hE2R2wnrlLE+TwrTvTeqb+SnfmD4aDU3g5jwcReO4
         raxr/O19EHmqOWaHZOAnNLPbcdAcSaCq5tAlGajIz5krWjAkLt08Qjxu1g4Yi7+H4khj
         sEaAdh830WYTFuXv+wHt+CDxC3aUVWBOAoeTI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rfCoVjIvpGg8YnCy/cpEIkgAOE6V8wg3f1d3ERW+l3g=;
        b=V0E8KERz0JtEwfBYuKkEb9EEMI+gKAh4+CGN+eXgfvqUrA/yOvkCElU7HAZ0eI/gDk
         ACT3L9d8O+I1mInp/0mXImFlcQQTWPyie90ebyrWXPkP0Z9ZzcBjgKxyzEu/DSJj4kuy
         BzpdQRKS7Bd77ZOVTnWK/RfcZ8sOiQ5++ZerKVrzl5uagEMwUd8GKMXS1bpXx0MJOjeq
         lFpbV+f8b9inTTV8Y5Y5qpq1Re1K8NkEhmFP3meA9hyulTUGdHr+q8i+PcYo4Io//nG2
         jK/+zdmKS5wCQhOPptwHRVvxYds3u/KcDWnIzNcmhPu5hDMAusMwdFfPgJmIWqugnxTq
         SmbQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAU2yx5oCGGDddTJp7pLcFMrLfc03wmyv3gAhebRBVIbNifGe5zo
	oGDcW5u5ibvIizofRFfgh9qDdA==
X-Google-Smtp-Source: APXvYqzXCKSnEB9F34RK7C5Q6g82SP2HdUuK4OtNG9tauWi0OKQjQCqCSj/OeWc7PAF6lCfYRPJo4Q==
X-Received: by 2002:a1f:5302:: with SMTP id h2mr8036582vkb.37.1560446508962;
        Thu, 13 Jun 2019 10:21:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1f:db06:: with SMTP id s6ls268913vkg.14.gmail; Thu, 13 Jun
 2019 10:21:48 -0700 (PDT)
X-Received: by 2002:a1f:7f0e:: with SMTP id o14mr8020113vki.67.1560446508538;
        Thu, 13 Jun 2019 10:21:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560446508; cv=none;
        d=google.com; s=arc-20160816;
        b=SgxASpKG1Vcxi5ijNJ3UsMYxCeQU24WF+sxtqnrGh7smUkSBh89nYgQC8m14wQryep
         MAP/aupE6iWovLChCOkpBlS6ua0y0iyOEqwvob+uMEK7gy6pOaILq39Rz2puPdeuCm51
         n7wsmw2HCzPbB9GJB8QtzCfikjcQXjcI+1d+Fa2XzBcDhiMfT5PcAAbKB7dcHlds7jZy
         kF3Kuy6LWTHJ+aAlwUiwEZqufXELPXEA4vIXts3wbJh+lPHFCIspwXtLEDq0Qh91aoQq
         gddP09OQ9p3awdkEZqF7NvQqNznWcP7JQyY9WBfk138xAQs4U+/T8QITaD8+AndjdRkR
         xrCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=rfCoVjIvpGg8YnCy/cpEIkgAOE6V8wg3f1d3ERW+l3g=;
        b=k+08twUIlOzI5/wbF2RbXqkOnSprvNsLJPKv51Ot6yNytUj/qSDp1g9e+nDKIqBQ+d
         rpkU8xItyfbR3BwD2IHKGJrXCAjbpdZ0kBpcslIqQrXvqh2mnaaDzCj5bPn+n95pzph7
         cp0mfcD2AXxt/WdKycDLuBOcMsNe3VdU0kuf7rh0FiiPnmWH9UvqAqVI5jdX30TrQ8Or
         LjIMalaOAd6sLnFCCITa/jfw7h0CoS9J91kutO6/Do/XbA07pUM1NXagfQjdpRdrA4xP
         X71aOJSPi2cYCA8PVShZeuv/VmP2/cizBKrFc/AIwtjy8WwwZxd8tYe7vjekMpp4S4rT
         15tQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d0bf768@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id n2si154287vsn.62.2019.06.13.10.21.48
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 13 Jun 2019 10:21:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 4242 invoked by uid 2102); 13 Jun 2019 13:21:47 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 13 Jun 2019 13:21:47 -0400
Date: Thu, 13 Jun 2019 13:21:47 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Christoph Hellwig <hch@lst.de>
cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
     <gregkh@linuxfoundation.org>,  <linux-usb@vger.kernel.org>, 
     <usb-storage@lists.one-eyed-alien.net>, 
     <linux-renesas-soc@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH v2] usb-storage: Add a limitation for blk_queue_max_hw_sectors()
In-Reply-To: <20190613171112.GA22155@lst.de>
Message-ID: <Pine.LNX.4.44L0.1906131317210.1307-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as
 permitted sender) smtp.mailfrom=stern+5d0bf768@rowland.harvard.edu
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

On Thu, 13 Jun 2019, Christoph Hellwig wrote:

> On Thu, Jun 13, 2019 at 01:06:40PM -0400, Alan Stern wrote:
> > Hmmm.  Would it be easier instead to copy the DMA mapping parameters
> > from us->pusb_dev->bus->sysdev into the SCSI host's parent before
> > calling scsi_add_host()?  That way the correct values would be
> > available from the beginning, so the existing DMA setup would
> > automatically use the correct sizes.
> 
> It would in theory.  But at usb-storage has a special max_sectors quirk
> for tape devices, and as the device type is a per-LU property we'd
> still have to override it in ->slave_configure.

Not just for tape devices.  But that's okay; those max_sectors
overrides have been present for a long time and we can keep them.  
Getting rid of the virt_boundary_mask stuff would still be a big
improvement.

Alan Stern

