Return-Path: <usb-storage+bncBCUJ7YGL3QFBBUXUR25QMGQE4MRSGZQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x246.google.com (mail-oi1-x246.google.com [IPv6:2607:f8b0:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id 331179F7490
	for <lists+usb-storage@lfdr.de>; Thu, 19 Dec 2024 07:16:52 +0100 (CET)
Received: by mail-oi1-x246.google.com with SMTP id 5614622812f47-3ebba03bfafsf1332597b6e.1
        for <lists+usb-storage@lfdr.de>; Wed, 18 Dec 2024 22:16:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734589010; cv=pass;
        d=google.com; s=arc-20240605;
        b=MRV9c0fShX4NSoRVDhEypOdplARKL6Sa7k4wbTI3wxsvARHeDft3riCmYUOS4+H3/T
         xazUdmPLDNb4zio7yV+pb0X64dKpvrclhsJXY7ZGF77crO3f5w3Wu9Y6IZmVZr3IA1Wb
         CclajlcomzvmACyhiugUA9EaI9O46IH2VdQnvJvY4XT1iS8qdicfDPFDoplSgKlWBVP/
         9Abn8y2YSmuAEjvmlStZxXHWmPX3cX1tKDZVa80c774DH/c7vp0PSJrWEai/26QNFv9r
         lGg3QPfxK3g+VCWb6n3eGmlTWh3xiy4IiCkkjZFOjfhd123Oo0tWvXibLnrHbCCx+tpu
         NAsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8T0BdeJYnMClKrr7Qw/7NXMgmNz0b524eP8gh2nZdn0=;
        fh=PkjjTZ3bFKIQ7+HlrkGaLuLZssjGVxKKX5q6tZpmhDQ=;
        b=PH9GNhPZsXzFHzeTMRC8eCij3yvHmfO/g7LyzJPqYcmlT0C8QYK5+UJigfCH+Mcgqq
         YW2K5+gq5XX4t9U17OnjhV7F2tNME6gM6OCcskgaVyGHqkUWAo6/zDfT1ojoTo66tkDa
         TXKItlbev50fa+IFBpqU+5UPbmvt/RuhRskyZuTNdq44BT47o763s3VJosYh2Wlgw30a
         PHw1pOHlsBKhcxOhiCXZr0zi2fEM6EDThEOtQ6dlMwSzsM64P1jVKL3Ly1c5gCLJ+fwf
         h3L3YWTOUwaVqOG09sGz45xuwp3zSlkxUt1YuvXgFVf72wPDPMPBjKIuyR6M6wfYGX7j
         nfkQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Mk5h2nrt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1734589010; x=1735193810; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8T0BdeJYnMClKrr7Qw/7NXMgmNz0b524eP8gh2nZdn0=;
        b=i+qCIhWXie4eOU6c87/DdzVQ39xerrYijB4q/Aob0HYSmphyOiXkz+rugIfz8YafME
         JC9f9MUwPoXMlmYIlUJrx0fwKgDz/tbE1KKy6AO+Cg8Aa7OWv1LpScXBfwZnp4Mzy/wm
         F3qKKz6FhtJcJ0v2tGxaKYLp0YZQ0+QKrtlnU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734589010; x=1735193810;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8T0BdeJYnMClKrr7Qw/7NXMgmNz0b524eP8gh2nZdn0=;
        b=FHHpfWBuS9+8J8p3m0D7rFyDyr+vY8aUJVjoKBDCrGkbJ/Uyd5k+aIyWia7rS0OIQv
         9woWxl16Dh5MKoUZZ0etfJbIZ+B/UDqh27nhjG/ChdNRSwa4UIPtk1q9npTPBlwXFcuR
         FrxXuWecaSFeB9DWnCOr3gq5JgBOcKhAae1WG4gWzytwRIhEIJOQeIK2STfat2jGd8ji
         0XgVNNARUSFmfpm8GXpLmxQuzMEPVMsq3hqxEVPA6C/ismQMUuGKxGbg+pqYxVMvVjyd
         FK9rs3a8EmF7q3ngqn1EmBRUZJFP3KGF+2yAcrMWmWqlLmsLjAop/rtIFn4ijsGBohnt
         2YcA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWrQzv7QhKg3L9zdAxdUnbmCBRBgQg9p1PdCP6PLIDnCQtZQr2IBGEk+FuvTDc2p6gTUZFa9Q==@lfdr.de
X-Gm-Message-State: AOJu0YwdBRnsqKYRQ2qBCkZ8619i72mCgubtQaS2DJDpAZK3t/zLWKtW
	wca4hb6cilsPJ1M1Xkx8b8SHfAiv5RyvEVsLrIULCKLnI4DWrQ5C9YH/L0vTnBs=
X-Google-Smtp-Source: AGHT+IG6Ia6lP5/xVSPx3vg5a0u6hAtSTXVtpBk9ioX9sTzXViORWc6+2TPdotB4Xb7LZtx7h99X+g==
X-Received: by 2002:a05:6808:384a:b0:3eb:5547:b9b with SMTP id 5614622812f47-3ecdd726053mr1028409b6e.16.1734589010380;
        Wed, 18 Dec 2024 22:16:50 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:d757:0:b0:5f2:e243:cfa8 with SMTP id 006d021491bc7-5f4d80a76d0ls309179eaf.1.-pod-prod-00-us;
 Wed, 18 Dec 2024 22:16:49 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUmfbw9apUNq8Zdsf+Km5sCBvWisVPiXD2dRSfQsT8VExeY+vM1s0yC+OU7rvQqGy4M/JqbbkHQEH1J4Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6820:991:b0:5f2:b845:33cf with SMTP id 006d021491bc7-5f4d851785cmr1269185eaf.0.1734589009023;
        Wed, 18 Dec 2024 22:16:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734589009; cv=none;
        d=google.com; s=arc-20240605;
        b=XASo8vVBfz18XfBt2aseFwpXdWmoGOVLpUh/GQnzFZpH1XJVRZFjQNHYBckMhYLHWD
         azJzgWID9ebPVeIiQSHvA80ETZK5ygrhYTvqLc7iSUzw1/qDjOkqJpB5oXH4r47O/TYV
         nY0lXA2w5RB4tTBd4PLmazC/lvUn/RnaRGALhGskHtHRirzkiXhCK79DFFF5PfY5yuPe
         lEVDnKqlkfXIVIS7z2xTHHLnRyx/BR/csMte/exXbvd97h8LRrX/brou1Ntw0vii0sLD
         vtamuAB9GIuMIeS6zPlLyKv+r8+xfK6dS4Iih0Yd+TYIkCdM+YIvo9KCQHAsh2FY0wN/
         qIHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7a30WlSxDs48cRILAfcTX68rNJwDqsZTIr/eaipIzBE=;
        fh=LuTiwYxSxYVSVmD1/JsaPfT1Cio9VuqY+hR4/NiYLY4=;
        b=He0ISyC8hD2msRWCu0eqQKQLpMhl3s0d7wX7dIhXO91I/h6xFcJ5T+PTtRGp2RgLsk
         i5NiyK4fFuPTieLDop2RkyxulxjPEjhm9RVdex6DHq2husYfTw+0QfL5Wejj0Y08f3lH
         EKWfo/rchvyqq9AEOU9FNBWcQv83uIc6FvaH+LTTQt6P1RpPe/A2it7IzgN0S9ynbBr/
         F7i9e22PhF1BJlP9n/K9QHNdj1Nb7OI2G6sw/NrvI+tL9Ofpq7vMDLug/zaE5qKFaK2F
         CvVPrq+l1pcJXqusSfdxyMRomvpWxXB/cpNwuX7FJb9bq7CvxoX3Jnyn7Kx8Rm4xI+SP
         lW9g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Mk5h2nrt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id 46e09a7af769-71fc9a4213fsi471788a34.262.2024.12.18.22.16.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 22:16:48 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 873AF5C607A;
	Thu, 19 Dec 2024 06:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1E59C4CECE;
	Thu, 19 Dec 2024 06:16:47 +0000 (UTC)
Date: Thu, 19 Dec 2024 07:16:45 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Raf D <raf@noduck.org>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: USB storage, page fault on sustained write
Message-ID: <2024121927-grudging-generic-1edc@gregkh>
References: <66dec9cd-ca3d-4b70-aed4-1cebc6e1157f@noduck.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <66dec9cd-ca3d-4b70-aed4-1cebc6e1157f@noduck.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=Mk5h2nrt;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
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

On Wed, Dec 18, 2024 at 11:01:24PM -0500, Raf D wrote:
> Hi,
> 
> I think I ran into a bug in usb-storage (or related) on 6.13-rc3, that does not seem to happen on 6.12. Please see oops report below.
> 
> I am able to trigger this while trying to create a persistent usb drive (mkusb/dus). I was also sometimes able to trigger it with a simple dd write to the whole drive.

Sorry, known bug, fix is in my tree, I'll send it to Linus later today.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024121927-grudging-generic-1edc%40gregkh.
