Return-Path: <usb-storage+bncBD45FSE2XIORB4WMYPVQKGQEQKYHXPA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 97253AA011
	for <lists+usb-storage@lfdr.de>; Thu,  5 Sep 2019 12:41:56 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id v4sf1190476plp.23
        for <lists+usb-storage@lfdr.de>; Thu, 05 Sep 2019 03:41:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567680114; cv=pass;
        d=google.com; s=arc-20160816;
        b=cPiNh+fsnK5NALVaJ33fJOMPrEMadftjjnNGOlwYJgbgWNEbssrmJh9TljrhQ6q5zG
         woqmWMetVHCfTlrOCDklGERPWP4AXqQxSKmWlZNScelh0b7yalhaEy4KORL80muM64TC
         K1hnc4YXhCmrIkmHGd8vWSA29+ZXe5Spt2DhRd6TF3Z4t5rpzkF57kKRsM0Bepoq1TRo
         5OjckMj4Ti3KGxcUNBEx8QuQxSi1NOxm4HbLgJXixg4mEBMdtGxn4tRkvXjF/Wv7fUqo
         +MTkijWcbHaio74CGAZSUsnf7N3nK21EW/XhDjudIwT88l/5G0SgeYT/iuMrkYzn4Bm3
         4Gkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=sl2Zrkw4vXyCLKuJWLyEpogLqKh2BN+ecqFxEDPqf8c=;
        b=qvdEKv7nYxfRKANLwbPlHf85fGkBKskandaXPUWRWr4tysr7nhmyvb8gW8HAXcgfiL
         nyvilnVVxD2Aq/rURQav647QPUHY0Hs1toZjp6+wIL/G9BfdBbpJdwBsnFiQ8GRMFEhX
         M5MDAhXW5FKzdTTPHLQySjU3YGk7pz/no+BGaOXL5u2KfALTa2rTgAoJX/D8kcA1mCuz
         rw8L1wQvxnr4C16gbRzW25HfdEnDsI8R5X9tfodRrEOgZSIQFfhRiWPc4uvlDxhKLGYw
         /fLJT1oEXWmzB/AZk43UJ4UgIYzcumutocsL4Yw3Jx6bEpjK1DZ1NaZF7W7TEkvWigGE
         sfNQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cxyT0NCR;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sl2Zrkw4vXyCLKuJWLyEpogLqKh2BN+ecqFxEDPqf8c=;
        b=FvamtlB4b2kKjmmaDfGwENgVjUhPIkrJRS3aIS7B26fJf6KtkqGuOsc3Y/7XfirWg4
         9AcEPJTwNBZPIUeYL2isWjz+PQtQDDMMHqzhMoQ1j7TFe/dD9Kcn8lJZ5x8l3p4bBb+g
         +399+LYqHxDJ4+Y5ingqvCq/eKrIWxK3tdOOc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sl2Zrkw4vXyCLKuJWLyEpogLqKh2BN+ecqFxEDPqf8c=;
        b=enUFRzYR/pQli3A6LfTPJemYZRY6YfW0zSOYrEO1H8FjKZbyJo29yYEee3t27IyaoE
         NFm6U/AY26X2Zk3uUPmtYDW+9XWGWdKsbB8vJiABEKpnr67F0kF/pQznnvDGcCZwYBZ5
         BTJdBkNHYgMqFlFW4sa7IFRefOj+adME8o3iJrT6ABFpuFEO60xBKsU0LfRxabJZmvFj
         yewOdDBZNui3KqTtFmTHDgzlHmg1YAT3L1sZ1NElHu5P9LIvRA5vw2UXnY1QJwC1mqR2
         Wsm4MS7YaFZnYaZ4F6jubyf3TGl9bS4rR3z0iyK1D+0laiRzb0FZVnSQ1jhgJuvWeUBp
         qSjQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUL4hlxgp7hsCjkozHWR897SzfjsXo7lVxULvreKzwBm2Hjy+Cm
	LC0TPLP7gqozjnrrBaM1pVI1JQ==
X-Google-Smtp-Source: APXvYqy9zLjWfYVDRdv08FQrxRQM/mhZdSN+SqroUI8znXyDvzPDPOs5WH5fbnvwf/bUfcVk9HqEqw==
X-Received: by 2002:a62:f246:: with SMTP id y6mr2945596pfl.22.1567680114691;
        Thu, 05 Sep 2019 03:41:54 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:3742:: with SMTP id e63ls560271pfa.7.gmail; Thu, 05 Sep
 2019 03:41:54 -0700 (PDT)
