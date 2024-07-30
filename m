Return-Path: <usb-storage+bncBCFZHPHU3ENBBQGSUS2QMGQESAOF2PA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id BB969941F0B
	for <lists+usb-storage@lfdr.de>; Tue, 30 Jul 2024 19:56:18 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-1fc5acc1b96sf50707655ad.3
        for <lists+usb-storage@lfdr.de>; Tue, 30 Jul 2024 10:56:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722362177; cv=pass;
        d=google.com; s=arc-20160816;
        b=imwt4WGNi/05JcIxFbJ0gYbij5XGz9dqHcAbYBvI6qXPSBjRuNcWX8GgTnH8iAlYXu
         pb8HU05hZeck2BWKJmIXMyucI0S0/kGxT7DaYYYKHir8APqYAY8IezNeOMchF+nIbRRN
         6jFf9mfwAkoUAuGxSdEp/Qrb5RV3Oz3tiMhmK0R+BafdJ+LVdkTCqvshSDcgGEciv+sv
         p2dFndjJmli20sWbC0yfLwtUkOl01Em0DAn0hft+hosw5GGgX4QEdGIpSfHnt3Xdjhmk
         uNJxUBBOu7Tq9JPVK0/bwIqBUmqF44NICoWRbBza/5JLPAGmwEH6rA5TzXIhxPY964PS
         51ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KO0ofKm40m3pgNEEL0NhsKTrycx3Jwc7mcw6L52dwfE=;
        fh=7vQXQwfExjUOSRnFCbEajanAfOuux3UUbv+uti1hteQ=;
        b=jkNczAW1wg6qDgw2x5i5kWFrc1/u8WOARDBr7ZH7Sc00MpsVdRmehsDI3TzSqNU+tX
         sJy1N32a9Xn24Xi0E5J466aYauP+RU9bRNTswN+y5tasERKOI1lgGiKq6Y3mhX2mIuy6
         SX4+aeBfWMV22+zvlgqy5QdcgrtaEqjWwjM48dG8sTaEqGa8oUVeRktJ9+BoMgAapSjW
         FQsX88taW0mksApQSkYhTALvjjwVvMoqhYwm6yFw4Q9WZV3So6AlSluzaZXJxfgLzT5D
         fU+wkEt8fK9z4VTOu9iQK66qqX5fOeQ6566k2rIDuJxW0bSw+uNM2EzkxNiRl+SMYh5J
         2TZg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=S8fZNqNl;
       spf=pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=abhishektamboli9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1722362177; x=1722966977; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KO0ofKm40m3pgNEEL0NhsKTrycx3Jwc7mcw6L52dwfE=;
        b=cVlxJTIAH7lUp7Z7xcEs6dqAKPPV5OaHhq7zTRcA5/pY6kLPgL5nwuLCNb6Q2MuWtd
         vSHWUdo+l+P1HM7EtJ5fcs7oGQOdPbv9x/FDPn4+74HNfBmR536rWim8vwPJRHfHJ0xW
         AgrEN3jK3HAz2osfLTVJiojGBDkpBHDvdrADY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722362177; x=1722966977;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KO0ofKm40m3pgNEEL0NhsKTrycx3Jwc7mcw6L52dwfE=;
        b=qGgGBkgPrpkwbGVbdtl779Ui+YZKSxZSwHnqUgrUE4P+q18vDTPAL1RLFkqExjTUyI
         hpVaDO1JQ0I5IG+W0fjP16Q/mA2Sb38mDPw6zMmPJ58QryzRASb7jS4R3Q2Nz/DHB+2+
         0zwO8fYD4AwLuS/gQX7CVu4n/seEIX9dlKZ0erxmnka22YtzeyHM6XvjZItmDBhQmDXz
         w6ezC4r2WaNmtLMvwL73omu10gA8i384/U47aW0UGO3PuRJVUpXKax0TYJRGwsUcPB5D
         TCWmPn5/IF1Ufs1MBDCBPehd4kYnfSvSbGD9pd2jKBZym89crUxDHITL1gvP2mUk05rP
         HeTg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVfuB6XbRv/y656pssH1aXTtkop75XqXxwNzZ3bSicgsQeo+GFrRhiIGvrRQlng4urO6NLgPQ==@lfdr.de
X-Gm-Message-State: AOJu0YxT6r30OGpSbHJ0/bwp2WuJD+DL00GJEIKRcT6AtJHZg+B7wx6H
	X7zGgBYMadd1QFIuco9ULhPsNN5Ss3jaxIoXUddPAwMPl+7/bmYLKOwpKeXfpy8=
