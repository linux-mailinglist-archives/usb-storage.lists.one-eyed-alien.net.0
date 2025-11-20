Return-Path: <usb-storage+bncBCO3PDUQQMDRBT5Z7PEAMGQEO2IXSMA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x348.google.com (mail-wm1-x348.google.com [IPv6:2a00:1450:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D0BC73143
	for <lists+usb-storage@lfdr.de>; Thu, 20 Nov 2025 10:18:08 +0100 (CET)
Received: by mail-wm1-x348.google.com with SMTP id 5b1f17b1804b1-477a60a23adsf4044015e9.2
        for <lists+usb-storage@lfdr.de>; Thu, 20 Nov 2025 01:18:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1763630288; cv=pass;
        d=google.com; s=arc-20240605;
        b=dCa6HlCMEGKJHySfVSkwLzzBURHxtAwzmoMu1OwExH9zQOY5mRI852IdzvYz7d3PtH
         E0CIg1iNYUgTCDSEiFo0kJhzdOdofFhkwzfb58gX+qdMPp3lGU5ji2BSqcJiqFXWO06r
         yRZmaMizVgEpC3kcR8DJxTK4T84YxTYlTH56oDDzxXrHjXJD46vJl5yjEWaD8DEDe+iU
         0XVUHCAEQ/j2zt7zXuwnORkG0/p/TFv7uKjw4BDWXHbcjhVbTVOxQNyx+2felz3W/C4m
         s4sdoxpmRif3TIpGn3/z6m0Mu+qwgZDcc9qIOlH9Ibys84q67pc7tmcOFksahT/Ebsg9
         xfJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=FlOt4LdBxdrYpPCDF3aFvWqWGps/K6rEP58mJrVoHfM=;
        fh=kGvIp6A9rgaGdFaINc2f8ltZuPhwlpfeHAHdCKkkzIM=;
        b=ThSXMP06A5D081eyvxVyTbKu2npn+DfwYZ2SQeNIf9x+AqMFkl33BlF6Y1y4jCoeaH
         kXWQyzwI/GN04zTvGJGN3pybMPn0BtkDv4QVKtcUVSsr1x/0PkD/8/sDeh932mnEX5br
         yaN64j1QpIocYHEMpl5sD4WJT+UaDfNF+T1f2KfORfWv+N1MEwcKgPeSahfRo/6DL19m
         hNHU56IhjjNXywygIW0qXlB4cdSnJvnu73nKAPjiWqFTjxG4D/99Kc6PrsbpB7ZJHY+4
         qhDognQvCX4NJBZpazuPkSP6W5Nagj7il57nugcT8qa317l4uYHKfzk1VoLEr3JMdDa6
         6CrA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=gzELClBA;
       spf=pass (google.com: domain of david.laight.linux@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=david.laight.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=neutral header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1763630288; x=1764235088; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FlOt4LdBxdrYpPCDF3aFvWqWGps/K6rEP58mJrVoHfM=;
        b=D63uXPRuw/yrqw/2naipkGjuMFbYSAlHkk/2sxTrKj6iiczIBWYT/OJHxQuz8h0AlD
         YBseOF64nzaELja9WwVHWvSfiuzunwxcYMLgCsdrWqFP8Atw9f+QLF7xynQXOuYFK0az
         t0nbbNYAM+584YPe7TwwZqibolDrN1sYyIOTk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763630288; x=1764235088;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FlOt4LdBxdrYpPCDF3aFvWqWGps/K6rEP58mJrVoHfM=;
        b=K8BLiGr227XrT/90PSDeeOwy3chwxEBDPhOfhdTAqp3PzZ3wMfI1r240+8QsJeu2k6
         7aVjGuI1IiojWfBKBeRmhkQRABNH7Vh9CWuwuIzbIsNVE5FyTewgDXNTOuq1wT4cY3Ol
         TSJlt83cditPGEI4oadVDCmT9Ijg2USsj6V5jRFfGfk4T4fS0jb2FLcI9yv6oOO/F7L9
         LoLkcAhwOtt/CvuyN9E7JNcVBlbRYwxdVh8IJRe9GAnmSS3bA9PVfn80K4NgGFKhvsEK
         WZumgF8//gBKA7XGsmJZhDwW/+WYWeBtxLsJmzqZcPRtEO9/DEgumkOEZN//SoI4SJXU
         uarg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXqKHN8J+QCVps+GcTgR4jLWVLGsZm4oiueRz070Z3/7ByflbtIfdQfzJHjGUsDpTaZ243Ufw==@lfdr.de
X-Gm-Message-State: AOJu0YzoTD0b/5CjIcyN+Z+Oyy9FS5R4rc3b91NbTRmWP+MnEGxoUWsa
	XPpWUHY3oyiXtLS70+P1JtLPXpTlk1fe7M18bR/gSL5eLnPhB3ZeSPOcMSloCgWOHK4=
X-Google-Smtp-Source: AGHT+IHsAQmtNRPVggT8p4hSI8sslxdd0O6FeI6ojsRdugYe+MZtbFmOE3Dh6Sid/RR+0/w6DH0UCQ==
X-Received: by 2002:a05:600c:4507:b0:475:da1a:53f9 with SMTP id 5b1f17b1804b1-477b9dec15amr15694815e9.14.1763630288132;
        Thu, 20 Nov 2025 01:18:08 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+YGtgtCucVrnH5Nl884z4U5/hR4nGhMdd0hfold1SppfA=="
Received: by 2002:a05:6000:3112:b0:3f8:e016:41ab with SMTP id
 ffacd0b85a97d-42cb8172c58ls308715f8f.0.-pod-prod-03-eu; Thu, 20 Nov 2025
 01:18:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUyvHsfiKM0Q7cCvybeqBpoc/NE3eHbgyEJXWgIBG0PwcsLsszwyvYTW5ViYnP9+2q8J0Xc7OB3SYxF2A==@lists.one-eyed-alien.net
X-Received: by 2002:adf:e7ce:0:b0:429:d170:b3d1 with SMTP id ffacd0b85a97d-42cb9a69d8amr1277215f8f.59.1763630284982;
        Thu, 20 Nov 2025 01:18:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1763630284; cv=none;
        d=google.com; s=arc-20240605;
        b=gU9xom/qBgqjcQ8Tl+n96ydJZgP9cvy5F3p6SVrfb0DmPQ0uMAWwtx+byvFFhY7fJ7
         ux4rmO9DijIugIEaSoEhoErOxJ0QMX2AziDgwLh4uG8r5ovEBWzsmQyDAqm1Q1uf6+aS
         JSDc+RC0cLYid8Gcj2HB97g0WOp5FfJ0ArnrUsokJHl0HxGcy6//OSTZVp2mpINKLoAp
         wks550/fSosMBYAXboAu7ZCA38AJkg5xuZfFBooGiLhJbthVfryqlk0rT7tj4FT+W9zf
         qG8C3JMU7SGiPE1v+pjP5lFefRTaYu0C0GLVKeY33C3bCN2OiBrlzf5U3TIIkEY0WV1Q
         WLGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7/8wHSFGo4XpBnjotrRiitIWkuRDZTnNB1ymCbgQE6s=;
        fh=qxPdxIefMIetfwO/E16k9lwp+Z0UvToNKqL0CGDHTQk=;
        b=IEUxaLczFyIPXIJe34ueXBnaHs9IAbrsdsyJ6bBPcftRtgX9xmTcRNbgnS2/SC3j4v
         c3ndbPJnSwc641MkEJNknGyBfCaNQdpTfsTHKygd6WaCaoKD+i8SqrAG6H/cIBSL+xc6
         MOT9pI33keeMgtWa9OnJnVV9BRinMOqf39GTn4Lfi7XsBjBkgwvGTPjV9sHZOr29499X
         zFwW3fWuZPFKMNi8nSogZv6iwhWaIImXXeLpICWPCXjJUE68WiZhYZiLtZ4lqiINHElR
         Tk69WDyB6Ybqpe+2/HBzIGhpYvjvDIDG+Y5JWzjeWBpAjYgolRyXkti0BAzR5NQZXLUf
         x0Sg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=gzELClBA;
       spf=pass (google.com: domain of david.laight.linux@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=david.laight.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=neutral header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id ffacd0b85a97d-42cb7faf0b2sor311162f8f.15.2025.11.20.01.18.04
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 20 Nov 2025 01:18:04 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight.linux@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVx+VOins7Ah/Hugny4X346rBmps3jr/v0bNXfJ6p0BSj95xmu7FdFqdIDTql9AYCL8Pur+HvmU+eAaZg==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncsjHihXxky+skW7iYW7GojM78zqNxsoBFuVEXIlMYYA3alKQqHQ2g5YvkdDmFL
	Ux0nr0MpJaqbX3eVH1dGPLwhlnJaReXMs4FbUtodvAS5ts2BbZEBIWoNpYVWf3x9ascTCL0revX
	RSu+d1dh/TzVoqW1C93Up56PgKiFigVC3VOurcJIH3PHgxAuWiIXMhf4VDyxPIWzm9gpPTkNsr5
	4hDbyQAMA/9xs3h6nynf73VJtciuPhQIqZBehvpqXwfBmYE4w73f5n4TWO9jr/LfCjWCwt3OXKA
	xE7voO4DXtE4W5vubpQwNfLDMq6UFOfz9n+IF+tjdZFjwSptO671+hKLeji6eAO5Yw/nkISIwzc
	F2O04AmLpi0xALnmH4e2tkV25XRxE1XVChdsnshcir/3YypPsrO4Dx7kkmxzIruJPEENm1rWYc6
	EhVFg+fawWDmeE9rjs+pPIuz4JveQdlaqVLOul6p84MKKpqdXgyMvB
X-Received: by 2002:a05:600c:450a:b0:471:672:3486 with SMTP id 5b1f17b1804b1-477b9dfa9d9mr17462695e9.15.1763630284235;
        Thu, 20 Nov 2025 01:18:04 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a973390csm59748875e9.4.2025.11.20.01.18.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 01:18:03 -0800 (PST)
Date: Thu, 20 Nov 2025 09:18:02 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: [usb-storage] Re: [PATCH 28/44] drivers/usb/storage: use min()
 instead of min_t()
Message-ID: <20251120091802.0b238c96@pumpkin>
In-Reply-To: <4208129f-a768-44e2-843f-309c50ea362f@rowland.harvard.edu>
References: <20251119224140.8616-1-david.laight.linux@gmail.com>
	<20251119224140.8616-29-david.laight.linux@gmail.com>
	<4208129f-a768-44e2-843f-309c50ea362f@rowland.harvard.edu>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight.linux@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=gzELClBA;       spf=pass
 (google.com: domain of david.laight.linux@gmail.com designates 209.85.220.41
 as permitted sender) smtp.mailfrom=david.laight.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
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

On Wed, 19 Nov 2025 21:59:42 -0500
Alan Stern <stern@rowland.harvard.edu> wrote:

> On Wed, Nov 19, 2025 at 10:41:24PM +0000, david.laight.linux@gmail.com wrote:
> > From: David Laight <david.laight.linux@gmail.com>
> > 
> > min_t(unsigned int, a, b) casts an 'unsigned long' to 'unsigned int'.
> > Use min(a, b) instead as it promotes any 'unsigned int' to 'unsigned long'
> > and so cannot discard significant bits.
> > 
> > In this case the 'unsigned long' value is small enough that the result
> > is ok.
> > 
> > Detected by an extra check added to min_t().  
> 
> In fact, min_t(T, a, b) cannot go wrong as long as all the types are 
> unsigned and at least one of a, b has type T or smaller.

That is backwards, both a and b have to have types at least as large
as T (or rather values that will fit in T).
- which is exactly what people keep getting wrong.
Consider:
	u32 a = 4;
	u64 b = 0x100000001ull;
then:
	min_t(u32, a, b)
has value 1 not 4.

	David

>  Of course, in 
> this situation there's no reason not to simply use min().  (And if both 
> a and b have types larger than T, why would someone use min_t() like 
> this in the first place?)
> 
> Regardless, the patch is fine with me.
> 
> Acked-by: Alan Stern <stern@rowland.harvard.edu>
> 
> Alan Stern
> 
> > Signed-off-by: David Laight <david.laight.linux@gmail.com>
> > ---
> >  drivers/usb/storage/protocol.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/drivers/usb/storage/protocol.c b/drivers/usb/storage/protocol.c
> > index 9033e505db7f..0cff54ad90fa 100644
> > --- a/drivers/usb/storage/protocol.c
> > +++ b/drivers/usb/storage/protocol.c
> > @@ -139,8 +139,7 @@ unsigned int usb_stor_access_xfer_buf(unsigned char *buffer,
> >  		return cnt;
> >  
> >  	while (sg_miter_next(&miter) && cnt < buflen) {
> > -		unsigned int len = min_t(unsigned int, miter.length,
> > -				buflen - cnt);
> > +		unsigned int len = min(miter.length, buflen - cnt);
> >  
> >  		if (dir == FROM_XFER_BUF)
> >  			memcpy(buffer + cnt, miter.addr, len);
> > -- 
> > 2.39.5
> >   

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20251120091802.0b238c96%40pumpkin.
