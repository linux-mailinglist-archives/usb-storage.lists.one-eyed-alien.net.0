Return-Path: <usb-storage+bncBD6LRVPZ6YGRBBOCX73AKGQE3J5TYPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd48.google.com (mail-io1-xd48.google.com [IPv6:2607:f8b0:4864:20::d48])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F8E1E6709
	for <lists+usb-storage@lfdr.de>; Thu, 28 May 2020 18:04:24 +0200 (CEST)
Received: by mail-io1-xd48.google.com with SMTP id g3sf8271857ioc.20
        for <lists+usb-storage@lfdr.de>; Thu, 28 May 2020 09:04:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590681863; cv=pass;
        d=google.com; s=arc-20160816;
        b=M/zxF2+sOzSljlZQlfREvCsEasKxgNLPfgvcGeR0U/5cXxOx1zHjv1e10XbUHY37XY
         kr9mP38gtcP73uF7GT4rKQhzqD6e8i8DL3ZEDHeK4zVhrEcZxQUQwakY3dYFFmtJ4kML
         UggO8tssdg2o2R4e6Kf4JYIHCKe3pg0y95A9+m9mo/oCy1DQb/FmP1Bt4OAjOtYPOwqy
         ff93dYOqUPcl05SxI8vOGIvERQU4IwHQkXLbaGdwdZtmTUpFJjpvvDKwOHdxtRAqPDcc
         mRS97QjvA6qQdY+BliVkdSlI2DIHPgaaQ++52BPV9JMK9A4uSZYMbTVlSPDgC+QZ1T2L
         /8ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=CXWxAnfaXJiTG3TLxhMFNkooW93GdxRW1Vt7CWHjKoc=;
        b=gkVaspymx4KJUsgCSpn0xL4XWZnh9FyDxBqcTYzePOwlYDD9zESl6kn0ZJoxB9G5T8
         HmjJDoYIn1+jiW+0Y+Y2Vqe/ODSoxw59EjURira1KJEwSqJfY2B+Cca468D8qMDBD0LD
         huXR3RUMdbPGLlr4UAIRw4zLdn4mJe9/pD01MUpRFIDxzkpX86jDm4691h1icuHe1uew
         64XsPAxHCZ/SJE6KU+7qoVI4ojyU2lAnm5chh+hHjQH9Tr2Fr6D2XP3Ps0VkCxAHOhYT
         B5HxD3me8DSwVu7sfGlAjj+6pryooWXy2H2xAEoBvkAh8RI0WMFCZUdvgFodB5nSJlQ+
         UUOQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5edd826a@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5edd826a@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CXWxAnfaXJiTG3TLxhMFNkooW93GdxRW1Vt7CWHjKoc=;
        b=OQeWUw6oWY9/ru+eqrodXzdWzduGFV9DexeagJcpgcBnfB4eZ+dVFLUTD0ybb5FFue
         FGXlqaFCnbURAcptYSwyA6PK2z21CVS9m70k9mFSv2gcUErbUZUlp+JSaOpgjOpMuC+e
         wWF5diaBKsEN2P2FGeewZ6pVYam5awTL0cLeE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CXWxAnfaXJiTG3TLxhMFNkooW93GdxRW1Vt7CWHjKoc=;
        b=T7QoBOyG72r5fp7C7BUnAyZ/bFY6UJtS9564re66BIgvFgDLeO4A922zNmrTSn85Fa
         aT5ggol+X1ycyEvQhopAnwAndtcdZ90RJP8TmF2naXFijuyA7Mv/wZiUhhYr5PyjqLAF
         NeZ/1+34EGIEASY5TcWVVMwe2CRNrw1Dqm7A93J7Tusc1vJhxXCGrSlTFFjRT2ZAAkF0
         ZUhxe1vHwWtG/PSoPTaGlcWPkrhI0EKmlkB4KnU4ItFSYZMXzMRBYA/9ufjAAvw4yVAH
         V2Cgpa02sG6PwmIFj+JK+hOtCd/ZNgqdkkaq+hFjFCKS7SsBMtt3zkJVF7Tv8CwqgTlI
         35Jw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530+x2e/1jfCB7hBqZcdb1wHmaV+DUyt/NgHD35UAVwm7hqU+eue
	xbMYS7vIIyq45TWlCo2JZTjizw==
