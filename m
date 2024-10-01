Return-Path: <usb-storage+bncBD64ZMV5YYBRBNPV563QMGQE74KBVHI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 201CE98BDE2
	for <lists+usb-storage@lfdr.de>; Tue,  1 Oct 2024 15:35:51 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-4581253bd26sf72799291cf.1
        for <lists+usb-storage@lfdr.de>; Tue, 01 Oct 2024 06:35:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1727789750; cv=pass;
        d=google.com; s=arc-20240605;
        b=AU+gWEDE7Ycj/YCVsWQ7A/NRCXcXEuPgPs4sQRA05ihxPVueEAU6ZlbLhsK6JdTfUA
         OYHa6d/pWYSZrf9kmWwGGK8wHwx2sVj1gRu675bWa7vaPnO5nLrZB3JX/5TeDl4V39FY
         4NLXSDhw3vc5L0VdXH89Ut/T2HbG2PuUCVHMQpeJZJGVkLJO89n2O5h1Ul+Vhs+BOf9z
         toZRltBUNYsyqzTit+Jbj+Q7xbCJ2YJ0Y3XY2vkEAf0jZ1RRuVJdRGU0lWmM/RER4TuL
         53JtJLi5efhbbuUjHbug6Fx5CCifpMmL2+CtauNxY1UKXdkwCkQgaj5radqswD+eln19
         sbkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KAQVuhCLagF3uWAI0sq7LWOLxrqDvOxXmeX3Mx8iQ5I=;
        fh=v2winee5rm/YGRXTW3zge5c/hWx8Lj2pqq+RSMIqMTw=;
        b=OKjZ5YGbxHMNv5CbCXyktSazI63+USwNCvRo6UiQRzy8xPCzRLWlySmwzX2LaRotr5
         +BWq0P7FTdPJvKOCShI27mQnOjNN/tMB7s/SajB61kJS5u6BxzeyQ/HScISxm+DwVaGz
         z4oRcabRIWSnKzwlm5f2JKxvcggKiz6MftqkOmiYIrN2UWRMJa3+Dh1koCqoRc8LrqI/
         ZO+cka7+qHJqfRRJoPYkgJue9VML4FVt+lFoxBq/GrOP+PH5xs6+PYu1bLaXMb1azOdL
         W2zcB2cErqLiu9RK+S7D0a044L5vnX2xoksHpC+a3ZqaJE3gEcYsCXzKyzI5RN9/fi2X
         N+7A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=Kb6GHHxg;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1727789750; x=1728394550; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KAQVuhCLagF3uWAI0sq7LWOLxrqDvOxXmeX3Mx8iQ5I=;
        b=EbWxwAD0meZo4JuWle9ecwwP0biwwllNGzcaZ1ZEZu1IXp+RczYJt6/xLvhTNw3rZS
         /WXyTcm4K0jlpaZIHGwaI32cpE/xBCET4QtuYjFoCZ++sLUbiLs1fEZ55mw0YVXL8gF4
         kbnSdD/Dv4tdTvlDIbzhFalMWVP5WQLMpZNTQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727789750; x=1728394550;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KAQVuhCLagF3uWAI0sq7LWOLxrqDvOxXmeX3Mx8iQ5I=;
        b=VOM7FOND3uPAWhK/YfcgwOtpGfphKHvjw/5DsYDkHLmtnOrr+ueC9DwlLldN6frfpg
         2xIxs+TSEKN0OYPPQY+nSVb8//mRXGzyJNVmGGEjUKSjrpy4wHHzQeedY4UmTbTWmtr1
         UmNh3PAhxCX/HAaTtsAy5rKDHoyEWBqos7o0RS9AfiD4B9lOMao0zeS6yOU9oKXdFIcA
         hl1awilfrQTNhWyKjjS6onVSTscwEhXSED+wB7lV7/7TxDBFX2l/OhpyHRqVtgIcJPDj
         MNMlT6hSa1oEszJoJ0TQT0BXlEPFAG/qB59nGdCF7lXVSa35iLay2B8b41HltpQc2Bk0
         wdPg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXqQ/oz5gq8ymR3GZE5+8X+QuzEXcrX6EPdfzgdYt1bk6aR6Yt53DnjmCA9qbT2Sb0Fy1h2wQ==@lfdr.de
X-Gm-Message-State: AOJu0YwAzIPkqKNf+bWgploi2ZKzfFDTuad9gf7Rcos5lChdm+EsQ6G+
	LBjP4dDf6dF3YmBwXTnJANgOWneJaLGVF5cv9Yu+ysGlAxfESPYFgb7wW/JMzIE=
