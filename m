Return-Path: <usb-storage+bncBCUJ7YGL3QFBB3G3YTCQMGQERPJVQRY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EA0B3B227
	for <lists+usb-storage@lfdr.de>; Fri, 29 Aug 2025 06:34:55 +0200 (CEST)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-325ce9b32basf2083628a91.0
        for <lists+usb-storage@lfdr.de>; Thu, 28 Aug 2025 21:34:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1756442094; cv=pass;
        d=google.com; s=arc-20240605;
        b=S3xyVlfKrLaTM9ROn2/Q2SPogbVUij6Jf1mnG+fLgA9xDaz3qrM4to0T9GLeBOi0qE
         mna3havOcBNt4T+VzJnsnhFrIJ366DUC+S8OsbU5IJoILDnFK3HHbHMCTpA8V1elHWrh
         zuU/dZELs8SSy/JCKOTpUKDViahWljzKoaJeL1w2PWTHK/gAMQrxH2TDKnpVtHOnLvKF
         YBMfBqhpFAeKaC4jVVpn7L2OKSynsJ4sjC0FKDY4sbFiFZr7iOSmHda3MlK5eOm5AiPR
         gH/VRvSZhcxNmcf/wx4BrKaoak/7McfsH1CQAFoZ1eb/b1oZbgGJAGbey9FFFZTqm8QM
         3DhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HUXaQ3gvJsZbZ8lZeC8+YGeMBnxTKQBxgItms2WiZGs=;
        fh=3i0QloH8ZlpyVsNGZ2uK+W5R4dj6IaPW8RAuUc693mQ=;
        b=WKo4PO1BRqLId/SxjuyGLirWnCF/FJb6b4d9Fs+rIeRyQOwuEnHdNJaJRvsH6KHJmI
         9DZ9/Z7dUHJhejqV/QohRHiAOyYiEPwFGoIY4Tu4K8p+c3o1rXZQFY3PaBoDrWxMpAmi
         vxndITVrPMADbTVtQkm9gRDCCczuOs+kKM7FLKq8n9EXpwdA7TpOWeDUcNnCz0V10XXY
         ooU3nTF2WA6afdkSnT/1hZul9FjQxRW/7TR6OXGAsMDVTi+r/VpIgr1zaC1TvEuY4Bg/
         0caxFawj3Ndj0vOxeKi3PWgBWWSYYzsBEg/anbUAQzxfhkVZWEHXMITfjgV+6NuG/jMW
         TEqg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=yAapb0he;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1756442094; x=1757046894; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HUXaQ3gvJsZbZ8lZeC8+YGeMBnxTKQBxgItms2WiZGs=;
        b=WY4tsnzbAi3/KG1z8kGrisB2Y0b5DMM/DiE7x+i2W5lBwf0r02ExrgDYP10akr+vZo
         I3UZGFuTMJ0AzOpDeOnq6Yzbfy66CQ2YHci7rrRftzXv+lIAprBttYWEoEEGLtztP5Km
         SOnmf0DxI6aAQGqujdnyeZNO04cTawEJ1nZec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756442094; x=1757046894;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HUXaQ3gvJsZbZ8lZeC8+YGeMBnxTKQBxgItms2WiZGs=;
        b=jbqWw/lGMLnipOXWLkufIr0cjRLgp7G6raDyv1gHHTTxLjYyYDDeNiw1aJp7fe+mPg
         NC1mR+JCwXWZmA0w7XGGgIwGKc3e+DhkkBrjBVfXaKh5e6qEv4DBBR68b2ija9ItNXJe
         RMJtbuwyrmcnT7G5bfILoAyhYApFy0lL8baApOCXWtYqQG0DBv3h8glWOdF/ieoNggJ1
         7slBJv1ACSfLOSWLuTX1JdSfcsamgJfsk19lekaAYwwqcTMqcvvowZHmURmvbnZV4QG1
         aY8D1FGMlUsdDC9yKgASx9XKggl4YMmX9XTaTw+aiBE36WCK4+sheUChv4yhn4FLsssm
         WzAA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVoX/rk2eYv4vmz1EaKF1Ac09wAIBFdsrtV8N/qyCgrpHywqKIsafH15bRFVkbCqJNUwLx+5g==@lfdr.de
X-Gm-Message-State: AOJu0Yxo/oTX0RoBXLcg9mF3hVTNMpLhOC8ddRICc0oQRr+Fx0cLF21D
	ZBP2a8XJVomy+Xtv9ubLb0kpkxtqBsmAaa68nuITJjR5PG71D+e3ZDxwecf/1zjQsYM=
X-Google-Smtp-Source: AGHT+IHA9UZz7ruscM9MYbgbWTw+5upNBkKbxgSmpmMMW/Jhd/n0HDrmaLjHsrPy1j+7CMNC2o2Qcw==
X-Received: by 2002:a17:90b:17c6:b0:31e:beae:2934 with SMTP id 98e67ed59e1d1-32517749976mr31972774a91.18.1756442093609;
        Thu, 28 Aug 2025 21:34:53 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZeHE60nwykh2eUh03lBzFPHLZJxOZ9XP0PtJj4lCBS1JA==
