Return-Path: <usb-storage+bncBD6LRVPZ6YGRBSUYW36QKGQESOLQ6LY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x147.google.com (mail-il1-x147.google.com [IPv6:2607:f8b0:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C012B0DF0
	for <lists+usb-storage@lfdr.de>; Thu, 12 Nov 2020 20:26:04 +0100 (CET)
Received: by mail-il1-x147.google.com with SMTP id l8sf4751979ilf.10
        for <lists+usb-storage@lfdr.de>; Thu, 12 Nov 2020 11:26:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605209163; cv=pass;
        d=google.com; s=arc-20160816;
        b=lxd+g0tc/1t7qcbVmh1WXI2ZQJSO1hPr7HNzC6xZDgfULih+7y8arbiVQ3/RETQ/6F
         7fmi7tEx2EAfj7W7nU8qpHt13oaNMLjGafyPLRZykaIjFRR0KSQzW4VypuQssXDWMLuS
         PY2RuSe+KYbzEs/dclZHa181tWu70rQnrSpmNOSUBPV8dFV/C3IWer9iUusLWKWGBnM3
         tGkzNroeaatFemDwK4SQNQV2CwYDNj0lfdOibqcUCAHoaOzl8DEKYPca50hAEMFuxfmV
         NCNmoqKOH52rvVW7AkfFksBw4VIyiME9ZpbcmVNOxkmtWPnSWxgY0I+mSET0ebtu75EB
         zC1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=mCr022cm4ylMrpZJuNN1kH/EsNP/Oo4m2EE6ZR0swfk=;
        b=opkYpf3nelsQJXnLORjYNo3/Zhq/J3evsRtg6oG6OvXOqrUVkeZS3yA3bpGYTtYLZN
         Vx1ZsvOxsDmpma2VDWOAibjLCgRW9h+lWLUjYtnuOmwHMWGzZSZSzaotKuIqIYJjQdvh
         7bzdgM0Ok2mWUTUplvs49k7YJE3VKEbS7klqSkyYo2fclfz6ddMhQpWcB56BwZLZvmIU
         5//xPHECs4/2n5nwdI9ctLrImP82JtnQttsUFLy2j/hilf3ATya1atFs5SXX90YwJbIr
         00aKUKcg2IXgj1LO9AdUevu4Ft+SeWstH1NqLv2cSWh+JY/uVWSX7aBwin+4vX1ypjTJ
         1iDQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5faeb4f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5faeb4f6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mCr022cm4ylMrpZJuNN1kH/EsNP/Oo4m2EE6ZR0swfk=;
        b=G5tvteZsXif+u575CsuupnmUX3LgzNFJI9DzGLao/ZqYjciWqfqZN4ZZtdnUZelpML
         2grhbdmzsRYn/XYofQcDaR7IQvnxCzGXiH3JGxNnKlTa0eNjG3J/LD7tegu17hMi1WmM
         JyJ36DKbZPnJiyDNYhFk5t5AJmOyAtv9J1h4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mCr022cm4ylMrpZJuNN1kH/EsNP/Oo4m2EE6ZR0swfk=;
        b=NOnnprSXpmrZ1CkBw3UB2h0g6sCHnLwLLDAD20UTsH6HeK7ov4BM23g57yroUnizwF
         Uypd2pkdPXmUtIvRJm7/KhzAtaHR4xUK8R3dX2QjFFHvJ76vw9BgDoqklXX6R/w7Nk6e
         xIYvY8fUhggn4e8tNpLSsTns4vqOS7yD4+dMuZFTKa6yby/QuoNDoqY9mB8srmw/YxCX
         gq8p1+H6nbHaEscHtZxxqzk/fyFJHtrvUQO9fzdHpqTzBHZF5N/9yNrvVJB7828eyQte
         T8gXc2UulD8kfpWTKS9uFLgJb8TfM1RwqQQIzfD8zOyXRi35bGItuaRlwgwDgwMq1MV4
         IM7A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530KhSsB0gNPJvJysW+1FC7S3kAFPbwb8SEKKv629i0HaiJZnU4h
	UVHRZRmLQitRwGOfj62UXDcM9w==
X-Google-Smtp-Source: ABdhPJzLTunEoGem6TcRKaBxI0la5SDhQBLnVrICk7JTYPnPuVgy7hICvP31fy7bhAMThz8DeXRfUA==
X-Received: by 2002:a05:6e02:926:: with SMTP id o6mr855568ilt.287.1605209162837;
        Thu, 12 Nov 2020 11:26:02 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5e:8408:: with SMTP id h8ls613813ioj.3.gmail; Thu, 12 Nov
 2020 11:26:02 -0800 (PST)
X-Received: by 2002:a5d:9c02:: with SMTP id 2mr558294ioe.28.1605209162290;
        Thu, 12 Nov 2020 11:26:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605209162; cv=none;
        d=google.com; s=arc-20160816;
        b=KlRIQ3Cwy9zwpHzChBA88Gofm1bYdlNwM4EWYCyYSSXAJ3YCrrcu0vbDRAkw1p8pi5
         a+IIudDG6g1aVYHzKPXMgL/j0M/q2hEQHkV+LeeKj9SNGuDmbrIQCBNfxWIvawoZD4mN
         4SIzIBY9sd0lh3GC0SkSLteM7VS9xLDQV8PNkISVqhixgZ591KJCYLKq3D3iXPSz101Z
         +Nd/QVhLPW44cKERchVVUHCJPmcIW8x66nXxrHprCbr0RLggwX8PW8o9n2s/F4OVHw57
         p8I/Q63bzXCIIBIg0LsnxeKUMs63Fj8PwVxntN4uNSkimwEV2PhEVM9I81sxr9NwVYMl
         6Btg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Rdy1HIIhGEUurHnR87FqyXG6Mnurn4ZmLQ52Bb4Vilo=;
        b=hKAlav0k3k+mFaHzMXg+gn00YSpmMpxHJxpf9o+2+wZ9VRpZslUbCKxKqbi1C5wyz/
         oPjSW3PCfzEhyqOiSrFaTLErooQSXyiIHO2lXKkF8oEtjZQEQ00OMGuaY6xoAQIT6z4l
         jwjn+Fq9ln2PtUctuF5kSY30U6wqKkOWz4bgcsFsq16hf9KogpYJaaFkn/fkQC/kEZ0V
         m1oA+lwYpwy/gD+7YD0rhHEjZQGbUX/k89g9H9fjGmJap6NqtFxVhPrXq2Dqv4h2u11W
         QVEs3+fPAHl6HqngsASyt/PIP6OTO78hWgpOEGdyTkcF0v4PrzJix2dPm6ZWUQrbzmAx
         fM/g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5faeb4f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5faeb4f6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id l13si3752516jad.34.2020.11.12.11.26.02
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 12 Nov 2020 11:26:02 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+5faeb4f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 288115 invoked by uid 1000); 12 Nov 2020 14:26:01 -0500
Date: Thu, 12 Nov 2020 14:26:01 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  Tom Rix <trix@redhat.com>, Nathan Chancellor <natechancellor@gmail.com>,
  Nick Desaulniers <ndesaulniers@google.com>,
  clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
  linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] USB: storage: avoid use of uninitialized
 values in error path
