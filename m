Return-Path: <usb-storage+bncBDK73744WQBRB2WAXHVQKGQEULSV7DQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 82274A68D4
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 14:45:31 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id 11sf7087507qkh.15
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 05:45:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567514730; cv=pass;
        d=google.com; s=arc-20160816;
        b=wYMqHJh+3JkNJ8Ogas0OfVn54BAoib8KhuH0Y9F6Iz7wmMG1siSki1Zo+iD4IhlCTj
         X0Abcp0REvU4A7OuMc8XkQ0ksiSHP4J4OCOSJhVJ5FlM6vlwbCi0fwkUE244Cr24cYlv
         mslkgrbFaPqsVfOLbyZUSLbEAuFTL98aL5EpLPqChcXskn+buwYAqsRa4quyNDiIMVAN
         9cthCdthSGHEN+b7CtnVKUszU8APcndW2i5nz6eclGjsKnMLvdjlBl3WfHAGYJnKstfN
         X5Nv8jTUZMrpL2smx3qhyK39UTQgef0GRkjbm4SpTz2A9Ao9Dy1XBFox1eW6SfVwZXIp
         dO+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ztyp6SJpYwA93kbpSiXrM12OhNX4m8uuH7oDmBKeNp0=;
        b=JcvO9lUEDoR+FsNFA0s6zAryhIhhG5NwFq7d2lS4vNH9zmCj9299PkuZAT74hd6dcG
         Vfog6DIiQBGsAiYJrHwEiHpPSUaSt2IB3yKNIOOU7aKL48GWYzgBr8jwRp4LUgR5YhHj
         QiTGt8OQgYDS6a/+cZf1woS4LD+HY/goKw3j280aUgC5vHqqb3IDCigcJ/OTT7wF/Qxm
         7LvAWukxY72p9V4N5VXqVcVKYf9VuxN0X8FOjV+U+KKZ9tUOltVyYge44XJr178ArD2A
         vXR+LgAZyQY5KT2xTGiTEhBG6bxpArwN3lA9GJmjSWgTQ5iklW61BJDkn20bNkTEh5z1
         CipQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm1 header.b=YpxITNYJ;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=PwfKBbhs;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.28 as permitted sender) smtp.mailfrom=greg@kroah.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ztyp6SJpYwA93kbpSiXrM12OhNX4m8uuH7oDmBKeNp0=;
        b=Vwt8T1hacE7jBkyvIIPKFB9fFjrkfNvw1UxKM39AeG+cBz1o+Sxtg0oihG5zMX/wvc
         qIoskhAn5ZpjG8JrKtY9dYl8BwPxJRTXPUNCpr/l95vpF76q6rHt/fscHWDEIKJqG3AI
         wWTtl9OuGv9k4gcRhpoia8nDU/BsqI3oQyTw0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ztyp6SJpYwA93kbpSiXrM12OhNX4m8uuH7oDmBKeNp0=;
        b=bEpjddvW+QXrnawYrPg0U0l5i3e8AhVNGEE1dqQTTnP5DAr94NVc9KG42XPAFGX51D
         Bkl+aXb8i0n/mrTZjQMfsy3coHc5IBve2DeCX7s/QQJIpU4HDZbvNOJGvuF2HiU5Hxni
         o/zwfoosOBjlKDmvvQeNtsDokzZHe+8FThZmQLkh3rKiqF2PZdeTZBGbyrLHTjlWFGTP
         yAoHrudVZFY4AnGtpDC+tp+bN/WrdbcO24il4gCwPwzbsOekAiPVeAeOYJP185+1+eib
         6OVKNEq3xz2JIoPgWd4d/FHU7z8cNycrVYM10Ee/2byxQ0dwZvkWfdUHqfBSpLWw/oSE
         5xHg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUqw9iA+p5zZwsyUD18Y/UxbyzdJujhLoxcncNaH/ovYHAJfRcf
	k2Gq9dXmOg5YfK8YqB9EwPnevw==
X-Google-Smtp-Source: APXvYqyu2FI9jtTDjP6LNcBPGMztEwCoMy1xp+QdXkHE6ZDdxO1PC6Uru/dZK74ZyiuW0qqx1u/jxw==
X-Received: by 2002:ac8:1e08:: with SMTP id n8mr33448446qtl.144.1567514730544;
        Tue, 03 Sep 2019 05:45:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:41cd:: with SMTP id o13ls4087116qtm.16.gmail; Tue, 03
 Sep 2019 05:45:30 -0700 (PDT)
