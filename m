Return-Path: <usb-storage+bncBD64ZMV5YYBRBYUM2PAAMGQEY4V5XYQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x748.google.com (mail-qk1-x748.google.com [IPv6:2607:f8b0:4864:20::748])
	by mail.lfdr.de (Postfix) with ESMTPS id 35006AA7346
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 15:19:32 +0200 (CEST)
Received: by mail-qk1-x748.google.com with SMTP id af79cd13be357-7c5cd0f8961sf437295985a.1
        for <lists+usb-storage@lfdr.de>; Fri, 02 May 2025 06:19:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746191971; cv=pass;
        d=google.com; s=arc-20240605;
        b=CDwa7S675hhurOCQg5Caeu/Hjco7MtsO0citI31147/aaAdBqGC1FM/N7SZ7xqyFZW
         jC/778iO9/N5PRf/RlmCzSBNRYDb4xo1CXKCJsNMlZTEI7APT1mcNS9kOZMO09sLrFa5
         mMhBktmKQ1UlNY9lMXfVeSZlTRkuw1YsUHhls0QgmnyfSArAsRn0K2rygjE6AvQ7rqz8
         eWsOcE9WUu3ylpTZUHmJONsoyB9K149zC5gZYqSnZzr2rff4lxah15NDBLanl3s6mNSY
         PlFGMXd/Sl16crfZAAK2Dr4Co0k4fLDW5rB+9Y3KZS4Zqoi9cr6BR5ut4Op1SGK/s3GC
         synQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=p9Q0+NPSh5rAQNN1LzllTv3FoGa2Yuev3BSC4Cazc2Y=;
        fh=7zuz9Hp3eH8FVFf/cn97ESjUvislUXPTBANQPbHOJT0=;
        b=YcrHpnQN6G/gL3qzY82w0Zsks//aTp9esIElJupxcum59RRIE6TE2DFjm0D6K27Hy9
         8P/objK26XHK3d6Kec/bir5/mSlPm7pn0P8kPKhXlOrj7avFnyqN4hgRcCW9tViYQDAb
         Vw5VJvG6DGF1hjfo8V7RQGpYSSx8p4ICPM7zt+qpwWGxoP3WX6e5CHh8pLzCnHAGwe7N
         JcIwJ6l9R82LlE+TA9WX6NIN+6q2JsiOagOn30MNsa6Zl4ztem3UHUpSAQJ6YHSp9ywc
         s8I6yOahvEKajqtutjPdRPvsuJaa8Oo7v7+hYHzGBgYSnpOK11RCMa32aKh6sXmPxVDc
         dqQw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=jWsXtWdr;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746191971; x=1746796771; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p9Q0+NPSh5rAQNN1LzllTv3FoGa2Yuev3BSC4Cazc2Y=;
        b=aYKRHsIeDzF+LsgOaj+TKoXrgjXEz/+VI2zWKh8j8UkmQrGjK7tSkX+PEv8KLmNsBw
         7xbYpXfWMXqvQxAcNciSbk2GZp0cmI/1LE0n+a6uw/l6m2MMmSpXQKgiC6Epu8JAzW5U
         Si8EFAQ7aHad4U45JWjFNKIKqoZSJHOUxuq7o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746191971; x=1746796771;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p9Q0+NPSh5rAQNN1LzllTv3FoGa2Yuev3BSC4Cazc2Y=;
        b=nnslnf43N/0yVcT3MyKCXaaW93KU1XZTnSdV1fWPMW1O7aOArs8FPa49nQY8d7jIVr
         j88+2JZzIPvN93r1YHmxUPhHpM0vvX22i6XxajFBJfD3AyrS7zpcOY/VtbwGdltxKMEr
         BsdYKCyRLfP36fG+qEkAnydoXib4rbz9JjH4F9z/N5jZIsN3C9NvlkzIETd2OWyJIvy3
         xVdtODQO0clflayEImb6H2svaycYMWHg1lS9F2LnIAacAoZPmxVf55ICzxDzKS70WtLY
         Py8xS6n4ApCTryMpTyLTlegFtvoExlL9MTtJawkw5zPnY5w7qQVqOsYF5uNLZeOfqijU
         c2Mw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUZSgzXYwphajj4iCDps1ansrcS+iehecQq9uED7N+tQJyYoVSVZaubx8JN9PX21D1WrqCMQA==@lfdr.de
