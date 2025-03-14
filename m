Return-Path: <usb-storage+bncBCUJ7YGL3QFBBWUEZ67AMGQEPVH24JA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x48.google.com (mail-oa1-x48.google.com [IPv6:2001:4860:4864:20::48])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5B0A60864
	for <lists+usb-storage@lfdr.de>; Fri, 14 Mar 2025 06:45:00 +0100 (CET)
Received: by mail-oa1-x48.google.com with SMTP id 586e51a60fabf-2c2d8a35eaasf1717039fac.0
        for <lists+usb-storage@lfdr.de>; Thu, 13 Mar 2025 22:44:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1741931099; cv=pass;
        d=google.com; s=arc-20240605;
        b=R0LfKtxGHCOtfjakowOGeQO1HwRPdwaFFZL43/wyNbJGcN8Djp6o8ZoaL0Uu7qKY3U
         due5hm70bImrZL7IJZB/dKsCzUXwXhLwTtyObLrkkujUbGYH5hVMS78yA++XTTD+1hXg
         egd+UO9QtBVDWLLI0khGjEB2HCBKTMuKRvrSvMVEm4g63Esk0JlsmUonBL/LLAKmNr8B
         aYd0J7UzEV9erwP6ig5OkNkQBrTS3mkgRmUTIy7syMjvKgL4uGoH2EhN2+x16u2EaVzS
         ukamv/QxB/igKrHrzyW5kWdYrIlcpdOFLjxZsh5J/iAXi2F39gonR07eH9I0oRaZQyst
         348g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=i7yEfTSoPrqV/EDFzlTvoao4tLesJv4Msu5OPxoQg1M=;
        fh=LObQylyr6F0VRhhY07itQSt/dvCNzRfprvrKa3ZXZ3g=;
        b=gHGOC8bxMBfe94Z2tNlYd7sWzkQo0alC0zwn20MMRFupAMmrGK7MisC6tbQzitDok0
         C8piAyBBeRjC9c3mkjEa7ppdV+qPzawJWH1+J+pW+3meGSRBwsTWqF/LznhnpUfg6SXf
         6r3FcnckL2/tn3qGndDQwdHPjJvfsWyHdcoX5GpEu3ZTzLwzAuMvc2ThXJMpTAQEWPjm
         IDYAXn+vSlSEKfa7Vvkhiuvc6u0/CYzC9z7CZUyf2RI9AGI5KsW/ZvePh3kbvPAlCM6m
         CJMGnJC/7k9DgwoMOjWnL+JaW5JM+dmJ1vzpyE8XndAzRrYCPP/T0mmyov31mLD44lXu
         sgwg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=nXRSvBpY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1741931099; x=1742535899; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=i7yEfTSoPrqV/EDFzlTvoao4tLesJv4Msu5OPxoQg1M=;
        b=Xl788JQHH9sDDA6u0bK6iyXwwYf85J0q2Y0bBGcSwUctUlq33jxd/+lWFLZ0tgnukm
         AibF5QREGXq0z115QvGi6JG0JA3IVBpxfAa/9HFoL1QSomQBJYr+jdiQhp0yADjwZ0rz
         Ufa84Yn+LeZX/PUHaI2BJKyHxK1fR7fVuDo00=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741931099; x=1742535899;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :content-transfer-encoding:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i7yEfTSoPrqV/EDFzlTvoao4tLesJv4Msu5OPxoQg1M=;
        b=jUy3MmF5yx87C/yMVnjjNuA0pXLMGBMQGVt6Y6GIRmaNq+JzWDO/lE6PRcQQzUaCcu
         ldDWFYuaF2GoI5CCjLsQ5Y6x8mWkU8L7VMeLf7P/pOHodafeG0RESjbBBkjSuMugzA6W
         kVp6cmHd7wSZJ/ztRO7Z0aFsDrpWbJmJrLYVOwxRRw6rLKG3wYDl+xksoxwYm83cT0DS
         JuNtgJT/C8OzEFKT9ll8XwXcr+EADOLuumPAohUvXlXPb5PMs1fnN1bvW+vNaMxBY6mI
         8Hkf7clWE86QqT95YjtWMo8XvbppvO1kmvVewkchSNIbvpaAGAW0Drqx9BaXfde33J8J
         W9jA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXrDUK6yUmyH5c16q4M0Fs35pd1p4mN5raCHFmMYZBLFjyit+zoQcChVHMgmIfzKakmPY7r9Q==@lfdr.de
X-Gm-Message-State: AOJu0Yz0fTDGu+DCvZCIFOUt0sPX2l3CNt3XR6nLrq5Df/Sf9M4bcUGO
	4MtPItMeF1ZnsDyIMaf0BLFMq+nQYxjZxuiBJCB2l/Kp05CreAkSzXvrBHOqeWA=
