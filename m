Return-Path: <usb-storage+bncBDK73744WQBRBIMPWXVQKGQEFDOP5GI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A2BA5B84
	for <lists+usb-storage@lfdr.de>; Mon,  2 Sep 2019 18:47:29 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id f9sf2124102edv.1
        for <lists+usb-storage@lfdr.de>; Mon, 02 Sep 2019 09:47:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567442849; cv=pass;
        d=google.com; s=arc-20160816;
        b=uKSrMj2PFDiOuGKp9r3/YEVT1+wzkshQWQzHDLfE+PQpKSjg9kbxm+Q0swC7N+bwZE
         RV0+1V0E1Oa3RFC+ETHnQlkRerBL8iYCYhxg7cpeEKpjZiLCaWz9gJGSamrpoNdSXvkp
         08NadCfU2IzBBaz7Mr9bsCyvH2qGO9QAm+Uqs6iSzmFKbKh083uO3+jL0/HKfU7fsfW4
         BK+f6D79XR9WJwrJnBRtdeXUGVd2vAkDkGZjJVNbSoi3Mxa8oYudHHAeXZ8JrwgGhYWm
         VkcKXqgdn5b3x6NNuneH5ZcjYjNPX1CQ32jbgGofy7+mLzYtnMCCgDH3WDJtXGgrPsFa
         +yJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=5QR/1E/Dc3rgcRXVsmafP5S1M5OA8h+GvdNCJOr42vg=;
        b=rxT8CHZ02zJTE8Epzy8VfV6UEVZJVnWdaDgl1kgoQnbWJX79sjXoQqOJzk5kuDhVmp
         adw7+Z7IhExDl6KwXpOzgUB6442WWtfGdYCiQv3+ti6YGPl1w7XxaXQFo7JNGGJGV3nc
         w7mw0M4XuhZ0Tu6lAwcEf1ffpWL6cKTWqChwB4qEBbwouW0h3rKpoSpsY6pLwXZFHua6
         tfOwWZkdGA6tNocryxmKd7GR2qP2W4VOUwRaY3zsBIL7VsAIlffs5KFrcMiTe0HgS0Fa
         n6zYJIEtbld1WB05RF+/fuhcrUh6GgwBAnRNQaSGrR8JYiFVAj37XVZKWxC1PX88aa6q
         RBlg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm1 header.b=Tbc3Mj5C;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=yvEAQHsg;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.25 as permitted sender) smtp.mailfrom=greg@kroah.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5QR/1E/Dc3rgcRXVsmafP5S1M5OA8h+GvdNCJOr42vg=;
        b=TDbXaFgj3cL8ebaHx0f1EeZS4tFE3Pjxtk7Q0Y33StErEal1qkdDC+9IsMgQv01swy
         vmdHtiYYtbJSmvaZtEq5cUNIjj2MLOjIl2roA0/FBFfQFvb8xAiIOm2tyupnfMk88+jB
         BycTYw4QQwXFCTB0lVcSFyUXR71ci274iJDps=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5QR/1E/Dc3rgcRXVsmafP5S1M5OA8h+GvdNCJOr42vg=;
        b=uZJeAD0s3tAhoPZuHE/7gNDkchtwEXVDcW1mGQ45KTbFfEvzoCZKu+wZV4d2b5jxg4
         Q/9WEdr5626uQ9q65ZMrfGlUwSSLmlG2/iuYeVd0s5wyaP3MHjbhnc5Yn1k6qxQG/A2R
         UtEDI+5PeVikP7UgjS0agccqNyUtpzSDEF8TphSoLFUuIBboTCazrYm6N9UQbjCWmu2V
         k2a4ZmbbuT0jRSc10/BfrvNJ3parXgCyDwBtg/92Vn7shnJKnu8aDwj73BaWywySma/7
         1B5U/6RxtqQHoGFuYaw6hZiLaOmVSNWgJTPb6Jci8hla0xcItp7bxZDepBo0XYAz6VGb
         cnQg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWdmJLugnl6rwQBLEAh8VLTxY43ZxlO9AKJ//Ru6TLgUJ7/ckKa
	PGXfIadSXo7kKpV5UU26AJvsWQ==
X-Google-Smtp-Source: APXvYqw3nV7wKXqXilnOcnoE7BmL3hXHkXv7nrZSlOM4MI2kdTEAd42UlyY1V6RzzlTMByF3KwydnQ==
X-Received: by 2002:a50:a5f3:: with SMTP id b48mr31771266edc.77.1567442849519;
        Mon, 02 Sep 2019 09:47:29 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:907:367:: with SMTP id rs7ls537265ejb.2.gmail; Mon, 02
 Sep 2019 09:47:28 -0700 (PDT)
