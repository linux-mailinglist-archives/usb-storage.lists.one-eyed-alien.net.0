Return-Path: <usb-storage+bncBD64ZMV5YYBRBJEI7LEAMGQEHXWFJKA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id DF418C71E8C
	for <lists+usb-storage@lfdr.de>; Thu, 20 Nov 2025 03:59:49 +0100 (CET)
Received: by mail-qt1-x845.google.com with SMTP id d75a77b69052e-4ed74e6c468sf5277671cf.3
        for <lists+usb-storage@lfdr.de>; Wed, 19 Nov 2025 18:59:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1763607589; cv=pass;
        d=google.com; s=arc-20240605;
        b=fs2E/IzLttyQ09JHPOY+JSwnFzdVfx0I6VgrCMLA1u+KOjFZXd5jMhCSBM2EkynNZE
         fTGhdWwpyqbxgyxoIscOswKIw+yUFjZOdiO8/sjGSJ31eoywWh+bZ8PHpEOvljonaaOt
         m/VUVVZ5wuQFF4dW9irDOtQKvUNlCQvyCl9ThDyIZ1o8DIHmdrGYYrtEEmOGMzH3eZIk
         8rH8eUzXHwKHFQtwb9k846oeXO5Epiklzn5cn4+9Ou4UrxCDQBDFUm/afDQLtFpEkY7H
         6ni9iDyYDLxH6wl8LCC4DMXm5kcdvXqaei12Nc0Hd5nO5B49KX4xZpLDJcxLzGNbxI3T
         73bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XrtEmqRAq3GLZjEp9AfmVxEhCJ+esWjucU5KY9lPPio=;
        fh=N+GcWcLBamEbtKE5PmFkiDi1VpXtxEXlKpoZY06cG8c=;
        b=WRDz+9uRdB7c0JPBjJ85S4HjOeFZXrW87gLI7OpCAs1tFWwp0twk05ComDohnCMbWB
         BJ+ZVM99Ljm8bOFQWm6FX8SMRykSZHUXDvsTEvwZv5yonRflt3EUrCFNt4jgAYtVbI3p
         UoeUKEH9yI+6dkfEGUzTSzt66lYBh7+kq0vvO2IzdRup0n4FhVU+oPmS/taNodEoMJAN
         volxiuFpD2TLwnHh/ixvJD5axYnp0j1WZLaSrfLqkPZKqYYy1AXtyid8BH/B2tHbl9/K
         fH1awtkUT3AOh/CwP1pJ+LAhCfFAn3ntZrevvsPiQMdl7/zm0WA+iE+9skzjikXbpHe+
         6HCg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=LZeoEO4n;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1763607589; x=1764212389; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XrtEmqRAq3GLZjEp9AfmVxEhCJ+esWjucU5KY9lPPio=;
        b=U+A1tGvMbHtSRlb89E24SvoH1KLb798vyI5nh8DPx5X5wJEbULGWaW2dcfYRjhLBiO
         kJVooOIlEOe8zB1HC3gMZw6gHJx8K9f5FTgwEnCCc+lGD2j8jOy7LxGWG+1l4kHQvDrE
         gxdgbQfnpuQ48eTHajlqHGGyr7dd+RsbXyGNM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763607589; x=1764212389;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-gg:x-beenthere:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XrtEmqRAq3GLZjEp9AfmVxEhCJ+esWjucU5KY9lPPio=;
        b=J3A80/Bwpu7/c8r275bymWFgWCPjeaMF7lnek/sjkF27NURUqOJjNpF+5+qPZA4f5E
         RnHuwm2uPQrWqeYq5H9r0u7ckL617Lb8NaAjbBKZMJd3VPCIhaJeDmf9ryiNzNiy89lw
         Ihg5t8BPWl7A22qWt5MuZBSr5zmFys3pDlmudPw7A4xA+2NQ1MBGlUepifhhfifO6PPP
         0coUSyocGftaiIGgSqtYaRTNp+Jj2brUpAW8OFZ8hS3qXDSKRUDoKpp/zM3m0Pr4hl+V
         0cN5v993P080XRXnrDkY7iUxRaEgNvnQlXTxP/KlsNZimr9+kgZx4MHvV9Rr9LePltP1
         6uPw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX8Ez7Pn6mAXM51jox1NFkqHF0lhOv3GtuyREZOKaByRjzy4Gmn9M0lIEc0JTOazTMTywaNpg==@lfdr.de
