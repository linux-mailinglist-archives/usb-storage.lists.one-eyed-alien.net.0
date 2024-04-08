Return-Path: <usb-storage+bncBDTZTRGMXIFBBVVEZWYAMGQEEW6LZCI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CB689B5D0
	for <lists+usb-storage@lfdr.de>; Mon,  8 Apr 2024 04:11:36 +0200 (CEST)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5a55f6dc981sf4052673eaf.3
        for <lists+usb-storage@lfdr.de>; Sun, 07 Apr 2024 19:11:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712542294; cv=pass;
        d=google.com; s=arc-20160816;
        b=h9gaFJZYNmDBkOm2jKwtW9OCdU93SKvV800RhcszINMkEjTBjZwa4+WkOhYTAm+k4m
         Oqu4V7Q5szGSc5i7J78wGSXA6rKaqanXShf0H6DuuiQbksR2LoP9qcgZvZri+TsBTyCx
         fh2pYXfFEWmXAcb41BPBtWP1rfXYNz417ILfuf/xOwaGGaHYfMXDk3qANaANBSB0qTWY
         5pNqk9OCkUPgwl08g7IahcIqHXtUxtYjFcLKArh3r8XmynGJyHQw71sfCRRU0k2jMO1d
         rLdRnFsdf2hZ4fWTCuO/RaGdReM/QaR8FydYNWiIoO4wuJUg5zTvcEjApW3B8lTzL0vt
         oCiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=z3HqIKBZiL1yVlgsrh97aNpmUXgKvdBRE4dDCSjJtwQ=;
        fh=IZafD+dHFf5NbHpeOSwpw7ykoZKFQgDnyFqhIMofbyg=;
        b=umjB6V70sUIcmlAOjehu8US9D4v05GqZmHuYyd0dmFu8eQVitxl2L4fBWhrAPWaA1D
         QHUorifn/L3PvjwRuVli6pPN3Zi4WPWcHcLJuu7BVWXmTX/LCmlaRIOEIDNcoU8MwJPH
         6u1lDuqWUJQ1PMJIZY9ui1KDoHHUtYixWgLSzOrfVpv7oknK45NLJuD1OG7Pr3080qjw
         L+wNs39y8GWT8yCPGIziwCuRn3BFu8iYe56L6JhN3y7ESS//dGDNXT9hlldLUOYPh5ha
         fboWMk00XjqGvYV6kZe0fGUlAdoSQCxA8mIloruAmO6LY39JILAPEso7EJbteyc/DBVY
         0Dng==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="fFe/BU2T";
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712542294; x=1713147094; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z3HqIKBZiL1yVlgsrh97aNpmUXgKvdBRE4dDCSjJtwQ=;
        b=LK9mbSq+AgK6E6pAe+Xrkk5sa+g20G2rYUeCp5R835dWSm/pAmOTpMzC8cXVFKGame
         /pDBvr/GMJV4tpxpHrhmP93wTpzUcgR0vmqPmwmZJzFYvEZNDifhnxON89k2l6UTzlyO
         QQJgbW7ugDZOWQL5CXNcCuB2sQRfnWgLvtmoI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712542294; x=1713147094;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z3HqIKBZiL1yVlgsrh97aNpmUXgKvdBRE4dDCSjJtwQ=;
        b=PhbCe12HfIHVZfyxu7ZmPvdKswTRahZ8mtcGKeA4g2aSJPMG4lL7JY9jji3wc6+GTs
         hpMwSL7JED3PU9bQXvUpjyvrDU61QpgKgWnXRpJMrvaIFT192QAaeMe0cLtZylSgedXc
         9JI6yIoo1f7NxxA2DNtEWzQWRlQStuKwNlLeyo/gVTNhNA5Uh21Pky3AhpSRhwmTcNQh
         6RDFQZa2c0NjNLTi6mCOBqz6kAg6RsgstbXzaVxZbdEAXWIjwtxdZmeIDl4KCZ2PaoYV
         /Ygo1uHy87TO9rE3ysPGFpJOkgPzsxecoFrye7691IWwz3BtkRpLHOVTyiAtVDo3azSv
         PjuA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW4Cb/EI0KOztvmMo9M54Qw25aB9/AU4pO1BeqUqr0YZ24+WNbf/9ZEdS9QTRXQQBUcFhTqvc2L7FNUxt+PjY8GJKUldvohMWlu
X-Gm-Message-State: AOJu0Yz/Kp22/68crPgra61tbso+FgdKbkOmOrw0sImuVYpeYF+ijAmR
	TbBTIePTUT6xCTG4TcItoUhzC9XH3BgfJjNj2N0Mroy0AmcjoS+T1bXDEOz0/PE=
X-Google-Smtp-Source: AGHT+IG3YHzY/bCv03EgMI5CL08uWwjzSO5cLkoxOQ5/EZ7NiLdPPV4fSBMHJ/t6xu21FUEfnKIoLw==
X-Received: by 2002:a05:6871:1c5:b0:22e:8ec9:4463 with SMTP id q5-20020a05687101c500b0022e8ec94463mr9305367oad.51.1712542294486;
        Sun, 07 Apr 2024 19:11:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:9723:b0:22e:dd17:99da with SMTP id
 n35-20020a056870972300b0022edd1799dals852025oaq.2.-pod-prod-05-us; Sun, 07
 Apr 2024 19:11:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVuMpwMpHtVwhH8fHJy6EHlUGtjKHV80gLJnM7A5QlWCoBIbWJBnB4ihvUdY9F85Vk5WWzS+ThnA8oCFq7rrgnmiyvNlHrv5yeu/CLBlsvLWZYmlws=
