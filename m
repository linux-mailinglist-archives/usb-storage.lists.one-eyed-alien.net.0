Return-Path: <usb-storage+bncBD6LRVPZ6YGRBMPG6WPAMGQEYXZUNOQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x147.google.com (mail-il1-x147.google.com [IPv6:2607:f8b0:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D36968A3CA
	for <lists+usb-storage@lfdr.de>; Fri,  3 Feb 2023 21:48:50 +0100 (CET)
Received: by mail-il1-x147.google.com with SMTP id b16-20020a92ce10000000b003125834f6a5sf4034090ilo.3
        for <lists+usb-storage@lfdr.de>; Fri, 03 Feb 2023 12:48:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675457329; cv=pass;
        d=google.com; s=arc-20160816;
        b=YFmFlGfzRoXuBS27vy6GHmUXx6D53x07oZSnQkWqx00QbDa7c55izg7ge4ja313pq/
         0iiv2eq10JUEAtfbG8HxpKjz9rcOR7vnfcCFmpw7FbAdHHXFFrpDqTVIh88SW7izbHEp
         em7iaUw2FLnYMAQyngZEcSXLUU2WjzP9bZow5B5g6AIUke2BkO3vF9K2eDy+cHw2vuaz
         1VHivF4EVlXNsOaKt6wqN0rPPTsxE5KM41gVOURBPlCU5GswUY3Jb9FjTVuEdkQv7ht5
         KObmdwtMWtm4DXpsBhTPquBA4hz0BL2TK+c7DMKIsgcf0XGOlrT8gjIWmqZzSVgBl9VJ
         R8eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vL2ceyunCsCxvm1dEPEYgRiPd+gpmpW4E1BYLNE+XXc=;
        b=sVwc6n13e56PaK0f0+25DwTz/EDYBCO5H0z41u8WHiKn1hWN/DI9fo7DylOB1sdKAk
         hUElwIswloxCwhgajjZwwx6n+0wBcbNWIuMn0lSepD45OiTTHWSqyre3irMKG4p2a/Sn
         s6KvPWmY+gCo+HN1k+C9qf29m7Xv1csvnLFy7nRXJv3gUb/Ljt0XBC9DKTFMq47fz0ZL
         dmr7n8KMCl93imHrW+3VOEYJqfhCAo2RaKeNn5U1nuXi0DA3CJZdoKhOrUBfGsIYcIZp
         aGVNC+ZxJQIEVcQTNn7BypUk8gHk2KlMtdJDEjEXU+96e4b+IcQxUJRta/uqKoyCQ2P4
         ZZXg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+63d53cf2@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+63d53cf2@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vL2ceyunCsCxvm1dEPEYgRiPd+gpmpW4E1BYLNE+XXc=;
        b=GakGhVE3tXk2HZejTSy16lX10G8Gen2dsLa+6+laDJ1Es8JcXr+zAwhIUMtuB5xOE1
         co1ITSdslTaI7yiDP2ZnSS3Q+2bsXMzhn7BnCcaMpwLv/685nEEJE3xeMGXzNipFEYnz
         2v9OplZFp4aOO6U7AnPlNHgwav3L1/bVyP4LY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vL2ceyunCsCxvm1dEPEYgRiPd+gpmpW4E1BYLNE+XXc=;
        b=G4PK1e3xKHV/bXyjEJRp4n8RcZ8fJ9mpwszKauddmXG2/fQkG/xarApy0axTU6pUEO
         wWfGFNxUhfvRTNPPXERFXF4tCl6RK7qMmncWr0/SBVOxGX5khEn5Fq+uI3JkJiozjHwF
         S7DF25mUgsGCDN/RpK6zeHXvIhPGJX6O+ALoTQqfs4T1M+DdjtP516wLlVrzETGfrjaR
         uPRHAjQ1ldSHWr4Il4sjW049TILsF/OBS2zjJYClXgxy/ZilgRQylbLt+p7feiEHttBh
         wL3oplZVtDLlK8O2wOggxTb+OGjLAkVmGa56IDrmnrBkTnZpMiwSFL8pF2xxS9QpSVLW
         1ViA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKXh1lNHcrCMZowaVXYNrW5dHLEPOiOXL8OxBPYDL8dgI21jNK0G
	zfKHcQmvFuZblomvXghFXr7pww==
X-Google-Smtp-Source: AK7set8xyYcX2BSvMfKOSguuzt5mZh8XxyCeYNTe6ItGSE3X9lt58FoSkTMKLCHqCHBcM8I+dptBZQ==
X-Received: by 2002:a92:7d10:0:b0:312:5082:ab7a with SMTP id y16-20020a927d10000000b003125082ab7amr2331858ilc.54.1675457329510;
        Fri, 03 Feb 2023 12:48:49 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:1145:b0:30f:4f58:8670 with SMTP id
 o5-20020a056e02114500b0030f4f588670ls2086119ill.10.-pod-prod-gmail; Fri, 03
 Feb 2023 12:48:48 -0800 (PST)
X-Received: by 2002:a05:6e02:1c05:b0:310:ba3b:faa1 with SMTP id l5-20020a056e021c0500b00310ba3bfaa1mr9915105ilh.14.1675457328734;
        Fri, 03 Feb 2023 12:48:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675457328; cv=none;
        d=google.com; s=arc-20160816;
        b=OR2HjweZjedZ7iAhyFdXY+yxhEgrf8b10ppWO0yJGn29j5dfF3SUWW0KZ/gZBNCyGi
         bG7NPlDuK+MOzd+1+Bc7ekZ8uOD78Mym5NfLKshb18IgD1qw/FMAcbiNpdZ5qS507Cgv
         qmwCJqyaY57JG+/LIm8dXgLjBGuiTwuLbgKeYqWZ/v5pEQz4KWhIm2FBewPa5q9Wc+V5
         OQONVaK4YECgAWNS1C/TAAO43k437qkluSceres1pp8JtBWyzaeEQ67SLRK8Tq0dsP7m
         rXerAQWgn38cxEjjMfd+wdXGFoJ0DEtoW6FaekacUBTLED3VzG8Kz80Dr2UvxQKBaucR
         Nnnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=ITHrX9cl7ot0HnPI/Tld+8Vpkr2Gm7asPU1sj4nM63w=;
        b=bC3dzwhYruZa0qzVOJS7JleE8pc6bH3xKprikXvSPvHEHuGtr4lTsClN9F3AsurZgE
         EHKxS0NT++dkstMTAsKZ/rw5xGEjRw2FduamYVAyNlY4zrvWsP1ofqbxXsEm4jM8jRT0
         Xkd5dhvZJMWXwYQy/gqqI0ov7qgQecYLhua2trtQ78ckuP2Yk9SBqdSP/UzMz6Tf60AZ
         n0Bsb5D6MKH/5zC6+Ko7Xe+q1byn4UfwjwdL0cDwhrKGNnVIB2DNnR4pHEIavLfHdmyY
         4wRTLNdOuhGqX2FGO1QiBfXGjoSwBt4Tu3dzBKo4DkC11iqWlsdB/pQh4iwG4z7bQnFA
         pRuw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+63d53cf2@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+63d53cf2@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id a21-20020a056638165500b003ade2ca9723si4596745jat.159.2023.02.03.12.48.48
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 03 Feb 2023 12:48:48 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+63d53cf2@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 575339 invoked by uid 1000); 3 Feb 2023 15:48:47 -0500
Date: Fri, 3 Feb 2023 15:48:47 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Karina Yankevich <k.yankevich@omp.ru>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-kernel@vger.kernel.org, lvc-project@linuxtesting.org
Subject: [usb-storage] Re: [PATCH] usb: storage: sddr55: avoid integer overflow
Message-ID: <Y91zL8OWTUd8iTXt@rowland.harvard.edu>
References: <20230203201821.483477-1-k.yankevich@omp.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20230203201821.483477-1-k.yankevich@omp.ru>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+63d53cf2@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+63d53cf2@netrider.rowland.org
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

On Fri, Feb 03, 2023 at 11:18:21PM +0300, Karina Yankevich wrote:
> We're possibly losing information by shifting an int.
> Fix it by adding the necessary cast.

Nonsense.  The card's _total_ capacity is no larger than 128 MB, so a 
page address can't possibly overflow an int.

Alan Stern

> Found by OMP on behalf of Linux Verification Center
> (linuxtesting.org) with SVACE.
> 
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Signed-off-by: Karina Yankevich <k.yankevich@omp.ru>
> ---
>  drivers/usb/storage/sddr55.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
> index 15dc25801cdc..4aeff73de147 100644
> --- a/drivers/usb/storage/sddr55.c
> +++ b/drivers/usb/storage/sddr55.c
> @@ -236,7 +236,7 @@ static int sddr55_read_data(struct us_data *us,
>  			memset (buffer, 0, len);
>  		} else {
>  
> -			address = (pba << info->blockshift) + page;
> +			address = ((unsigned long)pba << info->blockshift) + page;
>  
>  			command[0] = 0;
>  			command[1] = LSB_of(address>>16);
> @@ -411,7 +411,7 @@ static int sddr55_write_data(struct us_data *us,
>  			command[4] = 0x40;
>  		}
>  
> -		address = (pba << info->blockshift) + page;
> +		address = ((unsigned long)pba << info->blockshift) + page;
>  
>  		command[1] = LSB_of(address>>16);
>  		command[2] = LSB_of(address>>8); 
> -- 
> 2.39.1
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Y91zL8OWTUd8iTXt%40rowland.harvard.edu.
