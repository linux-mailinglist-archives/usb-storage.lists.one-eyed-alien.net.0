Return-Path: <usb-storage+bncBCUJ7YGL3QFBBP4YUTUAKGQEZ3IALNQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5B84A638
	for <lists+usb-storage@lfdr.de>; Tue, 18 Jun 2019 18:07:29 +0200 (CEST)
Received: by mail-pf1-x445.google.com with SMTP id h27sf3051068pfq.17
        for <lists+usb-storage@lfdr.de>; Tue, 18 Jun 2019 09:07:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560874047; cv=pass;
        d=google.com; s=arc-20160816;
        b=c0FlWNTLMuzb68d6X5Bq1Rr0BFiKU1hsX2noflOL0E098R8hqqN5XFJwNDrbxPMHbE
         S31NXAjguEHBnOEqv70sFZgKReRrOfj6YFpgkYzpWICPeXIxP6JZY/RGBBctxRdwyfXN
         cmuJxhD1x2xcx68RNKALUZM6GwV2CnDgC/Bi+9jVn1xqfNjSSIhzyy8h0imrQ6shjZ7R
         v6BJoZvCrYdk/aqOcWNfiSBFoQZ50UCM+vLTmYbAsCF1QIfaA4OtCT/O39mCzzvb1Byn
         aQ4YRtFGSICrpxRJPNwaSwrCIAIYuebuZbwK3VskG2f3Je4oNNCqyukPCTElfKht++Lm
         OG8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=HOPUR+ycJ8URTsW++9DwOkhaPPEKYUu7VB6hTXe7cYY=;
        b=NaThVcRZk4EAkDU0EkyIXTUN/Hdy5GIY1+5i7YM6d0VDCs6tubUlPsVU4S8CKPYL7V
         O4dRUsJ58HTmXV0+ecU6lLhRX9Acg6c9Kv/d6oy9bR6o6VTTd+5J25N9xlYKCu83FsAl
         mPv+f7rLB7NwbO4Pt4qt4cdLmWhk2/LPhBB4RcVIqV8eT3Xe/c0S0ujtmAXIQ3mPHfUx
         iRDwG7sowP51Tu7jkLB+6+LRiuSVxmwkdmysrAoOS9/5o3/XnzPqj/n4nM7dhQS52x/J
         czKUD56rWAsLzJvrn9nYNJ6eYRyMbh/+diaj0Fetl0CfxlfqjVL14aGnZ6jrfGXN/ym3
         OsUw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nkOv1d0U;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HOPUR+ycJ8URTsW++9DwOkhaPPEKYUu7VB6hTXe7cYY=;
        b=EgQb5maS5NqJBd44klohq4PKLICO1dl6MHbcbCO9hgQlAXGt3BlWNy+YJH6vAYpJWp
         Ew4BvdafveYdKtiWTG+rVvTR2IPgDIAqv86qVXhqeUVk8IE9Umuvbm213jUquYIGxEjn
         PDTMmGH/RPl73FKtspPzbk21o8eUvoi4Iy0g8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HOPUR+ycJ8URTsW++9DwOkhaPPEKYUu7VB6hTXe7cYY=;
        b=RnHwFXTt8EzvYUVdk9eflB0rY19fVh7qAUxUzAFT1wBZv+Zpci28yNkepLlTkua+KW
         OkXrr2Sy3+wj15g/OCX6Temd5FXjVfw5kFk4G7/c3ndwTdLeFt2R/NWWtXSsq3014JSd
         mn6YtfZaIatz7H7AYWxVhnaiWTjvtSWl3aQbfXmfNFBajN1kvDxDJUaQvNmfwpXCJgs/
         ePCz1wq4rnfzDsdppnZiiN9f41OUlVIqJpH9Yvi4aCW11LX7LdI6xZSc6Pl1TQc1bM49
         457Sp4kBQmVidmkBQYwIFHubgcs9c/Cp47l7MYdM+mqGRtrbOsSPVOI2Kb1hDMNxOmKG
         9PKw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWD14qbkt7A7srY462A0qwBCGoOzyVKkARcuYNq6/Dv5nK0wTt9
	dtDs0zkUuG38YEpsHLvFtIw+5Q==
X-Google-Smtp-Source: APXvYqwY1JwRQts+NFAmZE3XPZAuUKAFmo+Tp1PUvnZ9iyv9EIkxcAEzbnB5e07NU3HeSWk8A0G0fQ==
X-Received: by 2002:a62:78c2:: with SMTP id t185mr52147604pfc.142.1560874047757;
        Tue, 18 Jun 2019 09:07:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:22cd:: with SMTP id s71ls1029648pjc.1.gmail; Tue, 18
 Jun 2019 09:07:27 -0700 (PDT)
