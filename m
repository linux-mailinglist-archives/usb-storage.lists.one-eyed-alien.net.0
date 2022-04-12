Return-Path: <usb-storage+bncBCUJ7YGL3QFBBB4522JAMGQEKVX47CI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA004FE3F1
	for <lists+usb-storage@lfdr.de>; Tue, 12 Apr 2022 16:36:55 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id i4-20020aa7c9c4000000b00419c542270dsf11045071edt.8
        for <lists+usb-storage@lfdr.de>; Tue, 12 Apr 2022 07:36:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649774215; cv=pass;
        d=google.com; s=arc-20160816;
        b=H1Vf3bTnj4DIz9YVaUWCid6yECKDqhk7CPHzUPoRmrogs00xp+wK8EBDaRi8hvRVVH
         LCfQFhsyXVxagBoW0gAZqQO7VfmxJNpNlKr4HN4fXYt9fh38HXdTcokta9ds7rau5+Z+
         iVh9hReOTFtJnKqV/VYNShWi3AlONFaLhbM6h9Mj2GZdfTf3rsBwyxio1epMdqvgy4a8
         0XB4LbNjh9QdU3W480Ue8vJigSP+0J5oQjdDcZ5AgE6g7+dU3s1qznw4cBxLrEAMcyzF
         buoe4xQUoPrEVB/N9XD86iUJ6wscduUHqrQf7OLfDLAXh13ReFwppcizSKJBjLs2l6pn
         Ozbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Mg2NP+mzemW+l5gm4v7gWi5Mso380OuTIn8I3XQT00U=;
        b=xmELPj12INVNuww2lywJ97RUEeFs2La1Wi5PeaYcxnMIjCA3y2ZZmocZZHhY33c91f
         1gXkW7b9T7+JVE1agCoZi7/2c11P6jAcc/pZ96uDKdO5UjKWw/iE8Z/wcHIpZ1POPQlh
         dTCafbMdhzgxuzzKbJWi3bUZH5rxRPYZDr4YDPpZQWwyhxxvW58KQa+Kvy0bdjX4IZMy
         3G3gbBU/lxPTsE/1S/q5T2p6tSobKJasnJkQ+nBK+cqXlIk2svoagXPDRwJAq6ZniOBG
         MDz2hZhFZvq3eVQ9lTQ4Je8DwiKICIuD5xW+buO0zr5EY9pUrFW25VPYYUgwHaer8QyT
         8I8A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=c+2CJJZp;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Mg2NP+mzemW+l5gm4v7gWi5Mso380OuTIn8I3XQT00U=;
        b=Sa7nLd3hVyB24wCMASou24cB3fJNmLoCpZc9szzZMgto/9gNHI2NakE80UuphKvIS3
         wj4PaRr/B3I+P2ol2h/7bPYwTwRptSDTUBVqk1LjsVvLOmXnrtPhZo6XOvnCIWWuspCG
         joBlrmADqjNYftChD8fL8bUCQUP5D7kikjUzc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Mg2NP+mzemW+l5gm4v7gWi5Mso380OuTIn8I3XQT00U=;
        b=BoIY5olbDluL2f9eSeOZmsse9aqzGm2nnor6lxqk0M5NIkvUQ4v8F9Ejho2byCOsjc
         X2hM1QCPXI2f/kCrnP2nfwvWSCpDg82sPz6+V2xhUMOekAWecsOz2XjCgjhssOOrr/uc
         fAW6Fk0nccBdW8LFDgSBWMyZo7h5xeHCndValtzzSKa2XW4AH8X0cIAqBDwFcQe8HsIS
         2bmTPzliYnhOtrVccFzFCGGrVrhZ0ovOYLCsyCnF/FV93/kjUL0808Pq+FknWJTWbJu1
         1/ZcOmVWrSNO7EHpnwbST4kHUwv/UJ4TdMOro9zMATXAslmvBeKXbkHx6X8UZEwvA7ZL
         sfCA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532jVWZxK0Jwnxm68gTGokSPEyphhrW0GRIFeDZGTAVw3x6EmKQG
	ysLPDOYpzD43Fh6pZhkTa34Vig==
X-Google-Smtp-Source: ABdhPJxzNA+6J1HEq/mAArFqlL7t5Fi+EAa+E0aM13G7EboPDU5dWJkZgbMvwrQHXy+TOJ4DmIj88g==
X-Received: by 2002:a50:baa8:0:b0:415:b0bc:6353 with SMTP id x37-20020a50baa8000000b00415b0bc6353mr39848115ede.220.1649774215549;
        Tue, 12 Apr 2022 07:36:55 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:907:968d:b0:6e8:61b4:abcb with SMTP id
 hd13-20020a170907968d00b006e861b4abcbls2234250ejc.8.gmail; Tue, 12 Apr 2022
 07:36:54 -0700 (PDT)
