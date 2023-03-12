Return-Path: <usb-storage+bncBCUJ7YGL3QFBBKXNWWQAMGQEODKICWA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x448.google.com (mail-wr1-x448.google.com [IPv6:2a00:1450:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EC96B638E
	for <lists+usb-storage@lfdr.de>; Sun, 12 Mar 2023 07:52:26 +0100 (CET)
Received: by mail-wr1-x448.google.com with SMTP id t19-20020a0560001a5300b002ce013276b8sf1668828wry.1
        for <lists+usb-storage@lfdr.de>; Sat, 11 Mar 2023 22:52:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1678603946; cv=pass;
        d=google.com; s=arc-20160816;
        b=M15eZwchddNWKNATDnCZ01e2sXZZPAoZcgENYD6IyGysfdB5nweGYwx7y/M9+/RRID
         B6W1HcQexIwZ8iv7CiCyF4uJO0jV/h0JabZ8WVq/XCr9uRXGWkGFHuxVwmHecYn4uhP/
         sXj6dkUSoOcFLFDzXpr/uhpD7O0o5Tm5V9LoSnQtYcDDV/KmI5FBaHEFtbZDba1ZmNnN
         5UeKjQC6h0ILao7uR6rHDhNUycHBIQc1MBjb6XQ1h5klg/8p8BFaPcfi6o27kFSHRY3P
         rwBkLtx2WcoilbyXa2MACovsJ9bW2Jlj27SWsJ4bLF9hOcT/QzRdRTpSA1WFCeZnYjiR
         EZsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ATKDN7a1y3gZwNVowP3xFQyDhLlK4cBkyOKCQV2Wok0=;
        b=DBXEO6D9+AzPTF9D9NtJM9tPyNO0GtQkD0LjgC8mg4H2NN8R8+ArbMC3ifTdmLGaEb
         UjPp204iSTBXgFZpcsW/zzW4fzdRSisvOz5yBrZhmjrg2j8HTqhsbETJLp3WctmEH8Gb
         1Hk44RMCVIesnt72pNtExcJVNTt3qrb9s/9BSvdF1pRwFpxu6urlmBalYeZDvYHFTDkL
         YM/5ZGVpoqvbr+L0PBZuhYHreKRVvZDSDl9fy/9bRA9PlzA6IacPocD7GuRGyh30PAgE
         v17Cos3Z9W9yX8JqShaSLCehlXZzjbq3Ad3KNjGqFmQLrblZTorZawraXZSXorCIQHBX
         OL4w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=X9PGZbIN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1678603946;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ATKDN7a1y3gZwNVowP3xFQyDhLlK4cBkyOKCQV2Wok0=;
        b=PqwLBOXVqHSLSpXkqk9MBMj3vx3MCj0ivL3YxCoKBcFXtl11mB1jsgdOk1mD3A28f6
         10VwjYANny6seDT+qiI7u/UN1xDHWbKL1tUJB9ddGqBzNfDGm1RbcT9YG1dbbIpsDXAy
         wNtE0WWC7UlXgnsGjA2WeG/Irp+LxxoGOXDpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678603946;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ATKDN7a1y3gZwNVowP3xFQyDhLlK4cBkyOKCQV2Wok0=;
        b=k7SjvdFBYBQJvwsCXPdCKOlRGnqpU15oxpYBdVgRVNCi3mg/c3uylAKjmWfrqOhGpi
         nsJ5+4lCUtJ6/UUw7M0wvvocXbD7heR7QOt9INx+PIpDfMpkq3yujDQweUderlrk0ZJl
         OIQ7qESBUHXc/suTXE1ViDpL/0uDusutV7xUCd+f6mgXuaaBhuyxtC8EEyTtKBdVEXLk
         TCBQ3ekHxWYNhAZdHushs2UL/roJRFKTG1lA37m4PPb1rXkIleZ+wj8IAzEzZ3FFDQJF
         ymxLrNEC8Lc97DHmIMOwOGTiS6zREilJVueD+QsH4yTRF/64pXy93yMKFSuGYX/gUo0+
         l7kQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKXhWErX3V2euvxr3vovcP9l7o5z0FGshE6KFWQXtUQYnnQQjGd7
	c/ZF4RH5AV9N6lYKfTUrlh+n8g==
X-Google-Smtp-Source: AK7set8X3+xvz8018DRhsprOVkBfpkrMx6/yi/nqQsorczh9jMV9rsZj3RUEI+oS05kWi7CDb5CsLA==
X-Received: by 2002:a7b:c2b1:0:b0:3eb:5824:f0ee with SMTP id c17-20020a7bc2b1000000b003eb5824f0eemr2173664wmk.2.1678603946387;
        Sat, 11 Mar 2023 22:52:26 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6000:1f81:b0:2c5:55ca:3a3b with SMTP id
 bw1-20020a0560001f8100b002c555ca3a3bls10689948wrb.1.-pod-prod-gmail; Sat, 11
 Mar 2023 22:52:25 -0800 (PST)
X-Received: by 2002:adf:fd41:0:b0:2ce:3ae0:55a7 with SMTP id h1-20020adffd41000000b002ce3ae055a7mr16744157wrs.29.1678603944909;
        Sat, 11 Mar 2023 22:52:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1678603944; cv=none;
        d=google.com; s=arc-20160816;
        b=j/3SazBGn/GyL0izhkjO9oOwmkE03A+Hf7PN4ZdmcVwlitO6MBOjmkoEnUNz+9ThKf
         uFlEmR7aR9BJ6VheEGQNGnZKkT/YlEKd5Eu2WMHq5q0UFdCpsk29P96JamnnBr7G1rzR
         GFwRFN6TbJcM5bpFJAoFq/IuMpJ1anD6Lqii7VhPe1eIWQAWgNZSKHLAzTn5iY1c3rDf
         bzyq+fyQtzjLbVY7ZsUZGKqebBUfxptgFUG2cABYKYY0ICaIlI3KtqB/efHVWXHJD0lG
         pt7g6E5vG6lQkPGsnAzUIgz+u+A4sci4VzwG5G+YOU/SFPog5Y8AntFxYvS5Huw1kRoE
         QFRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=134COK6GkpJu2H0YTBT+5zwCd3iPZZcjRicEoUZVI9s=;
        b=cJZLxcDGQnzkT9vQoHk+75v2FpjNAURLxG+uCFj38+5ugi50LnJCQJCrQthiW5+DC8
         c+G7IWSQm/6lYLWmxxNWdVlds7N70HfwDpv/YEz7hKW5Kn26e8V54vXY88VT+iiOXMVx
         AwrJoqvZ/Ox/fU1JznPWBKgM+iIivhT7Iv8ndl32pUu3ywUDtUCc0V4uIthmnk3iQ6/r
         +EzbMC9/IRBuzJvb85boFmr/EDz7oMxNUQmCvaqGrUHUt5aWsnXeg82x0M4Vr2F9kkhB
         ZT6qlyz8Rr1R1ph8lgHwcWeQFhIBDjo/q3dGXBqo/eZ0domvews1iaEVLnjPIxi3rc/d
         McvQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=X9PGZbIN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by mx.google.com with ESMTPS id i7-20020adfefc7000000b002c70d5681d0si3504126wrp.731.2023.03.11.22.52.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2023 22:52:24 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7C79EB80B0C;
	Sun, 12 Mar 2023 06:52:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4737C4339B;
	Sun, 12 Mar 2023 06:52:22 +0000 (UTC)
Date: Sun, 12 Mar 2023 07:52:20 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Yaroslav Furman <yaro330@gmail.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v2] uas: Add US_FL_NO_REPORT_OPCODES for
 JMicron JMS583Gen 2
Message-ID: <ZA12pMgwA/8CguYd@kroah.com>
References: <7f670cac-aa36-4bb9-a2b1-4451e4e85fab@rowland.harvard.edu>
 <20230311171226.20353-1-yaro330@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20230311171226.20353-1-yaro330@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=X9PGZbIN;       spf=pass
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

On Sat, Mar 11, 2023 at 07:12:26PM +0200, Yaroslav Furman wrote:
> Just like other JMicron JMS5xx enclosures, it chokes on report-opcodes,
> let's avoid them.
> 
> Signed-off-by: Yaroslav Furman <yaro330@gmail.com>
> ---
>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index c7b763d6d102..1f8c9b16a0fb 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -111,6 +111,13 @@ UNUSUAL_DEV(0x152d, 0x0578, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_BROKEN_FUA),
>  
> +/* Reported by: Yaroslav Furman <yaro330@gmail.com> */
> +UNUSUAL_DEV(0x152d, 0x0583, 0x0000, 0x9999,
> +		"JMicron",
> +		"JMS583Gen 2",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_NO_REPORT_OPCODES),
> +
>  /* Reported-by: Thinh Nguyen <thinhn@synopsys.com> */
>  UNUSUAL_DEV(0x154b, 0xf00b, 0x0000, 0x9999,
>  		"PNY",
> -- 
> 2.39.2
> 

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/process/submitting-patches.rst for what
  needs to be done here to properly describe this.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ZA12pMgwA/8CguYd%40kroah.com.
