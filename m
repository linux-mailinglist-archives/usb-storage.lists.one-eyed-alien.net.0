Return-Path: <usb-storage+bncBCUJ7YGL3QFBBVUEUPUAKGQERPGFVOQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFAD49EA1
	for <lists+usb-storage@lfdr.de>; Tue, 18 Jun 2019 12:52:08 +0200 (CEST)
Received: by mail-pg1-x545.google.com with SMTP id j36sf9667122pgb.20
        for <lists+usb-storage@lfdr.de>; Tue, 18 Jun 2019 03:52:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560855127; cv=pass;
        d=google.com; s=arc-20160816;
        b=S5PBBkiUcxOmZlUD/uvcp4lnLq+AeX6COdVZH4ZxCChWj0O8btPEPyrqCpNbljkADy
         yEqYYhVhoenL2YTWvRFeshDbgNVBCN2A1caUTmUR2TFyAMkY4MMOerT+K/cXjxll9mNx
         Ju0LI+qsyS/lzlRvuXaypW+wqRTpm3YRtXHTsPiVLBtpS3/J26bIQUUus1T/sbPjqswV
         sZy51AWySzZKox5vZQ3/U8Tr2hXN6Vx5xTP5/LzLX/ysvtgrkRZYAnSmjziEBqUILi2J
         UYtLbfwGASKlsPCiXhmko3ulshT8LkCpGAL5QH7IzC18GlqblXKHRZkcGfZBmS3rUtg8
         Nuaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=WXahDVMh3mVFPNWFAw+Wbe3VuYruQTcbmfxRJ4Yfce4=;
        b=RCgJzGSvz26Y77gzOm4wYjjpngpg9zezpV8qSmfV4cMJIqW+VHKNLlr5VzAleOqc8m
         gJyFMr/yt89hLKYh4zXddEuEohY1nRkC72Vx01zY1Pj48gsLCdx3iLCi6OUHQFd6+UIW
         bVms42OlDOFFid5w7gl7dpVXmvMkwNtY9KwRyBKWpSGJa8a+MMwTybWT1rQyC6em1hvN
         iaAkSsBgziaXHpD0dGpInhArXaJlUAL5b3UjFj92fBEjTJrDf0G7Tp7eYXcSOpZ8XtwG
         yEkoJmQrma3rdoi1nGyALg9K5wwvs/pTLSGJIWApGTS/F9cy2MHVMOYnUievNYaYyfxE
         HNHQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0LE4FpVj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WXahDVMh3mVFPNWFAw+Wbe3VuYruQTcbmfxRJ4Yfce4=;
        b=kG2uMFPVqfYRMxPzbOYFEm69S9nLtJoFqCGAtO8oOv/5h9+PdBOaramk6JoT6X/Mjx
         6aoVm5aqP9RSzWgZBWrl2h+FP9stmt/DQorpUU1WinULiH0cfes6Qw5haQFOi2UU0QIW
         ek4e3Pqnuwhl9goynw9V3quRye+KyVQkWCHwQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WXahDVMh3mVFPNWFAw+Wbe3VuYruQTcbmfxRJ4Yfce4=;
        b=PYPUqSIMFmQ+qSdVDZptbGn0sy+q8AIDBVVPfdvoOAlpoOkAwnEfMVYsg9dCTZLp6X
         ytchq7Lh/CGJ1LtTAyu2pIASZza0CZoEo8DB1Fddbp7usqgk43Qff3a2au9Sa5ubTvQx
         iSeHJdC4yvcDJypH/5o7tYwdzVitxkfe+/Y1x/DUvBU/cDnFblwvsKCoXtAjORjy12fz
         VL0T3+LtcHiwLwkXjGRDtir3cWbkVvMhVzfRvuAKmvBGfLNNRp1Xg041OXcCHcMchU6g
         +xl8O8OI7MY9r84o1Q4V4lCgvxPSeHeXLPcGKuYatauVP49p/ITHey+nt2QqJTb9tXtq
         nzxg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXz7RmGAnnJTqwyOl3GxAECPMkkTscj77B/YCoYRR1hG926Uihk
	4ijBrefZfD3dWcgjDkaWXM/GxQ==
