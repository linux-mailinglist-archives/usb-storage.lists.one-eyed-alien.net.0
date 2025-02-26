Return-Path: <usb-storage+bncBDKL7B4XTMMBBVNF7W6QMGQETXKET5A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD2CA46852
	for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 18:43:50 +0100 (CET)
Received: by mail-ed1-x548.google.com with SMTP id 4fb4d7f45d1cf-5df498f31ccsf7616443a12.1
        for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 09:43:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740591830; cv=pass;
        d=google.com; s=arc-20240605;
        b=lqgCIfvoSIHNJLRSO32BZEnOqbqC5KziL+6i7AwRKmCxM0MpzoSZzTIIFckl3lBGvG
         JSiPI4RirgiUzg8EcmkNM99ek3vYesC9RbeYQpbquh0jcCtOPXTC54DInydIZYwpL0JF
         AkS3FPgu8YYPnUzAdNMqDwpRMzm8DmVBcZkLvWgwpftQFRWSX4lwoh0yYK8fO0fqvqeI
         meMkhXbU3lFqeFZR6TNvP8Q8xmX8Cko9KnCtP8B6LM22EsU7KK8HFrYXyuwL4i7csjEQ
         aqpHZ/UCxma/vizJ8r07cjfwEKpP71oarpYuevFX1LcBf6yEPxSooZuiUAJUR5/mLeWN
         dPUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=iF125A4VkrhY/ZXPcdDSzq4AGsHZNGhT66CUxRopehk=;
        fh=2BoLkCSjaI+wCyUSkQEwGEOO4QJTStKSzHKJdHpwwcg=;
        b=gO4tTGdxHjaLWDtzyDkYwmGG1pGg64kRBcDtwb72OEhjguVK5YbvJVMzXvMvsoofbq
         FuYa3fm8akoPrGeGx7MjLUlO43k6cu5z1Wjv75eSYOyqL2s6pgEO7MPnzBwk1yTOt3uz
         n22clQOb6S6S5ldjfdC11eiKg6ebw25NGVspqZIhvhgq6Fk6IWd+N4e3HBvqbdVoPj2C
         EqNqkE67PNfH0eMuDYPhS0C5fSrB3x3GWGx8w7qst2eTE31RPqC1sOrjlYgfiLjDw2pe
         g4PzTYZsvTzdtf4wXWiCBtxrV9uQUWM5HW6+4kjvsmFj+/yNjkjo9vRo7MsxtNVz0RI4
         Ma2A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@posteo.net header.s=2017 header.b=QgoWaPcP;
       spf=pass (google.com: domain of j.ne@posteo.net designates 185.67.36.65 as permitted sender) smtp.mailfrom=j.ne@posteo.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=posteo.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740591830; x=1741196630; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=iF125A4VkrhY/ZXPcdDSzq4AGsHZNGhT66CUxRopehk=;
        b=AZ1rHt3q8qBsa+mV2dKZUju1FnSNZCMokInqSy+a8rB3rvVKWP2cUEmoDBPAD0Mgp+
         6TiK46i8S8sqKptsdQCG6Qztu2nxtpjIF7bLDguICUrB6SzzJBIe9uu4Ks0AFxc0ZCNI
         57uj+SHcuVSt+FbKz1c95qt4gFNtlQAY5edy0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740591830; x=1741196630;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iF125A4VkrhY/ZXPcdDSzq4AGsHZNGhT66CUxRopehk=;
        b=OD3XIKHnPIEeiigNzpruFIrLNQYGvxyicIlevMnuNsD+y/MgSGN28RJk7quGkLE89j
         bbxSiHgZ2T3+uVmMmq9jOTEkEdcqtju9VBQ+vsNwVbNuVRnuL7bpOSWqTCTC0dCiHbyc
         jfK8zcfLDFBLaQjQtIGi2lUtYvy8vABT3PQw5sSAjPDXX4JNYXszyTlRDVvXmZWuhlKJ
         032LNu0ZMMjA31oJnxnhzir6KEHgcXrqCksKy7kmCjLaqwxpmYaWZrkKdNkQgXYV7S6k
         dvtlb8SXV5P1xaFAnLmW6T1opixgJsQmVTS4KkZSVYRW6QpP/Rr5kv8t7iyAoXnvd3qG
         L0mQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXG/d6vmTMcRhbfbP8dsZ4OWz6ckBAgU211dR51gcE8qp7fson/jqEQKpj92p15lDScuw7g+g==@lfdr.de
X-Gm-Message-State: AOJu0YzxTHDeg8JQ5wZjvxeGrGVMAdpYz6PCeXgwBJFB7s8ixHanyjPm
	perv+ccV5HujQbm+hVv08/TV1w7lh2hvrxyRs6YR0JfJNbN74LaZioO7bcvghcw=
X-Google-Smtp-Source: AGHT+IGrJTLEoV3WfjGiuOS36VC9T4tITTAtirPXVxx71wraTO7fxTZ04U5JPrQGDrWOTzxbthE8NQ==
X-Received: by 2002:a05:6402:388c:b0:5de:c9d0:6742 with SMTP id 4fb4d7f45d1cf-5e0b70df001mr21091296a12.9.1740591829590;
        Wed, 26 Feb 2025 09:43:49 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVFCil/w6OSpej473v3YaZZhy3IW4DDVTBPoBXUFdhu04w==