X-Google-Smtp-Source: AGHT+IGF3Fyig64zofjdYFHM9lApF5ZgB0mja/UPmr1rT3XmSBodL+N9kqLoBiWPsFOAjSliSC5Jvw==
X-Received: by 2002:ac8:5812:0:b0:458:5992:34c1 with SMTP id d75a77b69052e-45c9f1e7e34mr265937591cf.16.1727789749642;
        Tue, 01 Oct 2024 06:35:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:7d4a:0:b0:458:235b:cfc with SMTP id d75a77b69052e-45c94adda0bls65890601cf.1.-pod-prod-08-us;
 Tue, 01 Oct 2024 06:35:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWZAjVxcMQ3dUUelEOvDXcPWSFDDKHl9ozZPxKVQ+YyJsb07ICSD1p8V9HL/eZr0GnD2e6TPz9jS/5dOw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:1a85:b0:45b:5cdf:2ef1 with SMTP id d75a77b69052e-45c9f1afb81mr254438601cf.2.1727789748622;
        Tue, 01 Oct 2024 06:35:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1727789748; cv=none;
        d=google.com; s=arc-20160816;
        b=VfsWpMGhDOHFQZjPhwLKbSwfA9Vo0v4kiVrsOVQvuYB+fVsLG52a2N+wFq2JczPmwn
         e+gMXPAk5SVWa0+Ikx0VJKFEvsn9yQJhMWLNrJ5TixDEEhfgpr1JUKAg13qzW0EcTCBj
         Gmwr+ohY6XYBra5+tlbPf4BT4Frk0b2z+Gp9EFynsLTU1gKay5an1KzvNKV2bVyFJxy6
         61Sri3kTo5PQPo6/OdxY3fP6kKS/XquezSxjkl0jGboe1VFR1zY+6JUc2Tn3sD+PrQnn
         GkNXIkgBaNAnrzJW8tw3XCx8HxPVOkSrEUEtx5q4rM0EjX7cL74M/II5TzOkfT/+9JgD
         2/og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BEopdWMDpCRUeGsoK3NceMIpTW9rD6Z+uCQDxg21ocg=;
        fh=tBAc0qiBrnDeu7xPI3yWZDRBjHBScTpL1elUuEF7Ycc=;
        b=xdDxuisJ7FhLS5K+0o9SMkzhJ6kqiMKhf5CJN2Z9U56GVhYq9niIda8c52DTKJN3QL
         QRfy10UzZUqDJdCeSvjZFeW2jWwZ6b1JLtXxuJJ0N7eaBKIWw9KzJNafRXCitQ/sTcCd
         fH4jWoTJloBuUaSiyyNMxJ+KyQAv6QfnBM4JcHKNY+HHDFImOZZeuhEgqP6MGtIV1frQ
         ztxdwDqbBNmheTW7R9pnVdL1ms7YNWc6H6SVeqEf2QCeQtef+nfqr1BmtrnT6ch8H/Wg
         wH4ROoq+TUT2f+Gp/4bAuutcactOb4ZwvA5CBr208maIGayXDh9aeOnYemOp2FAj0nFp
         X9dw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=Kb6GHHxg;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d75a77b69052e-45c9f2c5bebsor44020621cf.3.2024.10.01.06.35.48
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 01 Oct 2024 06:35:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWBlaGbIPPZggL/GgMQyP9MctU0oNzNSdAma3ZZ/aEA+GOnark21Et1iJaXkzHxn0Yyvl/R/LOcBLW96g==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:4b0f:b0:45c:aa3c:6b21 with SMTP id d75a77b69052e-45caa3c6bcdmr179463541cf.19.1727789748037;
        Tue, 01 Oct 2024 06:35:48 -0700 (PDT)
Received: from rowland.harvard.edu ([2601:19b:681:fd10::5638])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-45d7aad57c5sm4079281cf.63.2024.10.01.06.35.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 06:35:47 -0700 (PDT)
Date: Tue, 1 Oct 2024 09:35:44 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: ignore bogus device raised by
 JieLi BR21 USB sound chip
Message-ID: <5d5c516e-ad45-4533-912a-80cdf85aaed1@rowland.harvard.edu>
References: <20241001083407.8336-1-uwu@icenowy.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20241001083407.8336-1-uwu@icenowy.me>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=Kb6GHHxg;
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

On Tue, Oct 01, 2024 at 04:34:07PM +0800, Icenowy Zheng wrote:
> JieLi tends to use SCSI via USB Mass Storage to implement their own
> proprietary commands instead of implementing another USB interface.

What a strange thing to do.  I wonder why they chose that approach?

> Enumerating it as a generic mass storage device will lead to a Hardware
> Error sense key get reported.
> 
> Ignore this bogus device to prevent appearing a unusable sdX device
> file.
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> ---

Acked-by: Alan Stern <stern@rowland.harvard.edu>

>  drivers/usb/storage/unusual_devs.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
> index fd68204374f2c..e5ad23d86833d 100644
> --- a/drivers/usb/storage/unusual_devs.h
> +++ b/drivers/usb/storage/unusual_devs.h
> @@ -2423,6 +2423,17 @@ UNUSUAL_DEV(  0xc251, 0x4003, 0x0100, 0x0100,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_NOT_LOCKABLE),
>  
> +/*
> + * Reported by Icenowy Zheng <uwu@icenowy.me>
> + * This is an interface for vendor-specific cryptic commands instead
> + * of real USB storage device.
> + */
> +UNUSUAL_DEV(  0xe5b7, 0x0811, 0x0100, 0x0100,
> +		"ZhuHai JieLi Technology",
> +		"JieLi BR21",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_DEVICE),
> +
>  /* Reported by Andrew Simmons <andrew.simmons@gmail.com> */
>  UNUSUAL_DEV(  0xed06, 0x4500, 0x0001, 0x0001,
>  		"DataStor",
> -- 
> 2.46.2
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/5d5c516e-ad45-4533-912a-80cdf85aaed1%40rowland.harvard.edu.
