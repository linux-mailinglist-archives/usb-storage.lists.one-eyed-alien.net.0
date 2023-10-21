Return-Path: <usb-storage+bncBCUJ7YGL3QFBB4GMZ2UQMGQEPLXTEIA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb48.google.com (mail-yb1-xb48.google.com [IPv6:2607:f8b0:4864:20::b48])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1657D1C88
	for <lists+usb-storage@lfdr.de>; Sat, 21 Oct 2023 12:22:42 +0200 (CEST)
Received: by mail-yb1-xb48.google.com with SMTP id 3f1490d57ef6-d9a528c2c8bsf1939781276.1
        for <lists+usb-storage@lfdr.de>; Sat, 21 Oct 2023 03:22:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1697883761; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cn5lhgVMYKSVLyJoyGt0PtVu8rXKoRwbf0lD8FQT4N6tFwejyE+9eT0k/7L+tsQ2Lg
         ExK3xCJwbdqNBL2rch+2cj3uX41jcJ3Hgi2djNZizRhtmCrgdVo0iSKTHeL3Yo8xhrTr
         R9D+rIWR6v7ChV//I5pRsCsiP+ipL7hnuC9pgg5KYBezcV+vDDoZA/yx79AIWsOxvUel
         XoXgxmbre8/BImI6kyh3PelwtVQUfWkaafqMA51nxGgUW9JdBSV5UrZ9ttf4Yjs60Y/j
         Pry1LDeAPbzPux/DXIhs9+gC+eGyESdhMtOacHyWVWfDP5Css/QEC79U9gYL+FH84OfS
         E5KQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vHKrAHzeEwyI19wTxCQG4XRBeLeqHchSoIa+zEcChnw=;
        fh=t3EXWi4An44bWHv2uIUWbfMUE7Qrvf5xp9ayieGzRpk=;
        b=YTXBAq5qB3m4+EnbYQOFtK3r7jjXPZff0uNkfRCmGX13YyIv+tdQVjfecj57inN2xS
         u44NuWiy9OuOx/NOj/JLzlfKw9jDGlEq0krWtc94RpQukm3NY85l5WVxiuchVU12iK/r
         ashRnCMypdV1o/o9LnfCbC5EysXBiBmcnAP5Tys7+x4k0SI6fs2iuIjwMph8aTc+9+b+
         ttEAI8vdtXorAitXaXea09Hxjb+9a4BKS3q8E9Juv0mikGWCF8zWnhtWP0wWu/mz07sa
         oJ4eGlUB2AZQa+POJuikueUy8sonYn0q4KoOn10yjcImCE2YIfQMH5B/gi9cIexsaNwd
         Ia5w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=tUv6KTAb;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1697883761; x=1698488561; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vHKrAHzeEwyI19wTxCQG4XRBeLeqHchSoIa+zEcChnw=;
        b=Er6xEy+5g63iF9RQjVJSBETq4yBjQT0VpgvadFTcNw5PD+cTuof6gbuSTv+Z5mJ1rB
         f4N2JCp8TBfiIm3Dvn42BmUh6tqsb5YvDk5A7Po9BpNdyKiyfxn9nEjmROYLssr7aSoH
         yfhl4AtsPnlWVXDBnn2tDmg219QrT3h8Q5ww0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697883761; x=1698488561;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vHKrAHzeEwyI19wTxCQG4XRBeLeqHchSoIa+zEcChnw=;
        b=eUuuf54592MJYYpcrc67x32Whj/SFYFoO5t7SyTPgVp/+UMMLBW1NnbDNh396a3ZY7
         SK7ndlrhwM8dKogN4SflWBjBj8ZoMKpESi7vV77X8PkvyBc6O5MMAJDPuG+8NVAmBrNs
         ICQqNXGIWABaOiRqvjZBfEB72R5nTgsDQxRl1f13cOdSyvCkHG0jYvA8ZdHFZrIViNbB
         W0a6bPN/BSkjK9jlZ5VM8BF89WXxaX7Iwoa/iTFrHmQ2gAHPpXXY5k08pDzcQmye9vrH
         rvrp5lpx5LTrT4a7PHZWpKWAVs2XFZXQTnnkZIDBk1wJKrvdfUdxsjqSxVoXvCFaUEFh
         kuTg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yx21HgVHLRcJBOns9WY28ltbOqiXuUQWY/YzY6IyDpzW7q8F8tE
	0GBVH088DjzcsAzqWJD3ja5vGg==
X-Google-Smtp-Source: AGHT+IEIW6fSv0fgrYNIP5N3uZy9jH0TdIBwXnEpJchrKOvNItbWaGQPLgyWBmcSA6LKFIdc8K5PPA==
X-Received: by 2002:a25:86d0:0:b0:d95:3958:7ea9 with SMTP id y16-20020a2586d0000000b00d9539587ea9mr4004233ybm.17.1697883760746;
        Sat, 21 Oct 2023 03:22:40 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:6c04:0:b0:d86:8b54:a541 with SMTP id h4-20020a256c04000000b00d868b54a541ls815251ybc.2.-pod-prod-06-us;
 Sat, 21 Oct 2023 03:22:40 -0700 (PDT)
