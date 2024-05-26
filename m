Return-Path: <usb-storage+bncBCUJ7YGL3QFBBEV2ZOZAMGQEHE27XTY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x246.google.com (mail-oi1-x246.google.com [IPv6:2607:f8b0:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id 170AB8CF2B6
	for <lists+usb-storage@lfdr.de>; Sun, 26 May 2024 08:56:20 +0200 (CEST)
Received: by mail-oi1-x246.google.com with SMTP id 5614622812f47-3d06610c256sf293194b6e.3
        for <lists+usb-storage@lfdr.de>; Sat, 25 May 2024 23:56:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716706578; cv=pass;
        d=google.com; s=arc-20160816;
        b=A8bXr6Ay6wYIZ9EMzaPO7roNNnJBdldECJAIQmKfIQhc4cJzjA+PrU0saGDdd0Z8QC
         OLPUukLrdEWWzPs+MPXdXmpjrP+e9xhTdJOIpqmFWEkcnXvNx80F3bEA73lj77/xreX+
         KBDO9LmR6hMG7JDZh77g/kNc1j6oGddKbQbTzMzMrSHuh+KZbxpDqZDjqtNPv34BbQ4B
         Wqz3CpBAoKF6stDVk+jg/KIFfr14S5Dcb2hHQTKIq4iOoe/Y0rXu3RTRkl/+R+cvhaQY
         MWtKse+zPkQZsOXjcSCH6g8ew+Vs07ZayOAWJDUb+7e90ANgsQKEbxRnHUn1f/eS98YT
         XtFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=WORHXaPORKNzpf6c+AjYayr3JPVG+ha1nEOCKqFxBf0=;
        fh=Im7KA4WXMkKO3C9+6Gzny8Ho1Zv4gFP8yQe7Am4Altg=;
        b=FkgPzyyYz5jT3ZTYbus7X+ZljgvwwU37gx7oTOJdejqEVjDkFGyVLOtwXs3+QB4Gmc
         tJ/UgY1nYf29nUmsy34X/afq/Dr/uBY7R43PVKu8rMK8t7P2+mx3ihWzeEHTtzsrchyL
         msrbeKq8lWJOVgxdVN+k7CJWIoRZibTTouAUKi1nxTMwW/vdgpSU47y78EG5sO9GOJ6d
         e49yN7HoHFI+ZPjJMbgDLBt0JQmVOEsiooo+78o2zp8AFrdLFVAsd8bLPHfXG+fJaY4i
         9TmIJyBiJkprmclfJWe8LIkJ/CQiLaaq5A9e/VDIDR1821sR/bzToJxeCtvRZFyBn2gE
         i4Sg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=F0xixKiF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716706578; x=1717311378; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=WORHXaPORKNzpf6c+AjYayr3JPVG+ha1nEOCKqFxBf0=;
        b=gVeJ2s5hMBzdPEfTWhKhYrX/Bm8LS3xC4NM0cDvi0RYW0zGczmvgAv0u1s3HockTQ9
         FIfEXBV2+MdqzSVQ4IOI61PP4V6zHjtkWad/JQU91RnrUmgoqzb+Mj2IGKAd63ERBoKb
         x2OzI3//WV8k+h0rZ321IYsky29UGuy098sjk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716706578; x=1717311378;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WORHXaPORKNzpf6c+AjYayr3JPVG+ha1nEOCKqFxBf0=;
        b=h5+VIbc8hSPnPL5Fwqf5/d6WaN0JnGrEbLfvjNy+kb71XjHWBuYE40EJ1qNkfYhBvY
         V2JOqb3MEtsFRdgb0TASJOE0CIra7wLPlDOP5/PoY1CKMNmrBbJris2kGEOs8EIWrqsp
         ByhAZYI9kR+bicnD6BMSpOaiHKXmfcDBVvmbsdbw7CYVOGgRu6Zr4chNbGjJ7vJRZOd8
         yjgf48nU7yDpLi5dYCyv8+mwVjY4AtJPbdYbpuYhRpEDJkvUGTJ5oy6A4R9cVnceZv2B
         ItthcanjPMwcpQ4FUf0H8taPWzBAI66I5u1IRxeA0rG51Ko0WVvn8oZxNYggSJy7FQSv
         IEmg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUHwELqF6MJMQoHqB4CXkncHHtz6uz5kO54GCliAiI/x3skkv5hVfgs/oXB3C/WCgRpwjvvnd7oeVQ0kJwsA24FBW9J6yPrqHfJ
X-Gm-Message-State: AOJu0YwMuW4JezdmCxDIASuUXX1Z9e4xWMIRHr9Avq4xhA8eJzgg0+Fg
	Q259iPMiLZkYiyLyXoD8NzUU5EyP8a2+C2iznSSxFAABCoZ2ca3jtr7sxDQZLIQ=
X-Google-Smtp-Source: AGHT+IFqzuw6DMbnvHBVaRqJuMLSiUioXIjzaZ/jIFFlglyV+VbQqRyVaL3yPVRrDyluBwGIRBx32Q==
X-Received: by 2002:a05:6870:d20a:b0:24f:e599:9168 with SMTP id 586e51a60fabf-24fe5999dd0mr1564477fac.1.1716706578330;
        Sat, 25 May 2024 23:56:18 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:c0cd:b0:24f:d1bb:9951 with SMTP id
 586e51a60fabf-24fd1bbba3els816369fac.0.-pod-prod-05-us; Sat, 25 May 2024
 23:56:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXHcDdGjc9SDp/t+88PKkooRYv5MmiJDVfz5KoFgigjAzldVtIWgFkkxaJ1YzZUjzMZO2Jjah2AT/ZcQWXBGImynNWfY+8hhBQaN6jvKQl76D3e4Ws=
X-Received: by 2002:a05:6870:1651:b0:24f:c0bc:5ac6 with SMTP id 586e51a60fabf-24fc0bcd75amr4858954fac.11.1716706577314;
        Sat, 25 May 2024 23:56:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716706577; cv=none;
        d=google.com; s=arc-20160816;
        b=E7mWm8eN+MyW5dVIh0VotTW8ZLUJknMCK5aXMb/83RssoatUfMaEzlOjtQb7P++afQ
         9qvYWZPAzwfTCLWmOUAch5crZVajuBThCiIHnUOmWi+ZoEUKOLj5qumHHdJ9GbyLJkCh
         RPS/mXVKlelvYJ0DPVZJ7czn0eii7oCFke8UF8bnh2y6F/CUk3hQjYvYsCQYMfcM6W5B
         ryW4W5PVenZK5lESGgg7pcMWN3w0JoecoiRLrZvN3evSHRFO2xrSk+Ekqh+qB6ourqTZ
         3vHh9Bdf3fBTPBKykVRKXci3+9gwtThndq7tSUhfoUkbLFI9jqnlGGPfEM7oSpBSPuCZ
         8aKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=lX2yVH6bhEChoKKpp/zAfEA7PWuMPzqkJDvVzc3lOf8=;
        fh=U+KSIoL/wbciPuIdCAOtCUR3fpEGJUDTl48Ljwi/8LY=;
        b=o28gCeJF9eDh/q+Qqv2zlbodvgFXog92AXJBgDJFvzWVKgrVyymxKNs5IN7l8E9lZ8
         9kaMiEqQLDbYQolanL7v230MZmow839GSfhPmNEPTKvdNnENfxi1lrkva/j+eBtNSReD
         0OermcBVllSMgqWyprvp1WcP9QdhNNJXm7bKZkHWD6CHsjzlRGo/F20L2LBj1EH+TtrN
         ltaVxcR4rXFci+yx+R9hXtJsaLih/IwY/ylTVUi6eT2CPEz9VojCLPuHAxkUElbEwcEP
         fhVWRsS4Jt8KJSnqcpAgC+9O2D6iE76QZvy/zC54k6KXezDyUanDMMLBtdn2yaPM5vib
         eEdA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=F0xixKiF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 586e51a60fabf-24fc9283fdesi1105723fac.70.2024.05.25.23.56.17
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 23:56:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C16B460CEC;
	Sun, 26 May 2024 06:56:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB9FCC32781;
	Sun, 26 May 2024 06:56:15 +0000 (UTC)
Date: Sun, 26 May 2024 08:56:17 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Markus Elfring <Markus.Elfring@web.de>
Cc: Shichao Lai <shichaorai@gmail.com>,
	usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Alan Stern <stern@rowland.harvard.edu>,
	LKML <linux-kernel@vger.kernel.org>,
	Oliver Neukum <oneukum@suse.com>,
	Xingwei Lee <xrivendell7@gmail.com>,
	Yue Sun <samsun1006219@gmail.com>
Subject: [usb-storage] Re: [PATCH v6] usb-storage: alauda: Check whether the
 media is initialized
Message-ID: <2024052647-battle-sacred-83b3@gregkh>
References: <20240526012745.2852061-1-shichaorai@gmail.com>
 <79ba60d2-357a-45f0-93af-78879b9f4b02@web.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <79ba60d2-357a-45f0-93af-78879b9f4b02@web.de>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=F0xixKiF;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Sun, May 26, 2024 at 08:49:02AM +0200, Markus Elfring wrote:
> =E2=80=A6
> > Fixes: e80b0fade09e ("[PATCH] USB Storage: add alauda support")
>=20
> How do you think about to omit the text =E2=80=9C[PATCH] =E2=80=9D from t=
he tag summary?

Then it would be incorrect.

Again, Markus, please STOP sending review comments that are obviously
wrong.  New developers do not know who to ignore and you are telling
them things that are wrong and not helpful at all.

Please stop reviewing patches, this is not ok and is actually harmful to
our community.

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/2024052647-battle-sacred-83b3%40greg=
kh.
