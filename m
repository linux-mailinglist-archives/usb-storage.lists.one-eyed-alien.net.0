Return-Path: <usb-storage+bncBD6LRVPZ6YGRBSM4QWPQMGQEARVHJTA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x347.google.com (mail-ot1-x347.google.com [IPv6:2607:f8b0:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BC868C654
	for <lists+usb-storage@lfdr.de>; Mon,  6 Feb 2023 20:00:29 +0100 (CET)
Received: by mail-ot1-x347.google.com with SMTP id j60-20020a9d17c2000000b0068bd57aa53asf6574059otj.17
        for <lists+usb-storage@lfdr.de>; Mon, 06 Feb 2023 11:00:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675710027; cv=pass;
        d=google.com; s=arc-20160816;
        b=A3QdBB15V49+AJbtHltH/eH30/22svMV44hl7xRVx8n/lkRyUYNw97BACqzkB7oiYN
         ElZnrfdwA2vePrnSL24Hc/KqWsKcqKxR1DKz0od5DQjR+mQrNNE9K7tl5+4cGwkyPj71
         HgVSV6EKAMHBvc3q8WxHchOiD7JbpE96ZudqME8zVlzDuIM5SXSPx9Ap0MIqbMhgV7Rr
         KIXIkc6++YsTCM5vZ874hPPMOlTEOC+XS6jSnY8dJaK58T6mEfKPdVJsqKpYaGKzcVSk
         5rZr1V+jGiarAguxMJp19wh5Qn/Mc9Be18viDKOF2TtcpZEbIV7Sv0htRr9G+vftSdvL
         q4CQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mjQ3STroogOryo870nYONb5U04ITELcL9DlKDwaVwsA=;
        b=0U61UKqw5NARbIKMEGunh5wGDFIMMcoeYg1mjpFgdnu34WuJ3N7PgOIZJoBvpyF3eY
         KEHouP5X20+QBTq0HnXKvzsvU21Ta279n5L2wUECEZ8tCx4DNVV8YB+VPcg5q5v/1qJs
         Xf4eG1lQCy+nqn3O2WhIDs0rNwODgUKl82tFNedPG0BFPA1TsexuTg5isRjTmsXJQyiW
         9HJEYpHB4060DEwiJKKxe2Ev0+JI8jT+vPWm8kpJ7AFbKfImsJxchr6d4WkWr2FIVNqI
         z1o4t3FkQ5ZqnCcfWGEJXZsJqRgh/MZ+kD9dH3syQPjz+hZkWr6W2RRWPFmfeHgzCkOc
         JM9A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+63ebd3e0@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+63ebd3e0@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mjQ3STroogOryo870nYONb5U04ITELcL9DlKDwaVwsA=;
        b=kxhms6zQUN3jA6ZsR2RH9NB+npky1vMFP+toModgg4T76G1CvA+/k8blQBcw2GeZmy
         1ECFkQ56cFf2YSOWVAPXPm9I4cNdB4aPDIkk/qQqy5qL7IFmdpDSft7C7Pui5yukNAIw
         zsRRVrExxODYcp33og5zkO9IxouudMEZNF/Ak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mjQ3STroogOryo870nYONb5U04ITELcL9DlKDwaVwsA=;
        b=JU5AZbfF2FYgrnGLc7f4/g3mZQdJe5ILvdBGU+2wHXq0ClrxMG5wscaBzDZUpzT4cp
         GtOH0yIGzmlMxVPezzg7/MjhLC7wA1M5WDPXC9MJ17YpUI98b64Jcru5qtbCxxvGGtTq
         XPnH3iHhW+AE7xw1MWc3W0Qwp7xDm7hRIyKuQT1FVSqDAlDWY1IayQg2GRi2zHIVemtf
         W1pYAYXrq7GWJUFn4FglkA1FpUHPFjiBZIztMHCP75+QxOCBde7KEfAvgF2Ie2vLzs2I
         Tymn7orQ5AjquOQFwFK++pTLGES14JojAqIs2s1ASj8HFIjjfpJL79i/V7KIceKR0a++
         hwug==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKX10G5ruLm8d6mDF/RbFP+V93yaKwkXPc7vYrv8Vkni61rpkeCT
	U6TxnTgcldfrpQPnZ/WwrxUPbg==
X-Google-Smtp-Source: AK7set/j+NOy6OiJwbBdbyc9n30mIzq51NBxPtH81Ke/D/Lr4dA88kkGpnNw+s7MGxLIQ4jIoLUhAg==
X-Received: by 2002:a05:6870:5886:b0:163:6f31:51ad with SMTP id be6-20020a056870588600b001636f3151admr2320671oab.2.1675710025917;
        Mon, 06 Feb 2023 11:00:25 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:fbab:b0:14d:3678:867f with SMTP id
 kv43-20020a056870fbab00b0014d3678867fls6220835oab.10.-pod-prod-gmail; Mon, 06
 Feb 2023 11:00:25 -0800 (PST)
X-Received: by 2002:a05:6870:c194:b0:163:367c:bdb3 with SMTP id h20-20020a056870c19400b00163367cbdb3mr12037834oad.42.1675710025297;
        Mon, 06 Feb 2023 11:00:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675710025; cv=none;
        d=google.com; s=arc-20160816;
        b=jmoW0TWF0cNRLYNpnVdDdrWL4Wv0txdC4wlvFBSpdjk92a6A1LCte6xH7WTpzTxyMt
         DgLwA6GlMev+/4vHBuRk+DJdGi2M5zdbFzPYrqLMLjCTUcFAwKVchtE+lL1RA/9+DGX+
         7I5YOPXeFwKiaDnHb7Yp2ZmSONq4XUZNMNFRzWKttuu+AwagPia+AI60+iZq0GIYtGIX
         /QEfkYBUB0Ee8nzUSDzclBqiMZC2DuRo0lJvLzRAesASWjH9t/u4YVQzLOT4slMuPbXW
         kZv24p2HdPFfB3pXbFn+/xJaU0hvegRWizKsxw1TAPqhzJPcJ3aA04rjfon0WalATLtP
         NwqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=GzRy68f1/g+C2u6tT0wPjvaxjfUOkB8rOaY0UOOowTQ=;
        b=ejHRwm7BxGocl7S2Uh5qjgNUCdbZN7FEv2GxSdE23dKPGYeAratrYy+2D3gTbek2oQ
         3DIwMMqbjmptTXR105Pp+cI7vKz6O0bhobnL6svlFlq63uMaeDxBzR2qQ6y6GKxN43sJ
         2peLTggxRlqL29JiGI4sUO7rMsp+bB8c1mRzSLEHKUeJUgviYWBeDhIaNIQ15FlzHTIf
         PeT9isr0VrdAA1b2ciYkwA5qV/W5kcP9fMyrmxG6F+g3NI3Vv86+lNP5NaCk2RYGEJ0p
         CQOrYRh4g8JKpvYahwmuwZzOm35QPsjznvz8jIVmrPhGkWXBzh0dPasK0FS2kgBelsr2
         clbA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+63ebd3e0@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+63ebd3e0@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id m31-20020a056870561f00b0016a27b695a7si8094586oao.193.2023.02.06.11.00.25
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 06 Feb 2023 11:00:25 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+63ebd3e0@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 666421 invoked by uid 1000); 6 Feb 2023 14:00:24 -0500
Date: Mon, 6 Feb 2023 14:00:24 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Kees Cook <keescook@chromium.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] USB: ene_usb6250: Allocate enough memory
 for full object