X-Gm-Message-State: AOJu0YxsC3rkOUNvDU3nwV27hCIuNQhO8ZU8brMaBbX1P+SZAxZfAZyz
	X97JbhnpziHoLgbihnL7bL6FfkikWo7Q7rCFLtYq0Cl4Y7LWaN6XUobr/gIm+oQ=
X-Google-Smtp-Source: AGHT+IHA5f+BmWZw9MezNMtKtQwICK7NF0HopgUYVs752N/UEiWw2SlvVh9rOj1lhHswOQeHNVrWbA==
X-Received: by 2002:a05:6214:528a:b0:6f4:f621:bc with SMTP id 6a1803df08f44-6f5155ec9b0mr49935636d6.33.1746191970707;
        Fri, 02 May 2025 06:19:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBFgrb/TW4zYxm00WoioKRg5iD8/rlXaKx6OWHQcx9o1mQ==
Received: by 2002:a05:6214:d4b:b0:6e8:f4cb:3021 with SMTP id
 6a1803df08f44-6f50850e943ls18539096d6.2.-pod-prod-09-us; Fri, 02 May 2025
 06:19:29 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV1GKTpPYNAEGkb2u8h0Ng+ubnNUJNqF+rD9r+OgOAw22MWeIPwhffj8nKt0jlmqpqRWUgPayiYe0HdxQ==@lists.one-eyed-alien.net
X-Received: by 2002:ad4:5cee:0:b0:6e8:9e9c:d20f with SMTP id 6a1803df08f44-6f51538dd01mr43048166d6.21.1746191969637;
        Fri, 02 May 2025 06:19:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746191969; cv=none;
        d=google.com; s=arc-20240605;
        b=iFF8YuL+bqoEZE/cqRdncuhB2iG7B1pIiq3VA6lb4kie3lBmaG8MTwLohYI59V3WeN
         O1ut3LIloXnsrmkoPNYW473dWIf1Gzt2dAccDEXhpn4kKXniYROpsX7/oOr4jB6TKj9n
         Toj8k+7at3xrTMmJ70or9bFxq1dpysnirKOF1gPH6z/wXKqJkBG+/TY5ds9CBYHzR4mF
         jS2RrUHSWVIw3oia8MtyvV6h6+QHRjE3CvhrIej0W1ZCGkcpsoZ8w+SsT4dIhRrWXdF5
         utgPeiaUYhcuqXiBobXthfxfD9aPEDmubtMa1vg76HjQzi3oDXv4f5poWtBxSb1kM6cm
         DTBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5WUJiFwz9tA1axHBomA0f5a1PzA/tnvyABxskYnOa/4=;
        fh=o5RZHsYpwDTrXqW3v2QWlkeMQJK1yvPxIuI3cqueZug=;
        b=fp4D2bOe5BzJx6th2F194qXbMqhSh3Azkq0+i8DM12m5bVGaojSkH0vs2vvlKDyzgK
         vr38gUYPRWo21WuLBj1kUj/6ZM0orIHJIAhbYkSJGVAoXQdS0hcKQpXd6tzcwoQk+2hV
         F6N1GT1582cBpy02K5Ph6PZBYGJZrDJ4MYLHcw8PsKhAsvAgSgH8ruh5Y0HlQ8xguk5W
         xj57JTWPWtj8tAoFGw0ZG8VGPgh0YrfOw6670XSlJjbxUi21ucw+y6q9Ce6ZXWkpGo9X
         ZEsmEDgcw6SK+rWDtAiIkTQ+7f20Cr18XtgZ36rYOQY+U1oEW6VOcZMC2Bm69I8DmMxf
         mtVA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=jWsXtWdr;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 6a1803df08f44-6f50f41fdc7sor22731366d6.4.2025.05.02.06.19.29
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 02 May 2025 06:19:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUJei+788RiRBNVms+X6qDjoBLQ7XV84TmbnkSN+SYrQXB2FJC0X+XDne91XMLgRkiUHZwsVz96DErGAQ==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncusSPQnk6UldHtkcwxvXFHhLytrr6tDiog9VDX7NVpz6EEOmL2rFiPhoBAmzDb
	Wf6Ik+JpfNA1lkSr/nqq7wJXYfAdFaOrKJghLpcYoadCL//YiPeplOU1N4bsSfwrMS4aOBz+xTV
	zMSPxe4TjjgWOcgUw6t7xO2TKwP0alkj9S9YJ5I0QFu0t7w048yxrkfftOryzEYTxeFj0tfVQkv
	Wq/fvOJIFti3AXzS2KrtHUEX60zLZACrnCGWKJsodygWAGGBXZNxZrJ5CszTfkf8Q/OLWXl/Op+
	ebhPjpyBhMw6i7Ty911B8xmCKaUXmX3vJDpfFzC0ug==
