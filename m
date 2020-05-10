Return-Path: <usb-storage+bncBCUJ7YGL3QFBBV77332QKGQEV3K6C5I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B881CC990
	for <lists+usb-storage@lfdr.de>; Sun, 10 May 2020 10:48:25 +0200 (CEST)
Received: by mail-pg1-x546.google.com with SMTP id w3sf5104733pgl.1
        for <lists+usb-storage@lfdr.de>; Sun, 10 May 2020 01:48:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589100504; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZzCJHZYXoZGgPZ5JWiF476+rv/uIMdGFGJvJlIgtJzVJCPO3/qug58adJlAxJ3gnTA
         TM5sCFHEgBlDhmAiGDs0+zd15YfP9sKraQFMRg8Jem/MgD7HigQCedocBM0E629U5t5j
         6ac4ybgwfJGAM6UwLxA6Yj25cMQ0h4yHEpqf9yM8y4hirxfdh0NY41GqINtULNfgpFhe
         4/sC2n+Oingne1qUJXEyiLRA7F2S9W/0UZmdXp+lqXlRQYvmvYN2tF9+KJb/5uGPR5tS
         GlvKHNU0MXqaTz7/EiRMsda5yTxBPxG8Y4Q+nXse4Xt5x8Cb4z49CbJnAPDJ0Y7RRLOC
         uEHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6lBB9gOXBPM3z/1B3RUqClq0jQlhnZaj5HRnf5pFl1c=;
        b=tVQmc5hnT+PmYAssPez1tR68Vem286+kT+LsH0HbTId5yY/2LrQ/vqkE1I+SO8xdg2
         qNooPquTYjVe/2IFlOSYvKv56b2KAZcRYt8STKwvdXkP5uLUYe5CjojrW92w9hpGmHZk
         aHVMUDf0L47iEppq3Jg1LavKVN7qi+vgYMfUKfD1ow0K/v2pNXfRxHwBsJPgP9K8ivx8
         ei/TvwouZCneiKf38dQF85262cfq+pSIpUayRefGnH3k+vaK0lgR2AvHPUQWIIP7Zx+a
         q9J4tpd44iS/NiG47haa8JYQ1GQ02jmx2Zvux665IdiaWvHsDw8S0Kcm6UQYcrRLEXYl
         H3dg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Xjofib8S;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6lBB9gOXBPM3z/1B3RUqClq0jQlhnZaj5HRnf5pFl1c=;
        b=XkHHazVCAHKFshdUkibFZYkqIJwwaEfCSwzzswemv9XJhF9jtnB0bUBrkviKRo5C4c
         lQ590QKMlHpKY9Al+PSGySOT3rKL5rzKSgcRcQWb3kNV+7tKVzCwv0h5SX01Vz99EBVi
         DCQkxXFhyeKziqoQVNLf3qz3f6mbTQUIOoIKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6lBB9gOXBPM3z/1B3RUqClq0jQlhnZaj5HRnf5pFl1c=;
        b=qokKtjs4KpwcwEhUahhNJD2pZNPfALirUZoeH3h0SAi/2qexNvbF8Ri2+QP2bSmMQ9
         5MtpvIdbviotYook/rcf7+d0C1ZZwAYJi5cjf4INQU6OarxOumpwdtmXYSBuFTyDEPts
         wrouFgPFmL6kGQcqWWz8lXD8HG+ZLnM2FyDI4wTRykSgM/2hD/ftrYdkqmr46TMNBYbX
         1o1U6BrFUjLUF0/tCoeDs7+a3aeJnv77eaKGYdSFvQrb5RsSWxsRys2MVO/R94PFOWWs
         fpFPXZi6riqAvuzNbIQl4OsqiwzAtWnXfnB/jN9n4J3d55SuLuOnD5PjUxmLCE0C80zT
         iB1A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AGi0PuYLdFVrC+BnJQ+hXuodnbwuE8HurjZpLQmykZaCOt9Wo5RnmjJs
	UQjaiMhBW6O4DTI5xx7szb3LFA==
