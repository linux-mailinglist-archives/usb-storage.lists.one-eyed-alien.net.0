Return-Path: <usb-storage+bncBCUJ7YGL3QFBB5HIR2YAMGQEJ3NBAHY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x48.google.com (mail-oa1-x48.google.com [IPv6:2001:4860:4864:20::48])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD0488D618
	for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 06:53:58 +0100 (CET)
Received: by mail-oa1-x48.google.com with SMTP id 586e51a60fabf-22a3535017asf2498914fac.0
        for <lists+usb-storage@lfdr.de>; Tue, 26 Mar 2024 22:53:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711518836; cv=pass;
        d=google.com; s=arc-20160816;
        b=OosFWmUmXFLRC64H74ClN43ES0BR/tznpUOmGiCe44/z5fw+ORsFz+vs2PNL4ExUKK
         09ZlVBV2O2EtQOf8c/FVuaB4m4kRJVDa1/fpU1oCYZTJQblkUioO/g4AVgCzYLXVjl3k
         YK06RlpRaEhvfiWJAvUTZgzrS8R1TpaOFra2jWvkwqgm4rxXunkWxRSyykjIqjbCN5kQ
         bboI9Ki0aRu4YWeK7WHqj6mbn1Ge1kAeg5jAGDFsklLqM3RX+TazCwXEm7iPNP8+fFdu
         TbRuJ8VMqtTtqWs4fh9R1+VlINxl669r7L9hdWeHsZipGSKUVtG9/YyZ/DtqGpyVkJJw
         8L+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dazo0QbocFz/FOkQ5LILRBQA+EJpb6klgz/PU0ZAqkw=;
        fh=mdFKDnrOR+yUJ3kDq+NrEzwlGHKEJPHzjgGq6BZH3Mw=;
        b=B9Rns9xcZNRDfw9SJsgcufx5sOPH92F2/XfBkjsbMSvkfryRrN2+c9sfXEtPubGYiA
         UJzCncQ8WlwJBL/8Y808X2OmOU2yyTnVNxxtP/SerpkEw3LnKKDzklEABdjpagh3Af8m
         g3Z7i+IZlZ7vlY/4UCDztWvbBu0m7+FLNcRw/ISZ4yxTbhzoB3CQ30dHVFlSJCHicxqp
         tFExj4NoTkEflqs3RVHtDB2HNael63cLOHiPbk4eE5119fMf1WsgdXonIrCVqvIFX5PA
         HZqGX1z2RRe3wSu88MSxVjXA4lSRp8p+qrG43lSg0smzHF00jcLOSjs6Tr6E8w5kKMZK
         CAHA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=JfDBQGop;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711518836; x=1712123636; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dazo0QbocFz/FOkQ5LILRBQA+EJpb6klgz/PU0ZAqkw=;
        b=JXwnD1fvcTXh5RVmqv+2ACwO4FefhFz1H9aWArEtDJ/ON54fM1GnAGEEGEh+szaIEn
         cXRCVVOXwDMFWGTbWUu7kH/iA9WjzZv5fbtU3+WGDkMXwm0d50v0awCl2xtSi2y6ghGT
         pWY6dK2/l9nsn0g9dlQ86ryDwttD2qKU6FU1I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711518836; x=1712123636;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dazo0QbocFz/FOkQ5LILRBQA+EJpb6klgz/PU0ZAqkw=;
        b=tMOjcoKjSy/0njVTyGV/G06DPDK9VKmPcNLaA0I9ymOQz7G1uGxu264ewwwnHmDmmq
         KEvAa2w4FMD7wxfK+Dns1vIqJsmMI90bunqWxrW4ctwd9CQGjhhBTwcFHdak/cC0XYNO
         0xtdquI2mfJgCb0S8LUH6rLUtZqMncyRsqgkVWg+KsWa7h7YP9IYmQ6z1BhKqtQaZbDN
         F6dHfP3CTz8SgmEKsdSQYwR/FHMpXjjXchCJrX+TMqwHcNJqleIwqWSk/P8QuNCKrwoM
         xoa1ex4jXrhzTAeX+Ggr392JUrx6eauo8GDN7WhTGWnw0XmSO039+F9dQ4Z8rqFZ1aDv
         +zYw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXRlyruqZH/eJCieaWE06RgOJvX0tUxbtxzdm5lxPNvdugBv6218LOFvVB47Cc7bu7ZPMhNjM1pUkf08PBWjgDN6eGkKxVVYoFb
X-Gm-Message-State: AOJu0YzOkWr9HZw/aoRIWKFJnLYeoALP5tSgF033X3RLcRke3lEsh8Zm
	wC3wbtV14s1qjOFMQcF/WHrhs5rlzhmPMziPoQfM1XO9FOzLEECLd6qR8k/9JcY=
X-Google-Smtp-Source: AGHT+IHYmSpccKCMOEGB8BiUqVvofpxEC88rQXXNLp8o538JbG49Wjm7RQxonVphc/YWlIJlNl6lyQ==
X-Received: by 2002:a05:6870:a446:b0:220:8cc7:253e with SMTP id n6-20020a056870a44600b002208cc7253emr5543443oal.22.1711518836392;
        Tue, 26 Mar 2024 22:53:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:658e:b0:22a:4da2:1878 with SMTP id
 fp14-20020a056870658e00b0022a4da21878ls1220330oab.2.-pod-prod-01-us; Tue, 26
 Mar 2024 22:53:54 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWKPXvPcAkjvcg/TUnLKKMSJ8eZ5qrYgQ+gWhHGtlvnDeVNppL5+vfY9B5xo8SxHnvwasDMGwUTuKWj5nnNgSIecrFZuPAoFd/7kfNSq3ikai2KEA8=
