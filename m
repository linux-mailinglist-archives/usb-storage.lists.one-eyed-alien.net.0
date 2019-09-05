Return-Path: <usb-storage+bncBDEKVJM7XAHRBAGSYPVQKGQEKBUZZAQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id 31139AA086
	for <lists+usb-storage@lfdr.de>; Thu,  5 Sep 2019 12:52:50 +0200 (CEST)
Received: by mail-qk1-x746.google.com with SMTP id w20sf960515qka.18
        for <lists+usb-storage@lfdr.de>; Thu, 05 Sep 2019 03:52:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567680769; cv=pass;
        d=google.com; s=arc-20160816;
        b=UwAREUZ9AS9ENIFaLBxAwr/a6lcyaPW4bFW/QgSJiLZZzkCKgjsRX9O+d5sO+DzUBi
         RPQGJelWOj6kROag0puVjxWIb+c60a56l1zwtYzWh2QvadDXgM8mlsiv1G8lPAUXp+7A
         Id/gkSIWTih5ffo793zRGyqq1hc2OcGOjYbj/8qRkGhl2j/VlwxrnlQOaI75Oc2iyNIs
         XSUYmhcRXqfmI1pZhn8HBZJvy87Xev9XUQv4NmQ37PCZIqPBPhiu6HH37bb5t7nO60tR
         C1zxYNRXPASpw8zmCR7oxxBSXerVoyaYr3SManAeDalFDxZzebsqBfJEltoYsFLEUrJ6
         htXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=I6D4DWXOPevbqXlJrkmwl3tXEgjGh1QsTs0sp6Muquc=;
        b=l1ZJ3dIw/JU4AbjAZBvrYaQZq1C5SwTntd+T8BVPKg28hvT68/pzk76bHYn2cWsbHW
         PAnjquvOu2NfKGM0cBlJdHhwGBgE38WgdJuxPE/HrFVs+rNjL1a4oHcr4X5K8aqYWWUl
         OFLv6NHBDXDpdKe9KhDCV68uUtK6/Xnc/aTi5tiy+5mEpH35zfYXTUaEVikDHV2bU92s
         Wazylb6VYUI36++uXchhI6wP3yyStrqAQO/5wyIWWkwfMF9LrDErwk7V+lj+0IqFk7OG
         Frf6QOWP7xUumqyC5xhSEiDGYAWMVcwFETwN6SXdX6jZMIhdO5S//M00sP77H8OxZvii
         XIOA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I6D4DWXOPevbqXlJrkmwl3tXEgjGh1QsTs0sp6Muquc=;
        b=He1ITPWD8r3O4tTVqMiuNWZHWqQ3ovEEzF+2KZneUdS0kJX0BiLxDc67d764woTPOw
         2tXnGq+SQ/LORQbpJdCMuSChwreQN3x2d8Su4b5HKObMaKolOKCEa16ZjaYBbdJt+Nbe
         SkhvMEuQOUB263big9+DOuO/uaAc7yyEMotmE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I6D4DWXOPevbqXlJrkmwl3tXEgjGh1QsTs0sp6Muquc=;
        b=dSFS8q/AsDe2g/8Q9tHVZounue1Z0LhYe6RlYkkmNiBgckaPW9N7Ky6Ro14jpW1hn1
         932t5MK7LbrdWdvXK6+l2Ljgco8xeKlLvN4SmiGcD10xmH0TElICPTwewrfAceVkE0Cb
         2AGPmIBJE1uLuDMq1kyFEqhizcV0k3f5YrSHySr3UbT54C9NtqKUpAgYT/aN7deJnGmW
         pAO3dwUH8hLSHbKI5hP5PIdLX6nXqFblN3t0XskOUnnVouN+qA0zvYZEC3QUcdgvdDqP
         gALAC2Sx/WZsqpKK3ADddY3G86N0oBad/It2jXbwUjrvHOWzHZmpCMDwy5PVKpnUv4CI
         hy8g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAU1AIqmADU5uzV44xoCJwFKil8ao4fWVi3rr8Snp+VQf/Eo5clZ
	V9WjNPuLc1G4Ahb7vFg40exCIg==
X-Google-Smtp-Source: APXvYqwN4vfqEwtNxBZY48l804Lkm7F2cbYSCzsEy8A89OXIHznvVNPoBtXN2l/McIEqOfGIGX+tNw==
X-Received: by 2002:a37:af82:: with SMTP id y124mr2135235qke.311.1567680769019;
        Thu, 05 Sep 2019 03:52:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:d246:: with SMTP id o6ls209103qvh.9.gmail; Thu, 05 Sep
 2019 03:52:48 -0700 (PDT)
