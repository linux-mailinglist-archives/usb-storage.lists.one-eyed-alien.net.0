Return-Path: <usb-storage+bncBCUJ7YGL3QFBBGW3XT5AKGQEGYNZKUY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id F40E725A507
	for <lists+usb-storage@lfdr.de>; Wed,  2 Sep 2020 07:28:59 +0200 (CEST)
Received: by mail-pl1-x647.google.com with SMTP id x11sf1821064pll.0
        for <lists+usb-storage@lfdr.de>; Tue, 01 Sep 2020 22:28:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599024538; cv=pass;
        d=google.com; s=arc-20160816;
        b=pLd9ky4holfjXkUafbKP48WG2OUjMZ27hchXCOyUJsXV4gANtO+bTTyh5DGzmF/vLG
         1VNpgXR31z5MxzJD63CjiVp59HyprwcxZ7Q6ftgLMWMdIYwVdZMEbu6woD29NsPv3i+i
         tU9iuJB9UMZDnofH8+FKDbNC7Ryb7VcMWKQrvf623MpVb0AYWzFDEg3IkJgBxEpYBXae
         k+ttplHZU0q9zZ5OJuJNXDd/HcBdGpuus2gtoF1LhqmzhWV1ijQpxhWlahsIYv1x75GP
         vbK8RUVAQquDi2ne7N6QUMryrmeqLu8G1hS28hRh8P+Hy5VK6S2cMxPsfipYgmVwESS7
         F3hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zD+XerGRnRz99/cEL/7z3w2U3N+CUjn7B4OqtfJbG0k=;
        b=ZTCoMj3mpG1ZLYsheRPsIb7p3VIXOJo4sUi4jzViOgkf+FRJt0pX+cmTtwpCQoRHZ7
         PsZfJ+CMQBJ4fd2rjYzLms89NmYA39yU3598plKbExh6rNdLmdfSxYwXvTrwGLXwdYFl
         XnE9IrRgo7eN6lAIh61/IeSQ/a6j64j8qvrVXhLueckH4GC1XzUx2njVHlm6oxdd8qa3
         RvKNs4rje9a5TsX38krg5RVkV2sVhNChA/OxQhADryVRnPGxP5fML11BVeUpowwvaA3F
         EUOzuuscupiyGvHb4OBTBMdxgQmH7tVr/uO+C6aTNb3qzTwPRC6nl3zMHy492SIeGU9a
         w/QA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uHbIcuLa;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zD+XerGRnRz99/cEL/7z3w2U3N+CUjn7B4OqtfJbG0k=;
        b=OL5q0WEjeXuDAv+qKHfRUGeEaZUKhN4EgiEAedKA2P6bk1ooWOxmeJMWMhCY3Ekw5P
         kxpR/Q2FSoJQrZsNb+VhfrQY9e0DqRarewoSy77P0QECThzo+vEn6LlhenTlHcj4jml9
         HWbpFG3Wxd1ica/N4dWhhyRiid3OPtL4N6mvI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zD+XerGRnRz99/cEL/7z3w2U3N+CUjn7B4OqtfJbG0k=;
        b=nuq7osom2QEcBGlscuOYokVW6G8Gg5r2EhDJWdyRWMwZG82/Zbfg4RDRxkj2Jt3IYQ
         fkEpFclksJi3p3BEf9fxfxW9zfJaw4F1THLd38GblsI50DP/DufcH+Lt+aja1FTdz8L9
         EjKeG2N9LROfGhy2JAUiYAArFuIMYjqQkLxsVLUmWwoQaVQLbsJNyfOJhxztxVwoS0Ff
         mUSv2rG3otyyp1taP0iaJK8843h9p4pie25OGq6sHIo5gCQmRknpvc4cpx8PHhGDKOQO
         PK/5PPQaD2c8Np3sHubhpIAi6MVVRIf1CPKLMpoVxwbIdj2R+qshZwSGyXwPGys1rHYB
         31jw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531G0adEy9c+Umic+HSfZk7GX3MqEOYlTNV8lvJ57SnXr25SFqyD
	H8PfHM5xly8WJxpJcc955tLwVA==
