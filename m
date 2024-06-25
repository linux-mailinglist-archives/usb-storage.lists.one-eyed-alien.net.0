Return-Path: <usb-storage+bncBD64ZMV5YYBRB7EP5OZQMGQELEAYILI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x345.google.com (mail-ot1-x345.google.com [IPv6:2607:f8b0:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3C591690E
	for <lists+usb-storage@lfdr.de>; Tue, 25 Jun 2024 15:37:02 +0200 (CEST)
Received: by mail-ot1-x345.google.com with SMTP id 46e09a7af769-700bbe9e5bbsf3960363a34.3
        for <lists+usb-storage@lfdr.de>; Tue, 25 Jun 2024 06:37:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719322621; cv=pass;
        d=google.com; s=arc-20160816;
        b=W3vhLAhh2zF0ElK0oRJdenRxrP1mRvTKoslhhybijPm7lPPR+ibLksVn8aPWChuMGH
         fNej+tdGldxj0iymO/ZnrVvfamY/DyBXgmbDzmUU2YJr5n0VyRmYFTnjVG38Pxtaou+v
         Eyaw77Ybn/zNA0VSHmFgumYUUJH8aiV1N2IZVTI3dCKtxIQ28QkcPEWKiKWZ2+1qKggw
         OppXOiv6fOIeqj3HujSzT9F0kSmkNHi09MB6eHXT7xcc0vialMcvDP1HgrW2haIpvdJG
         JMdSKxN0DaG5AoXrvgcrJNwb3gaZabYWhK1zvfHMV/CGYL6UWHOO3EPrDReJ3x0JbM9s
         SvRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=GaOKa+lzRpEi0JFYxFy42AtAmBJsCrqUGs7g8pMvvKk=;
        fh=1a+w0XhK7TfnGZuWy9N4p4FZrqfrYoeDcmbF2QhZQw4=;
        b=DGLzCf1LTPdMGEqmZ5bpZdUIF2tidVDN0h1V3CTP5xYzaxfKBSVFbP7aP5qtgkQXe9
         5y0Crx+iaiDy4YMvmNUYxZLs2IwoW9LU/FgM1JBkm4tNR97NCXLLsAmtuVRPvtVLE7F3
         9LlWYv7spKUKwGqB4Wzsd9eJNhxgRwdizsRNMmcjNvcMiw2VqkKjvT01JHNnhybfUcCh
         LBmLc0B2CJ/kbBKSKETGykD7m2GDX4pUUBvJs7qZeDQ+sFZEFWIdSoFkNly33dQIGHNi
         TRjURuA6nZ+wdtfTYnQZW8o7QObiCSlP2JixxLuKZEcddL6hvEQApcSR59WQytjghdJY
         2D7Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+666c43bc@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+666c43bc@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1719322621; x=1719927421; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GaOKa+lzRpEi0JFYxFy42AtAmBJsCrqUGs7g8pMvvKk=;
        b=WZvFGszZe11kdEosN32aeMi66YGp1278mR5uEDZ59htWjm8UoT0a3g6fnZwrNjnosW
         JSg7Jdfg4N8SuIIFk/dGEo7tKDbbAk0QluXL3YtlBsjib+8j9G4kiN0j6UQaAY64GR2L
         xlFGqNko2nBwHUhsmzqoqYEDDnH1sVWcLVj08=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719322621; x=1719927421;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GaOKa+lzRpEi0JFYxFy42AtAmBJsCrqUGs7g8pMvvKk=;
        b=TAX3SAPOFn1zQ6rv8NRy9UaMNoTfipjd42cf+jaEt1w59A82LsG9miCsfnVlpcj1MH
         cV2es8PLQJsXOdIDoWlTlFL6KXPhDnNxjvrWOZqVuy0XiF1x1EgjbIyugloD/d4s5du+
         AuOePfGKBZO1PeWX/GPStcO1OHQ6heWnjP53raSI0gZQTjVgifGt40bxbH9xUXbvO52w
         GJOIphZoD5GiGYT4/n9MgqCHfJDrASOJbTAoPLxSNJf9yTWseKWoa5RGsy6GjXvVo3rZ
         /UoccWUrpktVtoJYFpR/H3gafkcmLTRlze/DaDWDhpcQEcHZBz65XoDcJu3mfi+Ukphw
         sI0w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVj7u3+altut46csxi2P5MG9tAwn+T+C9GNaFzL3mjYXoXfgVuAi8SeyK913AoifU8J78ONSosmaddmT0vuTevOsk6SmGJ0npps
X-Gm-Message-State: AOJu0YwHgWywTGBaP8TO6OLln6X6FaKko5rvD68E4OGeZ0xOrrLBa9RP
	g5Q51LKsVGjcTHLzi0z/zZCMHC+1pJsla/XF4+6f3jWZiX1AIvvLmxkG1Dl8obI=
X-Google-Smtp-Source: AGHT+IFvN/kiCz+BvrZB2o6Y+GI1XV+u9JVEECo07TB5yno4NngcKTtTYNZtvwgVPT5UlpT49DzrHg==
X-Received: by 2002:a05:6808:23d1:b0:3d2:345:f64e with SMTP id 5614622812f47-3d5459678a3mr10250299b6e.13.1719322621129;
        Tue, 25 Jun 2024 06:37:01 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:57d0:0:b0:444:c8a7:4640 with SMTP id d75a77b69052e-444c8a74bc4ls56759021cf.2.-pod-prod-07-us;
 Tue, 25 Jun 2024 06:37:00 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUAxWF2Tt8+06v3Yl2AfmFFmc94N3BuXZBNg9okL2UMH7xGu4Qd5IL5JTl1BDjmi/gpEOwn4i6VEaUIltmwQR047J1WwK/SHSF1HGAPrLvq5pdAl6o=
X-Received: by 2002:a05:622a:d1:b0:440:607a:dcb with SMTP id d75a77b69052e-444d91bdc60mr83443601cf.29.1719322620090;
        Tue, 25 Jun 2024 06:37:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719322620; cv=none;
        d=google.com; s=arc-20160816;
        b=1GeeCPpHji5VYt6MYYNT9RdlJpGXzWdmlPMV8/Ry/FM/49JT/zfeT8qfMNdH9hPrqA
         MdCwlAtC1dtrjh3VPJlVKkzv5PsL/H3zEZNlCe3lz/AYQk9zeYhE/GhTDpcSiUefetda
         1EaHqw3UlHcwH+hP8jlwskn0/rsBknSB0BqaoOzBqlC4LKZJejh6AqjvK3eRbSyCOzRN
         KxQb2mUNWNgah3jVwodqtkD6LckHqzovwMDs6KwduPbU1upT5+BFnPx8B1LG4Qn3y8+Q
         d28Ab0fwYxVTGnQGXrIJVWYc6DuBK/qFcf/fsJblUhe8RwWAjAeDFQRv7nPbHLl+g2U6
         Vv8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=UqGmpfpDhkwoPHwvtHduqfyYutR/88u9QcIKeYCQrYA=;
        fh=sbX/XBp/tg1Teomg2Nmqnrs2vTQ5ldPZlmIXUzjT8pw=;
        b=PvMSKTiIKvcygvy9i+WjBcetyx/3uREJQNde6sLjQyoiXsggFGE7nmIZf+Ckx3TAHq
         2rXYv1FkDdhQLyxn6plrC8KrszZ/aTZwFi5MACJG1wzGQtCuAOrX4aTXrXZYZb7x6o7T
         Fn3bSrFI6LNwPlidwv5VKwNnL0A9sJMOWclDMPnNqp/c3DGHMPX+wKR5jDp0EEQd1fN0
         Bl6YGCvIqKBovDekqYvkWpxSX/KAOYaxcBvA65MHez9SfozQegKA+7LsGEfHz9CUaiuR
         pSypvYI9OdScuKNmBhLnwuCNmGLjc5X+Vr/KHkthsPhiVgnraVWxakMdhS+klMpU1kmq
         TVDA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+666c43bc@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+666c43bc@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id d75a77b69052e-444fbcf39fesi8156411cf.767.2024.06.25.06.36.59
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 25 Jun 2024 06:37:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+666c43bc@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 664288 invoked by uid 1000); 25 Jun 2024 09:36:59 -0400
Date: Tue, 25 Jun 2024 09:36:59 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: tuhaowen <tuhaowen@uniontech.com>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
  wangyuli@uniontech.com
Subject: [usb-storage] Re: [PATCH] drv/usb: Fix the issue with Realtek USB
 wireless adapter AC650
Message-ID: <83fd1171-5397-40ea-b9e3-54cba073c09a@rowland.harvard.edu>
References: <20240625070724.22044-1-tuhaowen@uniontech.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240625070724.22044-1-tuhaowen@uniontech.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+666c43bc@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+666c43bc@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Tue, Jun 25, 2024 at 03:07:24PM +0800, tuhaowen wrote:
> Due to the dual-mode functionality of the Realtek USB wireless
> adapter AC650, it initially presents itself as a flash drive
> before the driver is installed.

Does this flash-drive mode have a real purpose?  For instance, can 
people upload new firmware by writing it to the flash drive?  I can't 
imagine that the manufacturer would have implemented the dual-mode 
functionality for no reason at all.

> In Linux, multi-state devices are recognized as storage devices
> on startup because the driver has not yet been loaded.
> 
> As a result, the AC650 is identified as a DISK device at boot,
> preventing the use of its WLAN mode. The issue can only be
> resolved by unplugging and replugging the adapter.

If there's no way to resolve this issue other than by unplugging and 
replugging the adapter, how can a patch help?

Are you sure that the problem can't be solved by a userspace helper, 
such as the usbmodeswitch program?

Alan Stern

> Signed-off-by: tuhaowen <tuhaowen@uniontech.com>
> ---
>  drivers/usb/storage/unusual_devs.h | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
> index fd68204374f2..f660d3e52436 100644
> --- a/drivers/usb/storage/unusual_devs.h
> +++ b/drivers/usb/storage/unusual_devs.h
> @@ -1487,6 +1487,12 @@ UNUSUAL_DEV( 0x0bc2, 0x3332, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_NO_WP_DETECT ),
>  
> +UNUSUAL_DEV(0x0bda, 0x1a2b, 0x0000, 0x9999,
> +		"Realtek",
> +		"USB Network Device",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_DEVICE),
> +
>  UNUSUAL_DEV(  0x0d49, 0x7310, 0x0000, 0x9999,
>  		"Maxtor",
>  		"USB to SATA",
> -- 
> 2.20.1
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/83fd1171-5397-40ea-b9e3-54cba073c09a%40rowland.harvard.edu.