X-Received: by 2002:a05:6870:d1c1:b0:22e:c434:ec with SMTP id b1-20020a056870d1c100b0022ec43400ecmr8299818oac.56.1712542293392;
        Sun, 07 Apr 2024 19:11:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712542293; cv=none;
        d=google.com; s=arc-20160816;
        b=L94yCQBtHkPx9sbn+4RCJHmxepK1qfYVHAyf0zulU6GKSzZqzuMYd3NmVcViWXv1ld
         FnsLAA1zf5ZDc2+St/YAprCCWSZHYnhKQ0+L0N2lc9jiSAXQTCIQQeqat9FyvBUgh1wY
         Wd6CuBCPg63Ry4i2gFNQ8bsvRRbtkPnJMnHaCnnJcN8BmakYYP2G2dmxUX4D4egpgjIF
         hg6PLOZodu7Ks5VbZLsjI/q+EltEyvdDw+mKy792RdZRB50liAbsZnHcYCN94/hyVcon
         jxK+Dv2X9BAyePt+gKinV8PopqvrM1yuoLzg3rIDD/o6pMzhvA27MUjJbGJ+whoDxAWb
         Wi4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZX8HLyfFybtkPzTW0AEQYPylEJNKfvlRvn07sYyI7Pg=;
        fh=kJ1nFXv5efjh4jGkSFH6cokVRcRBZZ2x7vQmodtQ0DY=;
        b=ihoSWa+r+GtHusc1isTO2aqUYR2OwD2KzG4+MLMCYa7wWCtSHZu3YTGhTTDoIQEcAZ
         iMFz7AMccHUpND1PPwaT1g5DzNCqOIkKLbuxvZtVDFnDMkjEcp3GLlCxzIJ9xOZbMGxG
         sC/vnj5IsbauUsXYDpc6oMnj0VC160ibqJ1SPeZooDkupTFemB44SLOVKv0F43xMSPD6
         xDYqdAujYyV6/uT0KYjgbvmEKxb6U94WFFHzphLoktFuxMCIn0e8F+Nnp24HUZyESaoY
         BgYPhDzidxhTMfyDhx+6dGYufREm7Knudiduce+5a8M7WgH8feTLKJgz1FPHA9Fi1cLC
         ZW0Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="fFe/BU2T";
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id k1-20020a63f001000000b005dc956c2c09si5462185pgh.147.2024.04.07.19.11.33
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 19:11:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AC5C0CE0AD1;
	Mon,  8 Apr 2024 02:11:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98EECC433C7;
	Mon,  8 Apr 2024 02:11:29 +0000 (UTC)
Date: Sun, 7 Apr 2024 22:11:29 -0400
From: Sasha Levin <sashal@kernel.org>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Karina Yankevich <k.yankevich@omp.ru>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH AUTOSEL 6.8 02/28] usb: storage: sddr55: fix
 sloppy typing in sddr55_{read|write}_data()
Message-ID: <ZhNSUbc8Nbv_G8Ri@sashalap>
References: <20240403171656.335224-1-sashal@kernel.org>
 <20240403171656.335224-2-sashal@kernel.org>
 <cc6ee73c-fdb7-46bd-4f02-f342db846e4e@omp.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <cc6ee73c-fdb7-46bd-4f02-f342db846e4e@omp.ru>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="fFe/BU2T";       spf=pass
 (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted
 sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Apr 03, 2024 at 09:10:10PM +0300, Sergey Shtylyov wrote:
>On 4/3/24 8:16 PM, Sasha Levin wrote:
>
>> From: Karina Yankevich <k.yankevich@omp.ru>
>>
>> [ Upstream commit d6429a3555fb29f380c5841a12f5ac3f7444af03 ]
>>
>> In sddr55_{read|write}_data(), the address variables are needlessly typed
>> as *unsigned long* -- which is 32-bit type on the 32-bit arches and 64-bit
>> type on the 64-bit arches; those variables' value should fit into just 3
>> command bytes and consists of 10-bit block # (or at least the max block #
>> seems to be 1023) and 4-/5-bit page # within a block, so 32-bit *unsigned*
>> *int* type should be more than enough...
>>
>> Found by Linux Verification Center (linuxtesting.org) with the Svace static
>> analysis tool.
>>
>> [Sergey: rewrote the patch subject/description]
>>
>> Signed-off-by: Karina Yankevich <k.yankevich@omp.ru>
>> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
>> Reviewed-by: Alan Stern <stern@rowland.harvard.edu>
>> Link: https://lore.kernel.org/r/4c9485f2-0bfc-591b-bfe7-2059289b554e@omp.ru
>> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> Signed-off-by: Sasha Levin <sashal@kernel.org>
>
>[...]
>
>   I doubt this is worth pulling into the stable kernels, it
>does not fix any serious issue...

Dropped, thanks!

-- 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ZhNSUbc8Nbv_G8Ri%40sashalap.
