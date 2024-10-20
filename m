Return-Path: <usb-storage+bncBCUJ7YGL3QFBB4WA2K4AMGQEE3RTTOQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id 736849A52DA
	for <lists+usb-storage@lfdr.de>; Sun, 20 Oct 2024 08:17:24 +0200 (CEST)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-288c53ab7absf3348041fac.3
        for <lists+usb-storage@lfdr.de>; Sat, 19 Oct 2024 23:17:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1729405042; cv=pass;
        d=google.com; s=arc-20240605;
        b=VTjad6WbODywIXV8weSZNF1Ufa5nixgINDRDAIQGOkg89DPSFMJPkl8DVzabZMAzRq
         YPkEkHVdEQvtn0q3zE4YsKuEbHvlN4OfCc0+jjbQNSvEz/4SQgDZqqOuroVWp5d5ZNuH
         NPyFWsAlfg+yleunbyNr61KskisY0ICd/MnQZWzDxLVDWXAeHy5XBsZOVtbfvn38CQjH
         Ge+N/cn8U2SiihRlNM5tEgFVjxmoO/BvU+6gYJcu5ecs78OAeWPcqjyn3I0sFRu0wtG3
         xtC8yWfFtRsDF87ppex5q1ZQ5/sY6fO7v9X2Mar06VVuIYwzZcFRwLhazj4lt+5XnVaB
         Uy5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=iI+QANBGmVPAYb/aYiMvLFHzn2q/0B/QCcO/UIaMumY=;
        fh=7aZUkD2aDZG3gIB4KcNC2EolbLGO8Oj9Bqa3bejoGIU=;
        b=Iog9XTqwQp6HexyS+VZB2U8nTyqOTVh4FGIzhUhA4Mt1yxP8EViYC/Yva8gbwX/y/B
         GfkVSoOqMl8fQUgXEiJm12rI/98XO9iV4Tybl4uXjr/L99SMsO7FOHNUyKF+vX3EHiEa
         ArZrqSf546qD6jwA/YCKwLw+4Xx9S0yV9EIgQ64KGJt2EWmfI/w0WxAFMuTjZ02ZXUS4
         NF1cUA0ZZMCyCkfOJLr74uymfz68Os7cDvPXPMIm4WfJS8FEEZD2YN4hrWQzfd6BqudH
         J4DhzWd4+xJLFQttyLsrwWV2N/GcHwajxpWVCsZ2sIjMVom1srHj02PLIWazmIeNFcoT
         IrrQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=1zO+4W+q;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1729405042; x=1730009842; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iI+QANBGmVPAYb/aYiMvLFHzn2q/0B/QCcO/UIaMumY=;
        b=UN2zTJnpSU6B00OP1iX8dEhV+OLdVAh/BlB0ykOtgVuoBGa5bruruf4zJyE0mZJAgT
         ost1an8DZ+oZhMwOWxarE5lagP1VCFHS3IrN3iihxqbbRUtl0zgq1dYNT47UFuG0SoIH
         OOKjlGKZAGWmO/Zt9fG+mDfQ0VKW2lRZqo/5w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729405042; x=1730009842;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iI+QANBGmVPAYb/aYiMvLFHzn2q/0B/QCcO/UIaMumY=;
        b=tlw3/unU03aAiAgrq/z5VYtAAdUpGfrJbBeKWsEvZ4j/PaFmfBvAxlKE7dr4hPvTJY
         QlxR6jTgxQFT2PzQynwtmK8vUPiwZKLnCRlERKk9wXgpmkvGBTs2NT7Tgli22WZODzrJ
         QrUJfpgvXVB25Pbjb87NatLxlacXYJwaH46RuTMsWodefIJLcUgr7mhDRWnZbPNG5te4
         LqhSEdM/ZL54FiEP2fMrCBXES6nrFDiL0T/5hc72Am/4RDYAoky3NHbzgouPY6ahFO7K
         XxNcrQyPJzaobZ+xyAv5RfHktNEyC48R4tzDl6IugcIAQi7Ij0MRrxGo/YlpSBKE+VOU
         NwVQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV5b2kXGiQMvzcmFaug/Tmev4hpupMhReiakFdrQzRnncd8lgeY2eunYMZ6llCnVwGij240AA==@lfdr.de