Received: by 2002:a05:6402:2894:b0:5dc:de5:3e0d with SMTP id
 4fb4d7f45d1cf-5e4bf2bf894ls73953a12.1.-pod-prod-02-eu; Wed, 26 Feb 2025
 09:43:47 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWr0VYJ/Nx6hYtQSqnXnJyVDoY5y1axJI23tuiO5jzWkEFUzaCkYN147ZDUdy92G7ugtgi0RfoPaaZBhg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6402:3819:b0:5dc:d8e6:62a7 with SMTP id 4fb4d7f45d1cf-5e0b70df0c2mr18367643a12.14.1740591827266;
        Wed, 26 Feb 2025 09:43:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740591827; cv=none;
        d=google.com; s=arc-20240605;
        b=AfFIKLDQ0U8IyiU7UUco3kJlmHE4ujyRJ+I0oml3IY5mqATpOrkNIZZngryUakNYUG
         HsHRvwBbyi3zQDrxghNbTW/IGlZlWWz2qC3QRw65X9cQfe71gMUztpzcIMFCrK6zHBxq
         gWrmvWHvnCxcm/h1UeiumsKq+7TfNMQu/fStPHddkO5gUpTKY0EP4sFbAUM+rQRyvzfY
         Lek2d/209KnSy69n/csROq/Qqoo0PN7ybFsDGcSoWaDj/i4nBbEuPXQs7Q7Z57WUrFI7
         xqWUt/5ezp/tmuo7AxQbu1FzeHl5LuXkV8GdElSy/SyOn2Chw1pTT+XIGgWt0Ie07RGy
         KBVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=veph+he5Bbv9CogG+i5WBCe/rmj/enoHbjLYrQVq+Cw=;
        fh=68GffuKZVYYoaJGWUhzgpC3Chni0j0yC6yfg340oB74=;
        b=HRVhoYC7F9Wenntj4UyG9b0akkOUi2ROrSPn5/hi1eVigVIeBVk15ykgizsOX9Ds2h
         AqfSugXy2+m+4X2EhKnfF8tHzfKMt0G4YziFCdmGNh+83R1kiudOWBhk3hu/P31JTNvq
         RPSVWLGEFNcUDv4fqWCkAE6AcEpDRusCgSD7mL47kFe3kM75q2H5PD6zvg+VY/4RZYYx
         8v9RkR81yJAn7tgrnm/Fc6ot8RcsVpbL/kVDvBimFB+c9IksqDCeDu98AwYorWGAWnT1
         1n+TkIEtSIjlfzsq/5Bv5QyY00S+qDqYUQYwSK0/KOXzzf3xgVCKQDWKckoH788FVRIu
         KLYw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@posteo.net header.s=2017 header.b=QgoWaPcP;
       spf=pass (google.com: domain of j.ne@posteo.net designates 185.67.36.65 as permitted sender) smtp.mailfrom=j.ne@posteo.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=posteo.net
Received: from mout01.posteo.de (mout01.posteo.de. [185.67.36.65])
        by mx.google.com with ESMTPS id 4fb4d7f45d1cf-5e45bae8a68si3979448a12.112.2025.02.26.09.43.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 09:43:47 -0800 (PST)
Received-SPF: pass (google.com: domain of j.ne@posteo.net designates 185.67.36.65 as permitted sender) client-ip=185.67.36.65;
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 07EF3240029
	for <usb-storage@lists.one-eyed-alien.net>; Wed, 26 Feb 2025 18:43:46 +0100 (CET)
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4Z31zk0DVfz9rxK;
	Wed, 26 Feb 2025 18:43:45 +0100 (CET)
Date: Wed, 26 Feb 2025 17:43:45 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: j.ne@posteo.net, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v2 0/9] usb: storage: Mark various arrays as const
Message-ID: <Z79S0Uzxx9VJM5tY@probook>
References: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
 <ea5c2735-cfb3-4e5f-a7f9-40d4493bd05a@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ea5c2735-cfb3-4e5f-a7f9-40d4493bd05a@rowland.harvard.edu>
X-Original-Sender: j.ne@posteo.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@posteo.net header.s=2017 header.b=QgoWaPcP;       spf=pass
 (google.com: domain of j.ne@posteo.net designates 185.67.36.65 as permitted
 sender) smtp.mailfrom=j.ne@posteo.net;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=posteo.net
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

On Wed, Feb 26, 2025 at 12:02:02PM -0500, Alan Stern wrote:
> On Wed, Feb 26, 2025 at 03:17:22PM +0100, 'Jonathan Neusch=C3=A4fer via B=
4 Relay' via USB Mass Storage on Linux wrote:
> > While reading code, I noticed that some arrays in USB mass storage
> > drivers are declared static but not const, even though they are not
> > modified. This patchset marks them const.
> >=20
> > All patches were compile-tested.
> >=20
> > Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
> > ---
> > Changes in v2:
> > - Add new patches 2-9
> > - Use consistent authorship information
> > - Link to v1: https://lore.kernel.org/r/20250225-misc-const-v1-1-121ff3=
b86437@posteo.net
>=20
> The patches themselves look good, but I still think you should explain=20
> in the patch descriptions why declaring these arrays const is worth=20
> doing.
>=20
> Merely saying _what_ you are doing isn't good enough.  We can tell what=
=20
> a patch does just by reading it.  What we can't always tell is _why_ you=
=20
> would want to do it.  That is what needs to be explained.
>=20
> The explanation doesn't have to be terribly long or detailed, but you=20
> should not omit it entirely.

Fair enough, I'll add such explanations to the patches.

Roughly, my motivations are:

 - Moving data to read-only memory can prevent unintended modifications
   and the hard-to-debug issue that might follow
 - Const makes it easier for human readers to know what to expect


Best regards

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/Z79S0Uzxx9VJM5tY%40probook.