X-Received: by 2002:ac8:454b:: with SMTP id z11mr34122242qtn.275.1567514730162;
        Tue, 03 Sep 2019 05:45:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567514730; cv=none;
        d=google.com; s=arc-20160816;
        b=t1T612VNDWvr3ihIx+12CFpswj5lp42Y1ZYRX0uSiOIteOEbbA+iQJz10XXXV/lCv8
         KaIi4VVx6e/iX/8ZWhtpgdPxE6A0UqfKLU5XbZt8WNWmjmxVwWHBbQgdKJS6Y1cApZwd
         O6YGb8D97x+tWHSu/B9fCbs3dzDiKgjvhtXMu7oTY8DJ+qTI422yvG3QBZZeItKCKYZj
         YWlqeVfwqIX/9zTXkA8/IwJDa857BAKd52CATdbcLATj9GtEq628aLizEJFUkmQlh8Rf
         URpsigfZCuHWZ/0ZLO1ypTgtiu9ItYXjG1wgCiC2nlRk6YWMxo3wb6v7X5ZukWarqNgX
         ybrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=MIZWO/r5WYB1ZmJJ7B8lddyJnVFyg+qUjv42zSxUqt0=;
        b=xrq+Likoic4QVZe5P62CaU0RMD7RmBgFPEigcwR/oTJ4MjpmV/Fjc2hp4wKpYbLbEX
         +dU56f0/OqRzSsIZnX6ruAfyqU9RNwE9YSfMSHfe/umXfGaW/L04A7Qm7SfJrhTsqWFk
         KBKB8rn7duODQzZgkwySyU4fFcOjTcbNyxdlO9t6HPuCDuqzl/X1lNFSOAQ6pafMgp69
         +f9KhxVX3DH5SaIWPvQkeMfnaxFjOf8ZSfPDe6b/ueyExXtByYqVJ4Fz/BFA0ONFsJlW
         H+mwCmC8u/P+Gf8wf0umrA9+V3J1KlWQz2Dmr+cXjSIs9O9kcSinbAtFC337qfp1neZ8
         N/ng==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm1 header.b=YpxITNYJ;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=PwfKBbhs;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.28 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com. [66.111.4.28])
        by mx.google.com with ESMTPS id y63si6652126qkb.261.2019.09.03.05.45.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Sep 2019 05:45:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.28 as permitted sender) client-ip=66.111.4.28;
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id BE72421F2E;
	Tue,  3 Sep 2019 08:45:29 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Tue, 03 Sep 2019 08:45:29 -0400
X-ME-Sender: <xms:aWBuXaHJEL_wvL6RIxE8cXqRUzkXedDrT0uGhaRozG3QvRuZTL4FnA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudejfedgvdejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
    ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeekfedrkeeirdekledrud
    dtjeenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmnecu
    vehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:aWBuXSZMSm--u0-7G9yA86f6dcfE7NJfGCPNQ4yE5XJffU2AjjtV4A>
    <xmx:aWBuXcLYSZk_gHQe9K5RghidwiXL3sGmgDa-3MfDUksGYkerumEvZQ>
    <xmx:aWBuXVyjZyzeTamMj24KaKLxWdMGDhEGMm_MC8kalXnuhv-Lhvv-VQ>
    <xmx:aWBuXW62BIDK1Rwyvv7DuNM25f7N7yHc2oPD15nHM1sv37HTVSLr1Q>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id F2908D60068;
	Tue,  3 Sep 2019 08:45:28 -0400 (EDT)
Date: Tue, 3 Sep 2019 14:45:27 +0200
From: Greg KH <greg@kroah.com>
To: Oliver Neukum <oneukum@suse.com>
Cc: Julius Werner <jwerner@chromium.org>,
	USB Storage list <usb-storage@lists.one-eyed-alien.net>,
	Dan Williams <dcbw@redhat.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Kernel development list <linux-kernel@vger.kernel.org>,
	USB list <linux-usb@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb: storage: Add ums-cros-aoa driver
Message-ID: <20190903124527.GB493@kroah.com>
References: <CAODwPW8gTZ_2WEc9n=WJ2PEmQk2anTQYfwQ-898+kOq6wsjnZw@mail.gmail.com>
 <Pine.LNX.4.44L0.1908301337150.1459-100000@iolanthe.rowland.org>
 <20190902164724.GA22619@kroah.com>
 <1567500374.2878.2.camel@suse.com>
 <20190903091953.GA12325@kroah.com>
 <1567505043.2878.4.camel@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1567505043.2878.4.camel@suse.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: greg@kroah.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kroah.com header.s=fm1 header.b=YpxITNYJ;       dkim=pass
 header.i=@messagingengine.com header.s=fm3 header.b=PwfKBbhs;       spf=pass
 (google.com: domain of greg@kroah.com designates 66.111.4.28 as permitted
 sender) smtp.mailfrom=greg@kroah.com
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

On Tue, Sep 03, 2019 at 12:04:03PM +0200, Oliver Neukum wrote:
> Am Dienstag, den 03.09.2019, 11:19 +0200 schrieb Greg KH:
> > On Tue, Sep 03, 2019 at 10:46:14AM +0200, Oliver Neukum wrote:
> > > Am Montag, den 02.09.2019, 18:47 +0200 schrieb Greg KH:
> > > > 
> > > > This should work just fine today.  Add a new device id to the "new_id"
> > > > file and then tell the driver to bind.  That's pretty much the same as a
> > > > "force_bind", right?
> > > 
> > > That looks like a race condition by design to me.
> > 
> > How?
> 
> You have one of these files and potentially multiple devices
> to be bound. You need a locking scheme. As soon as the acts
> of specifying and binding are distinct.

What needs to be locked here?

totally confused,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903124527.GB493%40kroah.com.
