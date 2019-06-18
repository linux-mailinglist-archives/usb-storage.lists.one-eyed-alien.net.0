Return-Path: <usb-storage+bncBCWLFYFHWUPBBAEHUPUAKGQE5F2HH2Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id 6617149EB3
	for <lists+usb-storage@lfdr.de>; Tue, 18 Jun 2019 12:57:05 +0200 (CEST)
Received: by mail-qt1-x845.google.com with SMTP id h47sf12019050qtc.20
        for <lists+usb-storage@lfdr.de>; Tue, 18 Jun 2019 03:57:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560855424; cv=pass;
        d=google.com; s=arc-20160816;
        b=M8mGFmYJ9aEKfVXS0RXWe3ms5GwkZIrH4lw5VKPwc30NSQ98EljC6JQH3Ab7GmhjaV
         NB9p+xKxrpyokkIMjQ2ie2H0bv7ExY/7RxEcCo+ggo/exReVSNNUs1gPuqArsuun4O5i
         VxOPe3DG0X7CxHIhP6pf18eAtXZBWZ1r+yveS0/YR0LRBMS4zL9b6fZujLM9iO4h8KEK
         BD+JJxQd5pXxzwgyjSzX+On/CU2AWHcfVexy47HKftNJvqtLKaIvj9tU7f7v7fg+wEKG
         4Fun/p5DKIO134EbdWTEPprV+RQlgFudaGAKn421TyyoYO/MdSAtGftDyPWCt/JldssI
         9HbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=cHmEb5Cy1CRh37+PXRggR3HVnkbfkCm9gx1/ZjPTd6I=;
        b=kkRc1/pjSus4zt/lfyPjOd4q+o76WNehyNf8rQcRhq2JrlbfCflftXxQina+6pQkEi
         2+E9yrJzgQuuLHIdJVftAoIrhcPJyKP5wUwFldeskgcmg0N5YOdOdBayJpiVheuuyqTc
         3DK+jSa5HDtP9OywFuJ6DP6jFpnvC+FCy254W13vv/KUmWo2Gvw4gtbf83aaxAbdBMsp
         SgD7vrHQYyMNcfskBI9KQImOALELwVAEMMQrwTrEfdLNE3jfpHGfkKHnWzzXkaShKY+E
         he1qN74ua1KbzEwIqfODEmdMdpxsb+rLAzCSbzq9UzYrkhiqS4UvXzCZUlTsxYPBB0x9
         7Smw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hg2UJ6zY;
       spf=pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cHmEb5Cy1CRh37+PXRggR3HVnkbfkCm9gx1/ZjPTd6I=;
        b=Sc+FOs1i2594tdu/wKx0OlX8sQuKIZmI4/0JRNo4ApA6Avc6mn6lKMPXXMo5wEo7Iq
         8zO8LvmNRQysXz3rClpqAK9Zt/Gd5H8AyTveLxmlOS9SN5mBrqtJMxt5zeWOn2WzIleF
         ZvzFslBx31+ZxDnwXaSwjAZB8lCidCXu1zqrs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cHmEb5Cy1CRh37+PXRggR3HVnkbfkCm9gx1/ZjPTd6I=;
        b=fnGSlNaSVfjOTWaYOtWeBvCCGgg/s6ngr2dl982q3Sn2hJtCScODzTymHSU3I7WWxq
         De6yR1Mk02G5qSeC/CzXNvUDmN6RVxwWP0/vkVlKmuKmOwlE+UjqDzECRoJ72Nj0TwGx
         s5kAkkxmM3PVO4FI+cQxkpzsBDZLpFqO8NMySCthCQTY2eY66juTmMtJaj2eLNrbMR4i
         d59g+aGuvqYZgjY/I+cBa6JRQe03C7/Q9CzevGpXkcVWdXtg+y97rpCgFIe2gGK7g9WU
         BCsohlkYnsXOLvvr93IV39dF1+cu5Y5V1OVCoNkSO6oqT7PHY5AcU39PAJkxVDwcsfDv
         AzjQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAU7uWr1Q/4gkych0h9BrTMCX/I6NTqILiVWweZEhUrsPOs7+m8c
	bsCyDAOE+p0F98ecFbaJ/b4ybg==
X-Google-Smtp-Source: APXvYqxeEWbRDVx8RT6mH7qQ+lX9iWVXQRGxUEEwezIvyaSMoLCb3UZzncQDuMStlgomHi9UdqE8rg==
X-Received: by 2002:a0c:d295:: with SMTP id q21mr26401612qvh.245.1560855424302;
        Tue, 18 Jun 2019 03:57:04 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:5007:: with SMTP id e7ls109556qkb.0.gmail; Tue, 18 Jun
 2019 03:57:04 -0700 (PDT)
