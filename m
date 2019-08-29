Return-Path: <usb-storage+bncBCUJ7YGL3QFBB6H3TXVQKGQEYMMUPSQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x548.google.com (mail-pg1-x548.google.com [IPv6:2607:f8b0:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EBCA1291
	for <lists+usb-storage@lfdr.de>; Thu, 29 Aug 2019 09:25:46 +0200 (CEST)
Received: by mail-pg1-x548.google.com with SMTP id w5sf1483537pgs.5
        for <lists+usb-storage@lfdr.de>; Thu, 29 Aug 2019 00:25:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567063545; cv=pass;
        d=google.com; s=arc-20160816;
        b=rE+LmEr4F9EVvbEX3AVaZ5h8hLGn5dMjN4GywmuHqGACbkKs3jOSBdOqmxm0qFHzM7
         n2BE+PKlyRPUeY+vVrHidgior0i/ri8WnguNrm0Iz7FhETbFce9lM1EoLnDvPZ2VksvR
         eDc9lNeA+dTZRtJMIk/yKSQrFI1wdCnu4jBQ1ug0gxIZjLKQ2dtkO/4czveZG7VWtFK1
         TTc9p5x05GXjRcPDErcuC0D3sLAOZo5zCHjDHOoXeiF16jLwuclY5iz2DwQd0HtWevwx
         EOYWyC4uUwqE2JKxslriyUEeAtEnybeJnD7ABqZehyFPGoNQXXf8f12Rsce/nhoj2PzM
         8x8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ZzQZDwodkflFmCTQ40ylSunORNsaCUsXh0HoANtOdDA=;
        b=rCDsbkPDzmFfSW1YmWGCLvkDclq3w3mapQ6BEzghr48W/ct+qJbHKvO+DaB/rPClQe
         tyzvBKkUoG2fIL9FY8bkGSgAzbu0A8jDageOfqpeSLyidYDMYYkt8AmdGIQQRfRsedtk
         wr792vtfbMdisE/FXQJ87zUWDOkAeSqj3v4GdEYobfaGKx7bwGgE6wt61KGDpV7cjwQf
         rslnIVpx0jPXyDT1XDHNfmRfj5LePYFmLeJEXd9/zuxmfEcL1NThbcF4DfxotFDIycLY
         fLQEOvdVnrfaVT6ZoVZbR3Sz0TRuqzUHSdfpFFbsxYgqkp3BvWKoZ1GhqgGZzrGeRxB2
         EJpA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0DsdleN6;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZzQZDwodkflFmCTQ40ylSunORNsaCUsXh0HoANtOdDA=;
        b=JVS+V1zF2P5EjMr6kzkWfEm5jJaO0L2NIpDAdUmPpGsYOx3yr54TltmNRn3h9LOfLV
         CZSoSTtgNefREuvRVTeoY4oJKCyKupXnmaHQzvrfniTkagVPtrEEpSL7sXEqh/v2ucsC
         OcyfBpckF4pIHzaXh+awTIg5RGI7LsShuNd+I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZzQZDwodkflFmCTQ40ylSunORNsaCUsXh0HoANtOdDA=;
        b=hPW95nI8RC7NDRuRYLLz7VuJzrKxjdWB3qVRtNsg6ynSvoRzjxtz0Dx+COXbp6nJgK
         DW0o4G8ncO0Z+MryJMlbzOkVoSLQqPriWOji/W1SW0tpVEFyUpifu+6vu3FnQHoezSde
         LbJ4zN7XiWSsAVOJhhAUSZuBrAPwiTqfeyu7RaJ0cuFnKxbDXayFc4Tdc0WD31+mQrnY
         ZheIJIFFvZX3bFvLtnaMcPFLfjseIizvDRS+W+zb0FQGJ8f65F0tThW6cM6IdRwoMMR7
         2+L73P1DagRJasieebI5knyMKdGHERk9m8P3luwzx6vEXmHUbOfeIhFICMO8Cm8/azve
         pPtg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXnfwlWw2TzA9zVShaKas09U9vPOCPIg2b3oiUJx9xflILJpfi9
	RRuRPcbRvnbSdBd8OnGXz7dv+A==
X-Google-Smtp-Source: APXvYqxQYhCFoDgTRHBdGbZX8q2lrluW7wmX+DQgUaBbqjNLRnZGDJrFdhFD2LanGAFzPZxt39NSVQ==
X-Received: by 2002:a17:902:b20c:: with SMTP id t12mr8354201plr.205.1567063544891;
        Thu, 29 Aug 2019 00:25:44 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:7449:: with SMTP id e9ls576845plt.0.gmail; Thu, 29
 Aug 2019 00:25:44 -0700 (PDT)
X-Received: by 2002:a17:90a:25ea:: with SMTP id k97mr8438176pje.131.1567063544470;
        Thu, 29 Aug 2019 00:25:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567063544; cv=none;
        d=google.com; s=arc-20160816;
        b=0WU/BYnVFnwVatsrZcZ3iv2MSi7bz5afIzPidLzYXB/uLelcuc7jqn0fkxyzuMW+bx
         JL6FYioV7RGWo7J7fgWIUWlZJLyE2CToF/AaNyZA3piHF7MEKKF9UrIv3/0MjcLBda8W
         QL1yRzxEhl5j1KTrZqB2VOto8HOgW6kmsKQ9JG00UPLEAFiyKKRxo1j9MKzSAnpa0j8q
         oWxZm4EJDncZbjutRto2/9hMvc6/UbGcrsNW6bSw4mI8fVFBBcy6nsAEsPqVBegYDhhR
         se2iNBxxW2zI4YL/YBNf3lBLHWvvUgB8N+qLRQMhXJcVV9M/n7uP4qrnAnNuS7e8DXGr
         jCrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ajtKcpiPh1I4+3hUGcuVhSVsvUYBDVPK5BMuRw9jyfw=;
        b=H/Ychw81mnKyjQ9NHWk2xf3Ewr330x7+LJs9hN3rbD99+HlpTEb/RTVoJLZq8iuN6F
         qF2Xp99NDFrSZ4aNAlp/dY0WJTql0lC3PwwaL17D7Kx/sqAknWTwyIBm+Ri424LkBC8t
         XR4cD8xAZdtaUonzcqPx231Gv7PNo1i4K9eSJP6xcnmGAvdARKucg/TRt4jJNgF8Exjq
         WSbTJA9MKKJM/FysnMxo3s2T5diojil2mnYjfD0f7aBKx5iVHNIBODH2gY/M0jH5dCb9
         dge6KjsTkrdpALLH+FISBkY/e6waA+ggpIShoAzHreJGS7yvAAJh1S1zSs4ETO2S684T
         ZOIQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0DsdleN6;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id y16si1710082pfc.51.2019.08.29.00.25.44
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Aug 2019 00:25:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9D56B20828;
	Thu, 29 Aug 2019 07:25:43 +0000 (UTC)
Date: Thu, 29 Aug 2019 09:25:41 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Julius Werner <jwerner@chromium.org>
Cc: Dan Williams <dcbw@redhat.com>, Alan Stern <stern@rowland.harvard.edu>,
	Kernel development list <linux-kernel@vger.kernel.org>,
	USB list <linux-usb@vger.kernel.org>,
	USB Storage list <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH] usb: storage: Add ums-cros-aoa driver
Message-ID: <20190829072541.GA5779@kroah.com>
References: <Pine.LNX.4.44L0.1908281155100.1302-100000@iolanthe.rowland.org>
 <bac067d344bef4e6fff7862fcad49cdbf4cd4ab5.camel@redhat.com>
 <CAODwPW-+c6Ty_gqEFEaE0YhtutMR2tFnhEFOQre81uyM3mfMVA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAODwPW-+c6Ty_gqEFEaE0YhtutMR2tFnhEFOQre81uyM3mfMVA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0DsdleN6;       spf=pass
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

On Wed, Aug 28, 2019 at 08:26:15PM -0700, Julius Werner wrote:
> Well... okay, let me think through that again. I just found the new_id
> sysfs API that I wasn't aware of before, maybe I could leverage that
> to bind this from userspace after doing the mode switch. But it looks
> like that only operates on whole devices... is there any way to force
> it to only bind one particular interface?

USB drivers only bind to interfaces, are you saying that your device has
multiple interfaces on it?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190829072541.GA5779%40kroah.com.
