Return-Path: <usb-storage+bncBAABBDGPW2NAMGQELI6CKHA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F286016E3
	for <lists+usb-storage@lfdr.de>; Mon, 17 Oct 2022 21:05:50 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id u6-20020a05620a430600b006e47fa02576sf10444909qko.22
        for <lists+usb-storage@lfdr.de>; Mon, 17 Oct 2022 12:05:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1666033549; cv=pass;
        d=google.com; s=arc-20160816;
        b=KOKWMdOh0X+FAk7vcZ6HrGWCDIie17AZ4RXlkG4ytJ/hWy1SGen8buCaYQ57Zghcnc
         Z+bcUl0nDJpza7Jl6p4R8K0N1MvO5NXSajZcteGct25KAJ3UkE2/cAfrSjhIa0nGqw3N
         Mr1+vfJSqGpspHq/kD/L5oWkDRo71NzmWL9+9ojs53u5Pk+YNAO/PMqhXSunGJlTRcin
         r1LSY3DLnhiySJXXz6SDNiiBsoE9v35l6qT8BGcHcJ5KnaL2Q3d8poVnFyBpQg4zmu9a
         EuN3pxu3auK6olwCzkXDReA57CvCgPf8ppkd1S51ctVTAYvxqccTSlQCgjAcaZfNUW4t
         WFVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=uHN3SULr8Is991q3I4dZidu5woPJD/DzFKg6NLsD2/A=;
        b=CT7QQUlBf7EgCHWoLIYu1bvfzGCnwShfiQOkJXvlkOU0/4bXg4xgJxTj4mMtgoJoMS
         g8ZY5Zskd/DeOXdT9SN2uMCzmR0anBoUFjCw7H4pk4SjFOltSeP5gfej8S+XUmhFInUs
         AgWUxGtyg06R0yApeM8HftGXC5osvV6tSozLQNvM7hADFq1LRp7f12TqbmsoE2uf1ift
         V1qi+AmkSPheq64oQaKKkl5jAAnWR2zZ599jkNx8Rjk8HYZz6oqkJibxXokB5bM5H64y
         xr8mFrdyWDadyYI7ngUkILWR3yP2A4hP87DgDejFt/Xeo+Ob63K4LhuI2N56CKoxp1/3
         qdOQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 46.255.230.98 is neither permitted nor denied by domain of pavel@denx.de) smtp.mailfrom=pavel@denx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uHN3SULr8Is991q3I4dZidu5woPJD/DzFKg6NLsD2/A=;
        b=GXC7cGUXON+kR1B5C2j/zHNJeEyj2z+bUGRtisZoadPA0zqqwFQE9HmwSSVZF/luU3
         6KPhIx6LBWgzrr1uodbmyXWrnegShPPzc1zrY8Vu1nrnfTOugnMN53nKLQ1qx0aHeFug
         xisJ5dD6RI7CZ8yXhHMSDa1c6PjIGxnA/5DZU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uHN3SULr8Is991q3I4dZidu5woPJD/DzFKg6NLsD2/A=;
        b=3LfS9LUzEt/ciPsBqtOyiiQFU9nd0Gv0F7OM3BDSlivmHlT0dJt2mqsy2qsz7QGpRa
         3LA8Bl/qzpxPhiX3ghdmsZIWX1U0uCO1BBLN00r0WaCb6I2YFD882qxo/mqq2bgBrc60
         6HDyF/jsd98H+Nx7kfcJkRXP6Iynlp/3NnXcytMXUiUi5XyQU3pt0tBnetcYIIxe0ePx
         p9V+X/G8FLq5GkWRxWrFYlA961I02kH/1byQY4EqTxX8m765LFq3kdFUfeY2LPBGoOSf
         yv8gZHyBA9Np5mR0oKpNRgr6dGDEo17UPdsSz/UICTBjNC6Yn/GL/uORfRC1PSNod+6q
         OqZw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf0UwomlyYHlTBQ5lIdKTDpY/c/7zhomx9qDwb7cMTH66zUgsG/S
	bG99i2mTwMz9bLNQje5X/iVUbg==
X-Google-Smtp-Source: AMsMyM43I4qSuQpm4PkPhTN+Lk50xB1rYFO5nFElP2eobZ2L7bKsZ5+xOSeu6x4t0acXDxa17XYysQ==
X-Received: by 2002:a05:622a:2cf:b0:39c:e120:4acc with SMTP id a15-20020a05622a02cf00b0039ce1204accmr9618683qtx.152.1666033549125;
        Mon, 17 Oct 2022 12:05:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:12eb:b0:6ee:ac67:7f7f with SMTP id
 f11-20020a05620a12eb00b006eeac677f7fls8333064qkl.10.-pod-prod-gmail; Mon, 17
 Oct 2022 12:05:48 -0700 (PDT)
X-Received: by 2002:a05:620a:290b:b0:6ee:e9d5:9417 with SMTP id m11-20020a05620a290b00b006eee9d59417mr2677609qkp.205.1666033548648;
        Mon, 17 Oct 2022 12:05:48 -0700 (PDT)
Received: by 2002:a05:620a:2950:b0:6ee:5617:eadd with SMTP id af79cd13be357-6eecb4e24d2ms85a;
        Mon, 17 Oct 2022 05:46:35 -0700 (PDT)
