Return-Path: <usb-storage+bncBCUJ7YGL3QFBBY5E5TUAKGQEMV6BNHY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5635CB92
	for <lists+usb-storage@lfdr.de>; Tue,  2 Jul 2019 10:14:29 +0200 (CEST)
Received: by mail-pg1-x545.google.com with SMTP id t2sf9162835pgs.21
        for <lists+usb-storage@lfdr.de>; Tue, 02 Jul 2019 01:14:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562055267; cv=pass;
        d=google.com; s=arc-20160816;
        b=IPNpMm9S+NEtupMX1TyfkiWk4I4uri0lb/HmPs534v9PLzmmrOPN2wgoZksXt+eVnk
         RAXgneCRR1ayXHdPZOEQzhfW04h1eTleQZ5wFjx0vOQcYjOHilXMZTb+3ejk18PfWRae
         u7GpUkNj8ytHxESxZB2pwdEytt5LogwvnJr9mH2Pv6yx6y38NVWK64C91wRi5wv0f9ce
         9zaf4wHeGdt68siJb+bbs2jxDUvPjg5/jZq50MtfStZFwNYC8hv3RjSv2hKbu7gRQZUA
         b4BW49gJFujUgdScopPFLpPOPnSSOS3yM/H3pnyGnGccRxy7RPwYvSMMb2wCl+E8d++m
         FhQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=MUUvw7tsrKDlHStYB06KG8wDn311kfIq9TOIdSsYsyc=;
        b=HyWy4kJqjP06trHuxOdrBSqDbOIGLBgvCF4aR1D9K8yozpXSvldXvx24eJ84IK18+L
         UgK5gJWUbm28NuGRkzSz1teC1THbQnj5eRaZ9rpIgGqSOaDEJ9YlKXgUbq7QpTTLNDQ0
         Y3RYCgfxhkd8xJSG5VPeSpbEE8w+t2YjEYv//aq91Mtt0cHRv2lgW43haOvl/hvTIdqL
         PcHdcJgD3DkhTHfrodbUlqjRJFj2NFM4k4oBfs2SzX3HIDK7uRphWJ6xd1Wk9NNngE6J
         /l90jMokTG0VWHI76uCymiVcZfyHWKwfGkXWhBEp8LyI3BZZ0p4URhUsai0v53/q3aPi
         8hkA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LY8IBqQZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MUUvw7tsrKDlHStYB06KG8wDn311kfIq9TOIdSsYsyc=;
        b=XMIuqjOGyyI49cqSOXNqlo2JA7bpblOWwzcSD+a6av4u7UllZfs4k1y0riZAXqDbMK
         y6Uf8z4IBF2P0Te9X3e15D0CMQdqoOrS2yRJR7u+xXGnKbVmvpFVX45dH69arVc5Pu/A
         OLQehbIegAjwhoj0s+GFdscA5VPqDGjPFAawo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MUUvw7tsrKDlHStYB06KG8wDn311kfIq9TOIdSsYsyc=;
        b=M3kj+y1E0xthSiE30FKXkOm5+yK0fFURcz7oZYaCfUuFomccx//d61SH/CzrvTHZgS
         Uq1dmGWdtIr4K3LuCD/uWtVgdwjyxfSj6fSGB59MSlz0gY2ODdWa6nfyrOY7bx05D/Oj
         WUrOI6wgekHNOk7KOhvzKgQq2FKwml+UL6SZmjISdwWCn++Ttwz1omSr5ziDIIdoRlTB
         ZAf7FJaML1Z2TTonw29RdKzSkJepTiCaT4rp3jJDFyD0GUyIKfFCGFRN1rDUXB2GYEY7
         Hnj11qy0mp2nz+QEaHDEVcM4Y0ofeiz5LJ0Km0z0qNUHR5DBEJ/UOW4pyRi6Td1Iapzc
         NHmg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAU4Cg57MD1Hy4ic/sM0Yp7xUSZdk7JeOjYk6Fi3namJ7aI5xdrw
	OPhN8a8Bi84dHIoUPgp/JVSJ+w==
X-Google-Smtp-Source: APXvYqwoMn0/5aIImEnRCktH376jXDk/Y9Bq32+dagjmw3Z2VUCtrVt/3CzgWSj2v65LG2YqGDtZNA==
X-Received: by 2002:a17:902:8489:: with SMTP id c9mr34242695plo.327.1562055267595;
        Tue, 02 Jul 2019 01:14:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:2029:: with SMTP id n38ls827572pjc.2.canary-gmail;
 Tue, 02 Jul 2019 01:14:27 -0700 (PDT)