Message-ID: <Y+FOSNyVKJdkwRy0@rowland.harvard.edu>
References: <20230204183546.never.849-kees@kernel.org>
 <Y961c1/JIkDUqMbC@rowland.harvard.edu>
 <63e14809.170a0220.7fcb2.150b@mx.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <63e14809.170a0220.7fcb2.150b@mx.google.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+63ebd3e0@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+63ebd3e0@netrider.rowland.org
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

On Mon, Feb 06, 2023 at 10:33:44AM -0800, Kees Cook wrote:
> On Sat, Feb 04, 2023 at 02:43:47PM -0500, Alan Stern wrote:
> > On Sat, Feb 04, 2023 at 10:35:46AM -0800, Kees Cook wrote:
> > > The allocation of PageBuffer is 512 bytes in size, but the dereferencing
> > > of struct ms_bootblock_idi (also size 512) happens at a calculated offset
> > > within the allocation, which means the object could potentially extend
> > > beyond the end of the allocation. Avoid this case by just allocating
> > > enough space to catch any accesses beyond the end. Seen with GCC 13:
> > 
> > In principle, it would be better to add a runtime check for overflow.  
> > Doing it this way means that the code could read an invalid value.
> > 
> > In fact, I get the impression that this code tries to load a data 
> > structure which might straddle a page boundary by reading in just the 
> > first page.  Either that, or else EntryOffset is always a multiple of 
> > 512 so the error cannot arise.
> 
> Yeah, I couldn't figure it out. It seems like it might move in
> non-512-byte steps too sometimes? Doubling the allocation (and zero-fill
> it) seemed the safest way to cover it.

It hardly seems to matter at this point.  I doubt that any significant 
number of laptops still in operation use the ENE UB6250 reader.  The 
driver was originally written in 2010, and official support for the 
hardware under Windows apparently ended with Windows 7.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Y%2BFOSNyVKJdkwRy0%40rowland.harvard.edu.
