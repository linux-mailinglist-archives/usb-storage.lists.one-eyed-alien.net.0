Return-Path: <usb-storage+bncBD64ZMV5YYBRBWMXYWZAMGQEXBGVKDA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 975658CED7B
	for <lists+usb-storage@lfdr.de>; Sat, 25 May 2024 04:24:27 +0200 (CEST)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5b6478dd32dsf3520284eaf.1
        for <lists+usb-storage@lfdr.de>; Fri, 24 May 2024 19:24:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716603866; cv=pass;
        d=google.com; s=arc-20160816;
        b=n8jqgle9nmp4Ie7F8AZLNXXEKypQg+f3g2WJHrjm+VMeP0+fhiqrJxwrZz48LLSVvL
         OgIXiUWu2xUC5OpOm2yPp4seIh8+TWDP4UD+M/kDpXw2ofKmE5mX41vdXpjYJbJUiFd0
         /cYAOXArAs2pkuGvqTiQIhyOAhf4EP9T5L9HhR+6p7u9/Iw8ZRWc3ru8o2bBojspQVsE
         JAql1uSizZHGyzoz3xZYechwkaWYl4uIM8PpmhoZKUC0xSv17+ZtTnNDf4Fz155ZNPBQ
         5Y5+mi88jjUyzTanuy2wm/33zkmChzu2i2+pIQx+Jyv+ktAexS1GFaXnpBQhfyFP12TJ
         r+Zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=dOL7boDXalOMYdh+y7r5p5+M3LP0TDfY/P48KUIUu0I=;
        fh=LVXUYerfZc8bwU+qYIutbBy4bW2ZJ7q7uF7UOGB1MFM=;
        b=Py7jYU0cgwv1DfUtDmeb7bwgdqXYmLe/QOH4pFl64Ow6vISr4pjI6KnuWenuzAYMVF
         FsI187fA6pCNmn8FeJFxzbiEoL6htqvwLhkOrtGOdKRuBNa9zZ1QEccSlhWfqtOso9Ri
         0cnj3ETcFBimvdYBw7uduLVr4GlxKMQh9OBKd2zSxK2HLMThnbeZ2j1dTIA0zLFdmRQI
         XZ5THJ8b/GVErv40SjuRRlJYteWU1CkhpARGqxLjaTmPnRKBf6wiVy1+n4htEc19LQ5/
         IDtKn8LJI6+bOCMT1YegGn+/EfvWuZr/1wrlXFNMh+dpeJySe/6gG5DIsSUGK8jL5NHG
         qtBw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716603866; x=1717208666; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=dOL7boDXalOMYdh+y7r5p5+M3LP0TDfY/P48KUIUu0I=;
        b=SKhN+agIld7c2DDp38D2F4EkRnnEjETU88hn0t9abHDKDr4slmgdMU+tRjxlVxjjnJ
         8wG+9iJtIDQw6/BINOrrlbmV4R84XgQqP+mL9F47uC/fklI/Ya2IPAB8nrjk/FKEikbq
         S0TlzWtYQBNmGCLMepSmwz79WOuqsY6VPy5uA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716603866; x=1717208666;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dOL7boDXalOMYdh+y7r5p5+M3LP0TDfY/P48KUIUu0I=;
        b=bFgM8sY9bxx56lRQphM+29e/ub1F7fHdfMz8eiwtgFQBKOkw9aQMfopA5yTNJhrqwZ
         6lxw7lLBVKpxajVK7mowNzCskM7MMlSa4yoXib+ie2ls6cOgGofUfXF5hE3CloC4AaW1
         DFpc/Mxw3c4naijnNLuHVCXaz0SKL3TPLAuy4lxjd/GS4wnl/2WOCzsYIgbJaUD8CCVE
         EzMqIEOrmlo+Wuh516n3s8zJmpzcW+8lywU8+vJ1D82lOfP9Eu+mETgbNMk+SnAqXJXq
         JS1BpPdZxtFHkm8I4Zj5XttO/jjbL6bRkNirGlKOcMDazOZHIalmsKPLb0oRFfzWmkNC
         wuPQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVwvpv8UckalCeeAOyTYjhAedXWVheYY7PHQsKsWFDZZFDRulDcYN3UD+B1wxzmkkxk5Hq9iJ/okFeQ5UYlo8dJSM4qoumyP/La
X-Gm-Message-State: AOJu0YwgSZZCghLCAzv/30W3KtMrwk77k0tTLcu/rbNHhbfJ+uJ2xJmp
	SYxxSFvar1WsV58yymxBkzWcoIuyctjky/tyxqZOkLHsM66Z7gKijo1o4nkerIo=
X-Google-Smtp-Source: AGHT+IGTS7zcdeBke5IzGzrVlh7uL1z9P0v5eUY/l7HRD/RDvEpRlgoLTFyHthgMV73O7qkzo7hQ8Q==
X-Received: by 2002:a05:6820:61d:b0:5b6:1b:cb61 with SMTP id 006d021491bc7-5b96166a23bmr4826008eaf.5.1716603866157;
        Fri, 24 May 2024 19:24:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:2203:b0:5b2:ff0d:924f with SMTP id
 006d021491bc7-5b945ae626fls1231150eaf.2.-pod-prod-09-us; Fri, 24 May 2024
 19:24:25 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWNiOguuHC/7eIeDn6vPqW9T4Ky4pzZFRdyqVoJz2CzjGqqodRd5X0sUSO5Ie25dg+FlUja7Romy0WlW4nkOZ/gzIMQf8t3reWsVVoNLo81w8RlInw=