X-Received: by 2002:a63:ea50:: with SMTP id l16mr2595137pgk.160.1567680114096;
        Thu, 05 Sep 2019 03:41:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567680114; cv=none;
        d=google.com; s=arc-20160816;
        b=pwhCq0qNHSRU6pyDmnPCFxbErPsUC4Y7S7OG+oJOP7xupAKLgPqMHfuvMUJACOGLOg
         IeRGJmH+f2+JBpTs4HlBsqZfyFYazaY84QDrzyOhxYx3yJ1yqjbh5EJ1kHSysa16XUdC
         fZB5Dczm6cA+vuSG4NVnzslyhHIv2vh8gjhnaQZlBKB8Y9TEq0gz9L8s1zLFhfXbiYMb
         ro9Nv+v+nTJ04JgrfSeHSKujeaPq9jno6eJ/YcwXnjpn7uDPpdaZNX6L/srqPGpzK6y2
         OT35AFRv0Zuz6jIeSRutjEm2hC8zbTWGcmxIB1QnsZOBqKRvJOiR6xEeZ2VpxcLxUHZN
         pEPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=sArbTYkYhREngQkqCBDtLITongQycXcOekafmveU9NI=;
        b=VgwGGjysOWGgvRS145uli2lh2LZFaKPdcYmYGM4fvPpxt4agic/B1VumvtDcVDFKEx
         4j5GxY6ReO0BAIW7tCFwgpz//HvE5IdfblHgEOrWOjQfGpCZpLUqKPKGozb3IdNObuMz
         w1dXulJM7vWAbRQdcGKhBj2phWe4DxAYtnZRaI9PoRnFTny9zPl9Q4UxcpimTXPWt8ZB
         PzQs/3tPigg+LVEajCoDATZggPCYEiy4bWrk+HHzgsjMyryxDX0JK/jedQg8B3yyZ6C/
         kwJ87zSRJxSJD+Sl05WAZ5fDJrjyrzU1FUrXSLbbFqg0VGkd46mz9cI9m4H8CqVa4Ms8
         D2hg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cxyT0NCR;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id g3si1664749plt.321.2019.09.05.03.41.54
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Sep 2019 03:41:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from linux-8ccs (nat.nue.novell.com [195.135.221.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8503A206BB;
	Thu,  5 Sep 2019 10:41:50 +0000 (UTC)
Date: Thu, 5 Sep 2019 12:41:47 +0200
From: Jessica Yu <jeyu@kernel.org>
To: Matthew Dharm <mdharm-usb@one-eyed-alien.net>
Cc: Guenter Roeck <linux@roeck-us.net>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Matthias Maennich <maennich@google.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"Cc: Android Kernel" <kernel-team@android.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Lucas De Marchi <lucas.de.marchi@gmail.com>, maco@android.com,
	sspatil@google.com, Will Deacon <will@kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	linux-modules@vger.kernel.org,
	linux-usb <linux-usb@vger.kernel.org>,
	USB Mass Storage on Linux <usb-storage@lists.one-eyed-alien.net>,
	linux-watchdog@vger.kernel.org
Subject: Re: [usb-storage] Re: [PATCH v4 12/12] RFC: watchdog: export core
 symbols in WATCHDOG_CORE namespace
Message-ID: <20190905104147.GA27788@linux-8ccs>
References: <20180716122125.175792-1-maco@android.com>
 <20190903150638.242049-1-maennich@google.com>
 <20190903150638.242049-13-maennich@google.com>
 <20190903161045.GA22754@roeck-us.net>
 <CAK7LNARYqqCSCc0G4FL7_bj80iMoLLJrUJ7B3+huD25EUkrttA@mail.gmail.com>
 <c6ac941c-06a4-e5dc-5cb9-fca7b40d7e9a@roeck-us.net>
 <CAA6KcBBeP9xYbVws4=RMFNA4kyrodE-R3mifhbkee-Q+jFRcoQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAA6KcBBeP9xYbVws4=RMFNA4kyrodE-R3mifhbkee-Q+jFRcoQ@mail.gmail.com>
X-OS: Linux linux-8ccs 4.12.14-lp150.12.61-default x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jeyu@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=cxyT0NCR;       spf=pass
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

+++ Matthew Dharm [04/09/19 09:16 -0700]:
>On Wed, Sep 4, 2019 at 5:12 AM Guenter Roeck <linux@roeck-us.net> wrote:
>>
>> Note that I don't object to the patch set in general. There may be symbols
>> which only need be exported in the context of a single subsystem or even
>> driver (if a driver consists of more than one module). For example, a mfd
>> driver may export symbols which should only be called by its client drivers.
>> In such a situation, it may well be beneficial to limit the use of exported
>> symbols.
>
>I can appreciate this benefit.
>
>> I am not sure what good that does in practice (if I understand correctly,
>> a driver only has to declare that it wants to use a restricted use symbol
>> if it wants to use it), but that is a different question.
>
>I think this question implies that you are coming from the perspective
>of "security" or wanting to restrict access to the underlying
>functions, rather than wanting to clean-up the way symbols are handled
>for manageability / maintainability purposes (which is the goal, as I
>understand it).
>
>HOWEVER, I have one question:  If these patches are included, and
>someone wants to introduce a bit of code which needs to use two
>symbols from different namespaces but with the same name, can that be
>done?  That is, if driver A has symbol 'foo' and driver B has symbol
>'foo' (both in their respective namespaces), and driver C wants to use
>A.foo and B.foo, can that be supported?

As of now, we currently don't support this - modpost will warn if a
symbol is exported more than once (across modules + vmlinux), and the
module loader currently assumes exported symbol names are unique.  Do
you have a concrete use case? If there is a strong need for this, I
don't think it'd be too hard to implement.

Thanks,

Jessica

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190905104147.GA27788%40linux-8ccs.
