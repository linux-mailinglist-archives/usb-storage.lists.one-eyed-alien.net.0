Return-Path: <usb-storage+bncBD64ZMV5YYBRB5FIQ67AMGQE6QE6OTA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EBDA49D35
	for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 16:21:29 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-471fdc6bd41sf51080941cf.1
        for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 07:21:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740756084; cv=pass;
        d=google.com; s=arc-20240605;
        b=d8UymxG0cs6gWciBkzlBe2CgHSedw4eeUckbLcEJOvsJWqI7XUNIDN2pS/PCO9OddC
         wlUGiHvJ4AA76mNqBPU73ltBQOoKFXwxI1OdPEDwc84/WXJFHt1jXpQ1YiPoW14rIddl
         SLlTQzdwmxg0PPhGs37kUcOZobzW0lKcMK8BsgqYtfysi7rHAOeVMKv1AMDi9D4FdQYz
         ekFe3qFh6xuxiX8PF470nJYaycR6G8y57mJet4PYGQQH1NaFhO+q4cuIGK7M/mz8zhAk
         63OX5GbsRT2Xat+IWEKkSfmOG2D0Wsz45pz1kNFgrtSfGlXRhr0btwuKm5CZ0l2MT4zL
         +DCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=WAFjEyZAwbUqQvfeE7MTtJt5zLuz0mV872RX6zR4WIw=;
        fh=DSr4j77/NbgwR+XCJICob7vfBlFadesTLLtZrGEqcbI=;
        b=Mc/bm5rDuT+W83S/+pz9eUNy2fdP2fSLI1VzAj1gFNsHhPlyZsWWjtGSmXNRxhpJsH
         uGJglC4f+/cBCnHr4YOjVKOvqjUQXQ4v2eZwbXVQ9bVUDEFSF12u6ijMyjruK8fhvFa4
         1AnRdXyFHHWiYdSx9gOWb9Tlav+teIygK5mDBrs1jhhGbuINUegqDsq/xLxxYzzRMCuf
         D9bknBM5zFfNmhwOAaAJIPbb2SWnGEkiQdKpQOeamOx9R/sq27pWGjkw4U7qWj8WJGF6
         Dj7M7HU8/4z3oBWUrHWHDfscVyHx6e1MzYe6KTL8BzE1gWCW6B3hXvMd7Pf/41fEiu3s
         6+MQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=Phot7Ntv;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740756084; x=1741360884; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=WAFjEyZAwbUqQvfeE7MTtJt5zLuz0mV872RX6zR4WIw=;
        b=YFjRrF61jSxhkP4TId9zYZ0Ju4MhCBx+6f7Lwvd/JI1nsn/fTTWexKJkrMVyyLEbLK
         F1Sz3YVb6Rx5Rm8RmOdrF8Vh9DqBkJCs+hb50JoLssvgNYK5lezSqtONPVZfXSZTPKlY
         +xV6sDi0AJUe/D7ym+YIyMScSCsJmKupWth3I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740756084; x=1741360884;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WAFjEyZAwbUqQvfeE7MTtJt5zLuz0mV872RX6zR4WIw=;
        b=DJpAveHPQk+DenFVIFOz4BvXGiIJW183h8ALRUlJk/PJqX0rQ5Kc0y2xCKkhNUS3gK
         nXI8wiErFMjkpjKhmSrhPBcVG2EJiFQ9osOorHxuGcaYptpapsOCzbg6C63JFoV8AdJq
         fSK3UJLhRb76ckYwVssozOHZIdq8Nf1shsNjNOKm49ra8qkM0yQ/mZvwo3ms7PEksQnL
         KemSIzvcbsG1b9irOLGhsjeUDlJv4n9Gl79lJyTnWMque/0uHCmLynMf0SoSzBWmlY4C
         iOndI0ZE0eGZbWe2jh3Kw1jQ+3P6gMjKPrIFPo3ZsfVTp/s5SdJA3hlI0fVnl7wWSCXD
         8GjQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUKVf4GLG5Q8ONyve1YXhbDqeTbmh5FWSbBNXD9rls5Lnt3dVFFb0ahM/26D8mC0Y6yelOvVg==@lfdr.de
