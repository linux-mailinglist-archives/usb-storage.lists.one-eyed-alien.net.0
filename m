Return-Path: <usb-storage+bncBD64ZMV5YYBRBHEP4PAAMGQEF3HX7HY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 752E0AA9529
	for <lists+usb-storage@lfdr.de>; Mon,  5 May 2025 16:13:52 +0200 (CEST)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-6e8f4367446sf51147026d6.0
        for <lists+usb-storage@lfdr.de>; Mon, 05 May 2025 07:13:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746454429; cv=pass;
        d=google.com; s=arc-20240605;
        b=J9a2UPEk8w5ea0nF3qOItTVU0RYrKyMyK2tgpqEAifSHn4dR9AS3WboZJhEY8LbU6E
         quxXJLJXMqGkOf07OY+OuNCYnWALrnyXBloqRyVYr4iqcbCJa4SsSqZ/OcXzOKlvXUMB
         tpugxgLdZn3+Z12mChTUIFhkJL3vJBe8yfcr+wcM3T8UtCBmQZiDP3t1q1vGzVEii83o
         xUIz4+T/fsImEHe9CUvDtqGbCKLFZjj0jlGgKGelFvYqqb/eLnEcCw/JTkWUjMhv0dyh
         CpptJ+wXaOzXz8DwHOjxKduFcfVJIW3faPbmbUh7+TX7eMIyEfOwCwQrEOxxfRbdGpoW
         n+dQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PHygHNwsVgeh0rVwtym5ZogM1vvnFuj6FfAFSVQZjf4=;
        fh=3KfB9zfcJ9c5+fqBKi8iME/RoukDbUhBJJsNGUG23To=;
        b=K5SbJt+HSBDFaRSJav31soxrIZVrKLdv0sHQPh9ReU81twVfoAtyu+PoWTFr5qqlCa
         Lh+uTjmXfuagU3IZjhGIeZVzR5J71ZTc5Lo2sJ9+agRzealTgkBTK7EoEUvfBL1A4GKR
         Lz7zx7Lef0fAP1uF/ihhpxzZcJPq0gjHxbGiu+u+uYx0PN+AAQv4Z35jpKplL/FQXL8Q
         QP4EOZ9wT+VxvhbJp4VGH7pcbXIyYgfIc+3/Q84dXQCacJo4Flo0++VBO20vSUvPh0tf
         Wtzau5yqk+V7KOH3gU7bDGd12wzhEpWWVXiqeNtfrwec529OQNxnlVAKtEF9y+Zx8t4c
         GOfA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=YUuGLbmQ;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746454429; x=1747059229; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PHygHNwsVgeh0rVwtym5ZogM1vvnFuj6FfAFSVQZjf4=;
        b=OlvBpqxDvqgDE86lnrwlWFSNh8SbvgmWVAjf2SH4+Ix7BIzBrO9fhlfb5f7ChH9JKi
         r1TLrsc0PmyKZMnETls4Jm9fekWdb34q4UeVAWnRuCmaGO8gcEh09Js9SH+HsXwqR14I
         cl3D9h7B8RQV2N6vVaSCcNYAGC7WXFfTYL/bI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746454429; x=1747059229;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PHygHNwsVgeh0rVwtym5ZogM1vvnFuj6FfAFSVQZjf4=;
        b=gxxD60j98E0A+kZQfA+k56ZTd+sV1I6kaTucDf0Ql7xlE/WvbLqthvIEE6MkuGL3XH
         eYe6u+WwgNxj2i3kz0j4xyLZZFn8GEUWDRMhTDgzZfUVDi9jtU5kpteTArAbgOoBSRs2
         mV1Crum8b0Ik8wIbP+1d9a8z7Hw9WydFtxTxMYu6xwSwWy6I4DBQxgvYcBXdL58OZgn3
         06s+iyRmLUB0TjTCRYqdSBy/0zaK1JGE596Rw5yO3F1UXivFB5yN9UIegoxCvdgbF8bp
         U16H4R3MhH3T5I1ZGo7i1H33EGKAawYn8NHHPrPf4cn6ui/Yx0ADZvWAYKdQogPyg3RP
         yluw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWA4dXe58EbRmrADvdlIQw3zhLEnV8Bn5uBRNhPtXlDI61ZbgQuYSCGq9EzHoB5mAm796+Dvg==@lfdr.de