X-Received: by 2002:a17:90a:37c8:: with SMTP id v66mr6057114pjb.33.1560874047321;
        Tue, 18 Jun 2019 09:07:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560874047; cv=none;
        d=google.com; s=arc-20160816;
        b=yyOE0opbizGcH/ffWuBqxpucuip/0LwPHlCPg+XQYIwpC28IumPyyxguKN9pzEO4fq
         BcGXANWu90D2JaUKkJY0T4NjLWlQSYZhOHh2si+63yrBoKPLBBdtE90EwcykItG0Uezp
         jJHsF8GS9ix4JK1GtgejXdZD2IS9V7CKL1Z6UiaclDMdmjTr9gCWeFsDIlRAFpAZsmL2
         /QhA5f/t3OmT2AlKzV7z68mzoJtYLohSEjDzeJmuIpYC2sO18MRhMnsBhgE5kvpIqL4z
         XrJv/wcObS3L7sV1uZWjPN/XvHPKjx4zXiyvKg33kuUlTTlAsyf11LCo7UhuQnQaqWeO
         6vKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gMKr2RQ6OYfZF2mHn0Lnj+B67ZADNJftX9XfTdPCFAc=;
        b=0x7i3gflNhYA1UqTWgq91jWyx2OM3rSs7KG+zQSjVMXnncs6VjwcgfAwVEXkl4sC81
         N3x6eDJuUMPgPuAAS1Rl5+dwma62XU7ubF2kIC3vMTZFvuTZ1wbLZ2zoquCAQNp+dUDr
         9rrxgzjT1qMKhz/k2pc9SK2vVDPKBHkLH0Am4jhr00Pwq4vD9Z10AmkDaVV+YeFyztV2
         Rqdge6Mpl/i7l+9kmMvauHfR6iMkn/MexJjUBTWAlPLkd9mtsHCFuW0xSkw7WvNnW3Xw
         VO1oQy5YlUuErKwKgfbpjYgBXhklQYqvzVCB2A/M3bfmYVCOLDkgw17LRPIl3ViSgH9/
         rnuA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nkOv1d0U;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id g12si2532543pjs.67.2019.06.18.09.07.27
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Jun 2019 09:07:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8CBB520B1F;
	Tue, 18 Jun 2019 16:07:26 +0000 (UTC)
Date: Tue, 18 Jun 2019 18:07:24 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	Kernel development list <linux-kernel@vger.kernel.org>,
	SCSI development list <linux-scsi@vger.kernel.org>,
	"open list:USB MASS STORAGE DRIVER" <linux-usb@vger.kernel.org>,
	"open list:USB MASS STORAGE DRIVER" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH 2/2] usb: storage: scsiglue: Do not skip VPD
 if try_vpd_pages is set
Message-ID: <20190618160724.GB27611@kroah.com>
References: <20190618013146.21961-3-marcos.souza.org@gmail.com>
 <Pine.LNX.4.44L0.1906180946160.1659-100000@iolanthe.rowland.org>
 <20190618151737.GA16959@geeko>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190618151737.GA16959@geeko>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=nkOv1d0U;       spf=pass
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

On Tue, Jun 18, 2019 at 12:17:39PM -0300, Marcos Paulo de Souza wrote:
> On Tue, Jun 18, 2019 at 09:48:01AM -0400, Alan Stern wrote:
> > On Mon, 17 Jun 2019, Marcos Paulo de Souza wrote:
> > 
> > > If BLIST_TRY_VPD_PAGES is set for a device, even for an USB, it should
> > > be honored, so only set skip_vpd_pages is try_vpd_pages is not set.
> > > 
> > > Signed-off-by: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
> > > ---
> > >  drivers/usb/storage/scsiglue.c | 7 +++++--
> > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
> > > index 59190d88fa9f..0a9520780771 100644
> > > --- a/drivers/usb/storage/scsiglue.c
> > > +++ b/drivers/usb/storage/scsiglue.c
> > > @@ -195,8 +195,11 @@ static int slave_configure(struct scsi_device *sdev)
> > >  		 */
> > >  		sdev->skip_ms_page_8 = 1;
> > >  
> > > -		/* Some devices don't handle VPD pages correctly */
> > > -		sdev->skip_vpd_pages = 1;
> > > +		/*
> > > +		 * Some devices don't handle VPD pages correctly, so skip vpd
> > > +		 * pages if not forced by SCSI layer.
> > > +		 */
> > > +		sdev->skip_vpd_pages = sdev->try_vpd_pages == 0;
> > >  
> > >  		/* Do not attempt to use REPORT SUPPORTED OPERATION CODES */
> > >  		sdev->no_report_opcodes = 1;
> > 
> > Acked-by: Alan Stern <stern@rowland.harvard.edu>
> > 
> > Although I think it would be clearer to write:
> > 
> > 		sdev->skip_vpd_pages = !sdev->try_vpd_pages;
> 
> I agree. Greg, would you like me to send a v2 of this patch with this change, or
> can you apply the change suggested by Alan?

I do not hand-edit patches, sorry.  It does not scale, please resend.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190618160724.GB27611%40kroah.com.
