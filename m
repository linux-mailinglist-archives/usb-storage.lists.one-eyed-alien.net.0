Return-Path: <usb-storage+bncBD6LRVPZ6YGRBZMNW6HAMGQEXRAFRRA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id 158E8481D42
	for <lists+usb-storage@lfdr.de>; Thu, 30 Dec 2021 15:49:11 +0100 (CET)
Received: by mail-qk1-x746.google.com with SMTP id bm33-20020a05620a19a100b0046f1b6f3526sf14254446qkb.21
        for <lists+usb-storage@lfdr.de>; Thu, 30 Dec 2021 06:49:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640875750; cv=pass;
        d=google.com; s=arc-20160816;
        b=yr6yV17UJqKbBUgfnMNsBBxARP3Ie6JZ94i5jsWtNVjCrlbnyY0l2GZVUtNln7Dl7X
         c8AAYevoZdFcfLOHJAZoq5pGcm9LhQ/PEkDUvQGa/aGwPn7iIw7yoQY0jzE1rlNERQ25
         LP5CyR1RwU+fEbPscSKmq52QJGxAQdZqiOR2fIRtLiVcVIB6WPuywUjhE8GXeWjG/x8d
         CiBj+pMzeOkqRuZRVqTSD4NrQ7X7T8xhUVE/qepob2PtUkCR1BVEpgAPWTZEbN7TPnG+
         fBZX+bxuqhNUD70QudDb3/gQN6kHWgj1pVRmOdD5kAHVqkE69NOJE5UdXhu+vxJ1MVLa
         c42w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tntMEqb2i0TMGxcHICqpYn3GkE7uhZcMZDQf2NV+UeY=;
        b=GlONtMvmLfzZ80zhR36CAAQxG3Ry49grgCiU8HxkSckgwCLFqLa9zPsti4ER0AvD9L
         w91smtjSm1PkAMDOEXXYTWwwjw6nL+h2TE+ksgQAt1UZ7BNI2P+jwRAot7+8xcmQwEV0
         9x5Q6VUWPtDWbYiuBjVeAc/5F4+kJ//mKveWCmBz/MaxC4bS4TPmorQ3ojcYaj4CMe0p
         y2mWiHeFhE50CWpZACQioK/G4vEZ0zXrvjH2tG+VeAO4nmvhoiHA0s1qLrOkSc5R2Nsg
         alQqmk3Gm08v+2R/2ym1TmfSuWx5GUh4Uy+u24eU+b6GvQ5lJ5mkjU2rd5jq4wS7oWYN
         YBGw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+61c4c1a2@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+61c4c1a2@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tntMEqb2i0TMGxcHICqpYn3GkE7uhZcMZDQf2NV+UeY=;
        b=MXPo10l2ecnyClgY2ycr2C7b5eOzkGsHFdPInZtEXgOhTYrbZt34KdWrhdPrOYJa3U
         gxpMfgp/YdurG5UU9FUxGNwse1ShS4OIdVmTSJ1gSpfErE5zhlLWDlUsZSFLuFRALZwN
         NMk6OX2uWc9FBc9SNc9m4KqCALzxX1kRl0xM4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tntMEqb2i0TMGxcHICqpYn3GkE7uhZcMZDQf2NV+UeY=;
        b=WRzUCuRbmTlD9Pz0NNxQY9mwOegkJqwdfRgGLQhxgO715vwNLd/sfvnK7qBFRpTaFk
         Arsp/zbPV61A2z7Ndg9nWcSh90EMr6jamB3TVoNbDguO81TAOMlhcF2CcRuoW4738XIx
         xQUV7asMjuIj4zbEoTHPA+hqqiJ9EmCuWQCeK34F+9OWGsA+VZdHGoBFDJSQJUJYrz56
         u7F/XM9zzCWI2AZuTaH10nFOr8f0xFgDG2s7HddsV5iDgcbVvisIJ0szqVZ+Y6U09t6i
         nGe+NFuPIwht+VhG8j86OAeNG0BSfQnXSFkOX0aLEM8equEIgfXGDplXWlXhzgkn7Q0i
         o/Ng==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531fP3k3uXR+7iJtj8mpRZWZGpkB1c/dJb70bnmBN8xvikZKxIwC
	aXj0rgX72q/OfYhKXtdesGk++w==
X-Google-Smtp-Source: ABdhPJwmkvHEQ8erGY90IOGG8ScryK1k0mUzz6Hd/Z9ph2J5stp2u6JzKjWcGET1vGNjp1Yh0k4JcQ==
X-Received: by 2002:a05:6214:224e:: with SMTP id c14mr814594qvc.84.1640875749719;
        Thu, 30 Dec 2021 06:49:09 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:292:: with SMTP id z18ls13012600qtw.2.gmail; Thu,
 30 Dec 2021 06:49:09 -0800 (PST)