X-Gm-Message-State: AOJu0YxyKHQI6O8bXCfKGfErNkCRF4pdGPA45AZ28Kw300iYSvhdijn8
	hDpmZA4KIpSjZEDjKxa4f9SeJpnjM2VBx32dtiyQqljL66aGbhWS0JV68d0lccM=
X-Google-Smtp-Source: AGHT+IFoCJy4qQXDsdMNqO1yHMHLMxoISM3UbH4g+bdGRyA0OmxSwVv7ukzdgmHoTaFkJtqjCRl6IQ==
X-Received: by 2002:ad4:5c8a:0:b0:6ea:d604:9e49 with SMTP id 6a1803df08f44-6f528cf6206mr113854236d6.34.1746454429002;
        Mon, 05 May 2025 07:13:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBFqfuXhEl7bh0YN1jll7xJdxlxaSO+wnjTxlNj4Qd5TXw==
Received: by 2002:a0c:e5c7:0:b0:6e8:f2bd:66b1 with SMTP id 6a1803df08f44-6f508546980ls22808926d6.2.-pod-prod-08-us;
 Mon, 05 May 2025 07:13:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUK7JOch6a9efdVjlNhT6zLObQvENknyClJ/6SF5T5ikW8Z02+9IY7WyG7euFhPaYm2J95vm98OSKrIyQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:172b:b0:7c5:65ab:5001 with SMTP id af79cd13be357-7cae3aeab6bmr847633885a.39.1746454427542;
        Mon, 05 May 2025 07:13:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746454427; cv=none;
        d=google.com; s=arc-20240605;
        b=dw/c9A5uBTrzY02R9cQwMAX42VcNCB/jhb7obxkyfUU9KVpcfM76HTgzlHOr29hHNn
         yNSyEcrbBFn64luzjmnwqKh3jRGEmsxdCeEtpaVfocSl9tpdVvjBTwgkyGCNzLm/CDT3
         D/yZyqdgOXY2nLCYGcA3IxlPmOMO4JAQbLj66b6gKiaKtqq0f2AD6rYRowqRhDUvoLQ0
         veDjYpfXgwOwRUXOW7QVcg2+SiHsIQCajI4NO8oE+bzGP6q83VQCyeIB2Wd5lX3BLiKR
         r5NdnVvVeP/XaNLc+V8Ck+eCI6IE/muyPk3UiZrpC15JySFvy3UGGSie4K04JsTYK8XE
         +6PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Km2nNwCy9nfUMi5n8/eIW1Pg+DKWEU9DbSVEm6yXt90=;
        fh=Vf44gcr+u91wqWZOIZWW+dxpIzTysnMH1vZWxqPCZEM=;
        b=ScyZ2RDpvcjHHvfeOOQHvSLg4QAStADlRGJPPlvpUoz2k3EuMTlPsxNGHKwfGja+h6
         OU3+Z6c7KSXzgvgnNhA1Jd6HQDnOxzztcf9wBghAFG/0VGGabaIW6VbA9L3POsDxfu2I
         3A3sYeSxzOYeEqT1foTu7Zk+9IAwPsJr0eY71TO+Anl6ulXfNde58y8zicMdDrUlDzZA
         IsTvEZM9XYGq+igR7ndTpiKbNc6VU2ijm8p8O3zrNNCZEfev8rEuiTgA3NHKQnN90DHJ
         58lrLIdGRkJiQKqK+O4JLM9MWE6xHXTbe8Mo1XEZviFp5yW533Qmakw1OWavzsqV/ey4
         hBZQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=YUuGLbmQ;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-7cad243fb66sor402867985a.15.2025.05.05.07.13.47
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 05 May 2025 07:13:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUj/TAHRRnTCalpTdRni6tYUVA540yiHYJImCyJ8TbBZVPJf+XasmO5pqkt/SuEMjsn74ITgpdKEusRMg==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncszKB1eVDxaLdQ/o/hT8IVrH1ue+Yvxq3zJpOoalOrxAkKrU5yz2YT6hK4fl7i
	M2DCpJOuoQKaQ6pcdkCCFRwmovPGpicaomr2uTX/qHBKuj+hWfkhKx3/UNXYKI8vPexXtNzECJt
	XVgAPZxHrGvUAyYTJM+U7PErV9ic/4xvsODix61AwANMEOX1dWR6VS+5kPNWQv3QQMurJam7FwI
	0Ood1I285ILiCYF2MoEYLXMojvoFrVDD4dj7c8F3zSC+t6407HK73/yo/+cMcK4RmaLO+afG5bM
	oDqrUCDF2ja9oxT3mVIIFNw0Tnx5/+8Jd06/6320CjhSdqOlt9OMW8V7X04=