X-Google-Smtp-Source: APiQypIpSJ9M/o6cjrhZNV5dwQBNrw30uWN6fSl0sfBWtaSJc1J6W4M8C/q+7wHk6Us/h/aBSAk9KA==
X-Received: by 2002:a17:902:c406:: with SMTP id k6mr10058279plk.280.1589100504040;
        Sun, 10 May 2020 01:48:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:6a48:: with SMTP id f69ls2685338pgc.8.gmail; Sun, 10 May
 2020 01:48:23 -0700 (PDT)
X-Received: by 2002:aa7:8dc1:: with SMTP id j1mr11242343pfr.285.1589100503528;
        Sun, 10 May 2020 01:48:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589100503; cv=none;
        d=google.com; s=arc-20160816;
        b=CPLfh7hXiq36ooG0A4VXGRxG1Dm8pPV5WiRKw0Dn2jpDer5u0vsOfpSAbcAbsvRjGM
         rEnnH6/GyrMYCvLclMwZtGySwzsW2cpr02kasT3C6B2JN3IOcghTNAQbEn5UZN8lfgp9
         mtDYoseKKc54ezIZhG3JF0QfwmlQjNU0FXnwpCbawfCAIqqs9gxDL4FcYf2D6dDtQqpk
         vGitHJ+nw5moXhLPHmCR6VCwbyWk6zP9QYmZNxOShJsS4VtoivHYrF2BP8CweTEUHuh6
         F6IicGhWfzokVs56Uk0nt+RKHbdiWax6yQtPuPJgqH5AlvvoAIcwzgb6lCmxOW4sRLh4
         409A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=55/xfseQxtOgfr8n3lZJGvaMxM5EnecraFZinbFsVOU=;
        b=aoN/OUMYapPkjE9dmszc4Fqp1ZDC7jvXaY854/GeRYjBmhfqinBLdtFrxnSJr3KGaU
         qJOW+BT7mGdHkuDFebykWT1I5RCRPwqcIa3l4YPMDA+ckuce6zDS1GqQKLl1vbKlL/zG
         jE41e6PLiMUQa2YUA3MnFyKw7P9p+9CzMVRKzvPe0D4wvaYskBtDpeaV66oRKpGx+qq7
         Lwum6p0TIY1Ni+qv37al+KySHksKQJzhZbEJZVwB1H6sU0P8tBIx5wCYAgnuqVHP9gx/
         w4vDNQRNHE2BISnhV8+wkzU4OS5GOAGOWm+fxjUSZU3bYnD2RRrlFS9A4kWBELHS35mO
         bK4w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Xjofib8S;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id u4si4617241pgj.416.2020.05.10.01.48.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 May 2020 01:48:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A32A320731;
	Sun, 10 May 2020 08:48:22 +0000 (UTC)
Date: Sun, 10 May 2020 10:48:20 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dio Putra <dioput12@gmail.com>
Cc: linux-usb@vger.kernel.org, linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, stern@rowland.harvard.edu,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: USB Attached SCSI breakage due no udev involvement
Message-ID: <20200510084820.GA3598083@kroah.com>
References: <CAOyCV0zW_20Jq6Rrb9=fhZQAHeqMMs_oHBJdTVt8Nqje0Zoeig@mail.gmail.com>
 <20200510054717.GA3365021@kroah.com>
 <1f9c0b30-f440-de43-366f-28ccba6a22e2@gmail.com>
 <20200510065416.GA3434442@kroah.com>
 <e409bbfe-c446-2ba3-423d-c6e198abef33@gmail.com>
 <20200510073258.GA3474912@kroah.com>
 <6dcbc78c-8c2f-e620-822b-7e777144d4ae@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6dcbc78c-8c2f-e620-822b-7e777144d4ae@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Xjofib8S;       spf=pass
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