X-Gm-Message-State: AOJu0YyddpCNBzFeMzQbY4zuZdzDs3pYUOpVJAInb9DqFlicLs5jrv3p
	Vs/YBlkresepwe/ySrj5JirSDQ4cctnQXC2zftcyVy5MYOhTykB65z6Jr8fvxL8fsN4=
X-Google-Smtp-Source: AGHT+IFzucCYFlkCwOyKeyRZev/dLn+FFf0jMgkWgtmw/aJN6yPuHAEM/KnzWohrvEd5lsSJ+3z4QQ==
X-Received: by 2002:a05:622a:199d:b0:4ee:1365:ba71 with SMTP id d75a77b69052e-4ee49425448mr19727661cf.9.1763607588531;
        Wed, 19 Nov 2025 18:59:48 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+b6fePizDNvu4GJXLilfVAFUDuWIIp+1oCq1Xmg7vGrhQ=="
Received: by 2002:ac8:5d04:0:b0:4ee:1b36:aec4 with SMTP id d75a77b69052e-4ee48fab8a3ls8492461cf.0.-pod-prod-08-us;
 Wed, 19 Nov 2025 18:59:47 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXtkTg7XHDSGW3LcE97VCIklanvLhsHBKkWCS8SUw/9p/aOg5dWpDQqjy9Jwh365KHKguGabM+qyvUgzg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:1495:b0:4e7:2d8b:ce5f with SMTP id d75a77b69052e-4ee4948eef3mr24535691cf.36.1763607587514;
        Wed, 19 Nov 2025 18:59:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1763607587; cv=none;
        d=google.com; s=arc-20240605;
        b=WvQ7K9AarGHKPfCuoZCZD0iZ4h4utD2qj3hlq4KU/5ErF5/UEZtgO/8LHv3cFe8+fP
         44pCeNcjsVlJon7+/mwJfxbN2bLfQ/C8DqxIUEZtnIxRjnHvOlE341j060j7vhjMBL8c
         3LW5EdVMtTygHlDB861LpycKmnCtMs6cv+jwh7gwwgqbptdt4CIruuQMRcxHCoOPHioR
         2QFARo22fvZv0xq6tZ2XmGNyhZtH5LvAn21IXg0N/29+UQMrttoDDSEKPd9Kj6BO8UwU
         aQRJX7YMQYn5q2YNh0Prs1304FgFy2m/bWTueh7gwoqELBljo1WooUCtE2w2mfW6gVf7
         1UEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Hg5aoV0EVn/WBTa/GLeR89EBuuTKQBaW9rd0EBCvO1c=;
        fh=WamNQSbANv04wbGRngpg6idGx713IxvjzUjBdWRjOAg=;
        b=USdhR4me84vtPxm+lxFcq8zMD0iQfPNfexshHwrgHqPSeCRsQT0xREl139yW7jmWtK
         fY9BlCKbMEa1Vqt+P9/NimZnSqQEdVIll7rA9bGNJTHMIiqd6y6aaV5HQqFcwZdRiAcS
         MKBGZKhGY08Q0kuZvi7a0GstMQguqu+rilgoEet5JF9wR+0Vg3iT6lS8Gjvz/PXYA4ON
         6Di74sl62d24N8OqHmuJmcjSzm0reAjgTZtqW5BY6ilaRGG6reZtuEp4PnHOfqhTteKD
         BzJlPEJaGu0VNMSmexrVRN00LF5bQ90/yNhS/Fb/axVcHsP/lgTnOL5DIFJITInuSlhm
         vQXg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=LZeoEO4n;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d75a77b69052e-4ee48d3b3bfsor7248981cf.5.2025.11.19.18.59.47
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 19 Nov 2025 18:59:47 -0800 (PST)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXw3plh4SOvDLgt2O9E5xDBrJnSEmEJM+/yv8U8+Pumsl8nQ80XU76pFgXyOb40GQxr1Cl22AHql9D/AA==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGnctgAmC71bndRseOLKfC1WWNsFPmIevwBPE3/EqOSuVJHqdOu39O1xeg4cvIy9G
	56VIOkakWssibZKVJLYByORAxx+bDUsL+mz9lKatepY+Z+oX8RrR7Arm+PLeSUmsqhWK5OM6LM9
	/N06tc9jEkdM73jBHklFQjz2mLGPnbyCtb5DiwFGnOGHVcbxsHNJ34ZTioLRKWEwFhoZx/yJCvA
	PWCeZluzLhIxhpBogTf3/bGV7Mv5PBXmfWGPufVmmCjg6deW9IfQI4ShKJ6ciWCn/4BU8g6KB4f
	VhrZcf+L2pz3nFdBfl0xRFWUgTIF7hUgrnTfryeipRbAgLkpuivyvu6bay5yEbZWJNARy/vhyUF
	yqNDy3Ayl4GzuMNrhdelTRD7MYfXgSWrmFCcTJCFjLzf23iOZAzjcQeJ6dgTpJInKl8P/aZPyOx
	EG2WyqTDhdjFzw