X-Received: by 2002:a0c:8c0b:: with SMTP id n11mr1187966qvb.66.1567680768683;
        Thu, 05 Sep 2019 03:52:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567680768; cv=none;
        d=google.com; s=arc-20160816;
        b=oSH2LPb6JrlZCPFU4PIxaMMABJF9Zlsdq3bmAtQHcdtX0WmQGsD4BYXmCwKbxTmnPq
         5/FalF5SDaz2aLNZRgQovfx7mkWIa8j0TlOOtinp92kMM5+gC2nyvKPppn3lbdHHUE1P
         AUdqTLYHYc9KstABzq0KSI/IcQwcQmAFWtkJXwWwgAtW/2J2i8iHEVxHI7M1bWBzjbk3
         DZnt19g2dBexl4JCOWnZR4lKIyGlGqtuw21PQn+P2s4jkt/DSneG8c9F64h5S4Jc0X4T
         hd14OielSC7c3LDuju9PWyHT6y9KQB3XNXZeiA0xJdrQ5yvshWaAYMCm0RCRNnu30neL
         Zupw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=czu/PiAww9XB7MKWzR+JeGUBiZd6i1YW50nMibpRMWM=;
        b=sSXz1qVI5RMJO5oVa0garBZCa+nwKIKMs+RgsYYHjaL3ZSS1WPgKIZw9ZSaGIvKZqZ
         +ojmvq4/WSDeYOCTe14iRJw7kKTghFSsxgln8NqBGWroTNHx4i6pPupACgdlVzJLEgUe
         M5RH+PzNsuKFmjYb8+T2LD5BClYvUCMMncbwpSFR+fydwS0IdTntL+z5AGx1PWUNmNRF
         1pPQ519laCG9lSzyYQORgLo0gG/bJseu2uDPgYDNoEy019rmyPyE4++yb4UrkP5HbGV1
         Un9VQ1ng1cbHC6maO55kxdyXTNloe27f0nv3cBpOV9uQT/pzJ2D/X+DgE/2+/x7Cw6Y+
         WP9A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id g6sor1042504qkf.73.2019.09.05.03.52.48
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 05 Sep 2019 03:52:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a37:4051:: with SMTP id n78mr2082165qka.138.1567680768377;
 Thu, 05 Sep 2019 03:52:48 -0700 (PDT)
MIME-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190903150638.242049-1-maennich@google.com>
 <20190903150638.242049-13-maennich@google.com> <20190903161045.GA22754@roeck-us.net>
 <CAK7LNARYqqCSCc0G4FL7_bj80iMoLLJrUJ7B3+huD25EUkrttA@mail.gmail.com>
 <c6ac941c-06a4-e5dc-5cb9-fca7b40d7e9a@roeck-us.net> <CAA6KcBBeP9xYbVws4=RMFNA4kyrodE-R3mifhbkee-Q+jFRcoQ@mail.gmail.com>
 <20190905104147.GA27788@linux-8ccs>
In-Reply-To: <20190905104147.GA27788@linux-8ccs>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 5 Sep 2019 12:52:32 +0200
Message-ID: <CAK8P3a0rf0PhXK1RdF1mWTyGggBJeH0h0YOCxDvJFgxu8wmWKw@mail.gmail.com>
Subject: Re: [usb-storage] Re: [PATCH v4 12/12] RFC: watchdog: export core
 symbols in WATCHDOG_CORE namespace
To: Jessica Yu <jeyu@kernel.org>
Cc: Matthew Dharm <mdharm-usb@one-eyed-alien.net>, Guenter Roeck <linux@roeck-us.net>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Matthias Maennich <maennich@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"Cc: Android Kernel" <kernel-team@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, Lucas De Marchi <lucas.de.marchi@gmail.com>, 
	Martijn Coenen <maco@android.com>, Sandeep Patil <sspatil@google.com>, Will Deacon <will@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-modules@vger.kernel.org, 
	linux-usb <linux-usb@vger.kernel.org>, 
	USB Mass Storage on Linux <usb-storage@lists.one-eyed-alien.net>, 
	LINUXWATCHDOG <linux-watchdog@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of arndbergmann@gmail.com designates 209.85.220.65 as permitted
 sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Thu, Sep 5, 2019 at 12:41 PM Jessica Yu <jeyu@kernel.org> wrote:
> +++ Matthew Dharm [04/09/19 09:16 -0700]:
> >On Wed, Sep 4, 2019 at 5:12 AM Guenter Roeck <linux@roeck-us.net> wrote:

> >HOWEVER, I have one question:  If these patches are included, and
> >someone wants to introduce a bit of code which needs to use two
> >symbols from different namespaces but with the same name, can that be
> >done?  That is, if driver A has symbol 'foo' and driver B has symbol
> >'foo' (both in their respective namespaces), and driver C wants to use
> >A.foo and B.foo, can that be supported?
>
> As of now, we currently don't support this - modpost will warn if a
> symbol is exported more than once (across modules + vmlinux), and the
> module loader currently assumes exported symbol names are unique.  Do
> you have a concrete use case? If there is a strong need for this, I
> don't think it'd be too hard to implement.

I think what would prevent this from working in general is that having
two modules with the same exported symbol in different namespaces
won't link if you try to build both modules into the kernel itself.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAK8P3a0rf0PhXK1RdF1mWTyGggBJeH0h0YOCxDvJFgxu8wmWKw%40mail.gmail.com.
