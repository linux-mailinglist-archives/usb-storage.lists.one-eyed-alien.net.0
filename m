Return-Path: <usb-storage+bncBD6LRVPZ6YGRBFMB2DVQKGQESB5YY3Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E005AC8F5
	for <lists+usb-storage@lfdr.de>; Sat,  7 Sep 2019 21:10:14 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id g62sf4022117qkb.20
        for <lists+usb-storage@lfdr.de>; Sat, 07 Sep 2019 12:10:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567883413; cv=pass;
        d=google.com; s=arc-20160816;
        b=z2qS+/x0WY+iBqF+u+C4xdmE+wx6yQcN652R9lQxK5BFXhIOz9EavfRjSAx5MG0RCo
         4NcqYEINTeGGJ5OypmyYaxPj5UVnTrMlJqX0isZydpnmgv3Kjj6ZWTFv7eiVqHCuf7uH
         4XHeNZoK5EV+a7WWC+S+u32B7Dcnye6xpDKXo/HUm/4OVnc91BnvlmegOe11d3VEAQ3s
         YlrYWoJV6c7C0M+ImCt/a/hQ4G8aPLzcIh8MmoqXiuZhgAzhGKgk4iTSZCPeNGR3DKL2
         MUtEawzbTmqT8Cr+ft7XjkqXHl2IlJaIz4p6dYcBqBSHX1TTsuC1fDxgSI4nFpw8EtMi
         gEzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=WoI2DANvdlLNFNs8j1VBG6ovuY5okFFClo7jU/zz6Xg=;
        b=tkExRzHBTWCUaHahv+eQNQ4K5khwACWd3DIPBmz3D0KmARP6kzzM8ROIvpM4ggeNRs
         chzlHGbeTDvZNWGPzuXdrgGDG+0g9imWKG4y0JJH5j3Qj/q0QFA5cTHqSDiPG+tkGr3T
         oKO6NkEA+O/Bf3bl2SAbHqwXSuO/JTqdFQNVTHJ8bZLDJsMImiSgCUmOO3nXtQF8NUTL
         zkyv4DbQzZ0gw3DDpq2xRdRZiWuNedMMdmbsHMtExmYct1A8OHnmxVP5BpAfnFYKtSTf
         b3Qhjfa6Zf3UXLx7JCuRsQke0KKlqvh5piOufcYjyT36AhT2+JpVo+VNKfYxOK1c7E6H
         RS9A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WoI2DANvdlLNFNs8j1VBG6ovuY5okFFClo7jU/zz6Xg=;
        b=M3ZBF0TNJo+6qeADrzgHxQqTG1/iRYcJO1eTRto615DKmnqaaqtpmotcAcRIVxRQz7
         hhGVqBa7KIIXBR/8skH2CUFPRzRHgnEJUYAQJoAmQPDMhmyx7fNKodKGWpU7r9sF5JT9
         xKjcdsgIEJNWd1MABAFuI8DnLou2F/ndXBknI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WoI2DANvdlLNFNs8j1VBG6ovuY5okFFClo7jU/zz6Xg=;
        b=Y3dzzmXAan1YekxD2s4e3Zr303/MhC6JiuAFj6qSrGWUfvBBa8eLC68tJz3mJLzxNg
         pvdSybXkC8AYAlYfGcJqeRCcSjjGH9SPEqx3U47fNyUX9gSf/XtKRXXwg/FeZ7Jww60l
         QwroGwDYufXNZCFuZ+sI/ErqHuwZlIBgZ5qJ78U5TzNDSddLefOg7nJwGgN7TqqrmBrj
         R8dhNECwXjZNGC3+PRAAvOz3Y98QzQzxOxL438wB7WuHEQwtXVKUXk3hkkJJyEih06+H
         +xKCNGbgJih1po6iJxfEEtPYItAbDqlMsTU+a1206ZmbggRGNGnpD7ocEgeDpIUUT6GY
         glAA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVD2JsgluGNjJga1GjrRYSViz1ff0oK4aXiuLQmigElAxbzcjyu
	XfUUQjmPKncsQKNkjI+QZwLLBg==