X-Received: by 2002:a25:b0d:0:b0:d5c:1b9b:6f5a with SMTP id 13-20020a250b0d000000b00d5c1b9b6f5amr4055339ybl.44.1697883759891;
        Sat, 21 Oct 2023 03:22:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1697883759; cv=none;
        d=google.com; s=arc-20160816;
        b=Z57b2S9zoTorFKvrouCbwD5nKFu7jIqmD9BWgLFwUR8Jq89TNkbWAhovBTNKsnG2zY
         Xk2BAuk64dd3pAej7r/xbgKPrWbHTa9VjyqJ4U/FlJzyil2cMu755t7eKq87r7+NhLgi
         OF1CXQ2cLYHLpf8g0KUjJ5fSEYqfKOq+ScyXoh/AGRNqY81vZtpwnroh9QrnTyQTs4q0
         nlIEwLZwdRrUFALHjT/3qZvCcSOXDlZC/2FCtrf7P/AWiOVhyV9nDgBn7bfkGsmbucBU
         2T9HkajJ9EjsGeZ9JVsqZxc4/eTetyqQe2K6Rl972Exz8sLHp8ldQjI1Erjf1e7Mkm2c
         Smpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=T9AeoRXdaK3ExUJoDsMGIzKt8Z+9ockOmEULrRzQB7M=;
        fh=t3EXWi4An44bWHv2uIUWbfMUE7Qrvf5xp9ayieGzRpk=;
        b=Lnao7iM/o+uvIxktJPrWP/tQxbMR4gy9lEljbudwTxZuDSgphfRbSTa7ftI7p9QY5X
         QooUkKRnmxiarwYBxa7L70fE2zUR+2m0ubUQ7ZtfSQ8ymZSesW94MHolXdIxB34B1voP
         9qxVIz3mNwK7TRRvbNJGtp9mW2RAYzve+SU0BQQZYg8D/mNQehGmAi86N8z1cCUDKydI
         uU5yyv1y4jA6HVdm8gJlKZkhq+xYXXO2eN7GcyVT4sZTjb61LSvRtcyCC4o/SqVSzFuw
         ljs04B8jzbw3hGdX2YhdZKrBoxZpDNdPWB2N+Fxz6H9qESMOY3+xqXJ3K4s5SbIJ5PS9
         49oQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=tUv6KTAb;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by mx.google.com with ESMTPS id n203-20020a2540d4000000b00d9a47ec8c7asi2163403yba.164.2023.10.21.03.22.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Oct 2023 03:22:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id AC4AAB80D26;
	Sat, 21 Oct 2023 10:22:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABC7CC433C7;
	Sat, 21 Oct 2023 10:22:37 +0000 (UTC)
Date: Sat, 21 Oct 2023 12:22:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Milan Broz <gmazyland@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org, stern@rowland.harvard.edu,
	oneukum@suse.com
Subject: [usb-storage] Re: [PATCH 5/7] usb-storage,uas: do not convert
 device_info for 64-bit platforms
Message-ID: <2023102103-plaything-dispute-b246@gregkh>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231016072604.40179-1-gmazyland@gmail.com>
 <20231016072604.40179-6-gmazyland@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231016072604.40179-6-gmazyland@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=tUv6KTAb;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Mon, Oct 16, 2023 at 09:26:02AM +0200, Milan Broz wrote:
> This patch optimizes the previous one for 64-bit platforms, where
> unsigned long is 64-bit, so we do not need to convert quirk flags
> to 32-bit index.
> 
> Signed-off-by: Milan Broz <gmazyland@gmail.com>
> ---
>  drivers/usb/storage/Makefile  | 3 +++
>  drivers/usb/storage/mkflags.c | 9 +++++++++
>  drivers/usb/storage/usb-ids.h | 4 ++++
>  3 files changed, 16 insertions(+)
> 
> diff --git a/drivers/usb/storage/Makefile b/drivers/usb/storage/Makefile
> index 612678f108d0..62ebaa76ef95 100644
> --- a/drivers/usb/storage/Makefile
> +++ b/drivers/usb/storage/Makefile
> @@ -57,6 +57,9 @@ $(obj)/usual-tables.o: $(obj)/usb-ids.c
>  $(obj)/uas.o: $(obj)/usb-ids-uas.c
>  clean-files		:= usb-ids.c usb-ids-uas.c
>  HOSTCFLAGS_mkflags.o	:= -I $(srctree)/include/
> +ifdef CONFIG_64BIT
> +HOSTCFLAGS_mkflags.o	+= -D CONFIG_64BIT
> +endif
>  hostprogs		+= mkflags
>  
>  quiet_cmd_mkflag_storage = FLAGS   $@
> diff --git a/drivers/usb/storage/mkflags.c b/drivers/usb/storage/mkflags.c
> index 2514ffef0154..08c37d2e52d6 100644
> --- a/drivers/usb/storage/mkflags.c
> +++ b/drivers/usb/storage/mkflags.c
> @@ -89,11 +89,15 @@ static struct svals vals[] = {
>  
>  static unsigned long get_device_info(uint64_t flags, unsigned int idx)
>  {
> +#ifndef CONFIG_64BIT
>  	if (flags < HI32)
>  		return (unsigned long)flags;
>  
>  	/* Use index that will be processed in usb_stor_di2flags */
>  	return HI32 + idx;
> +#else
> +	return flags;
> +#endif

Please try to keep #ifdef out of .c files, it makes maintenance a real
pain and is not the kernel coding style at all.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2023102103-plaything-dispute-b246%40gregkh.
