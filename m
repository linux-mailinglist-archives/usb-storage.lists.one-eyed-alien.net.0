Return-Path: <usb-storage+bncBCUJ7YGL3QFBBKE2XSZAMGQEEMZN2FY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B5B8CCF55
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 11:32:27 +0200 (CEST)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5aa2faa7115sf1952198eaf.2
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 02:32:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716456745; cv=pass;
        d=google.com; s=arc-20160816;
        b=a1Du2z9Ns89xPzhim5C+khS2OeCsO2YkawreGqZkt2MZtMmtGpHgMbfJg+YszY2Dro
         /3ENhryxSkA0s6fsnHyj+dm6gJNUDTcdt7Kn/3mevhYMjGwrtp6wNa7QcKvBmYDeiArm
         OiWz0zOlNd9BqaugtZQ2iVdVYsEXBKBQX02fkSCKUnq9H+/gwWuOLlOdLxn/nsFoDnwm
         GX8orO0HGqIR4WotezwIgQrVhgCp0WsGhW1pauOcOvcxn01g9YBpRZO4z3ZmziXd13F6
         mkJUmChQLqXhuJnRlrLa0iyF7WOZdC4qRmPPG1XVPUGCPOryXD66nLrNuqK6mCOx9uiK
         e5Eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ElefShfm3vo8IIBmsFPq9CFOliwh55HKvjUHzle5oD0=;
        fh=vYZFRmnEITLyQxujNjcHqGSIeXgFNIo7h4xTXfk2vJI=;
        b=C1rKiw38z+QaqHUaQ+u8nvPN0nBoGdSjcQVQk/rikp9g0g1mp/yKBErAxDRzewFtHt
         02etElQQxDxxqeSkEymPiqrst6eF8CM6hKO+d8y57CZFnKVj6sDJQLOWgyU+pfaEJV/6
         +2G7eNANy31IyMbqHmp+TEerCrjAA8UoUtz079yu0aJeTFcK+JwoHI95HTReNozhcyBT
         2/8ogOH3ui0a2VwZSdM+kOKtpO5f8CAT6cI53eKpfzWgn7fABEc5gvzfsm8g9b5rcC7k
         dCJ1ET+51Nm3oK9sO5Xz7vIrB+Sd0izCuVL0PttopZjo4DNqgj/xPqhBJwmuDGmP9uDQ
         O7YA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=dxujooKk;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716456745; x=1717061545; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ElefShfm3vo8IIBmsFPq9CFOliwh55HKvjUHzle5oD0=;
        b=RzkEfjDDr2zubky4vvT/R6ABsLWM9FsVx9c7e6DdXF3zIoaiAKujMtIKH/Ik5EN7Yq
         nnsEZpbMyDke2z5E2czLmIgm/d16g3JlIfg82iVOx9sxRXhFAP3X7FTAjOa/GReT1mYq
         CgYSIdnkZgOE+ASpyp+CkUJfEvlBp4HxPZ/6c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716456745; x=1717061545;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ElefShfm3vo8IIBmsFPq9CFOliwh55HKvjUHzle5oD0=;
        b=LuFOg0cwr0DS7FGGCRaSeKwJYL5KLUIkwEj19sF6yF1TDCoTWXGzwHeRBKY1mz4pJA
         5MkD0eTmeA1RZMmbSfNBnxrgDD2WSkrxoGCOPXs3c/Y2GmisFKEWOSBvpCkrYfbLnB+p
         4pIn22Vz7t61caE2mKRtcfbxVhUyiO6WNLNZYgICUwV3UfKIBCIgmzgGbXon0YremgiZ
         a5yHUZbfOCLnq95lyBrS1W+UDuC2KtCBkduo2o1f96OSHg0NJ9TM6jm4+Coxn4ADzdVG
         9fE0uQ7ja2j6CL5+gCgP9VxhPH6xXVH4uQZ0KPvKftBMWztBj05tsfm76hj2MKgto9Vn
         SuYg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUqZrhgy5CZQ76EgbWRZwY0sZvpbZN5VGPzKGmnkarLLN4qJvCf5LOSB7WFWIuckk6JHrT43l1A41/jbtKQ4JTJzgTZ0r2IvkbG
X-Gm-Message-State: AOJu0YzJHLfYDeUsINpOAQbrvwum24FH4k/mRpYBzzS8IA3iHG45woj/
	YnihtnbdmMH5pQkTDSH808cYyel50sqfI9BBWdkaRHLzDkUwOkNHmIlXIisR/Pc=
X-Google-Smtp-Source: AGHT+IElnmtHf466AnaNUNek5RzkEeqyB6KACer7tbDj2xroqZ7XWJDw+khjw6JfGU/McqkS8T4ToA==
X-Received: by 2002:a05:6820:160d:b0:5b5:3852:75c4 with SMTP id 006d021491bc7-5b6a3a14b22mr4497325eaf.5.1716456744794;
        Thu, 23 May 2024 02:32:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:16a6:b0:5af:6975:e41a with SMTP id
 006d021491bc7-5b82ab31191ls514641eaf.2.-pod-prod-01-us; Thu, 23 May 2024
 02:32:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVo9zqRvUCNhwdzX23weAgKwD5kpU8auMs7pjcyo1L1U3nzjqe8UV/75Gk5RJc+MyDYFbY4HszBd/A9RZTVNrAslAFMJvW0vu39TyJVXYd2Op7eejA=
