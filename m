Return-Path: <usb-storage+bncBD6LRVPZ6YGRBSNRXCMAMGQESUQUXWY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBDD5A65DE
	for <lists+usb-storage@lfdr.de>; Tue, 30 Aug 2022 16:03:55 +0200 (CEST)
Received: by mail-oo1-xc48.google.com with SMTP id g27-20020a4a251b000000b0044b32b51634sf5160188ooa.1
        for <lists+usb-storage@lfdr.de>; Tue, 30 Aug 2022 07:03:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661868233; cv=pass;
        d=google.com; s=arc-20160816;
        b=X2Z3qvXLEFW2/q/iDkH64pZtvGWZTFqcdgxbZXcACyOXIUyX4u9R2QJP/DEEuFuLRn
         LJ4yDUHm8seaGfYwPLkDGVsXOP4nBcJWYgw23x4mdyZ5bOkERthElEWP4M6nuBowvROY
         h8wObJOURWn1EcD/MRS2hU8WVusvMC+K/mU+TiYdl8ibxRmywHlybC6pJlDvKGOCiXIH
         EJJCi1NtQmRUVeOj+/3sppaMoY3pbj2+t1tSkr4bNmR6zoc/2oi7aP2zHc41iw4pk9tW
         S9iMG1zd/ND9ulZebBAc0MPswsmNN08WjJlLT3LjMVJKZVuX4bbTktgwHV1u2T3tqnWo
         nuaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3FMe5Z14GtAsGLjtgtVv8zKzblSzxnHsswx6wjjy+ms=;
        b=NfHofvpzGR5JtEE7UieSpMW4yTmJ23mGGXIkkzHbLzssXJs9ceOeg+Ir2kDPSW+nYC
         6JBGZ6LdnEn4Ak5GpMoZXLykg4bctbzx5qgjSOvuDeWrs1azFAPouJE67IigJACEZXEX
         nkGmwOs8E1zC11613MjQi+2mGYxgZJbAKgJacEV8vz5TNZ/QzVuPHABxkO+yHFClZ9y0
         Rsj8T20e44rzDbFEyixxd2xAfgXH7NpDIvlTWdBivFqspcwFILQrXS8PaCjtKWH4LF1j
         7N7nghdxdby6EpjAF+ExdjeqYdylAKcVy+mgmZCELBtcmge+OfWdGjl0HX7ffxvCpCCG
         AEQg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=3FMe5Z14GtAsGLjtgtVv8zKzblSzxnHsswx6wjjy+ms=;
        b=R9MefffhhAsWOgrbimIpbGth3uOd1bQx6gny7GH6RMoad2veMBu8dJFX+kjKMLE+68
         7JgKgUYrlNNGerwG7dN/1mJcOrxojvUV5/MInlp98QnhJCkoiu0St90x+17CCYe85usO
         sUO2KOWXhwwvdvI8TWrYT/pqXWzdz2RNo/bb4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=3FMe5Z14GtAsGLjtgtVv8zKzblSzxnHsswx6wjjy+ms=;
        b=sIAJCQWi+hO/CbjwMkyK7wr4gbId0zXVG1qyAEfCAlcVAnShANZv3H0ZtFL2elTRXa
         TJlg4GDZOTowwBuihgexjxBb8qOxmQJNLwmHBgoR8SwV/6hyPhqVBjiuEcwrurwttGgQ
         AXZVVQbl1EARTct7GIea6DC5AuDIz51IAUgG8hm5ZFAyIA0FFPamIj2zySlFiFgHUCs5
         vJ3C4ibeg6qyWkOt5qQ9Jyt7z0bwmIeJ/Z9V+l0+fNpIZyPcl56IBCpsT0hakbEzxGrO
         0m8SXC+gFkbjJhMQ2yMx8ctxqbqY9WQ3gGwhZXt3qsFV+Rq/78aG6x0u5WajcyKN2FR2
         Potw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo3w9M4VULnCv+1w1SQbJ+Oc7ufGqh493EbK8W9SQI3KeiQRz54+
	WJJMfdBkHFSPGzq6wmAMBjRNSQ==
X-Google-Smtp-Source: AA6agR49RR7CxQo0lOdZfDnNF9kyw9z460Q76jw1ZjBf78E2T1n7Pii7PYBzg/KmrnSld6MU1Ubp4Q==
X-Received: by 2002:a05:6870:a70f:b0:11e:4fd5:47c5 with SMTP id g15-20020a056870a70f00b0011e4fd547c5mr9885334oam.148.1661868233248;
        Tue, 30 Aug 2022 07:03:53 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:578a:0:b0:61c:4808:5adc with SMTP id q10-20020a9d578a000000b0061c48085adcls2013590oth.2.-pod-prod-gmail;
 Tue, 30 Aug 2022 07:03:48 -0700 (PDT)