X-Received: by 2002:a05:622a:1a83:: with SMTP id s3mr26979097qtc.497.1640875749085;
        Thu, 30 Dec 2021 06:49:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640875749; cv=none;
        d=google.com; s=arc-20160816;
        b=WsiJ/TVpM8jOWxUPOeKHP4M+k93YUEY4HS6YED+45eYk/mXELCJagxs87LGtRWcjGd
         kGSFTsxDj0mDSfPQVm3jEkmm8Ll4Nz77Zn38rr4aLu3Fj+sJRjra1h2oEt+DbYAM5Blk
         Lp0BJVNrqtKZ7UIWB8uBrAXv+6In+JXEzwpKs1LUQwMErtot+Xw3ULqff5Vn+ikGwEet
         lgZka3AvDMx3ja3phS1/zPYDZ79aeOazvDuCDppIkmy5k/Jy4ZX0txrF255SvLws4BSO
         dmPyUuiheKDS2jXKefxpqoLCGYYakXwjovVyWicXDaS/0wz49gEgQU9BWbwRVU+lkt+0
         6iKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=Yjfy9SLjY4afIxgKdw7e6TI9Ikx/mT1V9FFmmJ9BB/s=;
        b=Cgo410ztrjvwcOciBQh+6nF+y1z7LRePkJ9nS0LPCyfswibZ0RFKrVxV7c6VDQ6iJ9
         vO/4E+wMHZpqwhe7ADgxDIPPmKMQDwDAhjnWJFWcXDYcFANla9dUUymBwi3f8kjIjDKV
         3dznisrSL144Jktf7CDuB9uk0uJHi0teEqMkTlAc3JVUlwaxi1xARztL0b5rqyuPE7qj
         TFWrUyPGqxfC2Ol6iHPcpoEjj57cc2Aj90+Ja9MVfXg6m7evO5rVakDPgstQmwD/PEFT
         fSO2Ti6N/2Hef+ZHU8cnODb1f799uTfdoVk83l2PBX1OOr14/qjduXsTNiZ9pjbGXR/M
         pcOA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+61c4c1a2@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+61c4c1a2@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id c5si9759483qte.387.2021.12.30.06.49.08
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 30 Dec 2021 06:49:09 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+61c4c1a2@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 1112213 invoked by uid 1000); 30 Dec 2021 09:49:08 -0500
Date: Thu, 30 Dec 2021 09:49:08 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: cgel.zte@gmail.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-kernel@vger.kernel.org, luo penghao <luo.penghao@zte.com.cn>,
  Zeal Robot <zealci@zte.com.cn>
Subject: [usb-storage] Re: [PATCH linux] usb-storage: Remove redundant assignments
Message-ID: <Yc3G5KnDYxg2PfvP@rowland.harvard.edu>
References: <20211230063819.586428-1-luo.penghao@zte.com.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211230063819.586428-1-luo.penghao@zte.com.cn>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+61c4c1a2@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+61c4c1a2@netrider.rowland.org
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

On Thu, Dec 30, 2021 at 06:38:19AM +0000, cgel.zte@gmail.com wrote:
> From: luo penghao <luo.penghao@zte.com.cn>
> 
> The assignments in these two places will be overwritten, so they
> should be deleted.
> 
> The clang_analyzer complains as follows:
> 
> drivers/usb/storage/sierra_ms.c:
> 
> Value stored to 'retries' is never read
> Value stored to 'result' is never read
> 
> Reported-by: Zeal Robot <zealci@zte.com.cn>
> Signed-off-by: luo penghao <luo.penghao@zte.com.cn>
> ---

Acked-by: Alan Stern <stern@rowland.harvard.edu>

>  drivers/usb/storage/sierra_ms.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/usb/storage/sierra_ms.c b/drivers/usb/storage/sierra_ms.c
> index b9f78ef..0774ba2 100644
> --- a/drivers/usb/storage/sierra_ms.c
> +++ b/drivers/usb/storage/sierra_ms.c
> @@ -130,8 +130,6 @@ int sierra_ms_init(struct us_data *us)
>  	struct swoc_info *swocInfo;
>  	struct usb_device *udev;
>  
> -	retries = 3;
> -	result = 0;
>  	udev = us->pusb_dev;
>  
>  	/* Force Modem mode */
> -- 
> 2.15.2
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Yc3G5KnDYxg2PfvP%40rowland.harvard.edu.
