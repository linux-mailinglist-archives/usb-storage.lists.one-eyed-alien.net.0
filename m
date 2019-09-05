Return-Path: <usb-storage+bncBDMYPB44VAFRBOXBYPVQKGQELR3SDXI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x346.google.com (mail-wm1-x346.google.com [IPv6:2a00:1450:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B45CAA13F
	for <lists+usb-storage@lfdr.de>; Thu,  5 Sep 2019 13:25:46 +0200 (CEST)
Received: by mail-wm1-x346.google.com with SMTP id z3sf345866wmk.7
        for <lists+usb-storage@lfdr.de>; Thu, 05 Sep 2019 04:25:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567682746; cv=pass;
        d=google.com; s=arc-20160816;
        b=aucRA6Q3MxIovTxqGIZuWaZIac0wY+0cfDgp0SNlQH4H2G5CZrxsGJOaIjrvQ/4HTx
         E7p14ocJQFw3+evQy+do2WHuoPLyL4vEUM/h5Fsnfs8s/pitCYyoD87vu1WwDPydILDp
         1WjMqN7wmwEmech2b+5ncSpOaSluGSKT0U/hFe89s9P8HoHOG9UzTfRHKA8IzFlaAS9B
         3lR2DH84R8S/bmves4Ek8+He+ThPWxwWFrqWJd+HhKV7uSblcDT8RaBygc1aQIw85x/9
         GvbH+EsGEg6L5OHRkuUtUAWZSENVRb4uc0pGPO8dHd0+j4pSUF9ZjB13c/BlniMeJsm7
         VD7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=0BpFfpHBzkrzo/A/dzd0glR6iGiWPHU9txfIsRihP2M=;
        b=Sx/VFnQjvcvAHu4lliIZlsZ2CzmIeYcVmuz1Fd9iYTEAMMZP176W5OvKZBM7dpk3Fu
         pSa3fU1g3gWBZPnEhPfmJC4afnyYXSPo1qsOsyIUKq2wUp9ONykeNjDhpo4aSTDtPDpT
         U6I5An1dipdzRFQYymeKbSspjvgDOi32HW9+Nw5fEl5sHB7qAzjND7TIanwqeraXFcVy
         Qx4XzfKGEY1hKqLf13I0f12PgilgFHRkHLogUHEC8Io3Li8U5dv1MR7az0kt2GaNxbQN
         GZAmvXc3Q2eVNi1mCZducElxfTQAMsS13g7VAdHALP81eSbScgvmazA2uNxT1V+ncChW
         R4hg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mt+7+hRD;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=0BpFfpHBzkrzo/A/dzd0glR6iGiWPHU9txfIsRihP2M=;
        b=aEIavyT1hRBnZHvrgfOYpWnRBQf1NLea4W31YoGA0Iy6haM4CLLFrDwLFyUPtFzqZ2
         YqY0uZgOtRyRazR44CFSblnbsAmG7ez4FVaZDF8JR13y8b2jlQJNaLDQKWigloZh2khz
         Oi/nmyqnN0EoVG6SAWjDNjfDDJ9F/6ewYWKuU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0BpFfpHBzkrzo/A/dzd0glR6iGiWPHU9txfIsRihP2M=;
        b=l/lKle85/G2e8GfNpZFgH+VQPEhGyQyWKcYKohUgYPgDMUW+u15a7oraUdwR+xwTXu
         isK8PZnNahWn/wE4bGa+zdiXCK9OfyevDghAMneCWVb/FVJFHCzulfEaYUQ+33pRULLa
         DHvjMbj4Z3e8zmW4eD0fXrQh2LwgcaP7Jya0eo+wm5X4KBKf5Bq2i9p0+nfQDYkBE8wy
         ShSAUZUHsdlvf8VViLRLH7jQB6CSBduRMbG7ZU/cagiSEgTBFMBTgBXE5YeuOVs5Y0QG
         6WbJ9pm/MOuyUQ7BbDGxteD0FIff72FJAL/DaiwDpdqu6+A/g6q5RWSh3NSf5WPU0iWh
         S7Xw==
X-Gm-Message-State: APjAAAVODw+ZAyqfYN/M+R6EFXoGTooa16fUeigLQRTPQwMq5cQK81S7
	G3XX1mrB+GmGro4xybUyVjlXYw==
X-Google-Smtp-Source: APXvYqyaa5bTksfLF81j4QCYMphGU/OfshV011RdoYTvWLNPKi5CCDrgxraHgw0LhrFVeOf1rcDncQ==
X-Received: by 2002:a1c:1f89:: with SMTP id f131mr2592952wmf.140.1567682746285;
        Thu, 05 Sep 2019 04:25:46 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a7b:c141:: with SMTP id z1ls713552wmi.5.gmail; Thu, 05 Sep
 2019 04:25:45 -0700 (PDT)
X-Received: by 2002:a1c:c5c3:: with SMTP id v186mr2457044wmf.125.1567682745736;
        Thu, 05 Sep 2019 04:25:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567682745; cv=none;
        d=google.com; s=arc-20160816;
        b=QED5RL2WjhlRfaP5pR+II1JIvHtfDZ5JMgwxwpd1Q0uHtdXDGZWEVqiH/rllahaKYT
         7q4K/3t3OYr/4HTmTgS6rRl30cv8BQVbdsvVDEdBZPv5v0T/EF/4ldiW5/+kU8Fsos91
         HwmMXWsXGUrqoatGG07WbGp8j+xfDyAiIM2RFlXs+QZNfrHCVGRB2m+i5jht2Zog2tXT
         rzFM6TbSmQXXcAIh1ggWUnaGSZ0Y4vepMGXQSxcm3HM23N4DGHyVSZ0gEelqddHnNZjn
         1Yd2ldArYMniIrsRZZkbtiTu+otsQxWLDQmP21GZc8BZf2exJYHOlAnJyw5upQwPM2L+
         u0TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=eSSehVjGWa5LE0/gH3icTwBJRpC+AS+nnud+/72hXME=;
        b=jTgBcTdpacxcMbqRvJwKu0qvjfhxfcqwH/BBauXnPv0QPNPKeaYdJbebyZ2Qr693Oa
         au5T90oYgaUjftYBYzctEJOkxxgAzKmJz3O23KjfLMigzxJ/VHsYpstEqzUYLj9nWe6y
         cpvwUKWBYdXxQTxWXrBtBz30mI4Q1+wAz84+sevTo15nKAD6ZUh5oxzPM9lahk8JB0IF
         fnsB0dFwWLgIwP56Po3iyDM2n9fekN2zzWduG7iR3GEMHGPRFkR+FwaJjt/oTtqPzNyB
         +amS+GDCzhyXLSxpNbWOysjAi8GDoFkPReAJNq7d/lhD0riuX8KPQMEgRL4br+pr0d8Z
         zIeA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mt+7+hRD;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id z17sor1551249wrm.29.2019.09.05.04.25.45
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 05 Sep 2019 04:25:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a5d:6211:: with SMTP id y17mr45427wru.35.1567682745012;
        Thu, 05 Sep 2019 04:25:45 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:210:e8f7:125b:61e9:733d])
        by smtp.gmail.com with ESMTPSA id f3sm2347171wmh.9.2019.09.05.04.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2019 04:25:44 -0700 (PDT)
