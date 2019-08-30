Return-Path: <usb-storage+bncBDDJNTW5VUMBBXG4UHVQKGQE763TVWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x447.google.com (mail-wr1-x447.google.com [IPv6:2a00:1450:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 67478A2B72
	for <lists+usb-storage@lfdr.de>; Fri, 30 Aug 2019 02:31:25 +0200 (CEST)
Received: by mail-wr1-x447.google.com with SMTP id h8sf2968189wrb.11
        for <lists+usb-storage@lfdr.de>; Thu, 29 Aug 2019 17:31:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567125085; cv=pass;
        d=google.com; s=arc-20160816;
        b=OPrcdUGQqWFTWvZqAb1fHT9zAzkL4lNLbVufNVP87oeq1JsqH5q4FtUiaanv9K/+au
         wjpI+gQkGD1CCKVb2J6FCQEdzBpD5qgg+iYn0AYJwDIhcya6+vpCqavUjymAgxJ5c5Ha
         +/+ENIy7uFzWeVgfsdQo6g72+cCRyUrecqsTXjurkAZvav6cytIHrZ4P7AYcLg4g7edA
         c6s39XLxPYyUtsUOrSzaEUJ4ox34uNyseD5JWQ9lL2BV+xo7aGU8cePTbfPanzwqQ3Ss
         XeLa117uuKlMY1QakecqizABXtlzor38ND9GtXRmtiu3tKUL59/CP4schjrrl4TXY6PN
         F5sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=W+NZKZjrn5aIKGFdRqp8rqbBTWu5YxB9jtXWUixbJmQ=;
        b=wApZOCI8UEZSstgoGUL2teUhMuPUEzGXpW5wkEla0rhGDKuUYonOLkmxSpXy56fiyR
         Tb1MTG4MEhxQoKd6bcNoq3AofwVeYl27pJ9+X7XudsKwBUqg7gCE3+38KJIKFZDpk22D
         PA6vx0+K+XVLrgvtjGULtHH29CSh0f2mbURG/NA4/nRMQhcHBKITBNd4f5d9KeMrkQjr
         kgwYLpPk566Nc4iet5/+YMjUH+Oggkcks4NaXwI1pZBD6/3ZPzUShV51sqyc1dkYECoz
         q/VDxnxov9R+14o/2eBMrGh7F22HxaPz3Usj8B8YRjo1asjNJ4MRP8+9XEeojeOPPCoE
         Pi9A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FKUQnmmH;
       spf=pass (google.com: domain of jwerner@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=jwerner@google.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W+NZKZjrn5aIKGFdRqp8rqbBTWu5YxB9jtXWUixbJmQ=;
        b=BQXGim6K61QnXTsCfckxHK6Mn820MKns2pEvAHDfJRZXsXm7iB1sYTyvLihelpz1dF
         N0194Yqy2EQsR8e4HqeqS9OPF0Rl9LTw9H68TBWpIK+i+BKvntL/OswOYiqGwU9K7jvc
         zhqWT6OiZgcI/QJyvx+grYiQjsWLY/fZPh/8M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W+NZKZjrn5aIKGFdRqp8rqbBTWu5YxB9jtXWUixbJmQ=;
        b=pvPLNLNMemxz99pmVSljaGNBSuxUVx1oOIL0eAJH+hd+a9w53x8F6T+3R3EaUHnSJx
         nCX/rNTyiZRkz75cA/oYS3uu/3WQL7AADlgjyuttLN45gTRV9TjFGjXYvBWDTG+X5BzW
         YUR+dVvVD3+x/fNS+XL+f1SiX6oYa/KmV4vJUyu34W5o+hIUOoBvvgIZfk7TeQ0nz5xp
         qo8JkaCF0ZQoYFCtPCtfvwd23BmN5NEgMHj4n9OZEH3fTw0UfLv7KWCk2/vBYyEU1lOO
         Gim4Q+fi97A3tLvGy6A4K2TK8r6tqhIP533uSWkfChUqsnDgWBaDSOVqssEbHQWNyahv
         IeNw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWFrYv48bOUL6udasNl96+Jc+BcfCDw5vVE8JnlKrMJ75qWAdMt
	ssFmc2tw0wPNH1+CaOgApAkrbA==
X-Google-Smtp-Source: APXvYqwcxAA2iC5TU0rs4oAlYi32T8S241IybYQ5PMSr7st7vDzQOK1D4L/TiTG6N3wEuYvDEOF8lQ==
X-Received: by 2002:a1c:c706:: with SMTP id x6mr14960076wmf.104.1567125084926;
        Thu, 29 Aug 2019 17:31:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:6942:: with SMTP id r2ls1244097wrw.3.gmail; Thu, 29 Aug
 2019 17:31:24 -0700 (PDT)
X-Received: by 2002:a5d:634c:: with SMTP id b12mr6164963wrw.127.1567125084082;
        Thu, 29 Aug 2019 17:31:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567125084; cv=none;
        d=google.com; s=arc-20160816;
        b=UOuvg7w6msRT7zf4T5BF/XolTWN/z2geiF9GHoKQkyia1Nun6MYfJoSPEhCkEBSFz6
         vpmBB9ospGQVuMgq1OsTAOBxnii87xGGOXf8GUUK6A6w1Dd1rjcKKGzNlRmOoTFWfBE5
         Yi5XWftpShv4rWUbkBgbFgvIp+1hXu70vrkTr3qVdFSkvP9qdgLe24Wnmp2iM2ac/46k
         OEC3gwOHKAsi+EYHy1ylfTo4Z3UNBsaSBCWCpLD27uiCCIPHS3Ea51ZH+ZMmldipyfTw
         1wN1P4uRLJ0+0OtMOmtVBLvSZ8Wti3/9kxflVpKKuPKuYP26UyJA6lK0bhw9++WYdUfP
         DHbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nqVBtRpO+C34MJ3QBA0R3d2xfVyeSGDdtsHStA79oBo=;
        b=fAjsKosaG01BFetTCjF3gYu0N2943W3ORB0BsI6I9I8zikTNk6nJfytMeO1QtF2dwa
         93Xhj+UPQMhrKncs5KStVB9CtT3Rgy07vHQ/RovB8DS9XqSFXm03Xxl++BgjjR09kw8u
         LLPhJjmGnH3P8BLzW+RwJ5ykiumqGkYa1B0RFoI+MlWfllAAGew4ljofEmafgxMiYAzz
         5S185/MLc9GgZu34bkyiF4z26A4Tu0wpHa0IbHM+d+WGZjTkCp05Uo71vql1g05XS2XI
         +FRw/5ekaLJgnXoMXiZYXUl/RxRj/yHuuyB5YFTtgrVg+Hg+nEA/5U95Km2ukZBwlQH2
         Vcig==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FKUQnmmH;
       spf=pass (google.com: domain of jwerner@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=jwerner@google.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id y4sor2576804wrr.50.2019.08.29.17.31.24
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 29 Aug 2019 17:31:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jwerner@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:adf:facc:: with SMTP id a12mr14730139wrs.205.1567125083532;
 Thu, 29 Aug 2019 17:31:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAODwPW-+c6Ty_gqEFEaE0YhtutMR2tFnhEFOQre81uyM3mfMVA@mail.gmail.com>
 <Pine.LNX.4.44L0.1908291038050.1306-100000@iolanthe.rowland.org>
In-Reply-To: <Pine.LNX.4.44L0.1908291038050.1306-100000@iolanthe.rowland.org>
From: Julius Werner <jwerner@chromium.org>
Date: Thu, 29 Aug 2019 17:31:12 -0700
Message-ID: <CAODwPW8gTZ_2WEc9n=WJ2PEmQk2anTQYfwQ-898+kOq6wsjnZw@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH] usb: storage: Add ums-cros-aoa driver
To: Alan Stern <stern@rowland.harvard.edu>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Julius Werner <jwerner@chromium.org>, Dan Williams <dcbw@redhat.com>, 
	Kernel development list <linux-kernel@vger.kernel.org>, USB list <linux-usb@vger.kernel.org>, 
	USB Storage list <usb-storage@lists.one-eyed-alien.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jwerner@chromium.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=FKUQnmmH;       spf=pass
 (google.com: domain of jwerner@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=jwerner@google.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=chromium.org
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

> USB drivers only bind to interfaces, are you saying that your device has
> multiple interfaces on it?

Yes, I have a case where the device has two interfaces which both have
interface class 0xff (although they do differ in subclass and
protocol). I only want the usb-storage driver to bind to one of them
(if it binds to the other it will eventually cause a timeout error
that resets the whole device).

I tried doing a userspace mode switch and using
/sys/bus/usb/drivers/usb-storage/new_id to bind the device now, which
*almost* works, but I can't prevent it from binding to both
interfaces. Unfortunately new_id can only take an interface class, not
a subclass or protocol.

> In fact, there already is a way to do this in the kernel: write to the
> sysfs "bind" file.  The difficulty is that you can't force a driver to
> bind to an interface if it doesn't believe it is compatible with the
> interface.  And if the driver believes it is compatible, it will
> automatically attempt to bind with all such interfaces regardless of
> their path.
>
> Perhaps what you need is a usb_device_id flag to indicate that the
> entry should never be used for automatic matches -- only for matches
> made by the user via the "bind" file.  Greg KH would probably be
> willing to accept a new USB_DEVICE_ID_MATCH_NO_AUTO flag, which
> could be included in your unusual_devs.h entries.

This is an interesting idea, but I don't quite see how it can work as
you described? When I write to 'bind', the driver core calls
driver_match_device(), which ends up calling usb_device_match()
(right?), which is the same path that it would call for automatic
matching. It still ends up in usb_match_one_id(), and if I check for
the NO_AUTO flag there it would abort just as if it was an auto-match
attempt. I see no way to pass the information that this is an
explicit, user-requested "bind" rather than an automatic match across
the bus->match() callback into the USB code. (I could change the
signature of the match() callback, but that would require changing
code for all device busses in Linux, which I assume is something we
wouldn't want to do? I could also add a flag to struct device to
communicate "this is currently trying to match for a user-initiated
bind", but that seems hacky and not really the right place to put
that.)

I could instead add a new sysfs node 'force_bind' to the driver core,
that would work like 'bind' except for skipping the
driver_match_device() call entirely and forcing a probe(). Do you
think that would be acceptable? Or is that too big of a hammer to make
available for all drivers in Linux? Maybe if I do the same thing but
only for usb drivers, or even only for the usb-storage driver
specifically, would that be acceptable?

If none of this works, I could also extend the new_id interface to
allow subclass/protocol matches instead. I don't like that as much
because it doesn't allow me to control the devpath of the device I'm
matching, but I think it would be enough for my use case (I can't make
the usb-storage driver bind all AOA devices at all times, but at the
times where I do want to use it for my one device, I don't expect any
other AOA devices to be connected). The problem with this is that the
order of arguments for new ID is already set in stone (vendor,
product, interface class, refVendor, refProduct), and I don't think I
can use the refVendor/refProduct for my case so I can't just append
more numbers behind that. I could maybe instead change it so that it
also accepts a key-value style line (like "idVendor=abcd
idProduct=efgh bInterfaceSubClass=ff"), while still being
backwards-compatible to the old format if you only give it numbers?
What do you think?

Thanks for your advice!

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAODwPW8gTZ_2WEc9n%3DWJ2PEmQk2anTQYfwQ-898%2BkOq6wsjnZw%40mail.gmail.com.