X-Google-Smtp-Source: AGHT+IFEjpEaiCfX/gkU0QqO2ueoWJTJ8RDlYSVBWe5TYEsSRk2Cp4FJVLdWVlabpns7mukNYgaLow==
X-Received: by 2002:a17:903:846:b0:1fd:8f66:b070 with SMTP id d9443c01a7336-1ff0491aa51mr109021095ad.57.1722362177054;
        Tue, 30 Jul 2024 10:56:17 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:22cb:b0:1f7:414:d68b with SMTP id
 d9443c01a7336-1fed205e089ls45687705ad.1.-pod-prod-06-us; Tue, 30 Jul 2024
 10:56:16 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXxUQHA3O0hkfNeYEX36CRztRnfxZycLN5NPa9KQZldtVcG/pdpUOjYJxBtEuX2sZvK0glTA15gMkVYHg==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:11ce:b0:1fb:62e8:ae98 with SMTP id d9443c01a7336-1ff047fe993mr172197935ad.3.1722362175995;
        Tue, 30 Jul 2024 10:56:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722362175; cv=none;
        d=google.com; s=arc-20160816;
        b=C8AT8ZHHmikgV9gvqGyT7PljYP6Xp79hIV0aHWiyjUZPH1Q7evFSMQXLQsUTZu1r9A
         9/m8Ky8Vq9rsm6ejsiGDCQ0IYyzP9il6/aXhuGpurbiW63JEVdGK5eov6eVf9Jkmqe8u
         NM5POw3atmiNvhS95I+iV/cnb+uMRI9GDbStuCMKOxt46ETPBTzUfJxINfUA+zQjwyec
         Z+mN4eAlQGOW1LYJhnM5NO3AX43u1v6zLcWcksO6EFO/i4ZJFdPYhgl9AiGc9vRNPKOl
         M8FQJd0CUOdM0uE6XoGMPPOMFiBXhB2zkDR7+yiBKsSdSm23uUKj5T/bLQvqC+2HHXax
         UT2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=No6rY78M5KIj3DpjY3N15+J63kX9R0sT/Ncp0Ijs1fo=;
        fh=NIATLJMUaz98OvjUC8NkzkM74xB6I+tyPDDToMCBwyo=;
        b=org3A7p/jp1CrMZjTOoa9XBCBhINxzbQd/AgOeLetiFoU+VT81ZbwjNkpAqIDOzUC3
         V1CqXfry6OgZGgxLpkocH67yMKEOsmuWP6bsINkqlInfjQSun+Bon4snssmH84jcUPyV
         xsH1bMT7+s4TCgkFgAXzQuGUD0ai6NcvwBlRu8hPVk1OQdFztuw4DWAEgBZH8J3fMGfH
         9wk9fTCKWvsA3rZygxxL+QHKL/ZwXxuDhPgA0ojm8K1zZAcvajqtWXCBgkERDjvpWkzr
         wZAKc+Mm2oohWhU0cuQvi/wsWvBOS8X7YXBRgoFQmRO26rcjJfcjplsQfhOOhcHZjTPo
         mKZQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=S8fZNqNl;
       spf=pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=abhishektamboli9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d9443c01a7336-1fed7cf1dcasor77887815ad.9.2024.07.30.10.56.15
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 30 Jul 2024 10:56:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWNapeIVg8O3y3qOHVMfHnp4lFncif7f+AGFvWwcGmbbxiZCeMu+My1HsCDri9+fNbzw9S2bIzaVBmFog==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:fc48:b0:1fb:1cc3:646d with SMTP id d9443c01a7336-1ff048521b8mr155538275ad.29.1722362175400;
        Tue, 30 Jul 2024 10:56:15 -0700 (PDT)
Received: from embed-PC.myguest.virtualbox.org ([49.37.130.209])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fed7f1b6c3sm104848285ad.192.2024.07.30.10.56.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 10:56:14 -0700 (PDT)
Date: Tue, 30 Jul 2024 23:26:09 +0530
From: Abhishek Tamboli <abhishektamboli9@gmail.com>
To: Oliver Neukum <oneukum@suse.com>
Cc: stern@rowland.harvard.edu, gregkh@linuxfoundation.org,
	usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
	skhan@linuxfoundation.org, dan.carpenter@linaro.org,
	rbmarliere@gmail.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: ene_ub6250: Fix right shift warnings
Message-ID: <ZqkpOQIjcBSAg8rC@embed-PC.myguest.virtualbox.org>
References: <20240729182348.451436-1-abhishektamboli9@gmail.com>
 <e72cc56a-3066-4cb8-848d-bfe27a48c095@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <e72cc56a-3066-4cb8-848d-bfe27a48c095@suse.com>
X-Original-Sender: abhishektamboli9@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=S8fZNqNl;       spf=pass
 (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=abhishektamboli9@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
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

On Tue, Jul 30, 2024 at 09:09:05AM +0200, Oliver Neukum wrote:
> 
> 
> On 29.07.24 20:23, Abhishek Tamboli wrote:
> > Change bl_len from u16 to u32 to accommodate the necessary bit shifts.
> 
> Hi,
> 
> while this patch is technically correct, it papers over the issue.
> Could you please
Thank you for your feedback on my patch. I have a few questions to ensure 
I make the appropriate changes.
> 
> 1. use a constant, where a constant is used
I think you are suggesting that I should replace hard-coded values like the 
buffer size with named constants. For example:

#define BUF_SIZE 8
unsigned char buf[BUF_SIZE];

> 2. use the macros for converting endianness
Can I use macros like cpu_to_le32 for converting the bl_num and bl_len values.
Should I replace all instances of manual bitwise shifts with these macros?
For example:

    u32 bl_len = 0x200;
    buf[0] = cpu_to_le32(bl_num) >> 24;
    buf[4] = cpu_to_le32(bl_len) >> 24;

Is using cpu_to_le32 appropriate for the data format required by this
device?

I will make the necessary updates once I have your confirmation.

Best Regards,
Abhishek Tamboli
> 
> 	Regards
> 		Oliver
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ZqkpOQIjcBSAg8rC%40embed-PC.myguest.virtualbox.org.
