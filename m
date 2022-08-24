Return-Path: <usb-storage+bncBDQKRH6BTEIBB64ETKMAMGQEQ2W2FMA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x347.google.com (mail-wm1-x347.google.com [IPv6:2a00:1450:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF585A025C
	for <lists+usb-storage@lfdr.de>; Wed, 24 Aug 2022 21:56:44 +0200 (CEST)
Received: by mail-wm1-x347.google.com with SMTP id h133-20020a1c218b000000b003a5fa79008bsf1271318wmh.5
        for <lists+usb-storage@lfdr.de>; Wed, 24 Aug 2022 12:56:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661371004; cv=pass;
        d=google.com; s=arc-20160816;
        b=ITUlJf19AJgsNOCbMELvDoRt6I3pGlM0nkIdCEjWLkA/tau0PbEA48EcWGzLaxu8bO
         QkzRjrU/dtxIPyPJFEQ6kFwcBsggcvdlEfh2bPnDrxNen4upIXz+EpCP/c9PLudLMg5M
         tbvNCYxw1IpQXXp3rVhfrcT0lt9pQVaMaycPrPCkUDZzkAIHCBFC4nddlf2NiqbJsgvd
         4KAIfvk31kyjZBeGFYwmQiKcCL6VZMzKqyvmw+ba94uJYVSHRn7Jc9L61Xc+rRVicOcu
         LXG/GiwpVPRC/ZXUo3piogpt88qBJ5e5jBpHv8TfEfC7oPgiSaVq3EDPvc3TqHP3ld/K
         PXCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:sender:dkim-signature;
        bh=QCkPdNSCboKaV2TKRdnhQAb87ecq4B7pQsPt7QyiFMk=;
        b=ASuzrwBEnOx8v+ihdhVLKeUp8AzmDx3grdgAKAtKQpatZE5shDesLhRWeMdZUOEZKK
         2ZHKONBm9ph7+zKdOazQFDETPPTA6GTgF+R4iPkxh5BKBCpKateImAgWj0jxxp+WqazJ
         hiZs8oznhVDGn0EQAlYRVPDPDqIWG3SRWf4yh0dyxP3ToNIc8aBvGYdOrhKovfuPjSx7
         xkgPBjfOCH5eNqQvEGIKWMmbbpBrHaoeKjUEwzQ5WDmZGD4TtvfKskbfGf3gF4kJCMb7
         5fDytz9QnakfAUSqkosjdenXuVyFZaqDTDOjSZIMpaLsYTk6p4ajMHKCLJwapRnXSHJS
         /Dmw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass (test mode) header.i=@sang-engineering.com header.s=k1 header.b=Swji6jBe;
       spf=neutral (google.com: 194.117.254.33 is neither permitted nor denied by best guess record for domain of wsa+renesas@sang-engineering.com) smtp.mailfrom=wsa+renesas@sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:mail-followup-to:message-id:subject:cc:to:from:date
         :sender:from:to:cc;
        bh=QCkPdNSCboKaV2TKRdnhQAb87ecq4B7pQsPt7QyiFMk=;
        b=Lb6cMTOkzGWk0qjnORTJHl1HxfyTvzvLjBwakgaPRLXp1Mokk46AYSjshNy7ebj2mD
         SJ0FAj1Z/2VggNDx4liaiSNE2DzOb4gYziZ9fD7O52guFaa0GXas6KQfwzTjenIFvn6Y
         55GKNqdSjVTZ3ljLzrsJqroaRJd1wgPttXgy0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:sender:from
         :to:cc;
        bh=QCkPdNSCboKaV2TKRdnhQAb87ecq4B7pQsPt7QyiFMk=;
        b=7r5ry6iNwNoDt5N1bewJWHfMhtvKX153Bn4+gW+JbvZmjg5e9X2wyGsJ7NlNEWqgid
         x56MT86ozrAb3JSA5omWKw4x/7KkNS/r/ksSPdCcD95wBvkURejGJkfjaA7UEmT7r9kl
         JTao4sMvaRtPdPyIQaWog8dNcHOVhiQxz8OlRlPA+xHzmUljUNi9y4E/KCUfLgOy+DoA
         289LWckfpbDh+sx/WiDyeKXPy1GG2dMbwJiFA9bZCqSqWAL9oI4IO5PWjq1GylxrI6JZ
         ce4UUBl0DxkyPj9ULX3Y+/C4GYzbqljmRyV+g50/NW/dgy1Zd9HAd+4+fzWD4PX+Z8kj
         6bbQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo37tTHcf5eH1y2VsBs4/BC0Kijikv/EcE3wSrk0i8V3pUBMfwWS
	jcEBo8sb764Ws/t3C+IZftfXcw==
X-Google-Smtp-Source: AA6agR6Snt3eqjQeWAdU72w6jr5rrzeg1q0Fetz9hYptwglTaRWWFZCnIGo5vQaWB9q9GlpasGGJUg==
X-Received: by 2002:a5d:6c63:0:b0:225:6bf9:fa53 with SMTP id r3-20020a5d6c63000000b002256bf9fa53mr391065wrz.266.1661371003719;
        Wed, 24 Aug 2022 12:56:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:218d:b0:3a6:6268:8eae with SMTP id
 e13-20020a05600c218d00b003a662688eaels3331743wme.0.-pod-prod-gmail; Wed, 24
 Aug 2022 12:56:42 -0700 (PDT)
X-Received: by 2002:a05:600c:4ed3:b0:3a6:15c5:297f with SMTP id g19-20020a05600c4ed300b003a615c5297fmr238837wmq.49.1661371001798;
        Wed, 24 Aug 2022 12:56:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661371001; cv=none;
        d=google.com; s=arc-20160816;
        b=xA4HYO91yn8jcKHFcqPwcvyEC1digA/qFANYBqdBsYmF879Nx/eh8HHd1+Q7bxYUHP
         KBimEBnry2eGub1hdz6kSOSJBpE7so3t470IqVKfOfaPs8JimN8FJWFq0KI/A4g5wQaz
         PYlWyHdR7FhvRMAd9DmLEu8DMHia/BKid8oBEXPkYJpyuertJIlyEpwTyFMCcJAtHHKG
         Fazw7jEttjT+ce9pe7al9MdokBQiJPqFJn3SBwcsUgxpCTnHv/vr8LK52KFdqjVj84MB
         1i2h6rWNTgQFHZFdW1B8zvxb1Bs97ykagrLMs5FKgJ/7VQwhkmTUYwRRArOxVTB0ccUb
         YA8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=INdCU8mIjCk3POiupOI90tUJi8h3VmNfg6xrYMpIWlk=;
        b=rGjEeDyG78OWdP3gnUHqGBU59a4+d3ilv4BXO4PbJ5ojb6qhV7nfanPZJognYJLZXR
         42ZA3Oi2FNljb2x9mk7/IewGYzumWE/iqEh+xz/ZX22S+tImPTv16lGJ34oMUg8cMuZ0
         h89dS5MZnfGn0duoBW+BlIfzu6z04N0MwdFd2BbuVrqDndtyAK6t5N/cEnYLYnpfHUap
         lWAfKIel5L2San78dT2OCL8yy0xKEjKgfr22E/FSIfqgh/22yBpRUzqMeIK0+c4g9BKP
         rqwDQ1s2jIFCTqcU60Z5UxQM0ePDHpD7JYPNpJHcOAcqqS8ux3xXJK+5c0tGbSwldklC
         GQ4g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass (test mode) header.i=@sang-engineering.com header.s=k1 header.b=Swji6jBe;
       spf=neutral (google.com: 194.117.254.33 is neither permitted nor denied by best guess record for domain of wsa+renesas@sang-engineering.com) smtp.mailfrom=wsa+renesas@sang-engineering.com
Received: from mail.zeus03.de (www.zeus03.de. [194.117.254.33])
        by mx.google.com with ESMTPS id bg4-20020a05600c3c8400b003a63c3f7b76si1358509wmb.151.2022.08.24.12.56.41
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Aug 2022 12:56:41 -0700 (PDT)
Received-SPF: neutral (google.com: 194.117.254.33 is neither permitted nor denied by best guess record for domain of wsa+renesas@sang-engineering.com) client-ip=194.117.254.33;
Received: (qmail 2364728 invoked from network); 24 Aug 2022 21:56:40 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 24 Aug 2022 21:56:40 +0200
X-UD-Smtp-Session: l3s3148p1@P0dLFALn3r4gAwDtxwoDABxA2q3xYuRb
Date: Wed, 24 Aug 2022 21:56:39 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, Duncan Sands <duncan.sands@free.fr>,
	Felipe Balbi <balbi@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Richard Leitner <richard.leitner@skidata.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Guenter Roeck <linux@roeck-us.net>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Valentina Manea <valentina.manea.m@gmail.com>,
	Shuah Khan <shuah@kernel.org>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] usb: move from strlcpy with unused retval
 to strscpy
Message-ID: <YwaCd6BkBMKMv6kj@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, Duncan Sands <duncan.sands@free.fr>,
	Felipe Balbi <balbi@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Richard Leitner <richard.leitner@skidata.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Guenter Roeck <linux@roeck-us.net>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Valentina Manea <valentina.manea.m@gmail.com>,
	Shuah Khan <shuah@kernel.org>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
References: <20220818210116.7517-1-wsa+renesas@sang-engineering.com>
 <Yv9TWTnYc4T3tkqA@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v5ByJUCPpsV/XVJP"
Content-Disposition: inline
In-Reply-To: <Yv9TWTnYc4T3tkqA@kroah.com>
X-Original-Sender: wsa+renesas@sang-engineering.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass (test mode)
 header.i=@sang-engineering.com header.s=k1 header.b=Swji6jBe;
       spf=neutral (google.com: 194.117.254.33 is neither permitted nor denied
 by best guess record for domain of wsa+renesas@sang-engineering.com) smtp.mailfrom=wsa+renesas@sang-engineering.com
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


--v5ByJUCPpsV/XVJP
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


>   =E2=9C=97 BADSIG: DKIM/sang-engineering.com

Strange. When I save the message into a file and check locally, it seems
OK. I also never received a similar report from other b4 users.

=3D=3D=3D

$ cat message | dkimverify
signature ok

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/YwaCd6BkBMKMv6kj%40shikoro.

--v5ByJUCPpsV/XVJP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmMGgnMACgkQFA3kzBSg
KbZ0cw/9FAwUMwXibHECPDn27lqmPu+9+JcL1bW+8klud63Gu9NuQelmHjOeQiW/
mK08FGs/unPDv4AYzZjtuPcii4BjA2BKMDM3FR87lkTVYOf5JGRHKzz8OeqTuIsi
Rtz/b+qS0vdzNQfByCCvjUSIp2aygxY5n28eOlLzNQsESO/hH8btVqUY9Kc3+i1b
8fgwnkblqfk5rsR0bo2rf99gMbmxflfLL16EUPryAp6os1QtC7UV5IWfV4D4z965
tycqvPES1/HxJO0+6KRjN7umL8qZoWDkWEbU0tyE/HWQCDia/RB/hqMlDOKgeO+a
rOWRI4YoY2oJRxQ9wtGc/5662ASs05pcHAky/J7BALv96+PbopbiAK2PdByBAGgF
3GfCwUvEAZRLb0ZRp8vaBRunwbNXBur3NSJWi/wDRQy4Rx0t75pvTIqb0plPlZVn
WdNmYyMjV9Yw9gEe0ecbAh0UPIy8H7xMS+2sLTgOeGkRdc52EDYgzAoTu7rfTSSv
K9SmrX7Asff8TDStQMhwgOaOK5bkXY//242EMnoIxyTgNULe89+M7oitNdnBDYj1
J6EJKVEN+6ZOtdoPlJmi5nU0IAQ0q0sLdkXZ0rLEPp7P5hGHHnM0r7PhLKhpFOJg
efRTKdLWHExE6jJMmAD2+As3Q6dNNzMySYXNvyr1iJ6yh40piPs=
=qKuh
-----END PGP SIGNATURE-----

--v5ByJUCPpsV/XVJP--