X-Google-Smtp-Source: ABdhPJx6/8/bZp26FIX7V8Ay1XDamBiRZhaSL8+jfXE6zrYzTzf2rBgwo3tyZAyonlNY5LorugsurQ==
X-Received: by 2002:a17:902:10f:: with SMTP id 15mr678270plb.121.1599024538520;
        Tue, 01 Sep 2020 22:28:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:fc89:: with SMTP id ci9ls589669pjb.0.gmail; Tue, 01
 Sep 2020 22:28:57 -0700 (PDT)
X-Received: by 2002:a17:90a:c255:: with SMTP id d21mr777482pjx.212.1599024537856;
        Tue, 01 Sep 2020 22:28:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599024537; cv=none;
        d=google.com; s=arc-20160816;
        b=uGO9NdnapPS9esIETbyn6W9Ge8hTQP2vL9gXAmk1VdQLWd9iDrL9kl3q2JLKQw9xou
         k6g84BD2zLu5bw3Y7YftDnofZDIcfxl1KbBxz2+kCAwMIA41X4ZJdX0sz+SlTFeV03N8
         ORFZJ2j6sTUAwpzvE28xGXVEvflADBeIPuE7mGMLL7C/FQlzjAHlmg9FDC6lM4Ce9iTV
         j13CutC7WL9DXm+ibOxwrbtdPpdY+g7GTzGSJ3KpA8hGkIcYTPx9ddwt3pKEmFznbwF0
         9EBuJ2u1gOmsYaIgoTZtzmIxuUT0uXGRqhh3mZeZO8YHS9s4SBjSstzH0l44caqIUsnm
         Do8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Dozh1FAZ4ySnCnFNvkf+YtBQAtKR69ejlBqzni0U2gE=;
        b=DRV6hOEm2n6/HTwLhEZDNP+de4sGreWiS2AY5iuIhP/3qu97m1X8fantuWrs3/EB62
         UIsddIZ0xAQDaDrJq9LHgw4ft3cDogt0WUTd8upVDzslNHWk7tYupxYfumCOgwqTUAPK
         sh+HsOWn+2cveaBghLJ8gUju6AvGOQ+qhDGOUKqMfjK+HDC6IQHCj6hBd1/7+Zyk+d+M
         4mwc7ztBq5DFQOame8ou9jZWuIiemZeg777cqzCrFiq1pU53o9FUemSD0j4Wz7b56VOv
         SR3u1iATwsifYWKXJnPLtUG6m+q8e3ywpn/6NlkLytxSlZ/9e7blXRNxJazOKtVJO96p
         AqIQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uHbIcuLa;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id e7si3225840pgr.564.2020.09.01.22.28.57
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Sep 2020 22:28:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D5B42206C0;
	Wed,  2 Sep 2020 05:28:56 +0000 (UTC)
Date: Wed, 2 Sep 2020 07:28:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jean-Francois Pirus <jfp@clearfield.com>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org
Subject: [usb-storage] Re: copy/paste error in unusual_uas.h  from commit bc3bdb1
Message-ID: <20200902052853.GA138608@kroah.com>
References: <8b0d02a71c781c1325a491f6450df0876d724d85.camel@clearfield.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <8b0d02a71c781c1325a491f6450df0876d724d85.camel@clearfield.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=uHbIcuLa;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Sep 02, 2020 at 05:14:12PM +1200, Jean-Francois Pirus wrote:
> Looks like a copy/paste error from the previous entry.
> 
> patch:
> 
> --- unusual_uas.h.org	2020-09-02 17:00:32.295919812 +1200
> +++ unusual_uas.h	2020-09-02 17:01:02.596173298 +1200
> @@ -69,7 +69,7 @@
>  /* Reported-by: David Kozub <zub@linux.fjfi.cvut.cz> */
>  UNUSUAL_DEV(0x152d, 0x0578, 0x0000, 0x9999,
>  		"JMicron",
> -		"JMS567",
> +		"JMS578",
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_BROKEN_FUA),
> 
> Thanks.
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

- Your patch does not have a Signed-off-by: line.  Please read the
  kernel file, Documentation/SubmittingPatches and resend it after
  adding that line.  Note, the line needs to be in the body of the
  email, before the patch, not at the bottom of the patch or in the
  email signature.

- Your patch was sent privately to Greg.  Kernel development is done in
  public, please always cc: a public mailing list with a patch
  submission.  Using the tool, scripts/get_maintainer.pl on the patch
  will tell you what mailing list to cc.

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what is needed in order to
  properly describe the change.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what a proper Subject: line should
  look like.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200902052853.GA138608%40kroah.com.