X-Gm-Message-State: AOJu0YytmNZy4oL0DRjQq2paipwapVme+pAF21KaAfcqRhIdqUjPOEd/
	dvyDEAcpDQPUYgPFTCUOy76anjswQUiH0IjJWYeVTrurVYGRa0uhxhz9KDRRu30=
X-Google-Smtp-Source: AGHT+IEy/abCO4Dtivucia0gtXSZ7e7Z3sTyY7hBaJIwE6DYfVHHvIjyChlVrhpHkQpwXSqhod+ttA==
X-Received: by 2002:a05:622a:180e:b0:472:bf3:c03a with SMTP id d75a77b69052e-474bc100ae8mr43801561cf.39.1740756084176;
        Fri, 28 Feb 2025 07:21:24 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVHuwQFBkTLYFjqIJaO8jBJKGTuX3MrsnLqu8MV+WqYmXg==
Received: by 2002:a05:622a:2c04:b0:471:f5a4:7d39 with SMTP id
 d75a77b69052e-473ceda5edels19202311cf.2.-pod-prod-05-us; Fri, 28 Feb 2025
 07:21:23 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCU+Yz+MUunD8HwjWwxHv+ouheiQCtTlqgvnE2esucmLecWJJ0+MCHXrUVrNjeRyWLERoPi6BnSl8Y7CKA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:1706:b0:7c0:af6d:a522 with SMTP id af79cd13be357-7c39c4cfee9mr495034885a.33.1740756083109;
        Fri, 28 Feb 2025 07:21:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740756083; cv=none;
        d=google.com; s=arc-20240605;
        b=braPav0sEf2zuHRHxRgPcw5rAgjxVpfwdpWC4EAy7s//6aT2mzgVfAHjaq1ieh5qPu
         XSgXHMIvvw4yTkxmWUaqYm1Dk2EoHmTtEHv7CsA/kFY2ttEGrAPoQKgPKImKPf38eDST
         p1w3WjAwQGbZ6hLk8Mr/6IEl+jyN3xLTD/xlbq6WUvRPT6Dgl9rD9qdk7JxjR2ziZUbN
         63SgRF8DmqgqG6xP3XNGys/UcvO0Xcqsmo2VQXBhr/vWi+A8PnFN+ll8PHH4888/xBw9
         B8GPX8XfXjuOFaxXEAvtHmAYfMzb3u6EHKuEwnKf7llbvsJfNWBgnNQ/kPLbnq8b9UJc
         6Zwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=3zKHm2FbIZbRCZMx6XqxFdXnpMw66b0caIDo/gjHQJs=;
        fh=tN8Go0UHMN0vJyablio9dnvk86Ig7o9J28STyfDTrBw=;
        b=QYY7wtYdpOMBFAuiT6wBI/ohZ963rh13iDrJOTHEpkeoXUOJMJkiAJ7g9AWm4IguKR
         ReREqhwBOzc1SHnXckFLL7pkfdoYglyL4xgDgjPYchRPW8vok7yvIvfgy/aFT+gajg8i
         DzCdmVO9oFOLVf1FaC1qoK0Lxwi5RNY2Scmu0x6lihOMcIBO+618RYa53VIhvzbK5TAW
         rpBFoPUGVGlLs4QYhGE4ahLNxQc0F+wtxY4191CKFUWWxV5DmKHC3AbOB/4u5TtkWWs7
         RKYNDirl9QPPtuNhYEQ0d8ur+hCQ781RXMjhCBIVQMS2R3RMhQ87kZHv4L9nxrEQvGQB
         SA0g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=Phot7Ntv;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-7c36fef673dsor349119585a.6.2025.02.28.07.21.23
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 28 Feb 2025 07:21:23 -0800 (PST)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVYHkA6YXVCI/ZHs/YoqY5kt2XvoMHDbcBOqGK6CIt+xEFy0xMAgIbNVukI4mCpvax66BE65hinD6jqLQ==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncs8fXxEPtyAwZHE2egvQIeHqTteYB3Hi7S6ThO9QDtSySatNpIXU0jCWXXgaLN
	hBQ9VxtmhCTAyN7QnKpqG25c72fm3PXWVhblNmGpBxfzdGuhYLmGGgOimxtLA7acV0flhAF0dTI
	AyZWHklpyM6HATTe5p538ICd21N6H93/qp8lvKjTFChaQPch+33JO6+BrxKpiluWWClrNPB2Q3h
	fEayKmBJzxcUYJkGOe6nFTvvsbFUer+yV8WtOXqpEaHnTuMomgyhpafP9DgiiNy7C45/r0GsL+L
	Sk8tN1C6bU5ZHe6OXSlIasuqZBXykdb4Tz6JeoasHNfV5ZiaWd0ADs3iiFk1/quqLOje/G2Hvf4
	tpBVE1eQM9vnMhUSvMsY=