X-Received: by 2002:a9d:7dd1:0:b0:6f0:4365:c43a with SMTP id 46e09a7af769-6f6661ec7d6mr4709791a34.9.1716456744058;
        Thu, 23 May 2024 02:32:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716456744; cv=none;
        d=google.com; s=arc-20160816;
        b=BdkWengrHhU9to3mdtFLX6P0q3aOUuf3Gc4l8eML/jWbcaOLLRNTGm+w/1LSPKyITp
         +yMa4WZKi/shOJFK5IjV+XhO261GgP9iYnfqjSfuSQR8/deJrzFS/dur6ylFRRx2f7MO
         GFkSUR5yYelu3p5zWzaHyYXdS/FyuYKZaqDMEf3wrFu4wlTBvonTdJL8t2PooZVZvYjP
         LvhjY8Hllzty8Ty3Pa1yo8lqzXEAnf5ad6ijdNJvaIqYEU7wfv0WLf4NizmTfAFUylMR
         W6i7hdEYJqcawNknvoJPrZuFTBfr5vNbjvWonSEnpGMlK583xvx7/mVTG88p9ySDAk8j
         ze8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZRZH0NlZmUF/AlF+eADLhpbrnyNBqm3kVtdK2+ASXg8=;
        fh=O/bTNhn8EPfL1d+9hdDmuy3NpGdjkdf2/kbT3Jj2cMk=;
        b=mf6l1wGvLsx5ekJnT/OTB0OpjGkdTxnXPRINa/kdtG+w1BsiXScLDWhGWH5Tv4f/gW
         UfbxoX/Ue/1k8uMi7qYacdFD+aICdJgiztP7wJKOjJ5d7aIu0Jij05AgHcI1kbmAC5T9
         DGdKJdmKqNQAUew+cpYs41/i+Znl6yC6KeOIaNYnubAzA2A1TPHunq/q4/mkF1m4EuNt
         1syDnCZtMbGrbezhaZl13wMMSA9VQmsVMrRs/pjZF9chh/EpyHX70jqcjV/7KPYItpsJ
         fJgkNyRsYjfyoA42HV0yXFHzk3656ZibTKvcbBGfq6Gxo3itQnbOxcvzIIj9F1E9hfDN
         nLnw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=dxujooKk;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 46e09a7af769-6f124b90280si6385075a34.116.2024.05.23.02.32.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 02:32:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8B16162CE1;
	Thu, 23 May 2024 09:32:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 061B2C3277B;
	Thu, 23 May 2024 09:32:22 +0000 (UTC)
Date: Thu, 23 May 2024 11:32:20 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Shichao Lai <shichaorai@gmail.com>
Cc: stern@rowland.harvard.edu, oneukum@suse.com, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	xingwei lee <xrivendell7@gmail.com>,
	yue sun <samsun1006219@gmail.com>
Subject: [usb-storage] Re: [PATCHv2] Check whether divisor is non-zero before division
Message-ID: <2024052359-clothes-plentiful-c320@gregkh>
References: <20240523092608.874986-1-shichaorai@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240523092608.874986-1-shichaorai@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=dxujooKk;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Thu, May 23, 2024 at 05:26:08PM +0800, Shichao Lai wrote:
> Since uzonesize may be zero, so judgements for non-zero are nessesary in both place.
> Previous check is moved out of loop, and one more check is added in alauda_write_lba.
> 
> Reported-by: xingwei lee <xrivendell7@gmail.com>
> Reported-by: yue sun <samsun1006219@gmail.com>
> Signed-off-by: Shichao Lai <shichaorai@gmail.com>
> ---
>  drivers/usb/storage/alauda.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
> index 115f05a6201a..a6e60ef5cb0d 100644
> --- a/drivers/usb/storage/alauda.c
> +++ b/drivers/usb/storage/alauda.c
> @@ -818,6 +818,8 @@ static int alauda_write_lba(struct us_data *us, u16 lba,
>  	unsigned int blocksize = MEDIA_INFO(us).blocksize;
>  	unsigned int lba_offset = lba % uzonesize;
>  	unsigned int new_pba_offset;
> +	if (!uzonesize)
> +		return USB_STOR_TRANSPORT_ERROR;
>  	unsigned int zone = lba / uzonesize;
>  
>  	alauda_ensure_map_for_zone(us, zone);
> @@ -923,6 +925,8 @@ static int alauda_read_data(struct us_data *us, unsigned long address,
>  	unsigned int uzonesize = MEDIA_INFO(us).uzonesize;
>  	struct scatterlist *sg;
>  	int result;
> +	if (!uzonesize)
> +		return USB_STOR_TRANSPORT_ERROR;
>  
>  	/*
>  	 * Since we only read in one block at a time, we have to create
> -- 
> 2.34.1
> 
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

- Your patch contains warnings and/or errors noticed by the
  scripts/checkpatch.pl tool.

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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024052359-clothes-plentiful-c320%40gregkh.
