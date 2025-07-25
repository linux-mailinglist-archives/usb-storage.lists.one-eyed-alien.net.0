Return-Path: <usb-storage+bncBCUJ7YGL3QFBBDE3R3CAMGQEB2BEZ4Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E6CB11FAE
	for <lists+usb-storage@lfdr.de>; Fri, 25 Jul 2025 15:58:39 +0200 (CEST)
Received: by mail-pg1-x546.google.com with SMTP id 41be03b00d2f7-b2c36d3f884sf1692632a12.2
        for <lists+usb-storage@lfdr.de>; Fri, 25 Jul 2025 06:58:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1753451917; cv=pass;
        d=google.com; s=arc-20240605;
        b=fvmrn+W4Ft8zBcgt5o/bzlX+VeitIr4GnNMwI4j3S5EbR+obu+XUuhLLxhYQVW8Oc7
         O80OYymiUM+U8N1UANnwwZI7rmTpkpg4JGy524DSxIKh8JmwTWCQiwsxTP/wPO1Ep6Ay
         rAPYGjhCQpG1Eu7u8LeJxz67nDoolbCSHgqRIh3emS64HjZ4DtZhy3ffLIGHizNWCxOi
         vN858OelKCd4YtpI5c7r9xSylCCLkaW1X4qoNcph34k09clsvCXu4RJplP7lklyfhGcz
         lvXio8e5Ju6SzhV6SwEnJJTpbR3+XAKykrbkpNMYz+p2xaClHkG9xRqD3qjK1jddSvs3
         nSOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Hb6kkMpAQE/JQqCNJx6aMIZAXgOGvx4/j2CZscFGivo=;
        fh=rn68ZHaFUrprAQYuwohI2rCj4pC3JrWOXvhmIBDrmWc=;
        b=gCNgLZblRGKXNSEfGJY2iwInWVn060g7UTTgL+66zyTUNHHxdAY3tOwj6HPEH51wZx
         lJZytpxLZti2Q4IcSHxxsB2dUhaOKPhueRkswOHKNDNRdC/6f7eWWKgV+oAVoixtIgJ0
         qX1sYNtMUJL/Y0Tv8ZRm0XdReIlqbJmONxp1LNswLxWAd754QJwZIP9QSOwGHCtclrS+
         rc9rhlIwoS7SjfL1D7AQ687qccea5TXaIMtMX365RPsRvLOgNxVYkE7oHPTZnOzeXbIl
         POB2rSFkZvxqgJin9TKW64WsgfHY3t9aTIP7aACI68d74ohol8p/fzOGombVpfJPzoqI
         5+vA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=GJLnW1G+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1753451917; x=1754056717; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hb6kkMpAQE/JQqCNJx6aMIZAXgOGvx4/j2CZscFGivo=;
        b=gSkOQwdxcBSaN0G86F7DgdHj3cEsVDIWk0PsXoagsXBRq9XLmI03+84wWdm1xL3duW
         jz/sFMMFauEsDCKsZdJ/yZpNgLpVSAyyybfHcAGNvK/1n2HuPKz186ADYwFodpClVa6k
         pQ6wHZjMUdFTOHQsJ81SfCeX75mc5DEGvennY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753451917; x=1754056717;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hb6kkMpAQE/JQqCNJx6aMIZAXgOGvx4/j2CZscFGivo=;
        b=ecBhAktSJ2FgGZ+Va/7dcq5lQuRbN60X//U6aicbcKY4w17tehtpA6Meo0V4yg+KwP
         tHxdccTHhbodLoepvmjxZ21e8fr8Cru6aKi1BKIVXGaaXHmxw/z03wYTXWarTz82/dD5
         WSNFXy7rcNJ7iHjmdCb+YM0y9Pb8njHmicYn7t6TR+Vso7/l6T3tbJO6IvbHTfUbIUwL
         GA3M9hQXvLpQ3XZtzx06X4gmQ5LKOcv4ivfwnSsM9EnTzJerJVh7hNLAJu/udz8SBrZb
         U1GGMRfcfZUTIQHsWJomkLw9avaDio0J6XMfAr7RQhT8gPRZimAKToCANIQxzxZGAv/7
         TkzA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVCYg6457H2mIgn6MpnGlcjPyGzB5T4VKwuXMqd1iBQMf+vm+Knn1ZPRgc0567EUmbzj0EDew==@lfdr.de
X-Gm-Message-State: AOJu0YzEmhgUUHezKh9NWvb6WDMzgbgPHS4NvdAm+30jQpGMzquu6dT+
	li2PO9GnPB4+ZO3nKUsbX+RmTuxePgadleFFgMGWUY+tMX5hAVd9AQJ/k8VMPCq28VU=
X-Google-Smtp-Source: AGHT+IFHf/jljloCzgL0WgtNYxTaMHnMkCI3qtoev4FU0YfN3zHavee9WX0VJcHWpgrQhNLM2R50vg==
X-Received: by 2002:a17:90b:38cd:b0:31c:3651:2d18 with SMTP id 98e67ed59e1d1-31e778f27bfmr2945692a91.16.1753451917478;
        Fri, 25 Jul 2025 06:58:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZe+tqbv+NJDJMcnhxasiXacsIttSaT1PbmT0yDNo6qTtw==
