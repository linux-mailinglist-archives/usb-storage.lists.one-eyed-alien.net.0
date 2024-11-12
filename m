Return-Path: <usb-storage+bncBCUJ7YGL3QFBBTXBZW4QMGQE5DX3PUA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEE99C5B94
	for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 16:14:24 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-6d3742af01esf2505726d6.1
        for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 07:14:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731424463; cv=pass;
        d=google.com; s=arc-20240605;
        b=giiJrhMdESlREcBmR086CsJs9BqVhQoC67c6WFbucdWB5/0TpJvRZj4QLSJhVVUdSX
         oMoQe+ed7EZl1WpzAW7Nb0PJV4prZPbGPAIZ1SaZHRgawV5F0RE0305YjXbcQt0fVyd0
         PlMb5iYYfb2058en1G3teSmiV9zuaJUI7yASGXeqdcpblg8eBxDdqkOVT9+Vgv0gAv4Q
         hTgM7LicBbN4HmKYoLOPCtNOF05XJXbhTmZAuN9zFJ50SiGWVhBWnyuxhtalVrnhvqZe
         hQlAXWtORxC2EyOGyghaowbbSDAmcHbgfbCJ9CyxvKjPdkXuf87o0TYv0jcggL5IeTHR
         OxMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RYXpA1OUdKgcJbvh+ss/2FO1W+rQbfflsgwGc/4Nx5w=;
        fh=lCJN1IT/8Yl/UT2PuBCO0OoNda+EgCDQYtWcDUit8og=;
        b=Ixfy2c4oVojbWnn9Nl4vi20n5XXHt6O5pV2NT0bdyzLXPWhgp2Xy9ZQ4vkZkcylIpo
         r4b0tDk0cubCrwYNhnar+4WsVwOsmUJdd6S56xf12yMYIF//QIU9CDETSFmLAfsvLbO9
         IlV4cmUKupk45DyubYXCELWzVIsYU8myi8M8PD8PoYYLuyWSu3A63jJ5XLqM1VsjgUZ+
         /Nh8o4U74QiZQFlM95iX3qm7Hm3y1joWPZCtTlQ7/wluzlGzLyvwtTpjQCUwgUfLuBok
         ZNPgC4nfwH7oq2LowwmgbEBmd+BJBdyWu454j/0Bcujej4dlOgvCNYhfAEnPwboG/BUH
         qK2w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=yRPrsOW+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1731424463; x=1732029263; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RYXpA1OUdKgcJbvh+ss/2FO1W+rQbfflsgwGc/4Nx5w=;
        b=lG84u96TeoWXtSEAf0Rzoqj5HlQzWCpwTvajy+TgdYhlRyzU3unGKIfZJRJrH6xnYU
         1mCY3bRPbhMeWes/etotE7DZKyP9exClHEUzctrb6SpOSLyuq6tHoqOA9kYlnrhIBXRf
         8vcnL+/AvxVhMq54El71urnhHXUJKrynaeohw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731424463; x=1732029263;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RYXpA1OUdKgcJbvh+ss/2FO1W+rQbfflsgwGc/4Nx5w=;
        b=JNsLeIvajy8AZkoFxzcLIS9YWfepniWH6pzzsiQl0JMDCxg4Urnb/7qKx8gh1vJ0lt
         bkgca1/r0/UnwWbycRHJJdyOmpl/3B5dySK4BYzkO61Iqobuv700+IdG3F0TkXeSS94V
         XmgKyvrsxywKyulj+aijKR119QbvCpasMLGbbUn19IAu/vo6XTrQK+FV9tQS0n7soMj4
         1u0sTwIvmq+3l8PzVDQ31qqU0KNXkZXj6aP4bPVAGcCm3UqrnkNap7IVJd9ErSCYY3lB
         DNSMdxSpCrM4EoQcnfw1nOaK7DRYa7Cysv8LXYEQ5fPSqwgMx92R0UTNHDFnVwYjo9Yt
         ezdw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVsduL1zSblvcI1H/2O1bd54a3Rqu+pRrHekq/bxg5h5JCLXSo1cU/fO6Otms6FlyOrj5BFGw==@lfdr.de
X-Gm-Message-State: AOJu0YzHhtCwJ/YFKn6s5eSxEBt4UsFaESQ9vCBuT/ogomb6tAWL4m/k
	gCaqKpdvm+Wgm6gI/tVZCVeEQ8A4xHdZf8OzkiDx+KXgN05ypd59qS14kJh0/18=