X-Received: by 2002:a05:6870:4181:b0:221:3c64:fbb with SMTP id y1-20020a056870418100b002213c640fbbmr5510160oac.30.1711518834137;
        Tue, 26 Mar 2024 22:53:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711518834; cv=none;
        d=google.com; s=arc-20160816;
        b=xps3FIBoxj8GrsqluGk/M3+brtKnh+o8qlU+45Nm/TrEfNYApbeEj1taqgG3CUlM01
         K++INh69v2s90cUQ/h5n4kS7sOsecVGZ84TO1vdISoZcsZN/++XhOcVw40UzXDbCvGnL
         w61uXm1GKEdPKUZvWxCrUNJ1Hde/Imwt/YYsL4jrI8Gc6/XAf/jXF4QGIwvQrA6u4SqU
         YLj8/WZGTSeGwbeacvKz3gK7zKUhtus3ASObtQ0A2z4uKPkEyLRDEPqc53uq144JAKIg
         S5J4m1jbHYVWQSM1WMTBKWSQjbg3fR1JZoLwllKlw2X/7CDN9LnlJqBley3GVNxiW09n
         /11g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=q03zhbTfwlPkvPtO0IVQgT11X5PzZkaFEYU9+UvE/yY=;
        fh=8LysKly9D/IVHFjcYupN4WNkmDrN6aK8/tihKw4tApM=;
        b=hg4u/3IHjbykPhGVoaMnsnynpy67qs1PGUFd3YcIVoz2gXPFGdaUJe2oQJoWcUx3bb
         NHHYmkdnGCNoXJhpzH17eXncr4Z2LxOnNW7hXy0M7E/HT2jINHx5KB8NBoCvkSlChkNA
         aYg3Zj7FyPF4neMS0lR2ecKKEMGbBp2xD8rTOs5lPgG8pD0HlEYxCvVI35Eap5e0rqZE
         aY7tIoCswlZh3a26v8QEN4NdDvuxYXy3eMjIclkiqOlyudHGqnYWEw8HCj/uXe1v5egn
         AUKpw4ffrXvqlsDNJ90wJ0CDt/M7mG74txyQIHrki/hR6RV6tgbWcyERZS718pfRiGvy
         xPVw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=JfDBQGop;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id k21-20020a05687015d500b00229bae2c485si2786228oad.91.2024.03.26.22.53.54
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 22:53:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BFDA46149F;
	Wed, 27 Mar 2024 05:53:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DE97C433C7;
	Wed, 27 Mar 2024 05:53:52 +0000 (UTC)
Date: Wed, 27 Mar 2024 06:53:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb-storage: Optimize scan delay more precisely
Message-ID: <2024032757-surcharge-grime-d3dd@gregkh>
References: <20240327055130.43206-1-Norihiko.Hama@alpsalpine.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240327055130.43206-1-Norihiko.Hama@alpsalpine.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=JfDBQGop;       spf=pass
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

On Wed, Mar 27, 2024 at 02:51:30PM +0900, Norihiko Hama wrote:
> Current storage scan delay is reduced by the following old commit.
> 
> a4a47bc03fe5 ("Lower USB storage settling delay to something more reasonable")
> 
> It means that delay is at least 'one second', or zero with delay_use=0.
> 'one second' is still long delay especially for embedded system but
> when delay_use is set to 0 (no delay), error still observed on some USB drives.
> 
> So delay_use should not be set to 0 but 'one second' is quite long.
> 
> This patch optimizes scan delay more precisely
> to minimize delay time but not to have any problems on USB drives
> by adding module parameter 'delay_scale' of delay-time divisor.
> By default, delay time is 'one second' for backward compatibility.
> For example, it seems to be good by changing delay_scale=100,
> that is 100 millisecond delay.
> 
> Signed-off-by: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
> ---
>  drivers/usb/storage/usb.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> index 90aa9c12ffac..f4a755e364da 100644
> --- a/drivers/usb/storage/usb.c
> +++ b/drivers/usb/storage/usb.c
> @@ -70,6 +70,9 @@ MODULE_LICENSE("GPL");
>  static unsigned int delay_use = 1;
>  module_param(delay_use, uint, S_IRUGO | S_IWUSR);
>  MODULE_PARM_DESC(delay_use, "seconds to delay before using a new device");
> +static unsigned int delay_scale = MSEC_PER_SEC;
> +module_param(delay_scale, uint, 0644);
> +MODULE_PARM_DESC(delay_scale, "time scale of delay_use");

Sorry, but module parameters are from the 1990's, we will not go back to
that if at all possible as it's not easy to maintain and will not work
properly for multiple devices.

I can understand wanting something between 1 and 0 seconds, but adding
yet-another-option isn't probably the best way, sorry.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024032757-surcharge-grime-d3dd%40gregkh.