X-Google-Smtp-Source: ABdhPJzYWJ4tjkGabk7zqQBcr9ZEbNk2K//QB0T6M2qIKPirm+WUdOeRxhz3/XTS3aj82YF6jTo9gw==
X-Received: by 2002:a02:2581:: with SMTP id g123mr3114900jag.35.1590681861798;
        Thu, 28 May 2020 09:04:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6602:1584:: with SMTP id e4ls414034iow.0.gmail; Thu, 28
 May 2020 09:04:21 -0700 (PDT)
X-Received: by 2002:a6b:f117:: with SMTP id e23mr2967513iog.100.1590681861202;
        Thu, 28 May 2020 09:04:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590681861; cv=none;
        d=google.com; s=arc-20160816;
        b=Q/b+QxNV9fzjiJPDk4iuOUbw3Wr3B801Nk6L5uLTN2nHKucEekiIuNxzVlEX+u/aRd
         VziFp2DspUF8mySN4pS9hnIp7WBMZsjtTarxE/osLp+bIHGaJQJg78HQhomkr7bSVxV5
         RQbiSGj27OQZjBxz8wokd4YtbdZrbYEen0AmWc5D0AYOTpCgE3LrJWuD+LlKm82tp+JP
         E6VZi891Tbu9Yq4YICnS3v9A8Hypx73svN/l+YzAMD2irA3EbLJOw5eZZRcYvYtpiADD
         Lg0t/iJXUfuP3Tq3i1mpoR2ews193JdYWDpm/tMFtZrGjInG0OEJQiH5ldBi6GiJRyoI
         dpfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=nY+9SpgZD31xREkY0vuAsKB1exnp634C17wltsZvZoo=;
        b=P1hkrWo4/jOVfI6KnqQiTLPJ6pWKahH1YLd/MBIHdAvevS+leBAugA5KfTg+NfkjTC
         VmTZVWPGotk4XjUWt+04tYVqKsZebigFwI7hZQpEJPz+2WLBN/TCvpN+wNLahqpTxwcx
         INTuv2k5XgYGqKHuXnsYemparVR7B5emUZllLtDma1/MkRb4IBNrJkWlXH31jEJMOMWs
         yaSUul3wSDBM9FIDtlPo3O4lzzD+tCy4/KD744orhHaMeCCJMgdUrYX6EySDdtZziJY2
         22a1HSrJhvf35ibV+e21vWy97KQ/O3E1XBO+6GdJRjRlRJuL9LQugyCZ2MGzWMkd8lKU
         Yb1g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5edd826a@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5edd826a@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id l4si4350232jak.57.2020.05.28.09.04.21
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 28 May 2020 09:04:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5edd826a@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 14781 invoked by uid 1000); 28 May 2020 12:04:20 -0400
Date: Thu, 28 May 2020 12:04:20 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Zebediah Figura <zfigura@codeweavers.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
  usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org
Subject: [usb-storage] Re: Bug 207877: ASMedia drive (174c:55aa) hangs in
 ioctl CDROM_DRIVE_STATUS when mounting a DVD
Message-ID: <20200528160420.GA14188@rowland.harvard.edu>
References: <7d0b20b9-4735-bbed-bb50-72764aefd6d8@codeweavers.com>
 <20200528075440.GA2881385@kroah.com>
 <465eaae3-fa60-f37e-1d62-c52236720798@codeweavers.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <465eaae3-fa60-f37e-1d62-c52236720798@codeweavers.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5edd826a@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+5edd826a@netrider.rowland.org
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

On Thu, May 28, 2020 at 10:02:07AM -0500, Zebediah Figura wrote:
> On 5/28/20 2:54 AM, Greg KH wrote:
> > On Wed, May 27, 2020 at 11:23:13PM -0500, Zebediah Figura wrote:
> > > Hello all,
> > > 
> > > I was asked to report this bug here. There's more details in the bug report,
> > > but it's been proposed that there's a deadlock between device_reset() in
> > > scsiglue.c and usb_stor_control_thread().
> > 
> > What bug report where?  Can you provide a link and the details here in
> > the email?
> 
> Oops, meant to link it and forgot. Sorry about that.
> 
> https://bugzilla.kernel.org/show_bug.cgi?id=207877

This doesn't look like a deadlock to me, at least, not a deadlock 
involving the device reset code.

Your next step should be to collect a usbmon trace showing what happens 
when the problem occurs.  See the instructions in 
Documentation/usb/usbmon.rst.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200528160420.GA14188%40rowland.harvard.edu.