X-Received: by 2002:a37:6b87:: with SMTP id g129mr83960405qkc.305.1560855424006;
        Tue, 18 Jun 2019 03:57:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560855424; cv=none;
        d=google.com; s=arc-20160816;
        b=v8tBp3OrQYXsvXut2wi5YE8+NbbaGkfcCZsvkoqGOEYjpSl9Wn8K+c2DNqQ96RZwK9
         dGXDdblwiH3qT9uCH5Svq92v9QQ3xhHQT1dfKAsp6tG7Pw3YsRe7DUTF3rNhRL+Zv7VF
         kdHvmUXdqPa4whPLZo5EycidfMtjH3etomcAeWpiU9/Q3R2MHjmR3E7nbf0I4jg3TqWX
         mY9XuQnd/KFjXo9e5iqVB9Z45etEW+XD8NEYH3WmcZFMI49LfiqD+eslqdVbXCj3580G
         bcv3ckoGqBpGwhuahdRRT4ITXb0Uj87+vSLUAjoB9UE6TUHUoNpEIXS4sxtuSaYeBhhB
         eruw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=iNtD4nqgdcjPq+QbDW9ufam1Yl9j9a7cFfLokrIpxow=;
        b=wemYenZJSXqsDWwUpZE7IcE1n3oGK3R8KUDu0urJm2gkx4PldJP0/Jw4JvUoxXCFWi
         LC/JLTv+XcJQZTm3h3pXCNW1wdKkBZrhdnB+z9ckc0z6jrwx8N6EQiaQQ4JqFpkW72L5
         t5urIaXDY307WiOJ2mJh7XKTxq5xNmuzJVFu403oEfVyGotN/cU/x+YjHbetVTJ/yvdJ
         KN9tZ4exj9Jh7cFtR7lJxm1BGVyC3hV4+Tg6F2Mn4EyzMQU9sAd2uG/QZIwv7yHHrytA
         IN8a1XzC4+Lya5/NAH3aC5wpJ41VG7+fga+mU4k4GJdW/EKSsbzAUF4wCzyhd7ZySqdF
         6V8w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hg2UJ6zY;
       spf=pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id g15sor20247167qtc.63.2019.06.18.03.57.03
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 18 Jun 2019 03:57:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:aed:39e7:: with SMTP id m94mr19891860qte.0.1560855423728;
        Tue, 18 Jun 2019 03:57:03 -0700 (PDT)
Received: from geeko ([186.212.50.252])
        by smtp.gmail.com with ESMTPSA id g35sm2874993qtg.92.2019.06.18.03.56.43
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 18 Jun 2019 03:57:03 -0700 (PDT)
Date: Tue, 18 Jun 2019 07:56:33 -0300
From: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	Alan Stern <stern@rowland.harvard.edu>,
	"open list:USB MASS STORAGE DRIVER" <linux-usb@vger.kernel.org>,
	"open list:USB MASS STORAGE DRIVER" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH 2/2] usb: storage: scsiglue: Do not skip VPD
 if try_vpd_pages is set
Message-ID: <20190618105631.GB9372@geeko>
References: <20190618013146.21961-1-marcos.souza.org@gmail.com>
 <20190618013146.21961-3-marcos.souza.org@gmail.com>
 <20190618064947.GB22457@kroah.com>
 <20190618103001.GA9372@geeko>
 <20190618105203.GA18349@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190618105203.GA18349@kroah.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Original-Sender: marcos.souza.org@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Hg2UJ6zY;       spf=pass
 (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jun 18, 2019 at 12:52:03PM +0200, Greg Kroah-Hartman wrote:
> On Tue, Jun 18, 2019 at 07:30:04AM -0300, Marcos Paulo de Souza wrote:
> > On Tue, Jun 18, 2019 at 08:49:47AM +0200, Greg Kroah-Hartman wrote:
> > > On Mon, Jun 17, 2019 at 10:31:46PM -0300, Marcos Paulo de Souza wrote:
> > > > If BLIST_TRY_VPD_PAGES is set for a device, even for an USB, it should
> > > > be honored, so only set skip_vpd_pages is try_vpd_pages is not set.
> > > > 
> > > > Signed-off-by: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
> > > > ---
> > > >  drivers/usb/storage/scsiglue.c | 7 +++++--
> > > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > 
> > > Where is patch 1/2 of this series?
> > 
> > You can find it here:
> > https://lore.kernel.org/lkml/20190618013146.21961-2-marcos.souza.org@gmail.com/
> 
> So is this 2/2 patch independant of 1/2 and can go throught the USB
> tree, or do they both need to be together?

I think it is, since we are not dealing with something specific to a device in
this patch.

> 
> As it is, I have no idea what to do with this patch :(
Sorry, I relied in get_maintainer.pl only, so you weren't CCed in both patches.
But feel free to grab this patch in your tree.
> 
> thanks,
> 
> greg k-h

-- 
Thanks,
Marcos

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190618105631.GB9372%40geeko.
