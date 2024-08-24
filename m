Return-Path: <usb-storage+bncBD64ZMV5YYBRBX7UU63AMGQEDQMWYJA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x347.google.com (mail-ot1-x347.google.com [IPv6:2607:f8b0:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA0F95DEAB
	for <lists+usb-storage@lfdr.de>; Sat, 24 Aug 2024 17:21:05 +0200 (CEST)
Received: by mail-ot1-x347.google.com with SMTP id 46e09a7af769-70938633d8asf5423864a34.3
        for <lists+usb-storage@lfdr.de>; Sat, 24 Aug 2024 08:21:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1724512863; cv=pass;
        d=google.com; s=arc-20160816;
        b=spiaozs93rVFuEPYPv2myvkPDBpYdLhjaldB22GKbhaONI2aEfYK+i8oxuktYOWRXK
         brJ0JaEgLkm0yDexJUDFYFNkwBHu0row72O7idy3upDQ+295DNo/y4l8d434IDXRpprk
         2pBgTFzwbTJyRZto1dZgy5iqWjaUeRTo5NgVdJ5fx8Hqo68+HEKbhscdSsSBXK5X3nn5
         qu3kU1V1KuPZzojxGILCpChPH5Cap6nHNuukV96FblZpew1xCuSKlO8aQbr2+T7Jgwwk
         +9X7aXEZktG0ykpgX+cFYWqFo66/dxB+2FlC8pGVXoONvgjPjXGIxAugMeUWhdS+fsG4
         T8LQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=DC63Nc4Jkm3MX5Ol1yG38bFRli8tx0F9XcM6xG3+zCs=;
        fh=NCyfDAbLABJ7nSYWkocaTGF4UIu1Gci1WWz2o2+DM8o=;
        b=Za69qyuFsJ4sw4XFS2vHmQjgiFStUw3jR3cYqrD6XkwL/IuS0eUOy096bdA+v3D2aa
         1it3+hpmf5TqIyTfHpVsiIUAjlbpq519ahcwayJBmD2ogo15rfbkNtPaf8KGP/tK5S7z
         614NIXYA7spDRsb3k33ykpaPFpRx6etK29K7XatWIuaxw+cCDORkMwpNnX+T5rIhD4TT
         z4kGUrbnOO0giShsqr7cQ0SS5Z18KhbmeWbgm2EM7G+v75GxwPq6O+VImO3b1sWzafO6
         md0so/p1II0Ur0DHRzqLcuK/+pcIoWiS6K5VUtgURsCh5oNoxKt//lzhrV43QvFmsdrz
         wFoA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=kSjKsEsu;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1724512863; x=1725117663; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DC63Nc4Jkm3MX5Ol1yG38bFRli8tx0F9XcM6xG3+zCs=;
        b=Idx4e9Jde0ZbraNEhZGHbLBZ9OxZyNaBpu0a9PI9VwqG8JTCsprTpz/7A1bwFOJTqx
         NyH7uAYLhzSuxXCsWTB3EmBEFgKfyRdGWVyzNbG3/53RaoKecx2GQX2OlvmqzR8yXxK/
         YuvOKxQH9ctDXVSJh7PZH6kikFWhn0gJdNebo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724512863; x=1725117663;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DC63Nc4Jkm3MX5Ol1yG38bFRli8tx0F9XcM6xG3+zCs=;
        b=BHBvsJQlvTb+AL8wTmQlFNPbzZXvfGId8sx8zOmbHUzlmcshlmc6+49UD9lA6oe7Ms
         L4LZsccD+N04BxeVcVc859X/yboUDmCZSXrbzuvVngzkfbJlqOXcAUHvBGNIKGDFk6RF
         zIoBU5KAntlrXPVYvjapEOxBSMk6cFED6vYF2o+ZcXdE34w3refmt9f8Wo7ni2iZ1HKk
         vtaoaWxPESpSBBo/XV6LQj707FxTJmCSnZX3K0igIeciw8ONcJI0GkTTc6/K8CN53HFS
         Mnx0p278a4Ro9a6cx4AN3ZeUowkxkqNfXQLa6+nxZPl1atvEU4je1tgpQSYJIYDFmvuc
         +I7w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW5PmA2a7r5tqCm9cLtPhnqg8meo+Jjzl0SchT3YHP8WCtl8Shj2cplwpGYyapgVzKYyQ5bRQ==@lfdr.de
X-Gm-Message-State: AOJu0YzTmth7zPcRX9TVd72Oap9T18fHu/InsRCtMkZXDmPK3zJe0hU6
	prOiytmurmDM9K3aT2y+oxWwB80Fy02gMB21Zkoh4AclJsOCUt4kNi+o9JcaiSE=
X-Google-Smtp-Source: AGHT+IETkQ7Nl/P5u5LOb09PSjGRHn6gNu/QZ2hvESIHGsYc8l3SBNRo3uAulTMfK0yXl0CzX6hJAA==
X-Received: by 2002:a05:6808:138b:b0:3d9:e109:a6d3 with SMTP id 5614622812f47-3de2a8a8f3bmr6731385b6e.26.1724512863565;
        Sat, 24 Aug 2024 08:21:03 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:198c:b0:447:f206:4e7c with SMTP id
 d75a77b69052e-454fc357b21ls38056711cf.2.-pod-prod-07-us; Sat, 24 Aug 2024
 08:21:02 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXRiSIsX11soGAMOFkJEkne7Aj40cNRVn5mftaRF3fk3+TsW7m9u7tRELwSWFC6H8M+lyVN6129A4kHzw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:1994:b0:7a5:419:24c3 with SMTP id af79cd13be357-7a689701f9dmr649858885a.21.1724512862355;
        Sat, 24 Aug 2024 08:21:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1724512862; cv=none;
        d=google.com; s=arc-20160816;
        b=NmVKqNfNvA5RKSr7PqyLkSaF14fJUEOGAkZ1N0oUhmb1uPN9eRCRsxjnDOmLTe3jYz
         LFbK712awQJWiLzpMeQHkZ74SwLgyxOBX4JL2mefazthg925t/BP7U4kvTwkigg68P3n
         aNtDwhn3GzBkpnpMnNhkbgPawhyCM1h1lLMzQ5vt5UIst/RcYzldqlas3DznkexeIq1k
         dnXBJJpmkgbf6uaHDRfuj5Glj+08NCyh5+ZczatdAIb5C8/IOaDLDDL1bqJAjWKoq/w3
         EKc3VPNIT+vZ6+Ot2zpSarsx9v3GgNzACes0WuVa5pb8vtICyR/WfsqZ0AHgun7LL8Sy
         WxOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=iFD/HdZvKaQemZyniW7+rQ360L3m9+rOVbHWSYB5I1E=;
        fh=MMt7USFoQdlV9VWsTnYExQ9tY4GEqVkL1BJQyWk8OSM=;
        b=jaNIbhEDLDwCmouQiYxcyE0K2jV+swzvOFehZMmZa0H0vR4MHATUhe6t3DJmvTfXVs
         SuzbL7/tEvFDVUXJENYJFOjtKJFJ+cNf4+YdPuB9suwZAuirDo3/yt0pmRYV3bZcUg4E
         cR6U1eXFk8H6LyQOVt6hW9lPgnQUdOk/2DdLTjqA8sU8UUHmRWwqOflIHw1jzAL6KYCf
         sO/AF0s7G0CwYj3Rx1XxirGBpd6LVSdOsduCGCUG/fxTuxZhDqzizL6CJCiF1dHO5KHF
         Of03XD2v+gxCuwOn/d7K9KZkTQnBI3v4XLzrb/LnhsSMYbg2O/2Jgv/OQ1s/cWJ852E8
         mkFg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=kSjKsEsu;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-7a67f3dc773sor452942485a.15.2024.08.24.08.21.02
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 24 Aug 2024 08:21:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVe4YHmndCph+nCtJKJMPbe/Bi+Z9eUfVeWA2HNEFBPFm4TPSh890N/dCZwTiAIdsI0teWJHuAov2+2ow==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:24d0:b0:79e:ff1a:2359 with SMTP id af79cd13be357-7a6896e3e5amr812084585a.14.1724512861875;
        Sat, 24 Aug 2024 08:21:01 -0700 (PDT)
Received: from rowland.harvard.edu ([2601:19b:681:fd10::546])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a67f3fbdafsm285372585a.119.2024.08.24.08.21.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Aug 2024 08:21:01 -0700 (PDT)
Date: Sat, 24 Aug 2024 11:20:58 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Oliver Neukum <oneukum@suse.com>, linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-scsi@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb-storage: Constify struct usb_device_id
 and us_unusual_dev
Message-ID: <59fe0f83-168c-4f23-b2bf-504649f29d75@rowland.harvard.edu>
References: <b1b75a2a64b1f6cfad2a611f71393f281178fd3f.1724507157.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <b1b75a2a64b1f6cfad2a611f71393f281178fd3f.1724507157.git.christophe.jaillet@wanadoo.fr>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=kSjKsEsu;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
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

On Sat, Aug 24, 2024 at 03:47:07PM +0200, 'Christophe JAILLET' via USB Mass Storage on Linux wrote:
> 'struct usb_device_id' and 'struct us_unusual_dev' are not modified in
> these drivers.
> 
> Constifying these structures moves some data to a read-only section, so
> increase overall security, especially when the structure holds some
> function pointers (which is the case for struct us_unusual_dev).
> 
> On a x86_64, with allmodconfig, as an example:
> Before:
> ======
>    text	   data	    bss	    dec	    hex	filename
>   25249	   4261	    896	  30406	   76c6	drivers/usb/storage/alauda.o
>    3969	    672	    360	   5001	   1389	drivers/usb/storage/cypress_atacb.o
> 
> After:
> =====
>    text	   data	    bss	    dec	    hex	filename
>   25461	   4041	    896	  30398	   76be	drivers/usb/storage/alauda.o
>    4225	    400	    360	   4985	   1379	drivers/usb/storage/cypress_atacb.o
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> Compile tested-only.
> 
> I hope that a single patch for all drivers in drivers/usb/storage/ is fine.
> ---
>  drivers/usb/storage/alauda.c        | 4 ++--
>  drivers/usb/storage/cypress_atacb.c | 4 ++--
>  drivers/usb/storage/datafab.c       | 4 ++--
>  drivers/usb/storage/ene_ub6250.c    | 4 ++--
>  drivers/usb/storage/freecom.c       | 4 ++--
>  drivers/usb/storage/isd200.c        | 4 ++--
>  drivers/usb/storage/jumpshot.c      | 4 ++--
>  drivers/usb/storage/karma.c         | 4 ++--
>  drivers/usb/storage/onetouch.c      | 4 ++--
>  drivers/usb/storage/sddr09.c        | 4 ++--
>  drivers/usb/storage/sddr55.c        | 4 ++--
>  drivers/usb/storage/shuttle_usbat.c | 4 ++--
>  drivers/usb/storage/uas.c           | 2 +-
>  13 files changed, 25 insertions(+), 25 deletions(-)

Acked-by: Alan Stern <stern@rowland.harvard.edu>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/59fe0f83-168c-4f23-b2bf-504649f29d75%40rowland.harvard.edu.
