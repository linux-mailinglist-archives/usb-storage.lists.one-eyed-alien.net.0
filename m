Return-Path: <usb-storage+bncBD45FSE2XIORBCG5YPVQKGQE5AXDGSQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA1CAA108
	for <lists+usb-storage@lfdr.de>; Thu,  5 Sep 2019 13:16:26 +0200 (CEST)
Received: by mail-pf1-x445.google.com with SMTP id 16sf1560362pfi.18
        for <lists+usb-storage@lfdr.de>; Thu, 05 Sep 2019 04:16:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567682185; cv=pass;
        d=google.com; s=arc-20160816;
        b=joA/wvYh3TPATpu9waPyPvi6fDa5bpgwR9CWq86s2z8MunBJZeLSknZ0er54fEPLFY
         b/q16v6T+sS59wfeFVwsG3f8NsPedSdWWfQP7PySX5o/uRvXWhgzoE4/RIOc5Ub5fKHr
         3LD44DURcua+ApW5mZCTPTzJIfS/X9UtYXeGMjvc1GYFBBCczhq2QJka4hoHuvC8G1NK
         +e47xzpzG6YI0UF9cFMMOHMCtkn+qU4AYPowarW/soLxPbA2CSTH3vn6TG/dxx/Tp9mL
         3JlsFvSuhQY35psnAf6NIKSag0Tqm2UxuKBN6ZY/5xS0aOR9pXhdcMC6+w87JkPw+R2U
         JNzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=aJC6D/gamYHhL1m4d/C/tjt9ikT00DdUPlEodBTxbRw=;
        b=zwMG7INUtiUR74JeKS4iOQdBr2t/RtKsl204QDhzr9nJEVeH28XtrR2nuvvfbStxDM
         m4su0lutiLMLaOud55tufxR3u2PskIujdFjbOvLQWnDEUAaDyx7rs3EGs3CR+9aiLpTM
         dwyMRcRgmnLFcWJEA9J5g3RpLAqk6sJS9GcplcpLcWb9bCLCG4yX1h37eN1QZ2UqVnur
         1lRsRmvVGQ5oJzdSMAtD9l4emTQ87VtfucJeXQ1PFY4UkoaqNSOsd7i0k0kN/lisHf1f
         zX3FdMjoKCpDMft3lOoeKfZPDQ0S3p+Kt0j89Y3xKc39MtxrsCjHVQFp7mGpBPrXsByo
         Av4g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pU2eFvW5;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aJC6D/gamYHhL1m4d/C/tjt9ikT00DdUPlEodBTxbRw=;
        b=S0TzrTUCziIS5aH5Iq1fHUNO0iT2y/RParbFk3UOlTmR8RyWF5dUqbYvZTqNM8kyCP
         K/ztLdgPWPbrlgQz8Lx0ibha7HXxJ+UoaKEW9lhviCAilbRsKDWXQbMgRuAYwAVSZG59
         xVwrsavq4ASSzm+/XcbXbS8+yMIOkIQq4QL+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aJC6D/gamYHhL1m4d/C/tjt9ikT00DdUPlEodBTxbRw=;
        b=FDxENkSR+mkm89o55x1i6Zuleo6Xuup5WiRFcmSJW6TXIz1l1Oo9JfoGxrgfTMTTDD
         /WHgmQYb1tLK2yb3b49sZKE4Ch4oAdAYPBFK8mFfqm0ZNzwwWe7OzXI7/PYfwW11Ba0X
         zCbwlrev5mrNGXC2E5MzKyqgvDWdU8kzIYs8G8V3oaNCpM8WO3megBv3ZqyLo/NL9Ic6
         1ylseJ21X2Bn7vq7Q7ctYgVw2P6CZ02vH+t1vP3iae0ANecR4qcDx742SjzJhCO0Bem5
         8u8ghfbG33HWQjgPLJWTj0Ph8bJQkmOXFT/7x/e6Y7OXWfR3Xu7x7vcS+DVqlJFJrqru
         E50A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWu/pIpXTwc4q5B1ZLgR9Y2LEajBFooqEZsZuJWFqmFGGwneE/I
	G52SkvWGA2PEsdHCjOZI3752Rw==
X-Google-Smtp-Source: APXvYqxLHVlXssSIuO/TLnweH6v+MzGOL2Ih0QVC5KRhKCxsszHtCbZ8ISGxBjU6x0Cqb9sJXlj8/g==
X-Received: by 2002:a65:684c:: with SMTP id q12mr2460764pgt.405.1567682184658;
        Thu, 05 Sep 2019 04:16:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:9611:: with SMTP id q17ls577706pfg.16.gmail; Thu, 05 Sep
 2019 04:16:24 -0700 (PDT)