Received: by 2002:a17:90a:c10:b0:313:15be:ce0b with SMTP id
 98e67ed59e1d1-31e5f9ab95fls1279650a91.0.-pod-prod-05-us; Fri, 25 Jul 2025
 06:58:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWwmfE4ghZHcH094Kms9+x4qLMFoqaVm/RoldRb4XU8jTG2E/EvMWLYk6y6CaA1dcB2olTBvWs9oUUNsQ==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90b:3bce:b0:31a:bc78:7fe1 with SMTP id 98e67ed59e1d1-31e778f2d3dmr3616823a91.18.1753451915723;
        Fri, 25 Jul 2025 06:58:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1753451915; cv=none;
        d=google.com; s=arc-20240605;
        b=QdQyrPqQLnq5qd7Ts1cBfDs2CexhrKa0A39zpvX/wtmUu8zA/QNQ0bmGHjEF6Trijg
         x3Yolv2S2iOwIdJ1SkGjxZEKSqp/nlU6Br4TZqVMNqe5Ji8ysRxzc5ypEL7ihJ+YE31w
         0BgJgHngzc/5RwnzHt8XPIfwNcg+l1UFptQJkBHST9mbtM84x2YYeyMWQV4eYteMq52l
         GxHKFkzmz3Qa9velKV8S0W0udyx0MsJsL7v2yJ8JYwHzHasMkwNyvRbqM70Sw8m+wzRu
         aNPxDvo/ziZJLv2uyoDVqe0/9Ule19JxUEenChiBUociW/ESRxhWIVZJuYqvjmqC54rM
         4FOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KaBb7dQChfS+SlK8lL7FtpWUYRg9fhsng7W7Ma6/+6c=;
        fh=ovP9nAoPeBKqCBz6IeM6HPHXlPlxWAFLHiGzw2ypfTQ=;
        b=LU/gq6Y3oKUz6UkbMT83NPVGlc2NDZ9KD7KInt0aM/T2RdyCg/3aDy4l96epFUNeXD
         3P0hBrl0I5DZLX+Tmt4FbBibzk1bBpIdSUT9LTeVwWdSf2VshLD+OcU/6Zp6Xngkm1TO
         5Ehf5UksHYKez5orNiolE+1ND/yHR4xz8kNcZomhrco0m5g4ckEvvxre76Eu3NBvsnR1
         XaYL/CPJcY6bzqmiAeNMrlGrkB5v4RWRTkcxSz2ShlhbdD/KDWYAtuhJjwo7VqQ+S8T/
         g3y2H3tj7lpLPO7M+93e7cyTI0l8DOsBq38QroSNh9inrUWSSbbOgrx8vq+8IRyDaeQw
         15ew==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=GJLnW1G+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sea.source.kernel.org (sea.source.kernel.org. [172.234.252.31])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-31e6626633dsi4206762a91.75.2025.07.25.06.58.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 06:58:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) client-ip=172.234.252.31;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0D67A44864;
	Fri, 25 Jul 2025 13:58:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 730EAC4CEEB;
	Fri, 25 Jul 2025 13:58:34 +0000 (UTC)
Date: Fri, 25 Jul 2025 15:58:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Darshan R." <rathod.darshan.0896@gmail.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: Checkpatch fix done and Clean
 up coding style
Message-ID: <2025072526-guru-reacquire-408d@gregkh>
References: <20250725135533.8410-1-rathod.darshan.0896@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250725135533.8410-1-rathod.darshan.0896@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=GJLnW1G+;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Fri, Jul 25, 2025 at 01:55:33PM +0000, Darshan R. wrote:
> The shuttle_usbat.c driver has several coding style inconsistencies that deviate from the Linux kernel standard.
> This makes the code harder to read and maintain.
> 
> This patch is a pure cleanup effort to address these style issues.
> The changes include:
> 
> - Adding proper spacing around operators (=, *, +, !=, etc.).
> - Adjusting pointer declarations to the standard type *var style.
> - Fixing spacing in pointer casts, e.g., (struct usbat_info *).
> - Removing the redundant = 0 initializer for the static transferred
>   variable, as it's guaranteed to be zero-initialized.
> - Tidying up miscellaneous whitespace and removing extra blank lines.
> 
> These changes were guided by checkpatch.pl.
> No functional changes have been made.
> 
> Signed-off-by: Darshan R. <rathod.darshan.0896@gmail.com>
> ---
>  drivers/usb/storage/shuttle_usbat.c | 252 +++++++++++++---------------
>  1 file changed, 120 insertions(+), 132 deletions(-)

Please do not run checkpatch.pl on existing subsystems and old kernel
code and then send a huge patch to "fix them all!".  That's not going to
work well for many kernel subsystems as they do not welcome the constant
churn that would cause.

If you are interested in doing this type of work, do so in the
drivers/staging/ subsystem, which welcomes it.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025072526-guru-reacquire-408d%40gregkh.
