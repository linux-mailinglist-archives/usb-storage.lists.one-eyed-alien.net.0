Return-Path: <usb-storage+bncBCUJ7YGL3QFBBW6JXXVQKGQEGAKHGRA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B623A7C7D
	for <lists+usb-storage@lfdr.de>; Wed,  4 Sep 2019 09:16:45 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id g9sf11282191plo.21
        for <lists+usb-storage@lfdr.de>; Wed, 04 Sep 2019 00:16:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567581404; cv=pass;
        d=google.com; s=arc-20160816;
        b=yz/nNvEa2vu2xWq/1IfnpGKU6HpgRgjJMDub9VfLaUjNOON6ZWKOC7+vIeERFxKBk9
         iM9ehsB29hvFp8W/SFlTanzV3ZvMd7wYcQ12PRBWYRNrmSTm4h/OEMlm10GXl6XK3KKX
         LdmVfcHtnL6bAq49diTzWslc6WuwNYciO5RoUj6CaWvmPp7rwLsp+nu03MYCAjX0ZgBa
         Z/nVk0l0pmw74MEC35bu2rN9CEqGd4f4WDEr1l3ruzZsSLyACt1hGyOpG95NIpxPH/YD
         zm+CvtA2MSdI15WODJTnYQ3AVcuvOmThVYjDFDJ3sFWg3S9WAgaxa8/QhyNebyYy2SUx
         9DlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=6siQ04gmMchjgr7OaI9pO2YuZR2AiGbCK38Zs723VJI=;
        b=LozFVA4WEZUsbOSyVs1JcP/H2ZNpIuBLeB3YspeiMgGhEJu6OC/zWcnd+GIt+oqO++
         uW01phkN5EDhCyN7djWxKZc8YiT5GeExXBLLgkwFxZviYNVKqTxhQJkfp41udAG7hu5P
         D2hJw6c8lJy5ouR5Csj2gJAAy35Ad2k9LoREo/KosBqKgvAmB7K4q3wM5o0r+NgdAFKw
         Lnk3WsRCNy69xCHNamVMJFzcvdxq88lwFa4deVxFZOG1B10LULbAoiKYsxEk/O5bprAr
         1JlDDq5Dw251aH3GyVd0kH9/w5C3x4+6exii25PIYzaff79PjokkB9x+HSPCEw2nw4d+
         HwpA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zOH9JjFr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6siQ04gmMchjgr7OaI9pO2YuZR2AiGbCK38Zs723VJI=;
        b=bhBs6BPinHJD8bf7pPz8HbVuG8Xc/p2KUg8Y59BqInJ17IcAnTQteBEbhrmFsUf+wu
         P72XshlP3k/RSMNqSjxaESJz0U+2G4SmE4iAIMILyOgJFhhMykKjjnZDinYRjtylJynL
         UUuMYxpAcP3/0leCn1KPtapHOku7zlIS0nplo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6siQ04gmMchjgr7OaI9pO2YuZR2AiGbCK38Zs723VJI=;
        b=SNypm+A8NpaJY+yLqdFFOFbIggpfLW/bzxh+/T0E3BdnTqfW8aaddV1qid4VezRVq5
         pj/1BBmDn2Bd6m/Wt6etjVx0Qjeftii7sCb6wvTAjIB6qeWNzL+TuqoWqxPFlMxZ9CkD
         CvPSgIvCaVHyHH1qAEHT0qv+dsmmQ7H/70Ydh+S6WbDwk22qKCEccqA0/YbCQM+Oe3Xr
         g9wb3VN+kpPgkGb0rr4vg45Ot+/NPHvvYraEKp0P74yLvG6HGVt7H1zSQEYWIRHvsSVv
         +rCmtBxxZaMPV5k/qKmlUs1K2NjVbK+HwblPb16TedSdSScQM2hAaG/u9CzSllZZA0t7
         FTSw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXfnDE9JO8kFarzVU20gLiBkvcmonBv5/7xwPTIl9WD9tSiIgNk
	iZlVptPmmEiFGOeJ2l0MAv8FjA==