X-Received: by 2002:aa7:d454:0:b0:459:9ae7:725b with SMTP id q20-20020aa7d454000000b004599ae7725bmr10061436edr.165.1666010793330;
        Mon, 17 Oct 2022 05:46:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1666010793; cv=none;
        d=google.com; s=arc-20160816;
        b=LupoP1WuCnavmeG8Gj+io4JzOON9fLdohhmLmBswqHW9HId+3r05K5KtlgDAiKj1fG
         j9hb+171kJLlrTojxhbDfkBMBvrrVglYFFxT6iwdsPWb42Vz2VVEYFt1XFjpywaSixHp
         afpN9nVhzZCRoRCjz76Ik83kcfdyay6xDP/bNKi70pOhPLiB6lOVJKxq3lz8ZeSR/eCb
         VUGbMzAG5Cxa6ZFWNNkAtcjLg6GkqWuSa9lY8AbSDFeXgLWp+mNnBO6VWLRNIpm2FZ5b
         K6gfqLGK1N77fq3gmy5jUDyZiH4Mo1RZD8nbkn2KajXBc3VWXUpYW+gk/tUPX1v7Zu/1
         PKLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=7cWjrVMsmtl90OLHBhMqbo+kfWzYZRqwjazfHHuo/x8=;
        b=vXHpqgnrlS/1S+JEzpduWISX4tNyybpW2ilNN44NzDgjEVFuk68Dfaa2fByc/dIF9r
         iHLimS2Mrmavhaxol+iV1WnI2sVTgfx1UjQIlN0L2jG8/43BouApQ3P+jFQUxB5b04zC
         GuPHbL60Bn8tKNtZMPplwUSITnVUbM7FKg4DFkfn5ae2oIOGF+RnPPPR6Gsx77fmnifw
         2up1Fju6l0DnGFreBXnxqXqiLJ0ViG1Zxm32NvhF3ohEHT7IO2Pfl2BYg6qMCHOdjEqD
         nPhnP7sb9KxaRsw8UcqBwkHIPJrVGYBBO0mKeol4JHYI0py8SYVVV24QRmOeQLULg71m
         M5iw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 46.255.230.98 is neither permitted nor denied by domain of pavel@denx.de) smtp.mailfrom=pavel@denx.de
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz. [46.255.230.98])
        by mx.google.com with ESMTPS id l22-20020a056402125600b0044f441d2372si8697763edw.88.2022.10.17.05.46.33
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 05:46:33 -0700 (PDT)
Received-SPF: neutral (google.com: 46.255.230.98 is neither permitted nor denied by domain of pavel@denx.de) client-ip=46.255.230.98;
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id A2D9C1C0016; Mon, 17 Oct 2022 14:46:32 +0200 (CEST)
Date: Mon, 17 Oct 2022 14:46:32 +0200
From: Pavel Machek <pavel@denx.de>
To: Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	sunghwan jung <onenowy@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH AUTOSEL 4.9 08/10] Revert "usb: storage: Add
 quirk for Samsung Fit flash"
Message-ID: <20221017124632.GA13227@duo.ucw.cz>
References: <20221013002802.1896096-1-sashal@kernel.org>
 <20221013002802.1896096-8-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="h31gzZEtNLTqOjlF"
Content-Disposition: inline
In-Reply-To: <20221013002802.1896096-8-sashal@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: pavel@denx.de
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 46.255.230.98 is neither permitted nor denied by domain of
 pavel@denx.de) smtp.mailfrom=pavel@denx.de
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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


--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi!

> From: sunghwan jung <onenowy@gmail.com>
> 
> [ Upstream commit ad5dbfc123e6ffbbde194e2a4603323e09f741ee ]
> 
> This reverts commit 86d92f5465958752481269348d474414dccb1552,
> which fix the timeout issue for "Samsung Fit Flash".
> 
> But the commit affects not only "Samsung Fit Flash" but also other usb
> storages that use the same controller and causes severe performance
> regression.
> 
>  # hdparm -t /dev/sda (without the quirk)
>  Timing buffered disk reads: 622 MB in  3.01 seconds = 206.66 MB/sec
> 
>  # hdparm -t /dev/sda (with the quirk)
>  Timing buffered disk reads: 220 MB in  3.00 seconds =  73.32 MB/sec
> 
> The commit author mentioned that "Issue was reproduced after device has
> bad block", so this quirk should be applied when we have the timeout
> issue with a device that has bad blocks.
> 
> We revert the commit so that we apply this quirk by adding kernel
> paramters using a bootloader or other ways when we really need it,
> without the performance regression with devices that don't have the
> issue.

Re-introducing timeouts for users in middle of stable series... may
not be nice. Is there better fix in a follow up to this that was not
backported?

I see that buffered reads got faster, but that may not really mean
real performance gains...

Best regards,
								Pavel

>  drivers/usb/storage/unusual_devs.h | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
> index 5a6ca1460711..8c51bb66f16f 100644
> --- a/drivers/usb/storage/unusual_devs.h
> +++ b/drivers/usb/storage/unusual_devs.h
> @@ -1294,12 +1294,6 @@ UNUSUAL_DEV( 0x090a, 0x1200, 0x0000, 0x9999,
>  		USB_SC_RBC, USB_PR_BULK, NULL,
>  		0 ),
>  
> -UNUSUAL_DEV(0x090c, 0x1000, 0x1100, 0x1100,
> -		"Samsung",
> -		"Flash Drive FIT",
> -		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> -		US_FL_MAX_SECTORS_64),
> -
>  /* aeb */
>  UNUSUAL_DEV( 0x090c, 0x1132, 0x0000, 0xffff,
>  		"Feiya",

-- 
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20221017124632.GA13227%40duo.ucw.cz.

--h31gzZEtNLTqOjlF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCY01OqAAKCRAw5/Bqldv6
8pcCAJ0c9IcuHaP/6hN6sPtSamTzyA6odACePR1wC4yMzQfBwOcHkfbEcIlHVfo=
=wr5P
-----END PGP SIGNATURE-----

--h31gzZEtNLTqOjlF--