X-Received: by 2002:a63:cb4f:: with SMTP id m15mr2663947pgi.100.1567682184176;
        Thu, 05 Sep 2019 04:16:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567682184; cv=none;
        d=google.com; s=arc-20160816;
        b=gbEqg56/oQURA1Ypme1jav+hEN70JeMYI/zqf5PnkfQwGbyyJa1iIvWbkwtPUkYqcH
         e2kSyCwWpy7Q1mqyIcmkGNEVidiYpChP5eP2v+Sl2YvpsAL4mbTdJ6+DffKef7yWQhQy
         Uu3prPOPlVlrh5SiOpAEEvcunK7OOrLHmDTx6qB2IAl/Lcyeee7qcFj917eJSt13R/Th
         fSACADjBU4IaK9nSfBkz6qkoHsypnGzWSNBdmI0ZkspMWZRGBsponf6ky2uV4ebqRsCR
         wI2MpeVaUePY/DDcHCwuTebh+UC5fKjw2+ZXyTzBGJbOzffCoXKfax9lyLX4YE9pjvNU
         tIUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=52vWwUIsrM5eYw8n0RjjExK4NDSGElkSybh/xcYgcpA=;
        b=DzxgNZ19zDuN7q0IwiAPk942dayvx9YIT80MlQsNFCP6tdZ1vRtpODEJZfGlP3vzMQ
         JiF5ZLOICBCVNqQnVWiqVx6E5XLnB0YQc63FJBHsuMofBwp2rJKBIWyj8OUr0IT7jAPE
         LKVDgCrOcrwqDMpP1/u0l1Py+EFOnVUy0OelXOnEz2vEtdojmwRevzD8Ev7LydE8EKgf
         9wjgDqFJxTo0lQMySNKPrbMritWpzWDkaqpzVSOblfLKs0mOEOEBZVRcd/dahnqfXM48
         lEjfWd+h2xHCv2JhylpNFQACOoxjpCPujbkwQ4fYkaSHYrOrccf92FPX0/Ber9QsQ088
         vRWA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pU2eFvW5;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id l36si1513698pgb.292.2019.09.05.04.16.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Sep 2019 04:16:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from linux-8ccs (charybdis-ext.suse.de [195.135.221.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 957E321883;
	Thu,  5 Sep 2019 11:16:20 +0000 (UTC)
Date: Thu, 5 Sep 2019 13:16:17 +0200
From: Jessica Yu <jeyu@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Matthew Dharm <mdharm-usb@one-eyed-alien.net>,
	Guenter Roeck <linux@roeck-us.net>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Matthias Maennich <maennich@google.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"Cc: Android Kernel" <kernel-team@android.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Lucas De Marchi <lucas.de.marchi@gmail.com>,
	Martijn Coenen <maco@android.com>,
	Sandeep Patil <sspatil@google.com>, Will Deacon <will@kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	linux-modules@vger.kernel.org,
	linux-usb <linux-usb@vger.kernel.org>,
	USB Mass Storage on Linux <usb-storage@lists.one-eyed-alien.net>,
	LINUXWATCHDOG <linux-watchdog@vger.kernel.org>
Subject: Re: [usb-storage] Re: [PATCH v4 12/12] RFC: watchdog: export core
 symbols in WATCHDOG_CORE namespace
Message-ID: <20190905111617.GB27788@linux-8ccs>
References: <20180716122125.175792-1-maco@android.com>
 <20190903150638.242049-1-maennich@google.com>
 <20190903150638.242049-13-maennich@google.com>
 <20190903161045.GA22754@roeck-us.net>
 <CAK7LNARYqqCSCc0G4FL7_bj80iMoLLJrUJ7B3+huD25EUkrttA@mail.gmail.com>
 <c6ac941c-06a4-e5dc-5cb9-fca7b40d7e9a@roeck-us.net>
 <CAA6KcBBeP9xYbVws4=RMFNA4kyrodE-R3mifhbkee-Q+jFRcoQ@mail.gmail.com>
 <20190905104147.GA27788@linux-8ccs>
 <CAK8P3a0rf0PhXK1RdF1mWTyGggBJeH0h0YOCxDvJFgxu8wmWKw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAK8P3a0rf0PhXK1RdF1mWTyGggBJeH0h0YOCxDvJFgxu8wmWKw@mail.gmail.com>
X-OS: Linux linux-8ccs 4.12.14-lp150.12.61-default x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jeyu@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=pU2eFvW5;       spf=pass
 (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jeyu@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

+++ Arnd Bergmann [05/09/19 12:52 +0200]:
>On Thu, Sep 5, 2019 at 12:41 PM Jessica Yu <jeyu@kernel.org> wrote:
>> +++ Matthew Dharm [04/09/19 09:16 -0700]:
>> >On Wed, Sep 4, 2019 at 5:12 AM Guenter Roeck <linux@roeck-us.net> wrote:
>
>> >HOWEVER, I have one question:  If these patches are included, and
>> >someone wants to introduce a bit of code which needs to use two
>> >symbols from different namespaces but with the same name, can that be
>> >done?  That is, if driver A has symbol 'foo' and driver B has symbol
>> >'foo' (both in their respective namespaces), and driver C wants to use
>> >A.foo and B.foo, can that be supported?
>>
>> As of now, we currently don't support this - modpost will warn if a
>> symbol is exported more than once (across modules + vmlinux), and the
>> module loader currently assumes exported symbol names are unique.  Do
>> you have a concrete use case? If there is a strong need for this, I
>> don't think it'd be too hard to implement.
>
>I think what would prevent this from working in general is that having
>two modules with the same exported symbol in different namespaces
>won't link if you try to build both modules into the kernel itself.
>
>      Arnd

Ah yeah, you are right. I only tried building an identically named
exported symbol in a module and in the kernel, and there I got away
with a modpost warning. But this breaks when building the module into
the kernel, so I guess this is out of the question.

Thanks,

Jessica

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190905111617.GB27788%40linux-8ccs.