X-Received: by 2002:a9d:4c92:0:b0:639:53b2:ee32 with SMTP id m18-20020a9d4c92000000b0063953b2ee32mr8784565otf.323.1661868228453;
        Tue, 30 Aug 2022 07:03:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661868228; cv=none;
        d=google.com; s=arc-20160816;
        b=TjXFpFRf0ghwE0XMi74gzxkC9L2DZf4MZV2rbMZZvjDAQeMz2hrEO6U8tfl2NJ+sYq
         QWNI7jFAmkPigPhmAPdogXRZOALUi/fk76McaNG/A9ORDPsEyE46RQ39y0uqZQj74uYw
         I2QMls1FDy1YJ/Oi75ScMNzlDl8xKI9tEn1T3A59dZXAbt/oL0O3LWZwclFxGVjpv0Bx
         Ww3l9bLzj5v8ZtCsp3TLwijdb2TP84g5FBWnG5lV6Ctef6it9Jg1MC+cdrp4OlVi6xW2
         uHzDsD52gu1FVvUXvngJjuwjCVmJZMgn7Vi8bL5/P6hvR2Gye6MJ65wKT7AQI3/HUQaq
         Kflg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=kangT8KzPCgxIlgXFnNX3fpDbNRTLNAcM8EPlEHl3lk=;
        b=SXdwV6A7JNy00dWbytzxGePOZ1EaRBqfVkZp+0fZX5XCFWgc4OFvY1anx6O3RtZ9o2
         lCczIey9iSBt/fzBnRJ9EvSld+pPDxQb9YgSRlCeqqRx7DPXpD1pNzsGTnI6pSaRAS7i
         JWG6YrmX0+GPeuF1KagCYzTRnNG7SXC1CJCZttfcSNrB5Y/1cyH+E/DkTrhsjiHKGKim
         mUKkEF2towTC6HZ44wE0fiHLa6tR59RElxwpBMn8syZCaaEL/tS2qvuh9IvXMZdG8i2S
         dawgQchNNjT1uguq35CZrYf4LoiKVEQIDOiJoNQU10Fh9YjjPY4SDiDysRAWP9colsA5
         2TkQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id f190-20020a1f1fc7000000b0037406204a8esi800347vkf.230.2022.08.30.07.03.48
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 30 Aug 2022 07:03:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 158045 invoked by uid 1000); 30 Aug 2022 10:03:47 -0400
Date: Tue, 30 Aug 2022 10:03:47 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Hu Xiaoying <huxiaoying@kylinos.cn>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-media@vger.kernel.org,
  devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
  Hu Xiaoying <huxiaoying@gmail.com>
Subject: [usb-storage] Re: [PATCH] usb: Improves USB2.0 write performance
Message-ID: <Yw4Yw5yXgybl9j6J@rowland.harvard.edu>
References: <20220830084325.752655-1-huxiaoying@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220830084325.752655-1-huxiaoying@kylinos.cn>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
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

On Tue, Aug 30, 2022 at 04:43:25PM +0800, Hu Xiaoying wrote:
> USB external storage device(0x0b05:1932), use gnome-disk-utility tools
> to test usb write  < 30MB/s. if does not to load module of uas for this device
> , can increase the write speed from 20MB/s to more than 40MB/s.
> 
> Signed-off-by: Hu Xiaoying <huxiaoying@gmail.com>

This email address "@gmail.com" is different from the address you used 
when you submitted the patch "@kylinos.cn".  The two addresses must be 
the same.

> ---

You should put here (just after the "---" line) a description of how 
this patch version is different from all the earlier versions.  Do that 
and submit it as [PATCH v4], and make sure you explain how it is 
different from versions 1, 2, and 3.

There are lots of examples of patches like this in the mailing list 
archives.  Look at some of them to see what they do.

Alan Stern

>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 4051c8cd0cd8..3925c7c67915 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -62,6 +62,13 @@ UNUSUAL_DEV(0x0984, 0x0301, 0x0128, 0x0128,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_IGNORE_UAS),
>  
> +/* Reported-by: Tom Hu <huxiaoying@gmail.com> */
> +UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x9999,
> +		"ASUS",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),
> +
>  /* Reported-by: David Webb <djw@noc.ac.uk> */
>  UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
>  		"Seagate",
> -- 
> 2.25.1
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Yw4Yw5yXgybl9j6J%40rowland.harvard.edu.
