Return-Path: <usb-storage+bncBCUJ7YGL3QFBBOEWX3VQKGQEAAFCFZQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 42608A7FE4
	for <lists+usb-storage@lfdr.de>; Wed,  4 Sep 2019 12:00:26 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id f2sf12011873pfk.13
        for <lists+usb-storage@lfdr.de>; Wed, 04 Sep 2019 03:00:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567591225; cv=pass;
        d=google.com; s=arc-20160816;
        b=yVF2M+8DYSjIHsDSAM12DSStMxqgpm13H1cT5C+w1XmZMGtSIIlZQcn3h7mBah0QnA
         4uNdRnSMaZ87p+o1iuZk6vlHc6M8bgA97QpwQwQ0eDkrJbaEaMyDb03n1flmA6wmZNHT
         V73AyWFaeAkr6kAADo/AFb4uKtQT75NdcLtuG+IdKNj7E/rCjRXKieVFO3d30D7fcXFX
         BpCCGq/Ve5gJ3tP4mgK+nYqCjMG5uXEPT8wohcqyZh3oVWHCL9sQTGhi2tX+i27UKbr6
         dH/afmSWf3IT3NMvVyx1XfCNAI6iCVxh2DCbq2WTQbr8cAl7UeAMgsWWImDJMSxy+OqW
         cYgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/cTj+CJvvplE/ykczVmNv+6WkZB5iCKc3AkYV5juITE=;
        b=WckXV2FmFv3WAZ6qoFf3qidaqmtMYuNh22sUk+n4R8m+s2Y1FK83IDhg0TAKF46iJP
         pfb7wDixv0JRpSN39o2X3hCTDhiVo9+g3Nxrh21KgcQWWYcrpDO3cVEywTz8cPPbJMgH
         9+aQXZXwQUqX09aGDRHl3A1bxJxjrmJLkpxP189THp5c3GD7WRMZkdv7ijRoTfc0LwNE
         msLnuF3LyyXVFH9w2ZDaw61czoIsSmf9af2brm9CI4WCqABBsMnY2CYRBnEEyRSMVK+E
         C3GeA/nCG/TZwQ5oKCAOo+lPzUsiflvHpv8K2ydh7mgNEXl+5LNSmZq4Z9VTaYnrv9HZ
         QPCQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CttzYDrc;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/cTj+CJvvplE/ykczVmNv+6WkZB5iCKc3AkYV5juITE=;
        b=NNm5+qEG7AhDBVpJUD2qsZPs5RG8TL5O12GXxVm7C9KpMUb5i+gfi/G+MNKOQknxUt
         w4E5L5k9bfzDxUaZSENxXYRaeEEbhZThEIQ20ex/waL42YkoQCRNAVZ8c0ModyXWVscz
         BNBJ9YXA5aPP7uOMZC+rHVFnfePYTitJsd2j8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/cTj+CJvvplE/ykczVmNv+6WkZB5iCKc3AkYV5juITE=;
        b=VZqHEfL4Qmu+tCJGY9m4PUTWeCJrhz+4nnNtl23G+/LeddH2IkniimzAYbaUK9HEIm
         UfAhrq+cLcyETxSQrIq8UaQdIk9afP8IBLdQV1L85qmdGwQz8avG10/HXHjLwb+WpgpF
         houDZoT2SGS4Ow0pAPckxl0Lsm5sA/zTTc/wMT36WiHfETbAXzp2KuUGkJ8OeiYkFlUw
         PPGP5nmyWq1upnhsge/9u3Qc66h+EB5y5elt+xftCsn/RjG3Yqf+kwq0niXj7cqKdhXS
         RMsBqhaWJPdTPFnAC1zBodIbR51yTlGwwdHLlk6WS7JDKT2pwLc+lSH5gWJUSJwy9QXT
         veMw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVsySZaVde6ylWNYWC+R2PJEyi3JeE/QrJFINHiMh6pUsNUtIU8
	8N1A/mx+469V0FckGAi4Ej73jA==