Message-ID: <20201112192601.GC287229@rowland.harvard.edu>
References: <20201112191255.13372-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201112191255.13372-1-lukas.bulwahn@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5faeb4f6@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+5faeb4f6@netrider.rowland.org
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

On Thu, Nov 12, 2020 at 08:12:55PM +0100, Lukas Bulwahn wrote:
> When usb_stor_bulk_transfer_sglist() returns with USB_STOR_XFER_ERROR, it
> returns without writing to its parameter *act_len.
> 
> Further, the two callers of usb_stor_bulk_transfer_sglist():
> 
>     usb_stor_bulk_srb() and
>     usb_stor_bulk_transfer_sg(),
> 
> use the passed variable partial without checking the return value. Hence,
> the uninitialized value of partial is then used in the further execution
> of those two functions.
> 
> Clang-analyzer detects this potential control and data flow and warns:
> 
>   drivers/usb/storage/transport.c:469:40:
>     warning: The right operand of '-' is a garbage value
>     [clang-analyzer-core.UndefinedBinaryOperatorResult]
>           scsi_set_resid(srb, scsi_bufflen(srb) - partial);
>                                                 ^
> 
>   drivers/usb/storage/transport.c:495:15:
>     warning: Assigned value is garbage or undefined
>     [clang-analyzer-core.uninitialized.Assign]
>                   length_left -= partial;
>                               ^
> 
> When a transfer error occurs, the *act_len value is probably ignored by the
> higher layers. But it won't hurt to set it to a valid number, just in case.
> 
> For the two early-return paths in usb_stor_bulk_transfer_sglist(), the
> amount of data transferred is 0.  So if act_len is not NULL, set *act_len
> to 0 in those paths. That makes clang-analyzer happy.
> 
> Proposal was discussed in this mail thread:
> 
> Link: https://lore.kernel.org/linux-usb/alpine.DEB.2.21.2011112146110.13119@felia/
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> applies cleanly on current master and next-20201112
> 
> I did some basic compile testing...
> 
> Alan, Greg, please pick this minor non-urgent clean-up patch.
> 
>  drivers/usb/storage/transport.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
> index 238a8088e17f..5eb895b19c55 100644
> --- a/drivers/usb/storage/transport.c
> +++ b/drivers/usb/storage/transport.c
> @@ -416,7 +416,7 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
>  
>  	/* don't submit s-g requests during abort processing */
>  	if (test_bit(US_FLIDX_ABORTING, &us->dflags))
> -		return USB_STOR_XFER_ERROR;
> +		goto usb_stor_xfer_error;
>  
>  	/* initialize the scatter-gather request block */
>  	usb_stor_dbg(us, "xfer %u bytes, %d entries\n", length, num_sg);
> @@ -424,7 +424,7 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
>  			sg, num_sg, length, GFP_NOIO);
>  	if (result) {
>  		usb_stor_dbg(us, "usb_sg_init returned %d\n", result);
> -		return USB_STOR_XFER_ERROR;
> +		goto usb_stor_xfer_error;
>  	}
>  
>  	/*
> @@ -452,6 +452,11 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
>  		*act_len = us->current_sg.bytes;
>  	return interpret_urb_result(us, pipe, length, result,
>  			us->current_sg.bytes);
> +
> +usb_stor_xfer_error:
> +	if (act_len)
> +		*act_len = 0;
> +	return USB_STOR_XFER_ERROR;
>  }
>  
>  /*

Acked-by: Alan Stern <stern@rowland.harvard.edu>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201112192601.GC287229%40rowland.harvard.edu.
