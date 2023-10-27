Return-Path: <usb-storage+bncBCUJ7YGL3QFBBGOX52UQMGQESZHNCPI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x245.google.com (mail-oi1-x245.google.com [IPv6:2607:f8b0:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7C97D97D9
	for <lists+usb-storage@lfdr.de>; Fri, 27 Oct 2023 14:22:51 +0200 (CEST)
Received: by mail-oi1-x245.google.com with SMTP id 5614622812f47-3b3edaef525sf2733771b6e.0
        for <lists+usb-storage@lfdr.de>; Fri, 27 Oct 2023 05:22:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698409370; cv=pass;
        d=google.com; s=arc-20160816;
        b=La2ehleYFfE7pxpB8y+0RG8nhIJ2hrjGRlKn49HBAxkYbRUKCdl+g3MjIHQVShjJR8
         ZVVU9GWJ32wteMrco1LOYC2Mw7aU420B4CTyCLjaxG8C4ctKFEutw5bcDNav2wGf5YD3
         FiEbHKFTln95J5kW2PsGxuoIkMDMO/jSVyNryaZQaEqo7kq+FzMm2qmhw+YwLnKszle9
         6pXHVbj1TwC9ub0tPDvdvLCeV626u/xRfvdKW29RuP0rUvDgChmTjc/2QMeRufRSXqvM
         c4E+kp2VroxYAzd5RLuxcdA0tkmFK6Eu8LTIOB6MQycjX01j5+Fr/Zbv3oyECsarWePE
         D1OQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0hFOBuhYegVQAJx0VVOGhpDFlJGOCmKv08nVMMt4nT8=;
        fh=uetNyxAbgaAvu4PRScnf4YsW0p3EPTuQ9fol6yvsiTQ=;
        b=WVFKpAtkFuODIaAcxrHz4fgvyApDOZpHsFo5zzW0ftwBxXL2ocX3XqWlxN/NTJKRWi
         fKcBNeTK/tCkBEIaZ1be4wpwT6IDGv+F6Z4Ta4TydubdmnTUPkqOZQY7gXamaSrCUf7o
         muWs7ihcbcCndg9jwmNTGmL2wu4tI0YE0FDrD8yXLRVbcEtK3o1oYrUrLQmN/sl/G2A0
         vVpuptQDmhJprcOiBviI9g3IFn49JhZlUZSwKHMI9Iuq53YYw2vdi+5QMaXoaeNpduzx
         OayMAn6Gdy/Oycc7KXi1of+cAr+FQO83y4MM3iG3U4w9xTWqWgmxaY4lBfGmQYIvR8JP
         YPVg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=PxiIB72q;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698409370; x=1699014170; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0hFOBuhYegVQAJx0VVOGhpDFlJGOCmKv08nVMMt4nT8=;
        b=a2y3M5Cqj6ZopFR7i6zRM1YDFW77J5+ED6r97NGBeazuHoUckaAUyPR9GH73R7rMvZ
         mTJ4V3f0AmyLsnTD8y3xQas4fCXOKa63Pd5xQRpecLyyUhY5LACkU4j1XPIeOXX9RhRe
         cdiMk9THRpjK373yur8S3gh5HtWlAW4gVkC9E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698409370; x=1699014170;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0hFOBuhYegVQAJx0VVOGhpDFlJGOCmKv08nVMMt4nT8=;
        b=fHN9D4Z2XwHDehLJjP2loNBkKdDRKevmavrn/WSApKg0haDJ6icFbI1yZn1b4xoUHW
         mig8de7YHNdjCLT7zT1rL7pxvbLks0bpfRsi3hwib9rKVe5ic6rNb5E7tOUMzbh8pE67
         NWxJ9CorwqSZuWh22gDoodQ0QWzt2xNQbcEQQ+ua9OFfPd7gZo37hGfLplW9NPWIgEyZ
         rM2KWGAyZiD6+1kYZDyeBskPCUxd2epoUnLIyE5ACAV8A0+MMNtw4YJiXGuTsknkgnPL
         2/2r3iILsa9H1x9FLzwfRaR5B3O1/zzNuctdK3An4hAzjart4XTcz6yP/fGYt3ETK2kT
         A6NA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yy4X3zDbsGXgwwLgUhUG2o8fBpWzKjEu5O94RpMQ+x8tJJCYxK3
	/FL8J1BD0KSFyGtZG1dk/D4xpw==
X-Google-Smtp-Source: AGHT+IFFxSb0imQCS0APvnk6ld5AprPnDxaWq0xvz2YWFSU6fZEZ/6KbdFrsMMu1uObV4j/jhyD0Qw==
X-Received: by 2002:a05:6871:741f:b0:1bf:6ec:dd4d with SMTP id nw31-20020a056871741f00b001bf06ecdd4dmr2781722oac.28.1698409370080;
        Fri, 27 Oct 2023 05:22:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:a4c2:b0:1dd:651a:720f with SMTP id
 wb2-20020a056871a4c200b001dd651a720fls1515550oab.0.-pod-prod-07-us; Fri, 27
 Oct 2023 05:22:49 -0700 (PDT)
X-Received: by 2002:a05:6870:40c1:b0:1e9:9be0:e8b0 with SMTP id l1-20020a05687040c100b001e99be0e8b0mr2761828oal.29.1698409369330;
        Fri, 27 Oct 2023 05:22:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698409369; cv=none;
        d=google.com; s=arc-20160816;
        b=iRyRC8i0uew6xP6OlpoeolydYlXSmf6g/eerq6odsjipe5VCHX/qoo6+ARR3vweOIR
         pq8aEWVkInCSM0F74vxgurFGTwanrCP7tXGjZTn5d8PspTABjWdTaeWbjvwkvLIl8Jch
         OSwUaG5zqJAMXJeXQOYlT3K+z+DXqQ/LVk5DaRygo4M+1b4ow8dhuPcYdPNDd6R8EiE6
         p1uSi7rbKsi+9z+2jJJDXbpC81/MB3EAjK6RQ4PDT8QZdvw8PGhbEL5/8Pa4zUm/4f/m
         QOvHI+FvFAISxDtk8z4YyDMmkOtpvao9sm8CnQZPl6XCaLK15fFi9HFl6Hq3q9hkpkQP
         sr8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KznfzKDoZhvLohF6R43PWH7/22PFpZsEQBYARe4Iumc=;
        fh=uetNyxAbgaAvu4PRScnf4YsW0p3EPTuQ9fol6yvsiTQ=;
        b=d92AfkkTp+6UhpFUQNVnjk43p4E2ErBGEiPRfclD1mr7ezZllT5noVwzJViXGcB9W6
         GfEydqHA6P5Ne8GP10uYj7/PPOpGAWAjK60t7ix3ge8UCRP3IP0z1fjcfcw4yJGyAx0k
         bgVckVXKd8C6ZoUkQon+dgcfD2a6AJmRa7fsAnT83wgwP05dzQ5VgXwOQXmhpVjsj7rc
         5pkeBi4lzsX7RwIKSPtK+IwX9aJJ6s0a9p2GHSqngHghnMNYuJ7sblw5QHzrR/iOIt2H
         cDtZZbUItuMoJ+RmyPOrmhcTv6TV8NTQ99lPHPwbeB05kBJ0JtBTrOoujRkH65r2v2Xx
         YU/Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=PxiIB72q;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id wx14-20020a0568707e0e00b001c4cef4f445si406852oab.107.2023.10.27.05.22.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 05:22:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0568560B19;
	Fri, 27 Oct 2023 12:22:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50AF3C433C7;
	Fri, 27 Oct 2023 12:22:48 +0000 (UTC)
Date: Fri, 27 Oct 2023 14:22:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: LihaSika <lihasika@gmail.com>
Cc: Bagas Sanjaya <bagasdotme@gmail.com>,
	Linux USB <linux-usb@vger.kernel.org>,
	Linux USB Storage <usb-storage@lists.one-eyed-alien.net>,
	Alan Stern <stern@rowland.harvard.edu>
Subject: [usb-storage] Re: [PATCH] set 1.50 as the lower bcdDevice value for
 "Super Top"-device in drivers/usb/storage/unusual_cypress.h
Message-ID: <2023102704-stable-lid-c86a@gregkh>
References: <ZTsR-RhhjxSpqrsz@debian.me>
 <055de764-c422-4c22-a79b-dd4db56122ce@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <055de764-c422-4c22-a79b-dd4db56122ce@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=PxiIB72q;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Fri, Oct 27, 2023 at 03:15:46PM +0300, LihaSika wrote:
> On 27.10.2023 4.27, Bagas Sanjaya wrote:
> > On Thu, Oct 26, 2023 at 10:39:14PM +0300, LihaSika wrote:
> > > On 26.10.2023 22.14, Greg KH wrote:
> > > > Please submit a proper patch to the linux-usb@vger.kernel.org mailing
> > > > list and we will be glad to take it from there.
> > > > 
> > > > thanks,
> > > > 
> > > > greg k-h
> > > 
> > > OK, here it is!
> > > 
> > > Best regards,
> > > L.
> > > --
> > > 
> > > $ cat lihasika-unusual_cypress.patch
> > > diff --git a/drivers/usb/storage/unusual_cypress.h
> > > b/drivers/usb/storage/unusual_cypress.h
> > > index 0547daf..7b3d5f0 100644
> > > --- a/drivers/usb/storage/unusual_cypress.h
> > > +++ b/drivers/usb/storage/unusual_cypress.h
> > > @@ -19,7 +19,7 @@ UNUSUAL_DEV(  0x04b4, 0x6831, 0x0000, 0x9999,
> > >   		"Cypress ISD-300LP",
> > >   		USB_SC_CYP_ATACB, USB_PR_DEVICE, NULL, 0),
> > > 
> > > -UNUSUAL_DEV( 0x14cd, 0x6116, 0x0160, 0x0160,
> > > +UNUSUAL_DEV( 0x14cd, 0x6116, 0x0150, 0x0160,
> > >   		"Super Top",
> > >   		"USB 2.0  SATA BRIDGE",
> > >   		USB_SC_CYP_ATACB, USB_PR_DEVICE, NULL, 0),
> > > 
> > 
> > Hi LihaSika,
> > 
> > Please follow proper patch submission process in order to get above patch
> > accepted. See Documentation/process/submitting-patches.rst in the kernel
> > sources for how to do that properly. You may also consider adding
> > `Cc: stable@vger.kernel.org` trailer in your patch to mark it to be
> > backported to stable kernels (including one you use).
> > 
> > Thanks.
> > 
> 
> All right, here's a new attempt. Is it OK now?
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Liha Sikanen <lihasika@gmail.com>
> ---
> 
> diff --git a/drivers/usb/storage/unusual_cypress.h
> b/drivers/usb/storage/unusual_cypress.h
> index 0547daf..7b3d5f0 100644
> --- a/drivers/usb/storage/unusual_cypress.h
> +++ b/drivers/usb/storage/unusual_cypress.h
> @@ -19,7 +19,7 @@ UNUSUAL_DEV(  0x04b4, 0x6831, 0x0000, 0x9999,
>          "Cypress ISD-300LP",
>          USB_SC_CYP_ATACB, USB_PR_DEVICE, NULL, 0),
> 
> -UNUSUAL_DEV( 0x14cd, 0x6116, 0x0160, 0x0160,
> +UNUSUAL_DEV( 0x14cd, 0x6116, 0x0150, 0x0160,
>          "Super Top",
>          "USB 2.0  SATA BRIDGE",
>          USB_SC_CYP_ATACB, USB_PR_DEVICE, NULL, 0),
> 
> 


Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- Your patch contains warnings and/or errors noticed by the
  scripts/checkpatch.pl tool.

- Your patch is malformed (tabs converted to spaces, linewrapped, etc.)
  and can not be applied.  Please read the file,
  Documentation/process/email-clients.rst in order to fix this.

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/process/submitting-patches.rst for what is needed in
  order to properly describe the change.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/process/submitting-patches.rst for what a proper
  Subject: line should look like.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2023102704-stable-lid-c86a%40gregkh.