X-Received: by 2002:a17:907:761c:b0:6d6:e553:7bd1 with SMTP id jx28-20020a170907761c00b006d6e5537bd1mr34606087ejc.5.1649774214335;
        Tue, 12 Apr 2022 07:36:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649774214; cv=none;
        d=google.com; s=arc-20160816;
        b=xSyv60j/7G86dtsvDbF/f7kRUq5xewvzGh+vkO2w6eGyoANaSeYLgueLb5DXkeY5Ud
         08/MJGIbmrJEG1qVA+jtjDIrIy2ePvV+SGfQFtde/CFhlZEimLyMAoHB8EzYy05sdd2v
         KEeX6uASOP5OcmzAX/BFjKA4P7SHpt+BdoBeHRmZrOwjBfIhjYXvVj1UKKzI5JZ3BITb
         bJ6PWPvLm9opBN6Z1Z99qVO7697fulS21AHBYZNLw/8gaaFFmLe8iAj9A48EEHc53XFh
         ZGPSzFiEnstM09CcngZx/jEu8NfHoAlqw2YEchaO7vkfPPyCaJCDsXwn2pgTAY/huOoh
         Gr4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eF72/dCDKJw6+HcdB2/T0EkxRV0pR8MXJG8cGIwrnvI=;
        b=BT+XWHbyqeHq/DOknWmL8v+9UyGN6dXP0abIrJdFGV/tiSLPs1eS5Rr+od3eGpGyoJ
         L/bdOYvDe41qkLsV2yH4GhzAg/Zy1AQqnUrbXX1RAfrXGcNTvLMLfKEddzCcd0B4X8VS
         p94Whu7RlWLdV7Sc9iUlyzDYIKK87BtHjYw3csSvLhDOG3coOwjqXwidAGrp56YfE06G
         rPVvNUAvQ0LZBQzwhNMrNaNHXT6b+4KumLCl5FmPmYSIhWr+7zITtHIZh3tEfoQJZ5PH
         FCxz23MChjcZmbZVMgGH/qtzQY+d1/D0wSbvcw/rpN8WNv8XQWIiokzcEKfZjyPfO/sD
         NDQg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=c+2CJJZp;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by mx.google.com with ESMTPS id m15-20020a1709062acf00b006e8a3b02833si2990967eje.129.2022.04.12.07.36.54
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Apr 2022 07:36:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E9948B81E7F;
	Tue, 12 Apr 2022 14:36:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52E28C385A9;
	Tue, 12 Apr 2022 14:36:52 +0000 (UTC)
Date: Tue, 12 Apr 2022 16:36:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Lin Ma <linma@zju.edu.cn>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, mdharm-usb@one-eyed-alien.net,
	stable@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v3] USB: storage: karma: fix rio_karma_init return
Message-ID: <YlWOgaOFGjVg2P5F@kroah.com>
References: <20220412021246.18340-1-linma@zju.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220412021246.18340-1-linma@zju.edu.cn>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=c+2CJJZp;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Apr 12, 2022 at 10:12:46AM +0800, Lin Ma wrote:
> The function rio_karam_init() should return -ENOMEM instead of
> value 0 (USB_STOR_TRANSPORT_GOOD) when allocation fails.
> 
> Simlarlly, it should return -EIO when rio_karma_send_command() fails.
> 
> Cc: stable@vger.kernel.org
> Fixes: dfe0d3ba20e8 ("USB Storage: add rio karma eject support")
> Signed-off-by: Lin Ma <linma@zju.edu.cn>
> Acked-by: Alan Stern <stern@rowland.harvard.edu>
> ---
>  drivers/usb/storage/karma.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/usb/storage/karma.c b/drivers/usb/storage/karma.c
> index 05cec81dcd3f..38ddfedef629 100644
> --- a/drivers/usb/storage/karma.c
> +++ b/drivers/usb/storage/karma.c
> @@ -174,24 +174,25 @@ static void rio_karma_destructor(void *extra)
>  
>  static int rio_karma_init(struct us_data *us)
>  {
> -	int ret = 0;
>  	struct karma_data *data = kzalloc(sizeof(struct karma_data), GFP_NOIO);
>  
>  	if (!data)
> -		goto out;
> +		return -ENOMEM;
>  
>  	data->recv = kmalloc(RIO_RECV_LEN, GFP_NOIO);
>  	if (!data->recv) {
>  		kfree(data);
> -		goto out;
> +		return -ENOMEM;
>  	}
>  
>  	us->extra = data;
>  	us->extra_destructor = rio_karma_destructor;
> -	ret = rio_karma_send_command(RIO_ENTER_STORAGE, us);
> -	data->in_storage = (ret == 0);
> -out:
> -	return ret;
> +	if (rio_karma_send_command(RIO_ENTER_STORAGE, us))
> +		return -EIO;
> +
> +	data->in_storage = 1;
> +
> +	return 0;
>  }
>  
>  static struct scsi_host_template karma_host_template;
> -- 
> 2.35.1
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

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/SubmittingPatches for what needs to be done
  here to properly describe this.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YlWOgaOFGjVg2P5F%40kroah.com.