X-Received: by 2002:ac8:7d53:0:b0:4ee:4512:4a24 with SMTP id d75a77b69052e-4ee4970ab4bmr25490311cf.72.1763607587087;
        Wed, 19 Nov 2025 18:59:47 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::7632])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8846e599ac9sm8674486d6.49.2025.11.19.18.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 18:59:46 -0800 (PST)
Date: Wed, 19 Nov 2025 21:59:42 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: david.laight.linux@gmail.com
Cc: linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [usb-storage] Re: [PATCH 28/44] drivers/usb/storage: use min()
 instead of min_t()
Message-ID: <4208129f-a768-44e2-843f-309c50ea362f@rowland.harvard.edu>
References: <20251119224140.8616-1-david.laight.linux@gmail.com>
 <20251119224140.8616-29-david.laight.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20251119224140.8616-29-david.laight.linux@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=LZeoEO4n;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
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

On Wed, Nov 19, 2025 at 10:41:24PM +0000, david.laight.linux@gmail.com wrote:
> From: David Laight <david.laight.linux@gmail.com>
> 
> min_t(unsigned int, a, b) casts an 'unsigned long' to 'unsigned int'.
> Use min(a, b) instead as it promotes any 'unsigned int' to 'unsigned long'
> and so cannot discard significant bits.
> 
> In this case the 'unsigned long' value is small enough that the result
> is ok.
> 
> Detected by an extra check added to min_t().

In fact, min_t(T, a, b) cannot go wrong as long as all the types are 
unsigned and at least one of a, b has type T or smaller.  Of course, in 
this situation there's no reason not to simply use min().  (And if both 
a and b have types larger than T, why would someone use min_t() like 
this in the first place?)

Regardless, the patch is fine with me.

Acked-by: Alan Stern <stern@rowland.harvard.edu>

Alan Stern

> Signed-off-by: David Laight <david.laight.linux@gmail.com>
> ---
>  drivers/usb/storage/protocol.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/storage/protocol.c b/drivers/usb/storage/protocol.c
> index 9033e505db7f..0cff54ad90fa 100644
> --- a/drivers/usb/storage/protocol.c
> +++ b/drivers/usb/storage/protocol.c
> @@ -139,8 +139,7 @@ unsigned int usb_stor_access_xfer_buf(unsigned char *buffer,
>  		return cnt;
>  
>  	while (sg_miter_next(&miter) && cnt < buflen) {
> -		unsigned int len = min_t(unsigned int, miter.length,
> -				buflen - cnt);
> +		unsigned int len = min(miter.length, buflen - cnt);
>  
>  		if (dir == FROM_XFER_BUF)
>  			memcpy(buffer + cnt, miter.addr, len);
> -- 
> 2.39.5
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/4208129f-a768-44e2-843f-309c50ea362f%40rowland.harvard.edu.
