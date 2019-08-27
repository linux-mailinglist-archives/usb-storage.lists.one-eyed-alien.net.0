Return-Path: <usb-storage+bncBCUJ7YGL3QFBBJEGS3VQKGQERNSKVFA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F3F9F33D
	for <lists+usb-storage@lfdr.de>; Tue, 27 Aug 2019 21:23:18 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id k9sf94208pls.13
        for <lists+usb-storage@lfdr.de>; Tue, 27 Aug 2019 12:23:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566933796; cv=pass;
        d=google.com; s=arc-20160816;
        b=i0jb924BzloFwOCSp4rWCQVRF8gmOaXemJo/qeZwNYQZKZuIKcQ8UxzA5li7gZrE0k
         /xIygN/0aliYQ053duX5Erv0u5PM1S4F/roYO9BumXoCsnks3/elVPCp6x9UIFUaoN9q
         KTCErZW372p7dJ8+VHpW2kiUNEx6GZCmkg355g6GdfKSEIPQW1KVWoKrIroMsqLQ3Fiy
         acA5lhtkhmeqlAvth7Be/gtsthnnosZyAbi+UFBZx7M5UjVRBdtpu5+ENBJFmTLdCPnd
         83wlQw7LRRCg81OY2l4i10l05+cONNxFIEflxVcEfHmBZdqPNbwYwB9xjljMpwHqFkUp
         fOJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=o1wDjWW4+5UQR0BFiyMou0MLli/DrUH0Mhjec3IsA2U=;
        b=GoY7WmcpJWPcOv0jOrM4j5mkiK+RRhafcvgbMpyRhP8UwFIJgHjnHXvLYfWyMtA11J
         ouKqA08AJKve3X2yi6EQHcWb/rn4g+XZBwQH+duiyvwcgm8tAujJ/AxNz1v7CH/fYltF
         ApOUy36YSLmEwQ8xB56YWJobt1RGfFKQtDMF78IycKvEYTw5fWgv0rGvk0XgM0WvyoSm
         hsGqszuJX6eFnVV/5bFd++M+V6eDEV1kSWp/ESAzYyssAbDMuVCrBLBVzBdX1RzUJDvr
         PwJ3k2lpVDRoxWtqEJsiTprMvMqOF7BVHj6LEz04FwwWjBhQ16bi1xjtk/nGu5Y28FzR
         sCgA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=V243k2QO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=o1wDjWW4+5UQR0BFiyMou0MLli/DrUH0Mhjec3IsA2U=;
        b=dU9BDbdQSSfrfhCA4m9DsrJqgonoI5GJU2ov7ytTSn+Ei0STd6QPYbuN0adLOXbbxK
         b4OPnQrvLpW0hLMZiuQxZrlAYIarh+ni9rphSOfsyw1XGirjG3leY6hzkqJoStf48ov6
         utU7xDugdA518FHXrDawDX4HRJB3zDQx4CmGE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=o1wDjWW4+5UQR0BFiyMou0MLli/DrUH0Mhjec3IsA2U=;
        b=jqCGV2H/0nJhdKJWPwpVcU0oOaSe10F2H3UlZCB49A3v7aKEuvuV5+9hFFNvTxwi6x
         O2Oq52GX4iH9eYPeWx3qWnXPcuU/atgEOTnnCVCBJCT2K4alc6JxRO8hJ5pGvjAgQmdm
         xDHty4tO3DlEI7nSjK4nD1Tvb7cHbEvPVJfmf5b0kJfRVztXgbkrWeOR9unenvD6QCqH
         FzQ7l/S+V1zzdLnPuGx6q0iez+q6ZNajlJEDj7BpUu8g2Xysoom8sYh7uFyPQKBvZ1yO
         +yjM9/vPv5nQBQlbBqWJhGmkDz/3eOOH9gNZ0nWIk3OfOEWT1TNCrAbLonPP16PRs+QS
         X1Pw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXyTsZs3lPd5qJyGcIWYxcV6X+vJktoXQaUv3itUxztE/81ZbdT
	+zhxDabJpQMUZXVbpntMYl3Xcw==
X-Google-Smtp-Source: APXvYqzf75ein+x4xk9d5mziG0KRwOAMenXC19SJiUwnsvl7JS15Pu2OpVETXZ2ttdfT8CPMgD6yPg==
X-Received: by 2002:a63:6904:: with SMTP id e4mr22389290pgc.321.1566933796456;
        Tue, 27 Aug 2019 12:23:16 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:1c24:: with SMTP id c36ls22061pgc.14.gmail; Tue, 27 Aug
 2019 12:23:16 -0700 (PDT)