X-Google-Smtp-Source: APXvYqyjNQMzcVl/SbT6lPuC/iGFZ17CGPqssbRmsIt2V+JIk1z464xNs7dkL8kgQs1ezRI5kqH2Fw==
X-Received: by 2002:a17:902:343:: with SMTP id 61mr40821492pld.215.1567581403902;
        Wed, 04 Sep 2019 00:16:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:f84d:: with SMTP id c13ls6436157pfm.0.gmail; Wed, 04 Sep
 2019 00:16:43 -0700 (PDT)
X-Received: by 2002:a62:2a55:: with SMTP id q82mr41279864pfq.23.1567581403446;
        Wed, 04 Sep 2019 00:16:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567581403; cv=none;
        d=google.com; s=arc-20160816;
        b=G+OG8qfpFYXuFww83eemfw/MiDGjxpagkX0+icNMAI7WS6wEACNMPnLfdnFThhKvNT
         XingopkmmX/nxOVk377hMxprREbXX+W06F5Ycy+DiLuOY19sb5r5Q/P6WgFtKNFMcx8c
         hbL0OlJ6Xyo3TPkUC8bm8gS4VpZ7HOudEJby30IiwGFY8pC/ISJMNxciZUMC2tWqh0SC
         AKgLwkT4rMINafhcu42mOpXpdiFzS157IpaPbBImyueJ6WOQ2Dogk4xpq7eJTXLXpIHi
         aOlF1lKCjhPvtWPGdWOCdxA9RUc97iBstfzVyLetaOvGSGX9aS8ORY/cGPwWKA82E0Dl
         L20g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=vs17P3hq1ATuZ8euyyMEAEW4Tq+b8nNmYJ7E1qpvcJA=;
        b=t0UO/+c75heqU0vD29q18drVLpWkuTvoAviNbabkgEBeRld3/O8B4vhRwZjTFfbhxY
         a0Nia+dvvPc/Par4eZzoZwlwVEA7p5+aJf4Eh46Qqg6C0EuAygkii48D6E2Zwt+iO7Ba
         +vg9FkM2pQOoKp6sskPpCkIt8po52BCpQMBFe33RdRKWndcO4V3YIdiWn2fb99zRkmdO
         kMeQEJpGqrmqtf9LVWmuyVq6mT7Max39PW/fqfVrp4CKnxuOmeZISXuSo3PlhWuDln8s
         ib9sEAyH8kCJ9pPUHvNce20ikMUzjoIw8WcSj4iFpU+ksTuWBI9s+IBdE+etCdyp1cgH
         H0jw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zOH9JjFr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id 33si16882115pli.149.2019.09.04.00.16.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Sep 2019 00:16:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9F4972339D;
	Wed,  4 Sep 2019 07:16:42 +0000 (UTC)
Date: Wed, 4 Sep 2019 09:16:41 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Matthias Maennich <maennich@google.com>
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com, arnd@arndb.de,
	jeyu@kernel.org, joel@joelfernandes.org, lucas.de.marchi@gmail.com,
	maco@android.com, sspatil@google.com, will@kernel.org,
	yamada.masahiro@socionext.com, linux-kbuild@vger.kernel.org,
	linux-modules@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-watchdog@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v4 09/12] docs: Add documentation for Symbol Namespaces
Message-ID: <20190904071641.GD18791@kroah.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190903150638.242049-1-maennich@google.com>
 <20190903150638.242049-10-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190903150638.242049-10-maennich@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zOH9JjFr;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Tue, Sep 03, 2019 at 04:06:35PM +0100, Matthias Maennich wrote:
> Describe using Symbol Namespaces from a perspective of a user. I.e.
> module authors or subsystem maintainers.
> 
> Signed-off-by: Matthias Maennich <maennich@google.com>

Nice, it's good to have stuff to point people at.

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190904071641.GD18791%40kroah.com.
