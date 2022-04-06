Return-Path: <usb-storage+bncBD6LRVPZ6YGRBSG2W2JAMGQEKMOLCIA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2624F62AA
	for <lists+usb-storage@lfdr.de>; Wed,  6 Apr 2022 17:10:01 +0200 (CEST)
Received: by mail-qv1-xf45.google.com with SMTP id o15-20020a0562140e4f00b00443dee06cc4sf3867179qvc.10
        for <lists+usb-storage@lfdr.de>; Wed, 06 Apr 2022 08:10:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649257801; cv=pass;
        d=google.com; s=arc-20160816;
        b=ID6ZP75fwO6Hg05z3Rc6E2n+vJ/13rLQfD1j6/s28Sw4+/FQOUh6rIjs7FLbh7N3se
         gKtayaLZqQEXtx3TDkfrHB+7rabB646WyG7gIRMmWvSZoQnzeaXek1UA+y1H+gA8p2rb
         6aRY+kRaRMFatpnDvfj25EWEmIp/P1eOH2OPmzoLtXb5ZFkj7gK0Qns2miUYUzTILnHH
         I8//JXkTwPOKniBDR4IzDDImSdDoM2zN1tC+5G9IPbl3clui9puu5yWmyl7YRQLD4YHr
         XNjfXnQzK8vPhpeLwQjYnbuVSba3fHy+ds1box2yE1fpye+geU8C+0FmY+6VQZ42YnYW
         bCmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Xy4DszjZ+iutRbu1IRur5dMRIT0OR1BYeWvuuF3arTk=;
        b=FomOsGOpQiQT/6oUIfOLrNg46H3eFoReBQz//wNQnfotv/TBdMbfrffS90E7LZgJDw
         uVlrLtvwi0ojxrHJhDMywjYve5zEbwyB2Z5wy7q/Sxl3rLRNA9//C4yvK4zk2aaPfUnS
         L74Q+Ppk39xR9v0UV1B+RM8I38kg/jqdfVjvfOsuzzZYa9zyAamJWeUwIWyLG+GqpEQY
         KWNj9mrfYNnhhTBNKEZKESdB4EAHmea5LNEOIO7gWid+kuPD8XvCncNxuKQsngCOU5C+
         nkpzPE4YeJtICLlHOhdY+IYkLw9/rGiuLAnRyrKGZkSlONosmzTnULX6G/Q1fkRoHGRC
         ww2w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+624400c6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+624400c6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xy4DszjZ+iutRbu1IRur5dMRIT0OR1BYeWvuuF3arTk=;
        b=X326ONn0Umlx+W7EwwuI9PZwFf7tlGHiI+bbl8psoXgqTJzG8d3BptNgwFNoaDwxxF
         MQNh7d7gUqSbUvm+o5yABMWMAMGXfWXvzb1RRg+LDeee5DTcEB5VkFHlhtb4ZebmBCBc
         HrRqQg6BgkxA0+dMyzgw1mJH3XGoZycB13okc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Xy4DszjZ+iutRbu1IRur5dMRIT0OR1BYeWvuuF3arTk=;
        b=hjIJ8qA7CWODe99uLSddO99Ro9zNTS8oHBCK0gvEmgJ0XTD9uvI1OioLiUWFyLn3cz
         St8A4qriEpdQCvk2fuij6a154ghUrzSCGvdsrAdQlWED/oipJB3rbrrCXyPE808kXefE
         B6PFr7UTxKuYxxu4opRqeCM2JVq1UIrJdABNvmOM3qiwC6ZpeFHEZCpBPdl5TeD8+8Jv
         chvsz5xa+cUvl+OtJiR/Qf30/MnmBvBbpkE/zD51LA7nm5nzWLuE0inA0+nl8yKbwv5m
         949HCULGybkODTeCp0ZIz7P5EAVtHj/lTXZTENP5ZD4cPx6MvW0nPgdbjPab7/mIynkM
         zhnw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533sBPrRh+TcCh9bxC5vPHLfKvg3zDSBH+5uTUANjvSJnSF7USWO
	X+ffDMdUxIVYyxcNjCY1j3kcmQ==
X-Google-Smtp-Source: ABdhPJwab1WnZm657Huj7kMiAlfVPxeVLGA3H178Bqnhf6QPMU1j/fFGISXTmB1Ix3h7WOmM+uWX0A==
X-Received: by 2002:a05:620a:2981:b0:67d:6a35:70f2 with SMTP id r1-20020a05620a298100b0067d6a3570f2mr5913058qkp.404.1649257800656;
        Wed, 06 Apr 2022 08:10:00 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:68f:0:b0:67b:31fb:5a3e with SMTP id 137-20020a37068f000000b0067b31fb5a3els81819qkg.10.gmail;
 Wed, 06 Apr 2022 08:10:00 -0700 (PDT)