Date: Thu, 5 Sep 2019 12:25:41 +0100
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Jessica Yu <jeyu@kernel.org>
Cc: Matthew Dharm <mdharm-usb@one-eyed-alien.net>,
	Guenter Roeck <linux@roeck-us.net>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Android Kernel Team <kernel-team@android.com>,
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
Message-ID: <20190905112541.GA227928@google.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190903150638.242049-1-maennich@google.com>
 <20190903150638.242049-13-maennich@google.com>
 <20190903161045.GA22754@roeck-us.net>
 <CAK7LNARYqqCSCc0G4FL7_bj80iMoLLJrUJ7B3+huD25EUkrttA@mail.gmail.com>
 <c6ac941c-06a4-e5dc-5cb9-fca7b40d7e9a@roeck-us.net>
 <CAA6KcBBeP9xYbVws4=RMFNA4kyrodE-R3mifhbkee-Q+jFRcoQ@mail.gmail.com>
 <20190905104147.GA27788@linux-8ccs>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190905104147.GA27788@linux-8ccs>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Mt+7+hRD;       spf=pass
 (google.com: domain of maennich@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=maennich@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
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

On Thu, Sep 05, 2019 at 12:41:47PM +0200, Jessica Yu wrote:
>+++ Matthew Dharm [04/09/19 09:16 -0700]:
>>On Wed, Sep 4, 2019 at 5:12 AM Guenter Roeck <linux@roeck-us.net> wrote:
>>>
>>>Note that I don't object to the patch set in general. There may be symbols
>>>which only need be exported in the context of a single subsystem or even
>>>driver (if a driver consists of more than one module). For example, a mfd
>>>driver may export symbols which should only be called by its client drivers.
>>>In such a situation, it may well be beneficial to limit the use of exported
>>>symbols.
>>
>>I can appreciate this benefit.
>>
>>>I am not sure what good that does in practice (if I understand correctly,
>>>a driver only has to declare that it wants to use a restricted use symbol
>>>if it wants to use it), but that is a different question.
>>
>>I think this question implies that you are coming from the perspective
>>of "security" or wanting to restrict access to the underlying
>>functions, rather than wanting to clean-up the way symbols are handled
>>for manageability / maintainability purposes (which is the goal, as I
>>understand it).

The goal of this patch set is to introduce structure into the exported
surface that goes beyond naming conventions like 'usb_*'. So, it is
rather about maintainability then security. In particular, creating the
visibility of which parts of the kernel use which other parts, might
help to find cases where suboptimal choices were made. Maybe already
during development/review.

As Guenter correctly noted, a module is able to declare that it wants to
use a namespace. One idea that came up earlier was to maybe restrict the
namespaces that can actually be imported by modules. But I would see
anything in that direction as beyond the scope of this series.

A nice side effect of having to declare the usage is that it shows up in
modinfo and module users can reason about how the module interacts with
the rest of the kernel.


>>HOWEVER, I have one question:  If these patches are included, and
>>someone wants to introduce a bit of code which needs to use two
>>symbols from different namespaces but with the same name, can that be
>>done?  That is, if driver A has symbol 'foo' and driver B has symbol
>>'foo' (both in their respective namespaces), and driver C wants to use
>>A.foo and B.foo, can that be supported?
>
>As of now, we currently don't support this - modpost will warn if a
>symbol is exported more than once (across modules + vmlinux), and the
>module loader currently assumes exported symbol names are unique.  Do
>you have a concrete use case? If there is a strong need for this, I
>don't think it'd be too hard to implement.

The implementation does not change the fact that symbol names need to be
unique. As Arnd just mentioned in the other thread: the linker will
already fail if two builtin symbols use the same name. It is rather a
tag attached to the symbol.

Cheers,
Matthias

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190905112541.GA227928%40google.com.