X-Received: by 2002:a17:906:4f0e:: with SMTP id t14mr14289691eju.47.1567442848587;
        Mon, 02 Sep 2019 09:47:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567442848; cv=none;
        d=google.com; s=arc-20160816;
        b=K5WMc0/whEUNibYZZEiFziJbazZXUmrNajkCqGlvQuSnKIb82DOyuE5IMz4TWERvEG
         uE8ejzZzHRuU2uKI7/qK/3jQNcyjhaVOpqDD6oF8aYRcjTcGFO0QFvRBcXt0atoy2nen
         0vYLLs/nNi57OxVxHRysfbhBXfPEWzptRczKL7Y/IkyZqmkSACtt37Gdt+GYSrir8kHq
         ggP1qk9kT8we4eAQzxZjXc6D3awbC1UCnvKc5MXCcBocVHXBEN5D6Br8Y4qvUtLXIsf7
         PU0vguWr544ooJWVNK8jFaFOxvOCRgPXemGKRp9udE0D54ifkt2yRe7fwfJP2mKcn29N
         rnPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=X4LCCxeuQKKBpdGg9K31qhm4hIZcpVvtnQtc9U0Ccy0=;
        b=wNGXgyLkLr8EDtoT9PoiLW41e9JcpMU30RGLNWtwSWTGq+X3hSzM6oy4wR1rqrppSf
         xOyHvmFDFBxWg3da4uSStMqdXnHAaM+o57eO8CXjHBevguLoRGXNcnFapD3cqSXIjtoo
         szL8IUR8Xp/77wwt1mW7bPwWxokoHNBYyf329wwQaT6BxuLRdVkbEUfIKt93+2bG1thi
         XzwnQi9KioUHwwVEcuV8Cpcc6nQXdFcxhct5SVC1LRsRw+RmRmM1BPRf5S6N2+xKw210
         gf3WCWmoqXs2+eq7gmyeruzwiRxOfelXxrCSP44V12z68Cn3x/q+idrkoZF6AuAQ/GLg
         8RZA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm1 header.b=Tbc3Mj5C;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=yvEAQHsg;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com. [64.147.123.25])
        by mx.google.com with ESMTPS id r55si74178edd.157.2019.09.02.09.47.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Sep 2019 09:47:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 64.147.123.25 as permitted sender) client-ip=64.147.123.25;
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 6D69B5A5;
	Mon,  2 Sep 2019 12:47:26 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Mon, 02 Sep 2019 12:47:26 -0400
X-ME-Sender: <xms:nUdtXQeVNSFsLK57rw0DDtlPc4Gew2HfW_sPrNPZmW-LmflqeRACmw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudejtddguddtiecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgv
    ghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucfkphepkeefrdekiedrkeelrd
    dutdejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhen
    ucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:nUdtXWezTV2Z-J53rDm_B27lt8QTpxTudVW-qZA3h5dUDU-h_T7o1w>
    <xmx:nUdtXcjZ4v8gf2DXBVcUO13q0PA0ph8gCg0-aMNQr9gzR3zkh0__xw>
    <xmx:nUdtXaRznwZfylVI749YbT13_vwoROezbPrPebmbf4KhE883uoWDBw>
    <xmx:nkdtXYvq75Bi0D4ONwTDaUsTeatonNxosb6w0S5iQeQMqBZNJis4Pg>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 8B2F3D6005F;
	Mon,  2 Sep 2019 12:47:25 -0400 (EDT)
Date: Mon, 2 Sep 2019 18:47:24 +0200
From: Greg KH <greg@kroah.com>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Julius Werner <jwerner@chromium.org>, Dan Williams <dcbw@redhat.com>,
	Kernel development list <linux-kernel@vger.kernel.org>,
	USB list <linux-usb@vger.kernel.org>,
	USB Storage list <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH] usb: storage: Add ums-cros-aoa driver
Message-ID: <20190902164724.GA22619@kroah.com>
References: <CAODwPW8gTZ_2WEc9n=WJ2PEmQk2anTQYfwQ-898+kOq6wsjnZw@mail.gmail.com>
 <Pine.LNX.4.44L0.1908301337150.1459-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.44L0.1908301337150.1459-100000@iolanthe.rowland.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: greg@kroah.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kroah.com header.s=fm1 header.b=Tbc3Mj5C;       dkim=pass
 header.i=@messagingengine.com header.s=fm3 header.b=yvEAQHsg;       spf=pass
 (google.com: domain of greg@kroah.com designates 64.147.123.25 as permitted
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

On Fri, Aug 30, 2019 at 01:43:36PM -0400, Alan Stern wrote:
> > I could instead add a new sysfs node 'force_bind' to the driver core,
> > that would work like 'bind' except for skipping the
> > driver_match_device() call entirely and forcing a probe(). Do you
> > think that would be acceptable? Or is that too big of a hammer to make
> > available for all drivers in Linux? Maybe if I do the same thing but
> > only for usb drivers, or even only for the usb-storage driver
> > specifically, would that be acceptable?
> 
> This is a question for Greg.  The problem is that there may be drivers
> which can't handle being probed for devices they don't match.
> 
> Still, we ought to have a mechanism for doing manual but not automatic 
> matches.
> 
> Greg, any thoughts?

This should work just fine today.  Add a new device id to the "new_id"
file and then tell the driver to bind.  That's pretty much the same as a
"force_bind", right?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190902164724.GA22619%40kroah.com.
