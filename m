Return-Path: <usb-storage+bncBCUJ7YGL3QFBBLW4332QKGQE3AY5WJA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D431CC7A2
	for <lists+usb-storage@lfdr.de>; Sun, 10 May 2020 09:33:03 +0200 (CEST)
Received: by mail-pg1-x545.google.com with SMTP id g1sf4998163pgk.10
        for <lists+usb-storage@lfdr.de>; Sun, 10 May 2020 00:33:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589095982; cv=pass;
        d=google.com; s=arc-20160816;
        b=KA8bL5VTi4nU9RfPhroz31HJCyVOgcawse/Y7qBZZTU4ewmCDrfA0kUuMHailMnvez
         JbSecGRGQ2zBQ496g7UyDQP9ZJctP5L36Lz2PsIA1zQ4ud+H5sbae71DpmUyxlizMjj+
         5zzqZlIxaaYd0biDlEiePDC0yKKrmxMjSpcMNYunq8WZgsOy8q1y9f8nsgOd6dMYWgwt
         qFVn/OeVrsUiTq/31usrJVBmy7VEyZGBOu9rtXMCm8WDJy2f831WJUpealUoEGBTHrT6
         85SHRlNG4a9oYJA063AriDgpOw+0AI/0tZtyG1CVFz6ipkVuXWz/SepybRXuEK/+lbBO
         ZAVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=J+dZQEm8yao8R7rwvLIEmfTi/lUW2Q7EzPROkzvhb3o=;
        b=bHPV8ItkVOArtcHE8obizWwLZXOjT8xG8Y5YVXzskO5SF6rCJAfoy01q9CF4+A8OZn
         3G8mi8a2NUf6WJT2XwXYMfX0/CDp77ZGCRRElp233nXaJpBvuXpdMzinDiI+5VcoPfpk
         ATzHe3YVu4zhucL9YBhcgc6FPZiyBR0SUg6mNDhdOW2qJN+wHMJgWKZYbD/xQ0rdLanS
         jyhnWnFS6sXwzt2sGHTvJSna8hbTZhTcHwCSOAVqaMq4D7vv2pehkE+SNrmDwklNWllz
         tzjsazn5eACrprtTxPu7Kdtbp6qKA/lsjTGZsygO6nIbh1ow4QVbdIY4AwX/SP+6Ioxh
         HZHg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AwPkx+XO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J+dZQEm8yao8R7rwvLIEmfTi/lUW2Q7EzPROkzvhb3o=;
        b=FtgCJ+MuCn1mVZK11Ta7sboeCHRis4tIjVkRUx2+UmGZWuFNAbwWm6eGD/RDYOd1XE
         RmQj0gkYecFrqCZhJ2K3RVpyI0Zj/5NSAL9ZXLdaknvWD4rN8SBw9YKwGx1ffjwmZR6/
         Lz1arB+ojWJ6KaT94YzOjB33LWswv5TkO4Qdc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J+dZQEm8yao8R7rwvLIEmfTi/lUW2Q7EzPROkzvhb3o=;
        b=oEZDKlHqjswWRazd1NUCbqiYKzIK9BqUEK3LhZBDK8WeSJGOxnMRDasqwGOyCRRQEV
         xA39vuie6RxundG2feGBURY0CKdaw5ooMUacPDLXVPAPoseVoy+eFmW9bOCy0KN+BIkO
         7K3QgD8eJZM/nFnstHBnF2wDgGyWO2kUYEiExm6Y+P3QNO+AIBGkJzHFzOrk9bX2BZYC
         UPOy8Y3fzreIzdOXVulGjh6vWbLXmUt9srvs/RFdI/a7V2Eox3UQ+uiwvj0or7LNolXk
         L+H/NfaY/it+CBh4PnFJPPaur2zyaVFvu53Yq5AYPq+LN/kWQF1gRe221xIFEeanVcat
         6yGQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AGi0PubyoYe9L3YGwCY5rxXIjaPpvzOxovLJN8NabO0EsHETFyhTWJZx
	gF0IfyQbvIFlluk9xzQuqfkU6Q==
X-Google-Smtp-Source: APiQypK71WLdkhyx2qzoEGcxGqytQ+BWDr2zfxeS+8aD5hGbaFdvs/YLSWt0l26etYvxxMgXalDKNA==
X-Received: by 2002:a17:90b:4d09:: with SMTP id mw9mr16238409pjb.55.1589095982297;
        Sun, 10 May 2020 00:33:02 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:7143:: with SMTP id g3ls14757946pjs.0.canary-gmail;
 Sun, 10 May 2020 00:33:01 -0700 (PDT)