X-Received: by 2002:a05:622a:11d5:b0:472:12f1:ba4a with SMTP id d75a77b69052e-474bc051974mr52432911cf.4.1740756082757;
        Fri, 28 Feb 2025 07:21:22 -0800 (PST)
Received: from rowland.harvard.edu (nat-65-112-8-24.harvard-secure.wrls.harvard.edu. [65.112.8.24])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4746b4f9507sm26119881cf.27.2025.02.28.07.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 07:21:22 -0800 (PST)
Date: Fri, 28 Feb 2025 10:21:19 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: j.ne@posteo.net
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: Re: [usb-storage] [PATCH v3 0/9] usb: storage: Mark various arrays as const
Message-ID: <17654d89-a9f3-478b-90d5-0bc9ab838739@rowland.harvard.edu>
References: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=Phot7Ntv;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
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

On Fri, Feb 28, 2025 at 04:11:15PM +0100, 'Jonathan Neusch=C3=A4fer via B4 =
Relay' via USB Mass Storage on Linux wrote:
> While reading code, I noticed that some arrays in USB mass storage
> drivers are declared static but not const, even though they are not
> modified. This patchset marks them const.
>=20
> All patches were compile-tested.
>=20
> Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
> ---
> Changes in v3:
> - Elaborate *why* const is a good idea
> - Link to v2: https://lore.kernel.org/r/20250226-misc-const-v2-0-ab655a4a=
29cc@posteo.net
>=20
> Changes in v2:
> - Add new patches 2-9
> - Use consistent authorship information
> - Link to v1: https://lore.kernel.org/r/20250225-misc-const-v1-1-121ff3b8=
6437@posteo.net
>=20
> ---
> Jonathan Neusch=C3=A4fer (9):
>       usb: storage: jumpshot: Use const for constant arrays
>       usb: storage: transport: Use const for constant array
>       usb: storage: alauda: Use const for card ID array
>       usb: storage: datafab: Use const for constant arrays
>       usb: storage: initializers: Use const for constant array
>       usb: storage: realtek_cr: Use const for constant arrays
>       usb: storage: sddr09: Use const for constant arrays
>       usb: storage: sddr55: Use const for constant arrays
>       usb: storage: shuttle_usbat: Use const for constant array
>=20
>  drivers/usb/storage/alauda.c        |  8 ++++----
>  drivers/usb/storage/datafab.c       | 14 +++++++-------
>  drivers/usb/storage/initializers.c  |  2 +-
>  drivers/usb/storage/jumpshot.c      | 10 +++++-----
>  drivers/usb/storage/realtek_cr.c    |  6 +++---
>  drivers/usb/storage/sddr09.c        | 14 +++++++-------
>  drivers/usb/storage/sddr55.c        |  4 ++--
>  drivers/usb/storage/shuttle_usbat.c |  2 +-
>  drivers/usb/storage/transport.c     |  2 +-
>  9 files changed, 31 insertions(+), 31 deletions(-)
> ---
> base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
> change-id: 20240401-misc-const-e7b4cf20d5f9
>=20
> Best regards,
> --=20
> Jonathan Neusch=C3=A4fer <j.ne@posteo.net>

For all 9 patches:

Reviewed-by: Alan Stern <stern@rowland.harvard.edu>

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/17654d89-a9f3-478b-90d5-0bc9ab838739%40rowland.=
harvard.edu.