X-Received: by 2002:a05:6808:14d0:b0:3c7:498c:6b0e with SMTP id 5614622812f47-3d1a5483337mr5146749b6e.1.1716603865025;
        Fri, 24 May 2024 19:24:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716603864; cv=none;
        d=google.com; s=arc-20160816;
        b=qqN2Dz8wyF3Mbroebpdh5umCtjIfk7Y4iE2Di0KOfdD5L5yMA0v+UO9N313hgE132m
         oXQkv3XO3efoVzQJTLjXq/tmxkDsW86PXu8PzMoFmPR+MNKrQBP4o1N2U8JVoFt5c/pO
         ImEdhqMyhklSOhJC7thzOtkSoGxKvKItevRr6oRlIEd3Q1FX/jzHe8IyStVrjJIivlWY
         ZIKQzgNeuuLex+7ft4g72lcQRaoSxekPcceO3ogasjHDYKIOlxz6BRmFZvcUxqlvx9u1
         18g5qm2PR607eWKPynYygFK8hyer+kbsbRJTlzpACvJ3f0aza9Axtp9DLt/ghm4IHEjo
         TXdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=TvzRjMWTi5xy+tBOOmq6HczATWcgg7nYmAf6XDLGHQY=;
        fh=DHYxaMj/BRrwemWbzAIymvHEhpsz/OvuKDsR8+pFfZY=;
        b=h8OY2O6OXcvKShNbxW8i7bc8PpR7asguExE/kIwbDnY5eVPre29tk8e7kEso6bDqg5
         Hz0Re4zzgA1QYkM4n8KUmj2d4o2oPNWp5L8GSJ5RV3W9y9U0MIaJeT9hLg+A3X2YYSRw
         L+4Mv0KPlNJO9lVEWVTD7cduNETLzhDmpABMp3bUjxyoA0jaX0Cb7MCWpt5IAg71QQE5
         kHLITiWQz1Ty9fd+Ct2XuzLMBYHY2Vb2oCnSKbPx02yT5Kj+O5j42HjA+JUNunJUIX/A
         DoIANnw/5j/mcDp6hy2PCDVwHlkSopSNY7zaMdkm99UA5MPxyNr0FuL80aSJKZH5jkIQ
         40pg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id d75a77b69052e-43fb18c75bfsi35438201cf.672.2024.05.24.19.24.24
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 24 May 2024 19:24:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 594160 invoked by uid 1000); 24 May 2024 22:24:24 -0400
Date: Fri, 24 May 2024 22:24:24 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: shichao lai <shichaorai@gmail.com>
Cc: gregkh@linuxfoundation.org, oneukum@suse.com, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
  xingwei lee <xrivendell7@gmail.com>, yue sun <samsun1006219@gmail.com>
Subject: [usb-storage] Re: [PATCHv2] Check whether divisor is non-zero before division
Message-ID: <e1e593b2-fc50-4303-a01f-b7f7bf467c4e@rowland.harvard.edu>
References: <20240523092608.874986-1-shichaorai@gmail.com>
 <a0afa88b-f84c-4b45-a265-2e6bcbb84b35@rowland.harvard.edu>
 <bb581989-4ac5-4ffe-9f80-01b5f993146f@rowland.harvard.edu>
 <CACjpba5iJ5dC=rB_Ckaqe4BKesrAN2VmsDCPZJ=frufNgA96Uw@mail.gmail.com>
 <eb995078-1923-43d5-a20f-9d4a7edee719@rowland.harvard.edu>
 <CACjpba55sPDba9GfpMqe_GUgAtv=6MzWAnsgov-PdpFPEDxwGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CACjpba55sPDba9GfpMqe_GUgAtv=6MzWAnsgov-PdpFPEDxwGQ@mail.gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
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

On Fri, May 24, 2024 at 10:13:45AM +0800, shichao lai wrote:
> On Fri, May 24, 2024 at 12:30=E2=80=AFAM Alan Stern <stern@rowland.harvar=
d.edu> wrote:
> >
> > Good work!  So the problem is that the driver believes the status[0] &
> > 0x08 test.
> >
> > The way to fix this is to add an "initialized" flag to the alauda_info
> > structure.  Then alauda_check_media() should call alauda_init_media() i=
f
> > the 0x08 bit is set in status[0] _or_ if info->initialized is 0.  And o=
f
> > course, alauda_check_media() should then set info->initialized to 1 if
> > the alauda_init_media() call succeeds.
> >
> > Would you like to write and test a patch that does this?
> >
> > Alan Stern
>=20
> I tried to do this. And the workflow can enter alauda_init_media(),
> but there are still many conditions to satisfy in alauda_init_media().
> Unfortunately alauda_init_media() stop and return here before
> initializing uzonesize:
>=20
> if (data[0] !=3D 0x14) {
>     usb_stor_dbg(us, "Media not ready after ack\n");
>     return USB_STOR_TRANSPORT_ERROR;
> }

That's an error return.

> The data[0] is status[0] showed before, and it was 0x0036.
> I am not familiar with the status code of alauda.
> How can I deal with this condition?
> Is it ok to pass this condition when info->initialized =3D=3D false, even
> if the data[0] !=3D 0x14?

If alauda_init_media() returns an error, leave info->initialized=20
unchanged.  alauda_check_media() will return an error also, so the bad=20
division won't take place.

Alan Stern

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/e1e593b2-fc50-4303-a01f-b7f7bf467c4e=
%40rowland.harvard.edu.