X-Received: by 2002:a05:620a:4884:b0:7ca:ca21:23d9 with SMTP id af79cd13be357-7cae3a88445mr1253233785a.7.1746454427156;
        Mon, 05 May 2025 07:13:47 -0700 (PDT)
Received: from rowland.harvard.edu ([140.247.181.15])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cad2146a3fsm574523185a.0.2025.05.05.07.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 07:13:46 -0700 (PDT)
Date: Mon, 5 May 2025 10:13:44 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-block@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-mm@kvack.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hannes Reinecke <hare@suse.de>
Subject: [usb-storage] Re: [PATCH 4/7] usb-storage: reject probe of device one
 non-DMA HCDs when using highmem
Message-ID: <f75fe6a2-b751-4839-b811-6eed2eecb177@rowland.harvard.edu>
References: <20250505081138.3435992-1-hch@lst.de>
 <20250505081138.3435992-5-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250505081138.3435992-5-hch@lst.de>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=YUuGLbmQ;
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

On Mon, May 05, 2025 at 10:11:23AM +0200, Christoph Hellwig wrote:
> usb-storage is the last user of the block layer bounce buffering now,
> and only uses it for HCDs that do not support DMA on highmem configs.
> 
> Remove this support and fail the probe so that the block layer bounce
> buffering can go away.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Reviewed-by: Hannes Reinecke <hare@suse.de>

Reviewed-by: Alan Stern <stern@rowland.harvard.edu>

> ---
>  drivers/usb/storage/usb.c | 20 ++++++++++++++------
>  1 file changed, 14 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> index d36f3b6992bb..152ee3376550 100644
> --- a/drivers/usb/storage/usb.c
> +++ b/drivers/usb/storage/usb.c
> @@ -1056,13 +1056,20 @@ int usb_stor_probe1(struct us_data **pus,
>  		goto BadDevice;
>  
>  	/*
> -	 * Some USB host controllers can't do DMA; they have to use PIO.
> -	 * For such controllers we need to make sure the block layer sets
> -	 * up bounce buffers in addressable memory.
> +	 * Some USB host controllers can't do DMA: They have to use PIO, or they
> +	 * have to use a small dedicated local memory area, or they have other
> +	 * restrictions on addressable memory.
> +	 *
> +	 * We can't support these controllers on highmem systems as we don't
> +	 * kmap or bounce buffer.
>  	 */
> -	if (!hcd_uses_dma(bus_to_hcd(us->pusb_dev->bus)) ||
> -	    bus_to_hcd(us->pusb_dev->bus)->localmem_pool)
> -		host->no_highmem = true;
> +	if (IS_ENABLED(CONFIG_HIGHMEM) &&
> +	    (!hcd_uses_dma(bus_to_hcd(us->pusb_dev->bus)) ||
> +	     bus_to_hcd(us->pusb_dev->bus)->localmem_pool)) {
> +		dev_warn(&intf->dev, "USB Mass Storage not supported on this host controller\n");
> +		result = -EINVAL;
> +		goto release;
> +	}
>  
>  	/* Get the unusual_devs entries and the descriptors */
>  	result = get_device_info(us, id, unusual_dev);
> @@ -1081,6 +1088,7 @@ int usb_stor_probe1(struct us_data **pus,
>  
>  BadDevice:
>  	usb_stor_dbg(us, "storage_probe() failed\n");
> +release:
>  	release_everything(us);
>  	return result;
>  }

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/f75fe6a2-b751-4839-b811-6eed2eecb177%40rowland.harvard.edu.
