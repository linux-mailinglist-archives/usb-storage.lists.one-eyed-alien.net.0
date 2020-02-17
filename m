Return-Path: <usb-storage+bncBCUJ7YGL3QFBBF57VHZAKGQEPM7DKXI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F85160EFA
	for <lists+usb-storage@lfdr.de>; Mon, 17 Feb 2020 10:40:41 +0100 (CET)
Received: by mail-pf1-x448.google.com with SMTP id e62sf10880937pfh.14
        for <lists+usb-storage@lfdr.de>; Mon, 17 Feb 2020 01:40:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581932440; cv=pass;
        d=google.com; s=arc-20160816;
        b=qAU7FH1iOZVz4EjVSrMOcjG6zn2e/NJBwF3w4A6XOKjSk/t2FlVK9NM9+gIQmW2bDE
         8yv21vGqzyAuhBPLLJR2hUyPKhWwJDnJcgKepLO3YcM5bF0yvdu61l+BK4WYYoSKZxvQ
         qIh0IczWA5ziwA+PdC0iBFxX/P9eF+ze2tamKbaSoHZKMJirSDtnTyuJ+jAlMRocgbW5
         LuU+/HHiOCCqihuwwu2IJwSLWiEaLcmlv4hdz/lH7R7d6SbY7cyIZEn194+LjSoXof9O
         z2zA6r5jzt14ZDSUb1P7rDDgMvjeS0k+DBI3VXKotI5ikTT4qxuD/oDn3Srhz55iJxtw
         7Xgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YcFw1RbTHghIeuAF8LQlLJvqjBf0CoFDyX5fVuVjMa8=;
        b=liBBBTZj3ao0B82r2tnRaKtd2q6xp76l5CW8iaqrsEOrPxPJ/Pij9H8kUxQa438+Ka
         15YGyj6myjWDK70LOK61m9V6Pc1wSSkpR+lFxZBeSgWjJhYJoXxEBl6il2sqc3BZosb6
         RNfMNxPZCJ8ERkGUbeuwKHak5phZynYG2UE1yoiKo1S5S+/HGisW0B7z7fR2fFzY8Uxc
         GDoeFcqcd794hECuOCaaYO8Ki0sBFuMv+IzapZMNQGLqfN1g7UQPDhDRaxeeTXikuAmI
         m9rxVmsRsaCMUuiLlNbNHjUYkR0mHkzMuxA/BOfTx/c4CZpX8e4W+z4y4+vbSV3wBB8d
         eriQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SVkGBK7b;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YcFw1RbTHghIeuAF8LQlLJvqjBf0CoFDyX5fVuVjMa8=;
        b=RegvwDyYMBoHXPBm0LteE3JUGjiI4fM5VX85gnLA0wKjPHOJMbvJa9jWVXOvDJ2Jac
         DEBMyoQVCr0+wMUH9VdifZeyW77rJm78VzLx0jby9ExO4s0lg6o/4C0Jb+piIl867jR6
         VAR+NFJXbmLPP5MVEO/ZzAQeXfO+2mGqqIfRo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YcFw1RbTHghIeuAF8LQlLJvqjBf0CoFDyX5fVuVjMa8=;
        b=JJ+4mN16pD9AEQqvBHPfqDdVb6z+8AsulGtTkoRWd4i+3FyEGJuFoseWHngcZyQgfG
         MEoChqud5+RU9qSd06ymgNlFR1RfxJadzduRxl52ixR2Z1YRKZQTcnvLPNGSz799v2bI
         9wX+mGWBThXbuSVNwOFW5d+w/rTI4SHvj4LNcWSGxhHq6UUwW6X5c3Z0PJ0PMcx11tcJ
         nNjB85WX6eUE06dzZ86jeYISGzoYQ1c/CPCO1rug1Kk9I4h3p0eMLLXnHzsmpWnZign6
         Dc9d8IbiTSf/FkrIN8LjJvCfVvTx+ef7x+NbyAxuXRMKaBmn8yEiRstLeCHcaImeOVjr
         QAyQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXgLqKAAVC996PHdmgQcdPaaKa7+Z6Hc7MJkoytwXbZ6s/Zmj51
	sNW8vWFjF33r+6Tl84gWWNYmKw==
X-Google-Smtp-Source: APXvYqztzuqcGo6L0Nn1OFufYeF+Y/nVZKO1TFJNtylNPv15XcwwCBfARBgC9gdFX3mb7xZtGzD6jw==
X-Received: by 2002:a17:90a:c388:: with SMTP id h8mr18288985pjt.83.1581932440312;
        Mon, 17 Feb 2020 01:40:40 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:2a04:: with SMTP id q4ls5097260pgq.6.gmail; Mon, 17 Feb
 2020 01:40:39 -0800 (PST)