On Sun, May 10, 2020 at 03:35:34PM +0700, Dio Putra wrote:
> On 5/10/20 2:32 PM, Greg KH wrote:
> > On Sun, May 10, 2020 at 02:10:04PM +0700, Dio Putra wrote:
> >> On 5/10/20 1:54 PM, Greg KH wrote:
> >>> On Sun, May 10, 2020 at 01:48:24PM +0700, Dio Putra wrote:
> >>>> On 5/10/20 12:47 PM, Greg KH wrote:
> >>>>> On Sun, May 10, 2020 at 09:55:57AM +0700, Dio Putra wrote:
> >>>>>> Hi, it's first time for me to report user-space breakage in here, so
> >>>>>> i'm begging your pardon.
> >>>>>>
> >>>>>> I want to report that Linux 5.4 breaking my USB mount workflow due
> >>>>>> udevadm monitor report here (I'm using vanilla kernel 5.4.39 on
> >>>>>> Slackware64 Current and vanilla kernel 4.4.221 on Slackware64 14.2):
> >>>>>
> >>>>> <snip>
> >>>>>
> >>>>> Sorry, but what actually changed that you can see in the logs?
> >>>> Sorry, what do you mean? The dmesg log or the kernel changelogs?
> >>>
> >>> Either, your message made them pretty impossible to compare with all of
> >>> the line-wrapping :(
> >>>
> >> I'm so sorry for first message mess, because that message has been sent by
> >> Gmail Website. Can I send my logs as attachment? I try to convenient everyone
> >> here. ( FYI, I just switched to Thunderbird with these settings:
> >> https://www.kernel.org/doc/html/v4.12/process/email-clients.html#thunderbird-gui ) 
> > 
> > Sure, attachments work, but better yet, if you can show the difference
> > in a few lines that is much nicer than having to dig through large
> > numbers of log files.
> > 
> Okay, I'll attach long messages and trim it as far as I can.

Again, I really do not understand what exactly is "not working".

Please explain that when you send the new log messages.

> >>>>> What functionality broke?  What used to work that no longer does work?
> >>>>>
> >>>> Yes, it supposed that just work and kernel could talk with udev, not just handled by the kernel.
> >>>
> >>> I don't understand, what functionality changed?  What exactly used to
> >>> work that no longer does?
> >> linux-5.4 has been never called the udev dependencies whereas
> >> linux-4.4 will call any udev dependencies if necessary, that's the problem.
> > 
> > I do not understand what exactly you mean by "call udev dependencies".
> > 
> > udev is used to create symlinks and set user/group permissions on device
> > nodes in /dev/ which is created by devtmpfs.  What exactly is not
> > happening in your /dev/ with the move to a newer kernel?
> > 
> Would I send my dmesg log with "udev.log-priority=debug" as attachment then?
> 
> >>> Did you change anything else other than the kernel on your system?  Did
> >>> you change to a newer version of udev/systemd or anything else?
> >>>
> >> I'm using eudev-master from their official mirror github:
> >> https://github.com/gentoo/eudev
> > 
> > Have you contacted the eudev developers to see if something different
> > needs to be set in your kernel when moving 4 years in kernel development
> > forward?  Are you sure you have all the correct config options enabled?
> > 
> It's my bad not to contact the eudev developers first. However I'm not quite
> sure to contact the eudev developers would solve the problem, but CMIIW.
> 
> > Why such a huge leap forward all at once, how about going from 4.4.y to
> > 4.9.y and then 4.14.y and then 5.4.y?  That might help narrow things
> > down a bit easier.
> > 
> Unfortunately I need to think twice due almost ran out of electricity
> here every time I power on my laptop for long time. So maybe I can't.
> 
> But if these steps are necessary, I'll think solution later.

Why would it take a long time to do this type of change?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200510084820.GA3598083%40kroah.com.