X-Received: by 2002:a17:90a:2190:: with SMTP id q16mr4010131pjc.23.1562055267174;
        Tue, 02 Jul 2019 01:14:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562055267; cv=none;
        d=google.com; s=arc-20160816;
        b=1AY/IDuz+KdhqvtNUbkcokhz8scdFexSCvfvdJMrIod2IqmkTTVZWA2XGnhuBN7rAU
         7WwWhBbzcWpyTZoC1m6zdaanXw3OdtZ+R2zWE733jlYghtcptrEsssyd4z2VFeR9jQdn
         azw7YmYutJuW8LrVapCT8Nf1/VZFCfEVTmd3sFx5pCP1LVB0mCvG8lvfMbHGXLXecf+8
         0hkB9nN5IwBDAjXB+8poCh4d0O/7u6NnT+oT0bAJFHtU3c6LqhhrAMV4ghQPKtyF1Fji
         IfLtB00v8+/kUYsXPAdl3I3iUAyzA2wbffKdlanAE7RWmNp36xVAVJ6AHKZQYS92WQ8e
         ayRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nnuU7sXiy6j5uAS5HoGrLumJLFGT5CL8GG44zozxI3g=;
        b=E9yxgPglXw+8IJRgTaatRvmb0Fvs/gMllmxU2jfvvI2YbTeEvEus68kuSoJyfh1TxY
         +nAW/JIWp7eeCPvUy6uJ5FoeTCxeEkU2KNtE75RRTo9HnRGfoqO6Hq/XRDg9ILWrvrhJ
         V/XJ2Kb5Vd2U/QSJnxovFFXr6L5QWaO+pVGqVWOoy+8rJAeM/jVwcYXiJW9HUECzJ8AR
         88Zf5M0kNJeJmJiCFuJdgCtCbCvHoS/aIVXIUFQzrtxtGnUX7g7z1cjbUOMWqbHuypU+
         bj2Vsggej04vfKJRjsnfYRUhxIqlWMAB+6rim2gPG8Tx+qsVdKKKadNKLVMo2QmbU5gK
         WEHA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LY8IBqQZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id o19si13155864pgl.389.2019.07.02.01.14.27
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jul 2019 01:14:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6FFE520645;
	Tue,  2 Jul 2019 08:14:26 +0000 (UTC)
Date: Tue, 2 Jul 2019 10:14:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: JC Kuo <jckuo@nvidia.com>
Cc: linux-usb@vger.kernel.org, stern@rowland.harvard.edu,
	usb-storage@lists.one-eyed-alien.net, oneukum@suse.com
Subject: [usb-storage] Re: [PATCH] usb: storage: skip only when uas driver is loaded
Message-ID: <20190702081424.GA4162@kroah.com>
References: <20190701084848.32502-1-jckuo@nvidia.com>
 <20190701085248.GA28681@kroah.com>
 <8e8e8703-8620-b625-4917-bbb8d999caa4@nvidia.com>
 <20190702044249.GA694@kroah.com>
 <f6ed2505-5da9-c217-a052-a19d197c5c8e@nvidia.com>
 <f43e7ecf-64d5-20d2-0461-85a55fa28a33@nvidia.com>
 <20190702073432.GA9265@kroah.com>
 <136cd205-6114-2be5-4244-f6689ce6bf3b@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <136cd205-6114-2be5-4244-f6689ce6bf3b@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=LY8IBqQZ;       spf=pass
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

On Tue, Jul 02, 2019 at 03:57:04PM +0800, JC Kuo wrote:
> On 7/2/19 3:34 PM, Greg KH wrote:
> > 
> > Footers like this are not allowed on public mailing lists, and forbid me
> > to respond to...
> > 
> 
> Hi Greg,
> I am truly sorry for that. I have just figured out how to tell mail server
> not to add the footer. Please allow me to query again.
> 
> Since blacklisting uas kernel module is not a good idea and could break UAS 
> capable storage functionality, although user-space should be blamed for the
> improper configuration, do we consider forbidding making uas driver as
> module? That means to make CONFIG_USB_UAS a bool option.

Step back and try to describe the real problem that you are having here.

Why is the kernel responsible for fixing a broken userspace
configuration?  What UAS devices are not working with Linux that could
cause someone to want to blacklist the uas driver and who is telling
them to do that?

Also see Oliver's response.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190702081424.GA4162%40kroah.com.