X-Received: by 2002:a63:31cc:: with SMTP id x195mr22409147pgx.147.1566933796027;
        Tue, 27 Aug 2019 12:23:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566933796; cv=none;
        d=google.com; s=arc-20160816;
        b=VSlUBqibRBkpsblmJphOH5yDRE3LQ5IriVXyiFkardQusfICxSGGxdPWdKU0f1W7F5
         Fz2p8HmTh49l4DvAwHd6oChOp83yAyBVP5i1ufLw+dDtAh9mWRL2H7cVSL9fLjoKH73/
         ctRQ1DtaS73KGNSNzYuCMnUiIA5Gi1hMeqcs2cntwurPCCyojC2iMVOT7ueNJb2ZD+AP
         w+RjxAYd3uO/rXZtfrn1r6U9H9rs2BjPbRwkVv/qvuGGYssdbtxByQTf5pyCxAO6SVoq
         PNMLpUy4ixdS6MObb8Twcxs0Evn+BKP+JSpZRJN7ZXhDh4coI/5eAoDOpI4gpOQtliR/
         /9Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=39cfiLtMCNbrYo7pzqAtDgyNJZQSym9AUq/G+3Ogrd0=;
        b=owjhrUlLB4FaOvurGKD5HZ4qSMH832NOxCLTG1/eXviXfWHBfmhdkD8zOB847HUgUD
         Mn6Yt3NgBHMDNNqc/31aChNHV5VTaTEFyj6GxgLviW3oHCEH2VTrTb0YhAQFTqmwcLt+
         FovrepE1GYhb70LFKocFPqrc2Lceo1XJjE8Oou3/1UGERkAe8LR6pSVmY6y2o2AM9DtV
         7GPovloqlafQW6Amca6mrgpO+gkWBPiP96zYSWJeCxPJIQEeFQsbsfIW3dnc00RDBuKR
         yNYkqWcd29w4ktapocfMa9vdIxtCjgtqwcC3CkxTJ/Es8sV6owsz9lgaw4INUEmykhmH
         Zjvg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=V243k2QO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id p14si6300842plo.47.2019.08.27.12.23.15
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2019 12:23:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 12DF72186A;
	Tue, 27 Aug 2019 19:23:14 +0000 (UTC)
Date: Tue, 27 Aug 2019 21:23:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>, bauer.chen@realtek.com,
	ricky_wu@realtek.com, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v3 2/2] USB: storage: ums-realtek: Whitelist
 auto-delink support
Message-ID: <20190827192313.GA6750@kroah.com>
References: <20190827173450.13572-2-kai.heng.feng@canonical.com>
 <Pine.LNX.4.44L0.1908271454110.1545-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.44L0.1908271454110.1545-100000@iolanthe.rowland.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=V243k2QO;       spf=pass
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

On Tue, Aug 27, 2019 at 02:56:36PM -0400, Alan Stern wrote:
> On Wed, 28 Aug 2019, Kai-Heng Feng wrote:
> 
> > Auto-delink requires writing special registers to ums-realtek devices.
> > Unconditionally enable auto-delink may break newer devices.
> > 
> > So only enable auto-delink by default for the original three IDs,
> > 0x0138, 0x0158 and 0x0159.
> > 
> > Realtek is working on a patch to properly support auto-delink for other
> > IDs.
> > 
> > BugLink: https://bugs.launchpad.net/bugs/1838886
> > Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > ---
> > v3:
> > - Whitelisting instead of adding new module parameter.
> > v2:
> > - Use auto_delink_support instead of auto_delink_enable.
> > 
> >  drivers/usb/storage/realtek_cr.c | 13 ++++++++-----
> >  1 file changed, 8 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
> > index beaffac805af..1d9ce9cbc831 100644
> > --- a/drivers/usb/storage/realtek_cr.c
> > +++ b/drivers/usb/storage/realtek_cr.c
> > @@ -996,12 +996,15 @@ static int init_realtek_cr(struct us_data *us)
> >  			goto INIT_FAIL;
> >  	}
> >  
> > -	if (CHECK_FW_VER(chip, 0x5888) || CHECK_FW_VER(chip, 0x5889) ||
> > -	    CHECK_FW_VER(chip, 0x5901))
> > -		SET_AUTO_DELINK(chip);
> > -	if (STATUS_LEN(chip) == 16) {
> > -		if (SUPPORT_AUTO_DELINK(chip))
> > +	if (CHECK_PID(chip, 0x0138) || CHECK_PID(chip, 0x0158) ||
> > +	    CHECK_PID(chip, 0x0159)) {
> > +		if (CHECK_FW_VER(chip, 0x5888) || CHECK_FW_VER(chip, 0x5889) ||
> > +				CHECK_FW_VER(chip, 0x5901))
> >  			SET_AUTO_DELINK(chip);
> > +		if (STATUS_LEN(chip) == 16) {
> > +			if (SUPPORT_AUTO_DELINK(chip))
> > +				SET_AUTO_DELINK(chip);
> > +		}
> >  	}
> >  #ifdef CONFIG_REALTEK_AUTOPM
> >  	if (ss_en)
> 
> For both patches in this series:
> 
> Acked-by: Alan Stern <stern@rowland.harvard.edu>
> 
> Shouldn't this patch go into the -stable kernels as well?

Yes, I can do that.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190827192313.GA6750%40kroah.com.