X-Google-Smtp-Source: APXvYqwC6Miid7o+3sApMbCcHExOxXWicFNFhH8bqMez0y3dRLNcUzbHqXuZNCm2X9Z6LO0OUld9QA==
X-Received: by 2002:a65:64d5:: with SMTP id t21mr2128717pgv.310.1560855126830;
        Tue, 18 Jun 2019 03:52:06 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a65:48c3:: with SMTP id o3ls3901007pgs.2.gmail; Tue, 18 Jun
 2019 03:52:06 -0700 (PDT)
X-Received: by 2002:a62:14c4:: with SMTP id 187mr45242130pfu.241.1560855126407;
        Tue, 18 Jun 2019 03:52:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560855126; cv=none;
        d=google.com; s=arc-20160816;
        b=1LTaaYSEWQNeOhVT7NZbvuCqSshDW1ojCamENmWTuUzEMnPReHqyilkpv7omlxyB+O
         uF4SU4hsvEsEGwVXQcb/rtLjUfguO1yRDbK2J/twDJnfQW7OR38gSxBC2isiSeLWR+aM
         5qfd8X0SixInLnKcw//C04aWz9pp66+ElGv86RCo1O3g7vP8AgxCQPUxOQPbLm9QKWbO
         yrjv9b4FMMW6ytSJDpk1cYPqm1ZGed7E6yXADulOiLNmjLysV4mI3BquS/ZznvHDelzd
         4LYXR5rzOpquhvmZW73TOoLYzEANfW4tSNW+4gsCAWH70PdJWlRCXLs5qvPlZv3Iv7yK
         fhWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/i807G6eidIYT2/IT3uen2WiVyoZSP+vKXwlpBU2bpU=;
        b=du98EDttQKnzN8qWXzR0UHuuY7UnoCOYm0dd4mCeHZDsmNKgHTT4EElvl2BUyi651e
         iAlXxAZVGeQGMTZVnZ54+wSPZSTWoCD+JcWi/iqZAipw6oj3jPuDuq+/+i8ywJXLVYTH
         /cIqyHB3TWoh2xUe0WW+7M02TpzMAHnQ6UsqjkKxWpk048Wb27gE8X6E06jfFaV7O0Hb
         Nohy8OUtLRimhyS2qlTqt629aik1sF28AYyDPOzDIAeemV+r0rT5Cfew68c7xnctBesC
         auz/pBBgmzG0z+n+E3rIKxmYdSGzMRXHYp0bjahmWobU0j0FdCTfdfDKFpHGi8kfNZub
         rybQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0LE4FpVj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id g20si12800787pfh.95.2019.06.18.03.52.06
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Jun 2019 03:52:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9A6B52080C;
	Tue, 18 Jun 2019 10:52:05 +0000 (UTC)
Date: Tue, 18 Jun 2019 12:52:03 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	Alan Stern <stern@rowland.harvard.edu>,
	"open list:USB MASS STORAGE DRIVER" <linux-usb@vger.kernel.org>,
	"open list:USB MASS STORAGE DRIVER" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH 2/2] usb: storage: scsiglue: Do not skip VPD
 if try_vpd_pages is set
Message-ID: <20190618105203.GA18349@kroah.com>
References: <20190618013146.21961-1-marcos.souza.org@gmail.com>
 <20190618013146.21961-3-marcos.souza.org@gmail.com>
 <20190618064947.GB22457@kroah.com>
 <20190618103001.GA9372@geeko>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190618103001.GA9372@geeko>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0LE4FpVj;       spf=pass
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

On Tue, Jun 18, 2019 at 07:30:04AM -0300, Marcos Paulo de Souza wrote:
> On Tue, Jun 18, 2019 at 08:49:47AM +0200, Greg Kroah-Hartman wrote:
> > On Mon, Jun 17, 2019 at 10:31:46PM -0300, Marcos Paulo de Souza wrote:
> > > If BLIST_TRY_VPD_PAGES is set for a device, even for an USB, it should
> > > be honored, so only set skip_vpd_pages is try_vpd_pages is not set.
> > > 
> > > Signed-off-by: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
> > > ---
> > >  drivers/usb/storage/scsiglue.c | 7 +++++--
> > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > 
> > Where is patch 1/2 of this series?
> 
> You can find it here:
> https://lore.kernel.org/lkml/20190618013146.21961-2-marcos.souza.org@gmail.com/

So is this 2/2 patch independant of 1/2 and can go throught the USB
tree, or do they both need to be together?

As it is, I have no idea what to do with this patch :(

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190618105203.GA18349%40kroah.com.