X-Google-Smtp-Source: APXvYqxekBF3L6+E/Bi+QZhS6ruAUDb3W7EYBCw1i1sDeqdJ12Dnqibco9BeUhYiAhMiIZldl+PLlQ==
X-Received: by 2002:a17:90a:734a:: with SMTP id j10mr4087329pjs.63.1567591224815;
        Wed, 04 Sep 2019 03:00:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a65:47ca:: with SMTP id f10ls4658924pgs.13.gmail; Wed, 04
 Sep 2019 03:00:24 -0700 (PDT)
X-Received: by 2002:a63:1765:: with SMTP id 37mr34731629pgx.447.1567591223844;
        Wed, 04 Sep 2019 03:00:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567591223; cv=none;
        d=google.com; s=arc-20160816;
        b=HrkLj+dGxCOlB0L89Wwcfk3S9ZqEhaFzQ12AJu8qEd9/Z+iBL9S/7/4068W8GX5zLJ
         wMqlRIQtixyB5lsTOIeev8Ml3sJQrbsH6oWXME9e2LPvkkRqWrz/VoByWlIwNG+mHurE
         Ua5FbcA3FrC4xpQS4oUvancAwvOoSNKhV/ISebxyPrLzKlQrnJB1BDt+C5d996EnHT3C
         RC4XUlrI0+aQHJA65WFUW8daFNiuUEUtemtsgXcq4Zom37rtVtoYF7sF98FykrQAPtiA
         IO8wUKGaMaDCtWL28QVpD4ydVBc/h7/tQ1EGlWKPwjk9TuFFJ+Z+lcR86U9fyseltrM9
         XZPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=GtrKhhP9ercixd91Pmg/196Ciuo+prx9l6VGrr3wcK4=;
        b=RfimfiZkSeacYqqrbDATk2/q2jzADNIA5GJ1CCzvAqc6o0QUHY8vwff2kV+lEeea55
         fJo3JGvcUhhHIhCrsvTemjBm9S9xlaBesAAUPpuCmfTbMGM+pcPc/bqpshCsMgHxy86z
         o3a0Fvz+L+SgEppjPxdt4vKaa4ODT2IrNzLKgDh9Nt5nDpyQ6vHJyLGUlu2aO/T0ftT8
         ZuowTJ+EJ+56NQ0QkOZ+f5oOPoNBA+XF7guXGi3oKbcZjAnHf7y0O+c9TD77iMLS7msQ
         jdevY6IoOouREhuj717ZQW5R9AheRLdxYmZeLYhROm3QE1oLnJzTBOFYSbtXv95+s31C
         bvEg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CttzYDrc;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id o61si17823409pld.132.2019.09.04.03.00.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Sep 2019 03:00:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0BDF22339E;
	Wed,  4 Sep 2019 10:00:21 +0000 (UTC)
Date: Wed, 4 Sep 2019 12:00:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Lee Jones <lee.jones@linaro.org>
Cc: Christoph Hellwig <hch@lst.de>, Guenter Roeck <linux@roeck-us.net>,
	Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: usb dma_mask fixups
Message-ID: <20190904100019.GA9615@kroah.com>
References: <20190903084615.19161-1-hch@lst.de>
 <20190903131648.GA19335@kroah.com>
 <20190904085736.GH26880@dell>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190904085736.GH26880@dell>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=CttzYDrc;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Wed, Sep 04, 2019 at 09:57:36AM +0100, Lee Jones wrote:
> On Tue, 03 Sep 2019, Greg Kroah-Hartman wrote:
> 
> > On Tue, Sep 03, 2019 at 10:46:09AM +0200, Christoph Hellwig wrote:
> > > Hi all,
> > > 
> > > the first patch fixes the ohci-sm501 regression that Guenther reported
> > > due to the platform device dma_mask changes.  The second one ports that
> > > fix to another driver that works the same way.  The rest cleans up
> > > various loose ends left over from the dma related usb changes in the
> > > last two merge windows.
> > 
> > Thanks for these, all now queued up.
> 
> Did you queue the MFD patch too?
> 
> If so (and you can rebase ;) ), please feel free to add my:
> 
> Acked-by: Lee Jones <lee.jones@linaro.org>
> 
> If not, no sweat.

I already applied it, and no, sorry, I can't rebase.  But thanks for the
review!

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190904100019.GA9615%40kroah.com.