Received: by 2002:a17:90b:2e49:b0:313:9f92:9c2e with SMTP id
 98e67ed59e1d1-327aacdb9d4ls1817074a91.2.-pod-prod-01-us; Thu, 28 Aug 2025
 21:34:52 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVSwpogfDCZ9ALxIhS5lfjZwJA8A/gxJmAWerOIETjxuldwKZBt5WIhdv3/D8DqnKlnKmpzGqNTH+li1A==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:329f:b0:243:a663:9110 with SMTP id adf61e73a8af0-243a66393famr10257825637.14.1756442091829;
        Thu, 28 Aug 2025 21:34:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1756442091; cv=none;
        d=google.com; s=arc-20240605;
        b=bx71+POv2TBiP7hR8cSMGVCkPGfUm7h4DD47Gs6XB4OyQpGFRmHoP63FHDKDkCY0Gv
         Kvolb0COIjNV/IMKQVV6VODn3ES1hicL/XRsywsnpZ05qz/K5PSxHjkbV30JDCoRZpm1
         O42fwQOA5aDQNILTUGOTmqfacCKAXTmeGo+6Bujll5SwQTa+zpQ4SCYzVgTKoQXfdDqD
         9NFRdKZzC82hMkxTO77Q68wX6hsLPuM4lTBJhBmogu8YLa6ubuzgrwKAF5p7t6Ru2ww8
         qK6v7O/Es9GQHHwh8nJoNHGbAhssgY9KBD4h4ErD0RZdjz9DXpO+kI8YkWMlDoN3Wwpv
         neSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PCoWi6wnyQBFTh19nxNvg69cL+dwZzl5tEAGpO6WmhU=;
        fh=B1KjqRTUOKn+kvhtin2+g3OMksvyqw43OMRwPMLyCsc=;
        b=Vydjm6Jw4lQ1NNcP2FlGsZ+EWPqysEntKnKfUGZRRLsfDGzTo+p5d4wJqXWj0ZfoDQ
         ysEwth6GTkhqfxbCsYsyc+WeNCa+e6/TvygyFLWvPEE+fH31jFryqzIhmJmA2ICp25tn
         LdmLL+o64OMIZ17iBGocfp30xwj28CmEpINuohWJlH4ejOuRs8ARIePyyww3GkNDzgfO
         k/eLpGNNsqKlb3FHNTFirbrO1JFkasxeO6UyQnPVyFDJ70WdkImNmz1L4cJAgrtJJjef
         3wFR0EzkVVsVQdgaBDEnBGqbAC0tHUYLlJ3D+imFDQhq1ofkofNUIUDsa2lyqML3l3L4
         Or3Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=yAapb0he;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sea.source.kernel.org (sea.source.kernel.org. [2600:3c0a:e001:78e:0:1991:8:25])
        by mx.google.com with ESMTPS id d2e1a72fcca58-7722a7a5948si1060063b3a.785.2025.08.28.21.34.51
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 21:34:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) client-ip=2600:3c0a:e001:78e:0:1991:8:25;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5D96044171;
	Fri, 29 Aug 2025 04:34:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA35AC4CEF0;
	Fri, 29 Aug 2025 04:34:50 +0000 (UTC)
Date: Fri, 29 Aug 2025 06:34:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Thorsten Blum <thorsten.blum@linux.dev>
Cc: Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH RESEND] usb: storage: realtek_cr: Simplify
 residue calculation in rts51x_bulk_transport()
Message-ID: <2025082922-almanac-derby-632d@gregkh>
References: <20250828162623.4840-3-thorsten.blum@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250828162623.4840-3-thorsten.blum@linux.dev>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=yAapb0he;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Thu, Aug 28, 2025 at 06:26:24PM +0200, Thorsten Blum wrote:
> Simplify the calculation of 'residue' in rts51x_bulk_transport() and
> avoid unnecessarily reassigning 'residue' to itself.
> 
> Acked-by: Alan Stern <stern@rowland.harvard.edu>
> Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
> ---
>  drivers/usb/storage/realtek_cr.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
> index 2a6c7c567e1c..758258a569a6 100644
> --- a/drivers/usb/storage/realtek_cr.c
> +++ b/drivers/usb/storage/realtek_cr.c
> @@ -261,8 +261,8 @@ static int rts51x_bulk_transport(struct us_data *us, u8 lun,
>  	 * try to compute the actual residue, based on how much data
>  	 * was really transferred and what the device tells us
>  	 */
> -	if (residue)
> -		residue = residue < buf_len ? residue : buf_len;
> +	if (residue > buf_len)
> +		residue = buf_len;
>  
>  	if (act_len)
>  		*act_len = buf_len - residue;
> -- 
> 2.50.1
> 
> 

Why is this a RESEND?  What happened to the first one?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025082922-almanac-derby-632d%40gregkh.