X-Received: by 2002:a17:90a:384b:: with SMTP id l11mr15758840pjf.89.1589095981857;
        Sun, 10 May 2020 00:33:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589095981; cv=none;
        d=google.com; s=arc-20160816;
        b=byM6Y/ofk6Nz+mNf4r4eRS31CoVu+vfBlUpv+CVR9diU+8U19GfDCNtNWXCUemqqEr
         s0KuelK1oTI09h28QlBquTbb0LPQMm7Sz6kp+tWtN6joqrw/eBV3KEEkoYMbnz0FIO7m
         8WnX4UQUOyet04z96cJEai7MTm1ewX44S4amqp9uEeeapbgaljSM5MTPVuvT3RAxnLNB
         E4XJigziPySeo8bPzpAswGWW4nq+bDDK6WoB9kyKDnOnA9hexvp1dlPzNEhtjXZnfUXL
         o8GR3Z3yPPKWaKQIKTPwbmmYzoHDGaKcmK67HKXGOnuRmBxUXxgbhH6VZHlKV3WGV6CB
         RPMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6gRaLV+rZrqv4r6gG7W2U1m0XgntGGo1gJ73t70Ti04=;
        b=0c9QHooz5vB+JbSm2rPWKMLdV40PXcULSlcEmk1eSuvxcYqwf5QFL/x0rgPrhSwPy7
         jd8wfP4kocQbXLdGdPK0pM+h9yjC9QYdxfMoNFSf/sTT7Ab1qfu8z09TazUjqXZgo1hQ
         voASEEEOI3pmUjoq1Br3t5Ky8Jj+5Y0aTyso38xQR4KMA7WY+7mUsdBehrGtcRAxaCWW
         editwyU5hvhRGXJvPubaRlbJvkxR8CgBdr8mSe4gYYGnZn1ICRgrBx31KPQYcHA8aSHb
         6KuO7NVPYNWcexwjMXHu2FkQ2lobIAwDxp/md7lIYl/KUhEpJcxF3lRkc2N1Rdx3F805
         7T2g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AwPkx+XO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id 91si1961781pld.330.2020.05.10.00.33.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 May 2020 00:33:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D7DA420801;
	Sun, 10 May 2020 07:33:00 +0000 (UTC)
Date: Sun, 10 May 2020 09:32:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dio Putra <dioput12@gmail.com>
Cc: oneukum@suse.com, linux-usb@vger.kernel.org, linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, stern@rowland.harvard.edu,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: USB Attached SCSI breakage due no udev involvement
Message-ID: <20200510073258.GA3474912@kroah.com>
References: <CAOyCV0zW_20Jq6Rrb9=fhZQAHeqMMs_oHBJdTVt8Nqje0Zoeig@mail.gmail.com>
 <20200510054717.GA3365021@kroah.com>
 <1f9c0b30-f440-de43-366f-28ccba6a22e2@gmail.com>
 <20200510065416.GA3434442@kroah.com>
 <e409bbfe-c446-2ba3-423d-c6e198abef33@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <e409bbfe-c446-2ba3-423d-c6e198abef33@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=AwPkx+XO;       spf=pass
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

On Sun, May 10, 2020 at 02:10:04PM +0700, Dio Putra wrote:
> On 5/10/20 1:54 PM, Greg KH wrote:
> > On Sun, May 10, 2020 at 01:48:24PM +0700, Dio Putra wrote:
> >> On 5/10/20 12:47 PM, Greg KH wrote:
> >>> On Sun, May 10, 2020 at 09:55:57AM +0700, Dio Putra wrote:
> >>>> Hi, it's first time for me to report user-space breakage in here, so
> >>>> i'm begging your pardon.
> >>>>
> >>>> I want to report that Linux 5.4 breaking my USB mount workflow due
> >>>> udevadm monitor report here (I'm using vanilla kernel 5.4.39 on
> >>>> Slackware64 Current and vanilla kernel 4.4.221 on Slackware64 14.2):
> >>>
> >>> <snip>
> >>>
> >>> Sorry, but what actually changed that you can see in the logs?
> >> Sorry, what do you mean? The dmesg log or the kernel changelogs?
> > 
> > Either, your message made them pretty impossible to compare with all of
> > the line-wrapping :(
> > 
> I'm so sorry for first message mess, because that message has been sent by
> Gmail Website. Can I send my logs as attachment? I try to convenient everyone
> here. ( FYI, I just switched to Thunderbird with these settings:
> https://www.kernel.org/doc/html/v4.12/process/email-clients.html#thunderbird-gui ) 

Sure, attachments work, but better yet, if you can show the difference
in a few lines that is much nicer than having to dig through large
numbers of log files.

> >>> What functionality broke?  What used to work that no longer does work?
> >>>
> >> Yes, it supposed that just work and kernel could talk with udev, not just handled by the kernel.
> > 
> > I don't understand, what functionality changed?  What exactly used to
> > work that no longer does?
> linux-5.4 has been never called the udev dependencies whereas
> linux-4.4 will call any udev dependencies if necessary, that's the problem.

I do not understand what exactly you mean by "call udev dependencies".

udev is used to create symlinks and set user/group permissions on device
nodes in /dev/ which is created by devtmpfs.  What exactly is not
happening in your /dev/ with the move to a newer kernel?

> > Did you change anything else other than the kernel on your system?  Did
> > you change to a newer version of udev/systemd or anything else?
> > 
> I'm using eudev-master from their official mirror github:
> https://github.com/gentoo/eudev

Have you contacted the eudev developers to see if something different
needs to be set in your kernel when moving 4 years in kernel development
forward?  Are you sure you have all the correct config options enabled?

Why such a huge leap forward all at once, how about going from 4.4.y to
4.9.y and then 4.14.y and then 5.4.y?  That might help narrow things
down a bit easier.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200510073258.GA3474912%40kroah.com.
