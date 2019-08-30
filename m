Return-Path: <usb-storage+bncBD6LRVPZ6YGRBSOAUXVQKGQE5T7E6JY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4DCA3D1F
	for <lists+usb-storage@lfdr.de>; Fri, 30 Aug 2019 19:43:38 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id m6sf390467qtk.23
        for <lists+usb-storage@lfdr.de>; Fri, 30 Aug 2019 10:43:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567187017; cv=pass;
        d=google.com; s=arc-20160816;
        b=vjGQI89iZppRHjvqCx8woExcbHud10eZxmZguVwl4BmSQBOuBULv3J1W4Fltq/W3dL
         FHvwUhnsRdmCiQkz7hSA5xNLx7dd9SsnOC6UX388KDVkXsSo9d/ubprH0mE81FTUA0tA
         o9t9POwUvHeaGPr9u7JBOrk6koOn4gktt2BmIq0BREVRk6KuwbIZOIKA7WdIGGIeE4IL
         kFMcvGCjCFPmVLx1wbOo7zqI1O0D+nJWOJaECB7Xi8gMZNkzem4TBhNEM6UHfvpOkNdp
         cl/C2CnwlV1LkA1xAP4QcR4LPHdOP7fftVsR982F7eQwRLgYXgcwl7m/xIKrdv+GqDrr
         3rIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=gxks3Z5Wc+KAWhQniUXp8pJSCVJcfdSLIi2OBI42mIU=;
        b=iZHDrQJvjtwDcJutTdQcS8sMbQxLZdFkkoSPDbH/TtoaGv5LWZa3wh9BefUwJOn8/V
         u2q0G8oYGpntZMx5Os/mGLg5qmf6dVecww32yc5U+QbAGGE/c4GY96GKhUrFdpI+DiIz
         n/Dwra0N5jr2Tm6K013FcU2Ngf/cfwPpcWOnYhEYvwiCesoi7OCtETZTNcCPoXxMDUjd
         gxIyrGkSmUogMBkp9DHxDuxabga75anjIhs+n2gVmK/M3HNcibMU0t/Cpe/GEalOkevf
         gBLK3ODQ7XOKthr9nXKCRClVZ/4Aink7zb1pPgfCebCw5kVBQDyT52R1rz1GriRU/wRC
         vKMA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gxks3Z5Wc+KAWhQniUXp8pJSCVJcfdSLIi2OBI42mIU=;
        b=XibDSXeAdFnwU4DhENdMjdQCIPa2yzZfS2t+MClDob5PtauHvIs6KkJvQ8HdyS3aeC
         upKOWFiMcPfGd0GAmpEvnktFo0stUQ5N/pEDm73lMcCJa0M0Z0JG5477lUvS6fG2vJqV
         WbPWrksYhaKfnv78LwsKhN7pJhaNM0LwtWuRw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gxks3Z5Wc+KAWhQniUXp8pJSCVJcfdSLIi2OBI42mIU=;
        b=Y1OMkT78lp8Dalr2SWs3zD6SEsHqinqN0jY7bAGOSyedhCshGxDweDZFN5cPNJfCb2
         cfH78kOail/DDikmFtzZw/F2jgGlWAo/y7FiKb0Kzqk90SiP8j/5pZ6zyjU1R/j4qLYX
         oe4zBGXjoym928gd1+y0hTN93d6NEnpiVBhetAV7BfEXxtOPoRhxfTflypz3Rkz//Zw9
         ts1UBURUpIJt/AgvZCH+aVUqmBKqWU/lTPAQirgKr5+VETJ/uEAc9GukzsLZwc1hxJOP
         kwpPWllm1g3ma26XLaVHdr54rspRyhezC0ksCi22Z39EMpldxFEwFGCXUdIHlSb8hAQp
         sI3g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWObbpE9Ssn+S+PPETSjiUfkNaMLel0tvavKGCrLylpucmkisQV
	LdsYXxfAOKMNEZFpf10eqcscTw==
X-Google-Smtp-Source: APXvYqxtlDDRd7TA0gP5KZyrqgeU69WvwaXxzlYgUR5Il1+ibMhoCaY7Wxb+JvPyD9F1Lc1Zjb2qaQ==
X-Received: by 2002:a0c:dd83:: with SMTP id v3mr11071983qvk.105.1567187017648;
        Fri, 30 Aug 2019 10:43:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:1e83:: with SMTP id c3ls1110556qtm.1.gmail; Fri, 30 Aug
 2019 10:43:37 -0700 (PDT)
