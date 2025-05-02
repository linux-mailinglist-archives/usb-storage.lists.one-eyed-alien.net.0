Return-Path: <usb-storage+bncBCUJ7YGL3QFBBJO42HAAMGQEZ7MP2II@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3A4AA6B34
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 09:03:02 +0200 (CEST)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-47685de2945sf29901091cf.0
        for <lists+usb-storage@lfdr.de>; Fri, 02 May 2025 00:03:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746169382; cv=pass;
        d=google.com; s=arc-20240605;
        b=dJj3cHcTEHGO/1y8ieRv345+PY+Lvb6s5dTTmri2pM7QswaA/xHy+BO1+i2O8KQJGk
         BhSVWek87Celvc/pfrLk9P8GyWxIuePgwkjmSv3PUXyXBOYBLrXqfqzCWE373txnAZoP
         MnGRDkFfGYMl3EDEJPqVVszFExO3tLBEw1CyIy6tkJGyx9MjvX7SB0tdvGYHzJfZmbK1
         TPwR172m9alguInuUTY2R3oxjX3YCQougpXVCciTaJtqRWSIdWWMY/ZJnOx+Ndg9EdCV
         8FdHQH5Sv3xTiytdWu9XspxumxlUqD9GJYKolQLDXRvKD6TzY1kbXoTbwe2jGphSJxyY
         GjrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=iFHJY0WMgtY00msmtroDNivIr/gdu9bFypUhorxSnd4=;
        fh=KwWDyACwWOoBeSaRWfE8Ldwn/nchHO5rLqyz4+Ojf1g=;
        b=PdMKQiDoizqOSZ1x5nWMvelZAnrOeZ2K7h0p+ZwD0aupbRK39BvRL2CquYrcj0b8Z0
         jhaljLbhiyZnb/uawnoYDb6m9LQUzwrd1gL/sko/0iZvUTsrJjKQ1ROzRzzBfWhaoKau
         J0wXOzgu4UWZ92GtJZf+yj48qCaYSKXERVm1ACcOQCOaEhiYFLxOxoHgVik4y15sqsfn
         0XGKXnBxN57McsJb4XXMIuOx6Fog02aHy9W38wsYSR1THF8/1TdQjpAeHWqECyONzHlh
         T7Bq+xO47B/YCCWgA7bgPYtAqg15NyC88sKnY64qAMGUcybtpaqjzUzvGEqumi3laN3B
         Mz+g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=o1P8mEo9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746169382; x=1746774182; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iFHJY0WMgtY00msmtroDNivIr/gdu9bFypUhorxSnd4=;
        b=OJ95+EWzj8QKmLhjOpAagGnnXU8uzaNRkdTeSWMp6oKqS30MYyjXzPw8vZ04e1Xm30
         zKhhzu4Sr7fDypFsXdq0uu0ojHbC6kRTS/QRN4PAdCzj5kJmhNxekp/ARhK21KzCuBCc
         j0/zuHORpiDxRnrFHHOIMX3sUeUiH8e7hNXMg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746169382; x=1746774182;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iFHJY0WMgtY00msmtroDNivIr/gdu9bFypUhorxSnd4=;
        b=ZIug57k4oD6zs9GYNRuW4HO3Kth5iz4PnJZ9z3j+NlEVSOUjL8NXWu73475O8zhufm
         CbZ4vzpxNXHV9hDEkyIA/dTcvh9G8Q9sy3XtPd0osBY/eGzMvEtCGgXBMl7U2I2MSVqy
         vivwrwmPo8nU9dpQ2OL/E0RnfIrl0/yOMxIvqh3CtYuTXosghFzKS9WoDiKT5cI+9zIv
         22jnYxHQOyyO6M8GScqEFb5BF0swEK3NSWBYH2CfJzOWJOgoB+2AamqLZuCqZNM5EYvW
         F4QaFpQ5QjTef7RxBQIDAcRvwceTeVLlRRiqOWFd47su9EZDUTWOqTq3+xXlvX+gsGqw
         Aqyg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVBwz/Zsr0LMCJphcam2Vl7XeuIhtcMIj7TL3WppBoDP3SI9i8Bkm2X8vt9ZycUCmJ/OjoYWQ==@lfdr.de
X-Gm-Message-State: AOJu0Yx138m1zS940SPDqw+bvBeN10rESS8QIwGceH7qK88KISqVwsp/
	lng9/6X/4BhKKtTAWajAYgfgNwlgJjWsjCTGBn/O60yNu+M8qJzEvvkKOSSPuaM=
X-Google-Smtp-Source: AGHT+IGn+A52GCXc4tWIY5mBjAFmvkj06jLr6VabaPGZIJfYGQYn3XfLOkXeWoYI+VGj/6P7fB65DA==
X-Received: by 2002:a05:622a:5516:b0:476:8f90:b5b1 with SMTP id d75a77b69052e-48c31b1a7c0mr27682971cf.25.1746169381610;
        Fri, 02 May 2025 00:03:01 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBGAPZmkqdmTAIqzeYhI+AB1n2ERYKLpVMsqnYxCKlrk6w==