X-Received: by 2002:a05:6214:21eb:b0:6ec:f51f:30e9 with SMTP id 6a1803df08f44-6f515255abamr46140116d6.4.1746191969163;
        Fri, 02 May 2025 06:19:29 -0700 (PDT)
Received: from rowland.harvard.edu ([2601:19b:681:fd10::283f])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f50f3b0556sm18196596d6.17.2025.05.02.06.19.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 06:19:28 -0700 (PDT)
Date: Fri, 2 May 2025 09:19:25 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-block@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-mm@kvack.org
Subject: Re: [usb-storage] [PATCH 4/7] usb-storage: reject probe of device one
 non-DMA HCDs when using highmem
Message-ID: <34cb4621-5275-4c46-b652-01a4a708b4de@rowland.harvard.edu>
References: <20250502064930.2981820-1-hch@lst.de>
 <20250502064930.2981820-5-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250502064930.2981820-5-hch@lst.de>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=jWsXtWdr;
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

On Fri, May 02, 2025 at 07:49:21AM +0100, Christoph Hellwig wrote:
> usb-storage is the last user of the block layer bounce buffering now,
> and only uses it for HCDs that do not support DMA on highmem configs.
> 
> Remove this support and fail the probe so that the block layer bounce
> buffering can go away.

I'm not certain this reasoning is correct.  The code being changed is 
pretty old; it may be that the relevant HCDs now implement bounce 
buffering on their own.

However, the combination of USB mass storage with these restricted host 
controllers is probably pretty rare.

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

I'd like to see this part of the comment updated:

	 * Some USB host controllers can't do DMA: They have to use PIO,
	 * or they have to use a small dedicated local memory area, or 
	 * they have other restrictions on addressable memory.

That explains the reason for the check of hcd->localmem_pool.

> -	 * For such controllers we need to make sure the block layer sets
> -	 * up bounce buffers in addressable memory.
> +	 * We can't support these controllers on highmem systems as the
> +	 * usb-storage code lacks the code to kmap or bounce buffer.

This looks a little stange.  How about instead:

	... as we don't kmap or bounce buffers.

>  	 */
> -	if (!hcd_uses_dma(bus_to_hcd(us->pusb_dev->bus)) ||
> -	    bus_to_hcd(us->pusb_dev->bus)->localmem_pool)
> -		host->no_highmem = true;
> +	if (IS_ENABLED(CONFIG_HIGHMEM) &&
> +	    (!hcd_uses_dma(bus_to_hcd(us->pusb_dev->bus)) ||
> +	     bus_to_hcd(us->pusb_dev->bus)->localmem_pool)) {
> +		dev_warn(&intf->dev, "USB Mass Storage device not support on this HCD\n");

Please say "host controller" instead of "HCD", and delete "device"
(and say "supported" instead of "support").

More importantly, set result to a negative error value before returning 
so that it won't look like the probe succeeded.

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

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/34cb4621-5275-4c46-b652-01a4a708b4de%40rowland.harvard.edu.