X-Google-Smtp-Source: APXvYqzc8r3IwAwFif8t0rqdqikXA+LJ+1wqeORlfnzDp4n4B2wTRkvDpTrEKTccWse1OrgycZzEOg==
X-Received: by 2002:ac8:2ae9:: with SMTP id c38mr15546721qta.311.1567883413369;
        Sat, 07 Sep 2019 12:10:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:1ed:: with SMTP id x13ls1198515qkn.9.gmail; Sat, 07
 Sep 2019 12:10:13 -0700 (PDT)
X-Received: by 2002:a37:4646:: with SMTP id t67mr3339344qka.312.1567883413008;
        Sat, 07 Sep 2019 12:10:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567883413; cv=none;
        d=google.com; s=arc-20160816;
        b=CzsBppmFr3Ti9TXzg1YdgYf3lN6GHgHlmQGStGfModgCgTJ7G/9AtkxuUOay+pF2hU
         jVaan7XO1cm3wy1xwApHdXKYZypjscP7MEISZQj3Mj3Vc0/KIBxvCFIqdVG1uqXjDxl7
         u9XL+XkOgCdUrVIjFfzFrCUePwdU7vn44Oo3/7FbjYTsR9mlwkcjwyyhCKCaj7RgpFO7
         CivkjQmR90k5/EQy6kneEAv43Je4BUI3ImHuq40oWHDTbQgvf5zZWIJugy41/AhxDv9J
         iLNhsP5dsCfC3jaivx9ewinpeRHSENSs/URUfDSNtAWCw3d1zabNzC15EFdDP8H2tq6K
         CD8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=WoI2DANvdlLNFNs8j1VBG6ovuY5okFFClo7jU/zz6Xg=;
        b=rJs2UsEkFXMXG9hVafV4CC4CT5tpF8kPjSmQmcZRovuq2HhNty+9B+tymLe5Om1fMa
         K6ou2zGY/nNfkl9sMmG23pYbTeAInd/DtFdv2hzEz2Qd1DvnjK4mWSIdACf2idizJBXG
         /TjV57s+NXLFaucIRehPdnMlbqXi0RorH5zHQBxUwu1n0IkOCYn0t7TveiL11ATP22bH
         t8QBqZOIkesXHelzeoi8M2onbnzd5N77CxwQaffqiSfqakfWU8CVvvRCIMDot4e/0Bdx
         M2oLgnLD7xwfRXv9UMX+8djg/zl5YhoS8uSa6pCJLVq9cqTuk7nXoTj5sVvxpenLdSPE
         kVyQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id q22si7407925qvc.192.2019.09.07.12.10.12
        for <usb-storage@lists.one-eyed-alien.net>;
        Sat, 07 Sep 2019 12:10:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 1746 invoked by uid 500); 7 Sep 2019 15:10:11 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 7 Sep 2019 15:10:11 -0400
Date: Sat, 7 Sep 2019 15:10:11 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@netrider.rowland.org
To: Julius Werner <jwerner@chromium.org>
cc: Greg KH <greg@kroah.com>, Oliver Neukum <oneukum@suse.com>, 
    USB Storage list <usb-storage@lists.one-eyed-alien.net>, 
    Dan Williams <dcbw@redhat.com>, 
    Kernel development list <linux-kernel@vger.kernel.org>, 
    USB list <linux-usb@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb: storage: Add ums-cros-aoa driver
In-Reply-To: <CAODwPW-FybmnZ97eTfShya_z1Oxrc91ofe6yC4vNN2ri51V5fw@mail.gmail.com>
Message-ID: <Pine.LNX.4.44L0.1909071506500.1597-100000@netrider.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
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

On Fri, 6 Sep 2019, Julius Werner wrote:

> FWIW, I found a suitable workaround now to get my use case working
> with existing kernels: I can do the mode switch from userspace, then
> after the device reenumerates I can manually disable any interfaces I
> don't like by writing 0 to their 'authorized' node, and then I write
> the VID/PID to usb-storage/new_id.

Okay, very good.

> I still think it would be nice in general to be able to force a driver
> to bind a specific device (rather than a VID/PID match), but it's not
> a pressing need for me anymore.

You _can_ do this currently, by writing the name of the interface to 
/sys/bus/usb/drivers/usb-storage/bind.  But as you know, this doesn't 
work unless the VID & PID already match one of the driver's entries.

Alan Stern