X-Received: by 2002:ac8:6907:: with SMTP id e7mr15668639qtr.32.1567187017185;
        Fri, 30 Aug 2019 10:43:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567187017; cv=none;
        d=google.com; s=arc-20160816;
        b=pLbZkHaqeRIhNrlfdV67nsJ0YC4xCO5aVDMOj+KnokXqj5ioBLAf+ov5GRaemGVEsp
         hR1ZLTqtnR2gzm97J77sWkAdDytr6P+eC03Qf0CcnfomSy37o7QV1QUJUdhsEQ+/z0UA
         XeXc04eGN923NYLO5wk+fAGTdAWP5R9Nr1p0AEV1N619EvrwaQ1Ryo8yqbVkTXU3anyY
         W/8dmlLB7lEP82Gfm03B8vYl8wkuLNKk9hr9PDdEPyvB1Py6vj9hPI84ZsDArtOAeyxE
         1Gr8TypqlKdhvoIXFGsxQX+1ruxuvPmDxLEcOksOaTf3lecyS3Fagu2iUUBFjvzLN1iQ
         cc4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=gxks3Z5Wc+KAWhQniUXp8pJSCVJcfdSLIi2OBI42mIU=;
        b=HUMImHUvNw+cMsnUETwXXz4cukFtp+l8/9xRRsPkuScDu7uKIwMYh13Y011BdSgqxX
         psVprN7PmAaxZqEC7NXjYMeMgLaQNrCGXQJzqtr4Z21bLNA2EBbv6TOSX2+jZeT6Mkr0
         hhGx8i6s04U1mTmaopTuqyUO1+fpV3t+t1PIrBN0CYI7XO23rgf6nR/8ap2kBGCv7f45
         osy13JUBOUamy5bQdpzkXvKc/GwqO9BHcu9vIQXv9SDKHENnvIhsXvj6EZ6JqvS6Ua/W
         oEhlGc8ISTOsS7mkZmg7KMVsk/Q+CL9MrqEikZWFhffb5y48EeOwJaCdfpkj43m7eXRy
         EcRQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id c4si4715544qkc.210.2019.08.30.10.43.37
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 30 Aug 2019 10:43:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 1647 invoked by uid 2102); 30 Aug 2019 13:43:36 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 30 Aug 2019 13:43:36 -0400
Date: Fri, 30 Aug 2019 13:43:36 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Julius Werner <jwerner@chromium.org>, Greg KH <greg@kroah.com>
cc: Dan Williams <dcbw@redhat.com>, 
    Kernel development list <linux-kernel@vger.kernel.org>, 
    USB list <linux-usb@vger.kernel.org>, 
    USB Storage list <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH] usb: storage: Add ums-cros-aoa driver
In-Reply-To: <CAODwPW8gTZ_2WEc9n=WJ2PEmQk2anTQYfwQ-898+kOq6wsjnZw@mail.gmail.com>
Message-ID: <Pine.LNX.4.44L0.1908301337150.1459-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as
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

On Thu, 29 Aug 2019, Julius Werner wrote:

> > In fact, there already is a way to do this in the kernel: write to the
> > sysfs "bind" file.  The difficulty is that you can't force a driver to
> > bind to an interface if it doesn't believe it is compatible with the
> > interface.  And if the driver believes it is compatible, it will
> > automatically attempt to bind with all such interfaces regardless of
> > their path.
> >
> > Perhaps what you need is a usb_device_id flag to indicate that the
> > entry should never be used for automatic matches -- only for matches
> > made by the user via the "bind" file.  Greg KH would probably be
> > willing to accept a new USB_DEVICE_ID_MATCH_NO_AUTO flag, which
> > could be included in your unusual_devs.h entries.
> 
> This is an interesting idea, but I don't quite see how it can work as
> you described? When I write to 'bind', the driver core calls
> driver_match_device(), which ends up calling usb_device_match()
> (right?), which is the same path that it would call for automatic
> matching.

Oh, too bad.  I had a vague memory that it did not call
driver_match_device().

>  It still ends up in usb_match_one_id(), and if I check for
> the NO_AUTO flag there it would abort just as if it was an auto-match
> attempt. I see no way to pass the information that this is an
> explicit, user-requested "bind" rather than an automatic match across
> the bus->match() callback into the USB code. (I could change the
> signature of the match() callback, but that would require changing
> code for all device busses in Linux, which I assume is something we
> wouldn't want to do? I could also add a flag to struct device to
> communicate "this is currently trying to match for a user-initiated
> bind", but that seems hacky and not really the right place to put
> that.)
> 
> I could instead add a new sysfs node 'force_bind' to the driver core,
> that would work like 'bind' except for skipping the
> driver_match_device() call entirely and forcing a probe(). Do you
> think that would be acceptable? Or is that too big of a hammer to make
> available for all drivers in Linux? Maybe if I do the same thing but
> only for usb drivers, or even only for the usb-storage driver
> specifically, would that be acceptable?

This is a question for Greg.  The problem is that there may be drivers
which can't handle being probed for devices they don't match.

Still, we ought to have a mechanism for doing manual but not automatic 
matches.

Greg, any thoughts?

> If none of this works, I could also extend the new_id interface to
> allow subclass/protocol matches instead. I don't like that as much
> because it doesn't allow me to control the devpath of the device I'm
> matching, but I think it would be enough for my use case (I can't make
> the usb-storage driver bind all AOA devices at all times, but at the
> times where I do want to use it for my one device, I don't expect any
> other AOA devices to be connected). The problem with this is that the
> order of arguments for new ID is already set in stone (vendor,
> product, interface class, refVendor, refProduct), and I don't think I
> can use the refVendor/refProduct for my case so I can't just append
> more numbers behind that. I could maybe instead change it so that it
> also accepts a key-value style line (like "idVendor=abcd
> idProduct=efgh bInterfaceSubClass=ff"), while still being
> backwards-compatible to the old format if you only give it numbers?
> What do you think?

I prefer the manual/automatic approach.  It allows the user to control 
exactly which device will be probed, which could be important.

Alan Stern