Received: by 2002:ac8:7d41:0:b0:476:6bc3:c758 with SMTP id d75a77b69052e-48ad5b168b2ls23828111cf.0.-pod-prod-05-us;
 Fri, 02 May 2025 00:03:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUgg6yei3zacVw3aJSV34fGDsR5GL/7VRykMWYEn3DI+1s3uRDge4s6hcrPoUHm14+KuiQUXINzp/D5fQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:1247:b0:476:c656:4e80 with SMTP id d75a77b69052e-48c32bc36d7mr32268881cf.34.1746169380857;
        Fri, 02 May 2025 00:03:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746169380; cv=none;
        d=google.com; s=arc-20240605;
        b=Wmee3Q6wplXIEvMYmwSMkRgmUtoqlClmi9eKja2nruG6dr21pfwMALurqgUAuRB4r1
         NWWPwGoXjZE1aBGuaaeZvRFPN4p+FzhuaeHuK6i+SCcBKMdyeBLZ3hSxeUsLXBkAiMXd
         vhJ2E0ZZRnCof7D/S8ixQo7/+067XD8+5n5pXcxCzf3pSV6Z3JD8OpJifa+rFeuAsJb8
         Tqi8PUsjKXqPDa9B7w68wfrwfUAPPgg+0SLdaDRQfsHVtnIx1ZHplEBiVc9eRqCXYoTK
         z8K1377Gwe3rm0kXZHueVyRqahtAKZU0ggi/Yl2//7FvKiYEKgMVdBAD65Z8o3WAMeCQ
         ReEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=H9Fer44mCNu4UjwlrBwztRIRC+E7O0/1jL+qwChJKyU=;
        fh=0R+8AxdUTLl6YBjQyj+jmnahoqhwPTUeb1IUEq5OMKk=;
        b=FArq7rI0gF7JvkRHf0URNhQJV/vEMGzk0Ay5yx+LE0o2unvvwVrDGitf3rpwLDBSTc
         BqaVLOelq2h92Xfd8ytRchKV661IL08yt24HaQhcK3FDQ+HNxfFvLrCyz8+3kI0rLHHj
         zW033Mpd6liwkqumyxhVcMSYkOT4BjAK44914C66GYO74B9fmpsdKSzZUZjNnvIVswo2
         X8JpoigeaSv26dXmXuqFWg5H/6pGdnHA0BBrT14EqZ+kTD3NJzrKjSSWtv8N8vSffKmQ
         crgT+EAxnEJspY1yB3mxtSDJaLdMZ/OKWnbZFHWz9dzE8YUZ2BWQhLCOtkd5CcREBQv9
         zWdQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=o1P8mEo9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [2604:1380:45d1:ec00::3])
        by mx.google.com with ESMTPS id d75a77b69052e-48b960cffaesi24237691cf.57.2025.05.02.00.03.00
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 00:03:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:45d1:ec00::3 as permitted sender) client-ip=2604:1380:45d1:ec00::3;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9B0DFA4B849;
	Fri,  2 May 2025 06:57:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB224C4CEE4;
	Fri,  2 May 2025 07:02:59 +0000 (UTC)
Date: Fri, 2 May 2025 09:02:57 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Alan Stern <stern@rowland.harvard.edu>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-block@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-mm@kvack.org
Subject: [usb-storage] Re: [PATCH 4/7] usb-storage: reject probe of device one
 non-DMA HCDs when using highmem
Message-ID: <2025050258-afraid-outweigh-e36c@gregkh>
References: <20250502064930.2981820-1-hch@lst.de>
 <20250502064930.2981820-5-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250502064930.2981820-5-hch@lst.de>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=o1P8mEo9;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Fri, May 02, 2025 at 07:49:21AM +0100, Christoph Hellwig wrote:
> usb-storage is the last user of the block layer bounce buffering now,
> and only uses it for HCDs that do not support DMA on highmem configs.
> 
> Remove this support and fail the probe so that the block layer bounce
> buffering can go away.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/usb/storage/usb.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> index d36f3b6992bb..49bbfe4610d5 100644
> --- a/drivers/usb/storage/usb.c
> +++ b/drivers/usb/storage/usb.c
> @@ -1057,12 +1057,15 @@ int usb_stor_probe1(struct us_data **pus,
>  
>  	/*
>  	 * Some USB host controllers can't do DMA; they have to use PIO.
> -	 * For such controllers we need to make sure the block layer sets
> -	 * up bounce buffers in addressable memory.
> +	 * We can't support these controllers on highmem systems as the
> +	 * usb-storage code lacks the code to kmap or bounce buffer.
>  	 */
> -	if (!hcd_uses_dma(bus_to_hcd(us->pusb_dev->bus)) ||
> -	    bus_to_hcd(us->pusb_dev->bus)->localmem_pool)
> -		host->no_highmem = true;
> +	if (IS_ENABLED(CONFIG_HIGHMEM) &&
> +	    (!hcd_uses_dma(bus_to_hcd(us->pusb_dev->bus)) ||
> +	     bus_to_hcd(us->pusb_dev->bus)->localmem_pool)) {
> +		dev_warn(&intf->dev, "USB Mass Storage device not support on this HCD\n");
> +		goto release;
> +	}
>  
>  	/* Get the unusual_devs entries and the descriptors */
>  	result = get_device_info(us, id, unusual_dev);
> @@ -1081,6 +1084,7 @@ int usb_stor_probe1(struct us_data **pus,
>  
>  BadDevice:
>  	usb_stor_dbg(us, "storage_probe() failed\n");
> +release:
>  	release_everything(us);
>  	return result;
>  }

Hopefully this pushes people to use UAS devices instead :)

Should be interesting to see the fall-out to see if there are actual
systems out there like this still.

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025050258-afraid-outweigh-e36c%40gregkh.