X-Google-Smtp-Source: AGHT+IH2xRh8eshHSWD/382x1RwoYBLmz/PLy0N+479NwOAxBAWIrxH4SsG84YC/cyFfFGexBEAnAA==
X-Received: by 2002:a05:6870:9a06:b0:29e:569a:f90d with SMTP id 586e51a60fabf-2c69132e362mr752775fac.32.1741931098390;
        Thu, 13 Mar 2025 22:44:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVEuoYqS7sZY7AEkeYGiw57xDMiUQi+iYEHXwRWkpYGlYA==
Received: by 2002:a05:6870:ac08:b0:29f:bc7e:8f47 with SMTP id
 586e51a60fabf-2c667b46212ls811081fac.1.-pod-prod-09-us; Thu, 13 Mar 2025
 22:44:57 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWmx/dyR0zXxG52V5zlmjVLwXM0N1pXn09mKPwjqaCNbyZjM2agElMK5UQS1fiXUCGdYga+Sk17ku4LJg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6870:2395:b0:29e:29e1:db1d with SMTP id 586e51a60fabf-2c690fdf112mr652300fac.3.1741931097599;
        Thu, 13 Mar 2025 22:44:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1741931097; cv=none;
        d=google.com; s=arc-20240605;
        b=P4GUmwb2ZrW/g0CkTVqjdHP/2hVArVna0gwXP70nd+RdPJ2rWLFty3aznMu7YNS4Js
         TO93TrVKops2maBTgH5ukDlNvKWgmwCcJXmaeqcdRd6k0ZTEGw+QUIehPK965sJa/kZu
         gD1byv+BYRW/opEujBHdA5V/yP4Ztvbg/mCuqI8jOl8Elx/HNje0JkLxQwC4C0nTS/N8
         4sTUvnPQbXwzNwbzH8V49hRYbXviTREag2lN+7OVvPTseJb1/rTyKwwOfz7/lv4IoQGW
         f5PRY99IAJS3o3V5YtkocaHtQR2ERipOIfkg7odUbxzfixAjSt057+suDgF+L56li9+y
         WX2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hdoNcaYSu512hht51GjLjIHxjliGzf3TKJkASE2AyPw=;
        fh=cVHK4dZwCSN2Wbw48PPxeCWMfGEU5z84KDOK/TKrTGQ=;
        b=c2cMXgeSSrxKxwpUif8j+u66t9fMWRWvC+WXk804LKIUdBEMXxuPg9baoRKuBU2ENa
         1674m/b6McwOT74CqgY0td/g3IPJ7/As/fJp4f8x1HmxDwUuDYyeBfN5IOQ4XDL8b82F
         bj/W//1aWUli5T31qIqnuVJuwP/oXxlxghdtswU+rgVCkqWcG1+9DWsnMYkdn61sWUrL
         RPukFCN7vd9ie3ri39LyBWakb7Gdx9YKrKI9DgHiIMQy9HbxE95y5SxxyFklmWD3+0Ah
         MNb9O9vk7/Jlk9JUFvfisNEgumeWQ70NJ9bbZ11XVZpg3Rn/3sG/cIDtt3wGmuY4DTq/
         nLJw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=nXRSvBpY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id 586e51a60fabf-2c670fb6e7esi1855898fac.26.2025.03.13.22.44.57
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 22:44:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7759C5C349C;
	Fri, 14 Mar 2025 05:42:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90197C4CEE3;
	Fri, 14 Mar 2025 05:44:56 +0000 (UTC)
Date: Fri, 14 Mar 2025 06:44:54 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: daixin_tkzc <daixin_tkzc@163.com>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	matthew dharm <mdharm-usb@one-eyed-alien.net>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: Re:[PATCH] usb: storage: Fix `us->iobuf` size for
 BOT transmission to prevent memory overflow
Message-ID: <2025031402-fastness-humming-e87c@gregkh>
References: <20250311084111.322351-1-daixin_tkzc@163.com>
 <2b6c4aa7.b165.1958f6b7a3a.Coremail.daixin_tkzc@163.com>
 <814316b6-013b-4735-995d-b6c0c616c71b@rowland.harvard.edu>
 <1681f087.2727.195927b7ccb.Coremail.daixin_tkzc@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1681f087.2727.195927b7ccb.Coremail.daixin_tkzc@163.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=nXRSvBpY;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Content-Transfer-Encoding: quoted-printable
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

On Fri, Mar 14, 2025 at 10:28:41AM +0800, daixin_tkzc wrote:
> How us->iobuf overflow could occur?
>=20
> For 1), the USB device does not know that a Babble Error has occurred at =
this time (DWC_otg knows what happened), It actually continuously returns 5=
12 bytes data through DMA write to CSW address (As can be seen in the wavef=
orm in the appendix document before). The DWC_otg controller driver cannot =
control how much data the device returns(13 or 512 bytes). However, the USB=
 storage driver pre-allocates a default buffer size of 64 bytes for CBW/CSW=
.

If this really is true, it is a bug in the dwc driver.  Please fix it
there, otherwise you will have to modify every single USB driver in
Linux to have a larger buffer size, not just the storage one.

thanks,

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/2025031402-fastness-humming-e87c%40gregkh.
