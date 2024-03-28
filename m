Return-Path: <usb-storage+bncBD6LRVPZ6YGRBCUIS2YAMGQEAJF7OTY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x248.google.com (mail-oi1-x248.google.com [IPv6:2607:f8b0:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6A289023F
	for <lists+usb-storage@lfdr.de>; Thu, 28 Mar 2024 15:51:55 +0100 (CET)
Received: by mail-oi1-x248.google.com with SMTP id 5614622812f47-3c3c912418fsf1197561b6e.3
        for <lists+usb-storage@lfdr.de>; Thu, 28 Mar 2024 07:51:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711637514; cv=pass;
        d=google.com; s=arc-20160816;
        b=tKqSLAGW+5kQnaGkGhoNJZWamIolqNqVzdzDHcNCX/kny6fqWGTq4mfOUIeMBcALtA
         Y1eXsNdB1cdK/BbsZipcWNXBhKgHsmwS9fFqpr16PZ8TGEVRnf0DvppFP+m/LY2nFcry
         UD1jDoBhrhu27mD5RcvzFvdgmXtMbVKl2IKy1OFomqK5QbXqZMx/QyyqsyXabiRFy4/4
         Pxp7kceg5/6t6wzKvwqVWUcD8LLo0W+YZeEcO9yBrZX5O/hMA3RD7QwAhCNgDwp6lCLD
         e3SUsRX9jq8r4wnOHQN9fuF7WwTcJRahzY1KcFxiV+hSxZdRkx4wW9bVnWJxdMlVpRXr
         NLPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CFkw5brhGzHdOej/NDg546av7umJlXP0TFAHOEs88Ws=;
        fh=+1QzWu0TG6pBVM14T+5j2Rk4XVA+T+DXpf8mqD369v8=;
        b=orX3/YHeylGDiEv3rqwQR+t85XeJnzhb23FTyJc/hy/DFxZw4SSEuSpuIGJLyVZdR6
         0C3/DsZp//113ZOAzYk602mUgnwh+4rYX5VuDI6I8elyC/renugGUXscCfjh9g7cyBRO
         t9rGCFy5lDR6e2PJCdJop66ZMRf/YSssh4bjugU0PWJ0L6B207LTMafaEBhnQs7dTM39
         CpbZncjVtQ4qLInC7tgJjSUNtjhN8v/SiiVgqtJOC3BfKB8rIi3rugZRP7SJDQaKReKY
         nzKSdxvY4GATz4daJjv+aPqUZcRuzjAKrv1IJ1/h4p/D6Gu2jN3sEaQzh8pnb1AlJ6xf
         k3Rw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6603ebb0@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711637514; x=1712242314; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CFkw5brhGzHdOej/NDg546av7umJlXP0TFAHOEs88Ws=;
        b=U2vuOsZ1LPZHkxCm6okJgv7/6xkAyl/6e96d+IJ/nys68tMKPPT8uWeiLeKIsf4Sg8
         jMPPUN8U/IO1YvAE1LCbbIunWVSly+kQOYdvFf5f0HoCeNAvZvsmQHJwJoePj4xQhc5m
         ftLTryWMC5Ijy5M0l/GUaVsJ4n4WOjkQE5Rm4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711637514; x=1712242314;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CFkw5brhGzHdOej/NDg546av7umJlXP0TFAHOEs88Ws=;
        b=QbouhqMluGM6KtGuE3YhUjuFlnEvTSRE/pyM6MC/vhXqLsoDcDsuxDVK07+VNMTGEM
         n9w1dibSytLIA1abIm1fxVEdYP8/PAMWU6XVtLs+8ocmoOpvR83kRdiyVR4aLNAXnRVZ
         0ZwOgMDLaGnyFUuSfmk6mtsilOMI8867zHk3KNJZshuQ+LUTcEFjLfXqnnOiJbiop4Td
         NB+ACAtHdQBi+wtBCS89r/6yyHLKYomC+Cp8NW8KCbaqaDk8YD/4fVaUzE0V2jZNwriD
         opAx96U+x8QVqIRzzQO6j5/2GGikfbjYcFRt+3AH697W72dgEGxR2yUSpCr8anwgp0W9
         55HA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUce1tooEs+k/fQxoIzyxE2nmPK4IOOXiZ1msEES+7ZEm3VD1A4zVT02Dlu2ONvI2RIJAfhDr/gpSyREPIZwsqL/Y2JFifBpTYX
X-Gm-Message-State: AOJu0YyJOygrGUSc8OJrM/Uuuc0ljBe44pPA6axg9TSCt+8yIKyP+IHT
	p6w+uY8GPmy8W2gHHyxvfYx8+PR3ExvJx7ZE9qn78L+ZyO6nMGQ+WqEbHfattus=
X-Google-Smtp-Source: AGHT+IGnL+1CPtlMyW1ygyXpq40VT9INVFx1ASzj+ot6W/CI6D9IDJkFYYgmUtK4YFs/8mD5EXaIjw==
X-Received: by 2002:a05:6808:120a:b0:3c3:789c:478f with SMTP id a10-20020a056808120a00b003c3789c478fmr3955354oil.54.1711637514307;
        Thu, 28 Mar 2024 07:51:54 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:148b:0:b0:432:b6a5:a647 with SMTP id l11-20020ac8148b000000b00432b6a5a647ls164606qtj.2.-pod-prod-07-us;
 Thu, 28 Mar 2024 07:51:53 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX2wh4Nc01ADRHpfpLfCfI6XWtomCZnPWLD+Ce+TObUBv5jRHrnxYHjYoOKWyR1zC0cSty+B1KcZ7UFClcLRV+RgpYrs8o+jk+jN+1XkbZ+8xQ2eyY=
X-Received: by 2002:a05:620a:24c4:b0:78a:282a:c200 with SMTP id m4-20020a05620a24c400b0078a282ac200mr3515046qkn.13.1711637512665;
        Thu, 28 Mar 2024 07:51:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711637512; cv=none;
        d=google.com; s=arc-20160816;
        b=yKZO+Vf/eYU/P/ubRzjNlDxyI1mk+Mrg8jxWD8mNZD4/QFdveIwnkXLlJiiQDkqRSX
         zwEvIx8Y5As4XG1elYdb9qBmaMW+unUH9xy5DB1+q2SM77DKcI+Fn7RMieH1Y46VvHqw
         sKDEXX4YTzj7J4az5JUgY8KoX5Gx0nLFA0vnpy25WPcWWyJ0g0wiiZ5jyi76lJe43DmJ
         KKjqgAcuSrAl+X2baM6X+LgRGcN4uigqzrtuBrtxC2+eeXz3kHhFu3WPOystikSVrUBe
         ofnqindSLamPEl6uESMKaABQ+v6uJe/ZpHTwOAc+bpdVlk0MdS9bxOFLVxnZ+PZr1nQq
         JO0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=cL8GtyzXu4OVD+XveIMA9TszIlLVO/zB5rFjwW5BlW0=;
        fh=NJ83p9IPUuekDOZJkQQc54YQvJMvWb5A+kxF5vURf4o=;
        b=A+XG4koApTLdhjF6LqBuA5DcXkmocPyvp8Vlc1MUu+rVqih3TIknFKUGs7nGuK1dFK
         C016UJnS93SqzrZ34ewWAo4st+Oi9qVIyO8X0Ipz1BNn0hqpbgmHQ6YRXmCefhlLGCKL
         lwi9ZFq2R/Z9nHtC2eX2Xp7qmIvb6l5j2W87sdUPSCiWh05ntBABSFsCROKlPJ9L6KRx
         uRQIrTv11E+DaH17A8S2ijh7PBRdK2mrI6y9ZYGoL+alOiDHGCt1tiKko223FtfHLh2q
         9OVMmuoSWIp1NQBKhdZF6DOMiQdv60Fz0zSJEWXLeJItSTRzgfyzBlEhukw1ZC/L0Wck
         GqOw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6603ebb0@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id l19-20020a37f513000000b0078a4541695bsi1531731qkk.503.2024.03.28.07.51.52
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 28 Mar 2024 07:51:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 961409 invoked by uid 1000); 28 Mar 2024 10:51:51 -0400
Date: Thu, 28 Mar 2024 10:51:51 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Norihiko Hama <norihiko.hama@alpsalpine.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
  "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
  "usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
  "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb-storage: Optimize scan delay more precisely
Message-ID: <0c99daaf-c727-467f-b8c1-ba8846d8a9ab@rowland.harvard.edu>
References: <20240327055130.43206-1-Norihiko.Hama@alpsalpine.com>
 <2024032757-surcharge-grime-d3dd@gregkh>
 <TYVPR01MB107814D7A583CB986884AD4B290342@TYVPR01MB10781.jpnprd01.prod.outlook.com>
 <a446cdf4-3a9b-43d8-b22b-78c20cce2b4f@rowland.harvard.edu>
 <TYVPR01MB10781AA8B37E147E318597B46903B2@TYVPR01MB10781.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <TYVPR01MB10781AA8B37E147E318597B46903B2@TYVPR01MB10781.jpnprd01.prod.outlook.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6603ebb0@netrider.rowland.org;
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

On Thu, Mar 28, 2024 at 03:04:47AM +0000, Norihiko Hama wrote:
> > On Wed, Mar 27, 2024 at 07:39:55AM +0000, Norihiko Hama wrote:
> > > > Sorry, but module parameters are from the 1990's, we will not go back to that if at all possible as it's not easy to maintain and will not work properly for multiple devices.
> > > >
> > > > I can understand wanting something between 1 and 0 seconds, but adding yet-another-option isn't probably the best way, sorry.
> > > 1 second does not meet with performance requirement.
> > > I have no good idea except module parameter so that we can maintain backward compatibility but be configurable out of module.
> > > Do you have any other better solution?
> >
> > Can you accomplish what you want with a quirk flag?
> 
> I think that it's hard to do that because 'quirk' is specified for a device
> but it's difficult to identify the devices to make quirk, especially for future introduced devices.
> 
> Can we change the design of existing 'delay_use' ?
> For example, 'delay_use' is 32-bit value and the value "1000 secs" does not make sense to set it,
> So if it's set to '1100', it's treated as "100 / 1000 = 0.1 sec". Is this possible?

Here's an approach that Greg might accept.

Since we already have a delay_use module parameter, we could add a 
delay_use_ms parameter.  The two module parameters would display the 
same value, but delay_use_ms would be in milliseconds instead of in 
seconds.  (This is similar to what we did for the autosuspend and 
autosuspend_delay_ms sysfs attributes.)

To make it work, you would have to add the new module parameter and 
store its value in milliseconds.  You would also have to change the 
existing module_param() definition for delay_use to module_param_cb() so 
that the get/set routines could divide/multiply the 
delay_use_ms/user-specified value by 1000 to convert to/from seconds.

When you write the patch, don't forget to update
Documentation/admin-guide/kernel-parameters.txt.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/0c99daaf-c727-467f-b8c1-ba8846d8a9ab%40rowland.harvard.edu.