X-Received: by 2002:a63:1f59:: with SMTP id q25mr14658897pgm.365.1581932439378;
        Mon, 17 Feb 2020 01:40:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581932439; cv=none;
        d=google.com; s=arc-20160816;
        b=z04U0LylLioNn56AFmiu/pl5zGseJVR287rB/DO16towz7BLmmxKrGRYUwmxyN8dfN
         MBHrQNxTsJJ1UVUqn8mNJvvOPbCr0TbBuUPPFHO5mXR/5I4ksmOPmCimWtMWHdGi6tYJ
         zdbxTcbk7tezcDrWoeJS2Cil1ebBzLjyOUgWCgV81yCm7K0L65YmQKEeZxFy27dzjLvi
         cK9n2laS/VWRw3quoOEYGDQn6mxZ95nPRjwQeM/JjEk8fa+jDbiOM88JsfzpUrHo9abJ
         w3W+5jItwrx6bBM+/0CB8UwUBvinHIZtSCugQeyLh9mkjbqND1G4cbX6ODVK39HbghkF
         DeaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PUaDCVtEtzXcVm/3QWXjn1VI0HgM3qynYYuCL9fHC4g=;
        b=dY39wsabGqQn0HcKOcKGY4R6ZDP5b9/IZiPGqFzs25tqobMku9F+tKUpbyO/y1Srel
         DF+gtPTnVBUcM3vuCIuz7CV5lKmU3KU9dEaaJdPzgMp3vlAMifrxLAyF8MfMSbM9apfh
         3V3ZfmOHe35tJtJajjMh4U7E8TWMm6PG8T1IhaC9kkSqdri1vgwUftZn1HJIJ7/tY9Ye
         AcC/0jQv6/5QRLaCEFzDwJnwgaDjGnZ8SMbfwPSuABl19fbR8w5qFXp+RLUOxzEEaR+b
         X5dA6RE1z1fcHMXQUC18J1mIb8VteNZEV7ykH7CFWb0p+R3WrjM7IQCd3KSV1C6590Fd
         k4Aw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SVkGBK7b;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id d4si10637674pjz.74.2020.02.17.01.40.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Feb 2020 01:40:39 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 96F742070B;
	Mon, 17 Feb 2020 09:40:38 +0000 (UTC)
Date: Mon, 17 Feb 2020 10:40:36 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Joe Perches <joe@perches.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb-storage: Use const to reduce object
 data size
Message-ID: <20200217094036.GA47231@kroah.com>
References: <60559197a1af9e0af7f329cc3427989e5756846f.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <60559197a1af9e0af7f329cc3427989e5756846f.camel@perches.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SVkGBK7b;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Fri, Feb 14, 2020 at 10:15:57AM -0800, Joe Perches wrote:
> Make structs const to reduce data size ~20KB.
> 
> Change function arguments and prototypes as necessary to compile.
> 
> $ size (x86-64 defconfig pre)
>    text	   data	    bss	    dec	    hex	filename
>   12281	  10948	    480	  23709	   5c9d	./drivers/usb/storage/usb.o
>     111	  10528	      8	  10647	   2997	./drivers/usb/storage/usual-tables.o
> 
> $ size (x86-64 defconfig post)
>    text	   data	    bss	    dec	    hex	filename
>   22809	    420	    480	  23709	   5c9d	drivers/usb/storage/usb.o
>   10551	      0	      0	  10551	   2937	drivers/usb/storage/usual-tables.o
> 
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
> 
> compile tested only
> 
>  drivers/usb/storage/usb.c          | 10 +++++-----
>  drivers/usb/storage/usb.h          |  5 +++--
>  drivers/usb/storage/usual-tables.c |  6 +++---
>  include/linux/usb_usual.h          |  2 +-
>  4 files changed, 12 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> index 9a79cd..94a6472 100644
> --- a/drivers/usb/storage/usb.c
> +++ b/drivers/usb/storage/usb.c
> @@ -121,12 +121,12 @@ MODULE_PARM_DESC(quirks, "supplemental list of
> device IDs and their quirks");
>  	.initFunction = init_function,	\
>  }
>  
> -static struct us_unusual_dev us_unusual_dev_list[] = {
> +static const struct us_unusual_dev us_unusual_dev_list[] = {
>  #	include "unusual_devs.h"
>  	{ }		/* Terminating entry */
>  };
>  
> -static struct us_unusual_dev for_dynamic_ids =
> +static const struct us_unusual_dev for_dynamic_ids =
>  		USUAL_DEV(USB_SC_SCSI, USB_PR_BULK);
>  
>  #undef UNUSUAL_DEV
> @@ -583,7 +583,7 @@ EXPORT_SYMBOL_GPL(usb_stor_adjust_quirks);
>  
>  /* Get the unusual_devs entries and the string descriptors */
>  static int get_device_info(struct us_data *us, const struct
> usb_device_id *id,

Patch is line-wrapped and does not apply at all :(

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200217094036.GA47231%40kroah.com.