X-Received: by 2002:a05:620a:1210:b0:67b:3fc4:b7a7 with SMTP id u16-20020a05620a121000b0067b3fc4b7a7mr6134889qkj.114.1649257799868;
        Wed, 06 Apr 2022 08:09:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649257799; cv=none;
        d=google.com; s=arc-20160816;
        b=T8jCoMCxqMidYM6chIGKiZLDJ6OzxUcKjBDjzg1Y2EX+yH5nDAUGjEDZH7ZwfiO8p3
         ylRKsxQ7+x6bCHBkNr1xAeRwZlR0/rqv2rcxdB4OqEdGt4VvgBcR30b3Hfvaob0ifu+h
         BSukPgTIeUrPAiM0NfkzIgJfs9tgRydbGLEGuykryW7lzAqKwulf8ChVSCQeg0Ev4ZwT
         F5QAKyNtgfsb1QZs+1QHLX/WNkPXjj0fyA52Asb4E85ydty5auxfBUnr0OpXa5AdPxei
         22+iIYwOL46LSk6P/cvBh1O+JWaOizQ4f/peUo/U9H22Dpa7qoZmlxXz0viUkPB9QjCU
         Zo3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=TV7SFOqDneLyskkOj+LI9treEUktQzRWHjtUtJLSliw=;
        b=EuVv//Zy0x1g4bCGhxVtXcu+K2fuErRMYJBSA1FYfJY/Dcb/VI5dalRNHHKbGPkBRd
         tkZE87FbwUq8BAecz5iwIU8AtYYdLRWBwABvE+XSg/dNDv3ARb7Bs3MZI4XF8RWbI7E3
         NZgjAONf1WSVyos5HiG1HFiKggcsKUx6GgQr+9HFr0EigNzrsxrFl4zOEsA4ok2e+HBG
         ADf8WdEagVl7Tkng3gsvggQ08uJfNkH9baiFiIuvf/F1VP74eKUXHYYEhQ1NVZBF9fbS
         3KvKMPuvTTM+kfnBys2WsMtZ9F6joNoDWhkWkAw46yhlEFAq74ZO85Ee0NfLdJqNl9Zt
         NW1g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+624400c6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+624400c6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id gs6-20020a056214226600b00440e46a7c87si4089334qvb.293.2022.04.06.08.09.59
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 06 Apr 2022 08:09:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+624400c6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 189995 invoked by uid 1000); 6 Apr 2022 11:09:59 -0400
Date: Wed, 6 Apr 2022 11:09:59 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Lin Ma <linma@zju.edu.cn>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, mdharm-usb@one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v0] USB: storage: karma: fix rio_karma_init return
Message-ID: <Yk2tR4iEr5/T6o+h@rowland.harvard.edu>
References: <20220406100259.6483-1-linma@zju.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220406100259.6483-1-linma@zju.edu.cn>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+624400c6@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+624400c6@netrider.rowland.org
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

On Wed, Apr 06, 2022 at 06:02:59PM +0800, Lin Ma wrote:
> The function rio_karam_init() should return USB_STOR_TRANSPORT_ERROR
> instead of 0 (USB_STOR_TRANSPORT_GOOD) when allocation fails.

Not exactly.  rio_karma_init() is a usb-storage initFunction (see 
the usb_stor_acquire_resources() routine in usb.c), and these functions 
are supposed to return either 0 or a negative error code.

So you should make the routine return -ENOMEM, not 
USB_STOR_TRANSPORT_ERROR.  You can simplify the patch by changing the 
line where ret is defined; initialize it to -ENOMEM rather than to 0.

And don't forget the error code for when the rio_karma_send_command() 
call fails.  In that case the return value should be -EIO.

> Fixes: dfe0d3ba20e8 ("USB Storage: add rio karma eject support")

Shouldn't this also be marked for the stable kernels?

Alan Stern

> Signed-off-by: Lin Ma <linma@zju.edu.cn>
> ---
>  drivers/usb/storage/karma.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/usb/storage/karma.c b/drivers/usb/storage/karma.c
> index 05cec81dcd3f..b8a4ae1aa22a 100644
> --- a/drivers/usb/storage/karma.c
> +++ b/drivers/usb/storage/karma.c
> @@ -178,19 +178,19 @@ static int rio_karma_init(struct us_data *us)
>  	struct karma_data *data = kzalloc(sizeof(struct karma_data), GFP_NOIO);
>  
>  	if (!data)
> -		goto out;
> +		return USB_STOR_TRANSPORT_ERROR;
>  
>  	data->recv = kmalloc(RIO_RECV_LEN, GFP_NOIO);
>  	if (!data->recv) {
>  		kfree(data);
> -		goto out;
> +		return USB_STOR_TRANSPORT_ERROR;
>  	}
>  
>  	us->extra = data;
>  	us->extra_destructor = rio_karma_destructor;
>  	ret = rio_karma_send_command(RIO_ENTER_STORAGE, us);
>  	data->in_storage = (ret == 0);
> -out:
> +
>  	return ret;
>  }
>  
> -- 
> 2.35.1
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Yk2tR4iEr5/T6o%2Bh%40rowland.harvard.edu.