X-Gm-Message-State: AOJu0Ywwt5H9xYV5LAdR9nJrfzAA0iB5NyISu9q6As4TLud8Q270LZEm
	A49VR6SZkI5Olp8VSh+E3VsMqMfEBMgKdEKgowC/HotgerzqB0F8QX3Qb04y6dU=
X-Google-Smtp-Source: AGHT+IGy7FjTzF8457NCnKKehBbFII3goMoZVPfw+7io4H66coWQD7poIrHlEmCo3jddUpM8+uDftQ==
X-Received: by 2002:a05:6820:610:b0:5eb:7e7c:5303 with SMTP id 006d021491bc7-5eb8b3a7aa3mr4419062eaf.2.1729405042299;
        Sat, 19 Oct 2024 23:17:22 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:22aa:b0:5eb:aaa3:6dad with SMTP id
 006d021491bc7-5ebaaa36e5fls310646eaf.0.-pod-prod-09-us; Sat, 19 Oct 2024
 23:17:21 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXuXy0P4X+BYB9SEBYUjaHmbkqgM4fEpUtGl6ReravuJlgDfZv2VR9vMwjw0txmYffwD9080i6rh7x8yQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6830:3687:b0:718:3b7:23e4 with SMTP id 46e09a7af769-7181a8f7b69mr6576846a34.23.1729405041565;
        Sat, 19 Oct 2024 23:17:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1729405041; cv=none;
        d=google.com; s=arc-20240605;
        b=QIzvXBlqigs0cI1X86x8E/9td38M0Cqf6VDUW7Bg+62anFaFdLgWX8QQ95ac/FwY7q
         SRIufc0zt00HdWVHKRNEsVbCU1a99Y2sxd4HEfQ4eWnRPpPKIF9nmGtJG3SE/jtfnABR
         uzBIlaSMGNGcY7C/1vd/GtVVmRW8W0PtckmstxdKveB6ccz8aUv+oCP940cdbceNsp8N
         KEK5OpdgF4F+/D4SmKWB0ijRvN2aSlw127ynTTjoDoH8OzEKDl3O9kHn0xFuOA8yQan4
         209rSgbGwwbW1gmEZ+AOx/fGakqq9cDwWYrsNlyNQ/9TgzGCK/k+OIUICCE3zVNmUy6E
         UuQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ldOoNhi4IdrJjyWljDeozR5mBLUjHei28hhfCdhcuho=;
        fh=JRI2/7ywVLyOY7Bw8kiJy5Gek2f7ldssQWb5rMa5vWg=;
        b=JjRrQTQ8ZAI62T2VFWx5OqJpuFqRWqV9qE6gFgE6K5ZV4IL+3JBy36KAEBtb/iuw26
         rSz+FfolYDCguci69PN3q7NsihBipxCDpwq3PxlY9xP0UNL35ADkbShyyjtGwwB3+8K4
         fpvaeV4qH/KxvwQm7JM17y8Mkdc4ATRsl+kItPJOv2leoERxk/78yf1S41K3ryBGQwQy
         6zrvaqavlgsGlq84tw0Rx9SbH/lmC+9ofu43Y9HX67PYERSAIjpTtv5YZX0c1u6czCUf
         Jix5Fr2h93LJgwsalDKTRXN4g2XP9/esnuorPzKwHJpt8vvJ0zvYSewaw4C/jJOJEz4U
         QTVw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=1zO+4W+q;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id 46e09a7af769-7182eb3ddeesi507673a34.89.2024.10.19.23.17.21
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 23:17:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7C20F5C53FB;
	Sun, 20 Oct 2024 06:17:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6CCEC4CEC6;
	Sun, 20 Oct 2024 06:17:19 +0000 (UTC)
Date: Sun, 20 Oct 2024 08:17:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dingyan Li <18500469033@163.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v1] usb: storage: use US_BULK_FLAG_OUT
 instead of constant values
Message-ID: <2024102056-yearly-caregiver-d684@gregkh>
References: <20241019160822.6862-1-18500469033@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20241019160822.6862-1-18500469033@163.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=1zO+4W+q;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Sun, Oct 20, 2024 at 12:08:22AM +0800, Dingyan Li wrote:
> Macros with good names offer better readability. Besides, fix an error
> in the comments. In the flags, direction is in bit 7 instead of bit 0.

That means this should be at least 2 different patches please.
Remember, each change only does one logical thing.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024102056-yearly-caregiver-d684%40gregkh.