X-Google-Smtp-Source: AGHT+IE3J8WLqeteZakN08zDPKj1omVJLWR28LCxHYJ/tI12tdbX9H3JBWc9VvJgPwSrgMhoMo0bgA==
X-Received: by 2002:a05:6214:20e6:b0:6c5:258f:26c1 with SMTP id 6a1803df08f44-6d39e1a4e44mr103179186d6.7.1731424462816;
        Tue, 12 Nov 2024 07:14:22 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:2346:b0:6cb:2dc5:6bb5 with SMTP id
 6a1803df08f44-6d39355c8a7ls47108136d6.2.-pod-prod-02-us; Tue, 12 Nov 2024
 07:14:21 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXudU17wofZQ7lzPlKK05tFxlwFhuzZ9YDTaSxpZcClTOL/5vY1If8hdqJ2jnhDuFEkfPz9msSwpOJVcw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:4344:b0:6d3:6542:8499 with SMTP id 6a1803df08f44-6d39e17fef2mr233869326d6.19.1731424461499;
        Tue, 12 Nov 2024 07:14:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731424461; cv=none;
        d=google.com; s=arc-20240605;
        b=N2a2fOsD+Qer0d016RKV7ndvCQtqN71FLIcPHGnob8px6qU0bAegLycUTBBK+GsSsE
         OuOnqKAfVRiDnRPnYz5nY+O79ALnHwJNFflib+jUUyCaT0+Y+plrd6MC5W1wY3QU3kPJ
         /9JHJPtYmAMlOnshYJ0VR+ir0Bl+2J3hTXxf56vTXL1fqD/cACSR/aa/u4MfTSvGQbWp
         BEmku0bBK0xX/BPGavbgDoc0y/ADT3eQZQNqjwVj4kIBcCtnqHl6DR+fzIB1P3dtK1Oh
         84Zu5xecIWlURcP+W8FbOEeNxgZb6tnS8pNEmQM//Rt3+nN+vxgdcJS07tHMd1mXg9tD
         7+JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=E44XdiWzE4CqlYEvOTS929M23aCCMgWQUfXvx5MtAXw=;
        fh=+k0cjQqMyWa+T0k6dopmwprrpfw3Nn03TYHFCodZPP0=;
        b=OY01VF9FoHYVCbxgYp4EnJdRu2AjA/YNHnBFK7MYWW+2HnnlkvLMfxrk/5sP1nGoYG
         /VczOAmaINlIaiW4dn2cVWvcRke8Ho1TryWmZTZk3UfYCUrDTQd9Bse15rqLCEQYivbg
         ldfzuQepJjJkmY5QmQ+b87+nH5R1UBy6f8UkrYEKI3VavB1UZSUvhfUFx2trCcGnMiP0
         QL+y+hADahrCxYAzgBkmGcfw4Yh91Z8XsP37LDZE4JHFuPMdzLWK7o7/7R739SuUXs62
         Z9oRBxpGtOlBboGP+TQQApbpl6QoGE2TpWJEfXwa+xV8OC8NXFVm464kogkwdkG1xNKM
         5qEg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=yRPrsOW+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [2604:1380:45d1:ec00::3])
        by mx.google.com with ESMTPS id 6a1803df08f44-6d39664e1bcsi135791876d6.253.2024.11.12.07.14.21
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 07:14:21 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:45d1:ec00::3 as permitted sender) client-ip=2604:1380:45d1:ec00::3;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D2233A41D8C;
	Tue, 12 Nov 2024 15:12:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B31FC4CED5;
	Tue, 12 Nov 2024 15:14:19 +0000 (UTC)
Date: Tue, 12 Nov 2024 16:14:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
Cc: linux-usb@vger.kernel.org, andreyknvl@gmail.com,
	stern@rowland.harvard.edu, b-liu@ti.com, johan@kernel.org,
	oneukum@suse.com, linux-kernel@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] drivers/usb: refactor min(), max() with
 min_t(), max_t()
Message-ID: <2024111251-spill-hatchback-72da@gregkh>
References: <20241112150437.3508388-1-snovitoll@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20241112150437.3508388-1-snovitoll@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=yRPrsOW+;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Nov 12, 2024 at 08:04:37PM +0500, Sabyrzhan Tasbolatov wrote:
> Scanned the current drivers/usb code with `max\(.*\(` and `min\(.*\(`
> regexp queries to find casting inside of min() and max() which
> may lead to subtle bugs or even security vulnerabilities,
> especially if negative values are involved.
> 
> Let's refactor to min_t() and max_t() specifying the data type
> to ensure it's applicable for the both compareable arguments.
> It should address potential type promotion issues and improves type safety.
> 
> Signed-off-by: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
> ---
>  drivers/usb/core/config.c                    |  2 +-
>  drivers/usb/gadget/composite.c               | 12 ++++++------
>  drivers/usb/gadget/configfs.c                |  2 +-
>  drivers/usb/gadget/function/f_fs.c           |  6 +++---
>  drivers/usb/gadget/function/f_mass_storage.c |  8 ++++----
>  drivers/usb/gadget/function/uvc_video.c      |  4 ++--
>  drivers/usb/gadget/legacy/raw_gadget.c       |  4 ++--
>  drivers/usb/gadget/udc/omap_udc.c            |  4 ++--
>  drivers/usb/gadget/usbstring.c               |  2 +-
>  drivers/usb/host/ehci-hcd.c                  |  2 +-
>  drivers/usb/host/oxu210hp-hcd.c              |  4 ++--
>  drivers/usb/host/r8a66597-hcd.c              |  2 +-
>  drivers/usb/misc/usbtest.c                   |  3 ++-
>  drivers/usb/mon/mon_bin.c                    |  2 +-
>  drivers/usb/musb/musb_core.c                 |  2 +-
>  drivers/usb/musb/musb_gadget_ep0.c           |  2 +-
>  drivers/usb/musb/musb_host.c                 |  5 ++---
>  drivers/usb/serial/io_edgeport.c             |  2 +-
>  drivers/usb/serial/sierra.c                  |  2 +-
>  drivers/usb/storage/sddr09.c                 |  4 ++--
>  drivers/usb/storage/sddr55.c                 |  8 ++++----
>  21 files changed, 41 insertions(+), 41 deletions(-)

Can you break these up to at least "one per drivers/usb/*" subdirectory
to make it easier to review and apply?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024111251-spill-hatchback-72da%40gregkh.
